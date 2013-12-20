Deface::Override.new(:virtual_path  => "spree/admin/shared/_tabs",
                     :remove => "erb[loud]:contains(':promotions'), erb[loud]:contains(':reports')",
                     :name          => "")

