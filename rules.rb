# -*- encoding : utf-8 -*-
passthrough '/images/gallery/*'

preprocess do
  # sitemap
  hide_items do |item|
    case item.identifier
    when %r{/publications/\d\d\d\d/.*}
      false
    when /404|500|htaccess/, %r{/(scripts|stylesheets)/.*}
      true
    else
      item.binary? || @site.config[:hidden_extensions].include?(item[:extension])
    end
  end
  create_sitemap
end

layout '*', :by_extension,
  haml: { format: :xhtml, ugly: true }

# do not generate partials, Sass includes, etc
ignore %r{/(_|README)}

# default pipeline & routing
compile '*' do
  if item.binary?
  else
    case item[:extension]
    when /(.+\.)?js/
      # filter :closure_compiler
    when 'sass'
      filter :sass, style: :compact
      filter :relativize_paths, type: :css
    when 'erb', 'html', 'markdown'
      filter :erb
      filter :kramdown unless item[:extension] == 'erb'
      filter :rubypants
      layout 'default'
      filter :relativize_paths, type: :html
    when 'feed', 'xml'
      filter :erb
      # filter :relativize_paths, type: :xml
    end
  end
end

compile '/gallery/.*' do
  filter :erb
  layout 'gallery'
end

compile '/images/gallery/*', rep: :thumbnail do
  # filter :thumbnailize, width: 200
end

route '*' do
  case item[:extension]
  when 'sass'
    extension 'css'
  when 'erb', 'html', 'markdown'
    extension 'html', as_index: true
  when 'feed'
    extension 'xml'
  else
    extension
  end
end

route '/images/gallery/*', rep: :thumbnail do
  # item.identifier + '-thumbnail.' + item.ext
  # item.identifier.chop + '-thumbnail.' + 'jpg'
end
