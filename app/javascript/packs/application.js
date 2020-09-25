// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).ready(function(){
    $('.purchase-btn').click(function(){
        $('#purchaseModal').addClass('show');
        $('#user-email').attr("data-id", $(this).attr('data-id'))
        $('#user-email').attr("data-type", $(this).attr('data-type'))
    })

    $('.close-modal').click(function(){
        $('#purchaseModal').removeClass('show');
    })

    $('.submit-user-email-btn').click(function(){
        $.post("/purchase",{
            "email": $('#user-email').val(),
            "id": $('#user-email').attr("data-id"),
            "type": $('#user-email').attr("data-type")
        },
        function(data, status){
            alert("Data: " + data + "\nStatus: " + status);
        });
    })
})
