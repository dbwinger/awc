Deface::Override.new(:virtual_path  => "spree/layouts/admin",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text          => "<%= tab(:news, url: monologue.admin_path, :icon => 'icon-rss') %>",
                     :name          => "admin_link_to_monologue")

