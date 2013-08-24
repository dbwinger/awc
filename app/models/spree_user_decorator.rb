Spree::User.class_eval do
  preference :display_name, :string

  attr_accessible :name
end

