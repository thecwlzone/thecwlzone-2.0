---
title: Home
menu_title: Home
---
<%= render 'partials/markdown_links' %>
<% render "slidesjs/slideshow_bare", style: 'width:930px;height:262px;', css_class: 'center noframe' do %>
  <% items_by_identifier(%r{/images/landscapes/.*}).each do |i| %>
    <img class='slide' src="<%= relative_path_to i %>" title="<%= i[:title] %>" alt="Random landscapes" width="930"/>
  <% end %>
<% end %>

## Welcome

Hello, and welcome to my web site.

##### My Latest Gig
I am a Senior Engineer with Comcast's National Engineering and Technical Operations organization (NETO). Within NETO's vast hierarchy of functions exists the Applications Management Tools Team consisting of seven Developers (including myself), a Manager and a Business Analyst. We're building internal Configuration Management Database systems that track Application and Device Configuration and Topology information for the 2000+ Applications and 200K+ Devices that are used within NETO.

Our development stack includes [Ruby on Rails][Rails] 3.2. We use [Chef][Chef], [Unicorn][Unicorn] and [Capistrano][Capistrano] to configure and run our servers. Front-end technology includes [jQuery][jQuery] and [Twitter Bootstrap][TwitterBootstrap], and our backend databases are [MySQL][MySQL] and [Oracle][Oracle]. We do a *lot* of API work as we talk to over a dozen diverse databases within the NETO community. Version control of the Rails code base is handled by [Git][Git] and [Bamboo][Bamboo].

We are very much a [DevOps][DevOps] team, and we use a slightly modified [Rally Software][Rally] ALM platform to support a [ScrumBan][ScrumBan] [Agile][Agile] methodology. We release new code on a two week iteration cycle.

For information about my work experience at previous employers, please see my [Professional](/professional/) page.

##### School Stuff
I hold a Bachelor of Science degree in Electrical Engineering and a Doctorate in Computer Science. Please see my [Academic](/academic/) page for more details pertaining to my educational background.

##### C'Est Moi!
There is some additional background information about me on the [About](/about/) page.

##### Blogging
I occasionally write about techno-social-political issues on my [Blog](/blog/). My political philosophy is best described as Redneck Anarchist. You've been warned. ![smiley1]

Best Regards,<br />
Chris

----

## Contact Info

<%= render 'partials/contact_info' %>

<div class="banner">
  <p>This site does not use Google Analytics or any other user tracking software</p>
</div>

