// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require store/spree_frontend

//= require_tree .
//= require store/spree_bootstrap
//= require store/spree_serenity_theme

//= require store/spree_minicart

//= require store/spree_address_book

//= require store/spree_paypal_express

$(document).on('click', '#checkout_form_payment input[type=submit]', function() {
  event.preventDefault();
  $('a#paypal_button img').click();
});