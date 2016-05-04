---
title: "De'Lynne Salley Gallery"
menu_title: "De'Lynne Salley Gallery"
---
## De'Lynne Salley Gallery

### Colorado Landscapes: Paintings in Oil

#### <a href="&#109;a&#105;l&#116;&#111;:&#111;&#105;&#108;&#112;&#97;&#105;&#110;&#116;&#105;&#110;&#103;&#115;&#64;&#116;&#104;&#101;&#99;&#119;&#108;&#122;&#111;&#110;&#101;&#46;&#99;&#111;&#109;" style="color:red">Email</a> me for more information. Thanks!

<div class='light'>
  Roll your mouse over the images to see title, size and pricing
</div>

<div css_class='center'>
  <% items_by_identifier(%r{/images/gallery/.*}).each do |i| %>
    <img src="<%= relative_path_to i %>" title="<%= i[:title]%>"/>
  <% end %>
</div>
