---
title: Home
menu_title: Home
---
<%= render '/partials/markdown_links.*' %>

<% render "/slidesjs/slideshow_bare.*", style: 'width:100%;height:262px;', css_class: 'center noframe' do %>
  <% items_by_identifier(%r{/images/landscapes.*}).sample(5).each do |i| %>
    <img class='slide' src="<%= relative_path_to i %>" title="Photography by De'Lynne Salley. All rights reserved." alt="Random landscapes" />
  <% end %>
<% end %>

## Welcome

Hello, and welcome to my web site.
<a href="#" class="text_toggle" onclick="toggle_visibility();">Read More|Less</a>

{::options parse_block_html="true" /}
<div id="more_content" style="display:none">
##### Current Employment
I am a Senior Engineer with Comcast's Technology and Product Development organization (T&P).

   I am a member the Applications Management Tools Team consisting of six Developers (including myself), a Manager and a Business Analyst. We're building Configuration Management Database systems that track configuration and network topology information for the 3000+ Applications and 300K+ Devices used within T&P.

   Our development stack includes [Ruby on Rails][Rails]{:target="_blank"} 3.2 and 4.1. We use [nginx][nginx]{:target="_blank"}, [Unicorn][Unicorn]{:target="_blank"} and [Capistrano][Capistrano]{:target="_blank"} to configure and run our servers. Front-end technology includes [jQuery][jQuery]{:target="_blank"} and [Twitter Bootstrap][TwitterBootstrap]{:target="_blank"} (with an [Ember.js][Ember]{:target="_blank"} update under development), and our backend databases are [MySQL][MySQL]{:target="_blank"} and [Oracle][Oracle]{:target="_blank"}. We do a *lot* of API work as we talk to over a dozen databases within the T&P community. Version control and [Continuous Integration][CI] of the Rails code base are handled by [Git][Git]{:target="_blank"} and [Jenkins][Jenkins]{:target="_blank"}.

  We are a [DevOps][DevOps]{:target="_blank"} team, and we use a slightly modified [Rally Software][Rally]{:target="_blank"} ALM platform to support a [ScrumBan][ScrumBan]{:target="_blank"} [Agile][Agile]{:target="_blank"} methodology. We release new code on a two week iteration cycle.

  For information about my work experience at previous employers, please see my [Professional](/professional/) page.

##### Academia
I hold a Bachelor of Science degree in Electrical Engineering and a Doctorate in Computer Science. Please see my [Academic](/academic/) page for more details pertaining to my educational background.

##### C'Est Moi!
There is some additional background information about me on the [About](/about/) page.

##### Blogging
I occasionally write about techno-social-political issues on my [Blog](/blog/). My political philosophy is best described as Redneck Anarchist(1). You've been warned. ![smiley1](/images/other/biggrin.gif)

Best Regards,<br />
Chris

</div>

<div id="footnote1" class="footnotes" style="display:none">
(1)OK, it's actually [this][Anarcho-capitalism]{:target="_blank"}
</div>

{::options parse_block_html="false" /}

----

## Contact Info

<%= render '/partials/contact_info.*' %>

<div class="banner">
  <p>This site is built with HTML5 and CSS3.</p>
</div>

<div class="banner">
  <p>This site does not use Google Analytics or any other user tracking software.</p>
</div>

<div class="banner">
<p>Disclaimer: The content of this site is my own, and it does not represent any past, present or future employer's positions, strategies or opinions.</p>
</div>

<script>
function toggle_visibility() {
var e = document.getElementById("more_content");
e.style.display = ((e.style.display!='none') ? 'none' : 'block');
var e = document.getElementById("footnote1");
e.style.display = ((e.style.display!='none') ? 'none' : 'block');
}
</script>
