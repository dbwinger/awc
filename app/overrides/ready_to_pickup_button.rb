Deface::Override.new(:virtual_path  => "spree/admin/orders/_shipment",
                     :replace => "erb[loud]:contains(\"link_to 'ship'\")",
                     :text          =>
"<%= link_to order.paying_in_person? ? 'Ready for Pickup' : 'ship', '#', :class => 'ship button icon-arrow-right', :data => {'shipment-number' => shipment.number} %>",
                     :name          => "ready_to_pickup_button")

