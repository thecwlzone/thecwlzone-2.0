---
title: "De'Lynne Salley Gallery"
menu_title: "De'Lynne Salley Gallery"
---
## De\'Lynne Salley Gallery

### Colorado Landscapes: Paintings in Oil

#### <a href="&#109;a&#105;l&#116;&#111;:&#111;&#105;&#108;&#112;&#97;&#105;&#110;&#116;&#105;&#110;&#103;&#115;&#64;&#116;&#104;&#101;&#99;&#119;&#108;&#122;&#111;&#110;&#101;&#46;&#99;&#111;&#109;" style="color:red">Email</a> me for more information. Thanks!

<div class='light'>
  Click for a larger image. Roll your mouse over the images to see title, size and pricing.
</div>

<div css_class='center'>
  <% @items.find_all('/images/gallery/*').each do |img| %>
    <a href="<%= img.path %>">
      <img src="<%= img.path(rep: :thumbnail) %>" title="<%= img[:title]%>" alt="<%= img[:alt]%>"/>
    </a>
  <% end %>
</div>
