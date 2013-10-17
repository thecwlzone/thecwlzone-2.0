---
title: Home
menu_title: About me
---
<%= render 'partials/markdown_links' %>
<% render "slidesjs/slideshow_bare", style: 'width:750px;height:250px;', css_class: 'center noframe' do %>
  <% items_by_identifier(%r{/images/landscapes/.*}).each do |i| %>
    <img class='slide' src="<%= relative_path_to i %>" title="<%= i[:title] %>" alt="Random landscapes" width="750"/>
  <% end %>
<% end %>

[![Logo Inria](/images/inria-128.png){: .noframe}][inria]
{: .right}

[![Logo USTL](/images/ustl-128.jpg){: .noframe}][ustl]
{: .right}

[![Logo Telecom](/images/telecom-128.png){: .noframe}][telecom]
{: .right}

[![Pharo by Example cover](/images/pbe-128.jpg){: .framed}][pbe]
{: .right}

I am a Senior Engineer with Comcast's National Engineering and Technical
Operations team.

##### Curriculum
I hold a BS in Electrical Engineering and a Doctorate of Computer
Science.

----

<%#
{ticker:: {path: news.html, more: Older news…}}
## News
{ticker}

{ticker:: {path: news.html, number: ~, period: :upcoming}}
## Upcoming
{ticker}
%>


## [Contact Info](/contact/)

See my [detailed contact page](/contact/) for more info and the [access map](/contact/#map) to my office.

<%= render 'partials/contact_info' %>

<div class="banner">
  <p>These pages are never complete, and always under constant refactoring and evolution…</p>
</div>

