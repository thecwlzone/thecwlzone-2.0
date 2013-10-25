---
title: About
menu_title: About
---
<%= render 'partials/markdown_links' %>

## Professional Ramblings
I haven't always been a web developer. <a href="#" onclick="toggle_visibility('ramblings_content');">Read More|Less</a>

{::options parse_block_html="true" /}
<div id="ramblings_content" style="display:none">
TBD
</div>

## About This Site
This is the 2.0 version of my web site. This time around, I decided to
use [nanoc][Nanoc] <a href="#" onclick="toggle_visibility('site_content');">Read More|Less</a>

{::options parse_block_html="true" /}
<div id="site_content" style="display:none">
TBD
</div>

## Acknowledgements
[Real Men][RealMen]{:target="_blank"} give credit where credit is due. Thanks to:

1. all my professional colleagues, past and present, and who are too numerous to mention. I make it a point to surround myself with people who are smarter than I am, which forces me to go the extra mile.

2. the [nanoc][Nanoc]{:target="_blank"} team for putting together a very nice Ruby-based static site generator. It's been fun. Thanks!

3. the nanoc Wiki which contains a list of [showcased][NanocShowcase]{:target="_blank"} web sites that use nanoc. I am indebted to Professor [Damien Pollet][DamienPollet]{:target="_blank"} for making his code publicly available, which provided me with a starting point towards building a nice looking web site. *Merci Beaucoup!* 

4. my wife De'Lynne is a great photographer, and all the images on the Home page are her creations. I would be lost without you.

<script type="text/javascript">
function toggle_visibility(id) {
var e = document.getElementById(id);
e.style.display = ((e.style.display!='none') ? 'none' : 'block');
}
</script>

