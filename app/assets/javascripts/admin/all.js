// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require admin/spree_backend

//= require_tree .
//= require admin/spree_bootstrap
//= require admin/spree_editor
//= require admin/spree_social_products
//= require admin/spree_banner
//= require admin/spree_paypal_express

$(function() {
  $(".item-name:contains('Ground')").each(function() {
    $(this).html($(this).text().replace('Ground',"<span class='ground'>Ground</span>"));
  })
})
