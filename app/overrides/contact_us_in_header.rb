module ContactUsInHeader 
  Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                       :name => "contact_us_in_header",
                       :insert_bottom => "#main-nav-bar ul.nav.navbar-nav",
                       :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/contact-us') ? 'current' : 'not'%>'><%= link_to Spree.t(:contact_us_title), contact_us_path  %></li>",
                       :original => '442eefbb91b46a8773ce1de620f8f0a88a66caf1')
end
