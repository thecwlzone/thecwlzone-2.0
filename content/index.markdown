---
title: Home
menu_title: About me
---
<%= render 'partials/markdown_links' %>
<% render "slidesjs/slideshow_bare", style: 'width:845px;height:256px;', css_class: 'center noframe' do %>
  <% items_by_identifier(%r{/images/landscapes/.*}).each do |i| %>
    <img class='slide' src="<%= relative_path_to i %>" title="<%= i[:title] %>" alt="Random landscapes" width="845"/>
  <% end %>
<% end %>

[![Pharo by Example cover](/images/pbe-128.jpg){: .framed}][pbe]
{: .right}

I am a Senior Engineer with Comcast's National Engineering and Technical Operations team.

##### Curriculum
I hold a BS in Electrical Engineering and a Doctorate of Computer Science.

----

## [Contact Info](/contact/)

See my [detailed contact page](/contact/) for more info and the [access map](/contact/#map) to my office.

<%= render 'partials/contact_info' %>

<div class="banner">
  <p>These pages are never complete, and always under constant refactoring and evolution…</p>
</div>

