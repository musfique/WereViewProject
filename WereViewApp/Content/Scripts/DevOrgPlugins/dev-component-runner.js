﻿/// <reference path="developers-organism.component.js" />
/// <reference path="developers-organism.dynamicSelect.js" />
/// <reference path="developers-organism.upload.js" />
/// <reference path="faster-jQuery.js" />
/// <reference path="WeReviewApps.js" />
/// <reference path="../star-rating.js" />
/// <reference path="../validation.js" />
/// <reference path="../underscore.js" />
/// <reference path="developers-organism.country-phone.js" />
/// <reference path="../ckeditor.js" />

/*!
 * Written by Alim Ul Karim
 * Developers Organism
 * Dated : 14 June 2015
 * Version : 1.2
 * https://www.facebook.com/DevelopersOrganism
 * mailto:info@developers-organism.com
*/

$.devOrg = $.devOrg || {};

$.devOrg.runner = function () {
    $.devOrg.Constants = {
        registerForm: $("form.register-form"),
        userName: "UserName",
        email: "Email",
        phoneNumberSelector: "#Phone",
        slash: "/",
        // "/Validator/"
        validatorCommonUrl: "/Validator/",
        //"/Validator/Username"
        usernameValidationUrl: "/Validator/Username",
        //"/Validator/Email"        
        emailAddressValidationUrl: "/Validator/Email",
        countryJsonUrl: "/Content/Scripts/Data/country-info-select-ready.json", // look like this /Partials/GetTimeZone/CountryID
        timeZoneJsonUrl: "/Partials/GetTimeZone", // look like this /Partials/GetTimeZone/CountryID
        languageJsonUrl: "/Partials/GetLanguage" // look like this /Partials/GetTimeZone/CountryID
    };


    if ($.devOrg.Constants.registerForm.length > 0) {
        // country , timezone, and phone initialize
        //$.devOrg
        //    .countryTimezonePhoneComponent
        //    .initialize($.devOrg.Constants.countryJsonUrl,
        //        $.devOrg.Constants.timeZoneJsonUrl,
        //        $.devOrg.Constants.languageJsonUrl,
        //        true // retrieve as html, to have the processed version  , make it false and change the url.
        //        );

        //$.devOrg.validateInputFromServer("#" + $.devOrg.Constants.userName,
        //                                  $.devOrg.Constants.usernameValidationUrl,
        //                                  $.devOrg.Constants.userName,
        //                                  true,
        //                                  false,
        //                                  3);
        //$.devOrg.validateInputFromServer("#" + $.devOrg.Constants.email,
        //                                  $.devOrg.Constants.emailAddressValidationUrl,
        //                                  $.devOrg.Constants.email,
        //                                  false,
        //                                  false,
        //                                  4);

        $.devOrg.enterToNextTextBox(".register-form", false);
        //$.devOrg.uxFriendlySlide("form.register-form", true);


        $.devOrg.bootstrapComboSelectbyFindingValue("select.country-combo", '1');

    }


    // load dynamic and depended select or combo
    $.devOrg.dynamicSelect.initialize();



    // make tables look nice with pagination
    var $tables = $("table.bootstrap-table-do");
    if ($tables.length > 0) {
        $tables.bootstrapTable();
    }




    $("select.selectpicker").selectpicker();
    $.devOrg.bootstrapComboSelectIndex("select.selectpicker", 0);


    ///Implement .rating-5,.rating-10
    $.devOrg.ratingMordernize();
    $.devOrg.bootstrapTabsMordernize(".make-it-tab");


    function workWithMenuPage() {
        var menuPage = $("#menu-item-edit-page");
        if (menuPage.length > 0) {
            var div = $("#hasDropdownDiv");
            div.hide();
            $("#HasDropDown").click(function () {
                if (this.checked) {
                    div.show('slow');
                } else {
                    div.hide('slow');
                }
            });
        }
    }
    //menu edit page 
    workWithMenuPage();


    var $ckEditorTextAreas = $(".ckeditor-enabled");
    if ($ckEditorTextAreas.length > 0) {
        $ckEditorTextAreas.ckeditor();
    }

    $("textarea.big-multiline").focus(function () {
        $(this).animate({ 'height': '300px', 'width': '630px', 'max-width': '630px' }, 400);
    }).blur(function () {
        $(this).animate({ 'height': 'auto', 'width': '294px', 'max-width': '294px' }, 400);
    });
    //making textarea's elastic
    $("textarea").elastic().trigger('update');

    $(".datetimepicker-start").datetimepicker({
        pickDate: true,                 //en/disables the date picker
        pickTime: true,                 //en/disables the time picker
        useMinutes: true,               //en/disables the minutes picker
        useSeconds: true,               //en/disables the seconds picker
        useCurrent: true,               //when true, picker will set the value to the current date/time     
        minuteStepping: 1,               //set the minute stepping
        defaultDate: "",                 //sets a default date, accepts js dates, strings and moment objects
        disabledDates: [],               //an array of dates that cannot be selected
        enabledDates: [],                //an array of dates that can be selected
        sideBySide: true              //show the date and time picker side by side

    });

    $(".datepicker-start").datetimepicker({
        pickDate: true,                 //en/disables the date picker
        pickTime: false,                 //en/disables the time picker
        useMinutes: false,               //en/disables the minutes picker
        useSeconds: false,               //en/disables the seconds picker
        useCurrent: true,               //when true, picker will set the value to the current date/time     
        minuteStepping: 1,               //set the minute stepping
        defaultDate: "",                 //sets a default date, accepts js dates, strings and moment objects
        disabledDates: [],               //an array of dates that cannot be selected
        enabledDates: [],                //an array of dates that can be selected

        sideBySide: true              //show the date and time picker side by side

    });


    var serverValidationActivate = function () {
        var $processForm = $.byId("server-validation-form");
        $processForm.serverValidate({
            crossDomain: false,
            multipleRequests: true,
            checkValidationBeforeSendingRequest: true,
            dontSendSameRequestTwice: false,
            disableInputOnValidation: false,
            focusPersistIfNotValid: false,
            hideOnValidation: false
        });
    }


    serverValidationActivate();


    var makeTagLive = function () {
        var $processForm = $.byId("server-validation-form");
        if ($processForm.length > 0) {
            var $createdTags = $(".tag-inputs");
            if ($createdTags.length > 0) {
                var $tokenField = $processForm.find("[name='__RequestVerificationToken']"),
                    token = $tokenField.val();
                for (var i = 0; i < $createdTags.length; i++) {
                    var $tagsInput = $($createdTags[0]),
                        urlToPost = $tagsInput.attr("data-url");
                    //
                    $tagsInput.tagsinput({
                        freeInput: true,
                        trimValue: true,
                        typeahead: {
                            source: function (query) {
                                return $.post(urlToPost, { id: query, __RequestVerificationToken: token }).done(function (response) {
                                    //console.log("tags:");
                                    //console.log("response:");
                                    //console.log(response);
                                });
                            }
                        },
                        onTagExists: function (item, $tag) {
                            $tag.hide.fadeIn();
                        }
                    });
                }
            }

        }

    }

    makeTagLive.apply();
}

$(function () {
    $.devOrg.runner();
});