﻿/// <reference path="jquery-2.1.1.js" />

/// <reference path="jetmenu.js" />
/// <reference path="modernizr-2.6.2.js" />
/// <reference path="owl.carousel.min.js" />
/// <reference path="the-lion-plugin.js" />
/// <reference path="jquery.validate.js" />
/// <reference path="respond.js" />
/// <reference path="pei-chart.js" />
/// <reference path="jquery.lightSlider.min.js" />
/// <reference path="../../rs-plugin/js/jquery.themepunch.revolution.min.js" />
/// <reference path="bootstrap-rating.min.js" />
/// <reference path="underscore-min.js" />
/// <reference path="../DevOrgPlugins/faster-jQuery.js" />

$(function () {


    var selectForYoutubeVideoOnDetailsPage = "#apps-preview";
    var $youtubeVideoContainer = $(selectForYoutubeVideoOnDetailsPage);
    if ($youtubeVideoContainer.length === 1) {
        $youtubeVideoContainer.find(".playable-btn").click(function () {
            var $iframe = $youtubeVideoContainer.find("iframe");
            var $this = $(this);
            if ($iframe.length === 1) {
                $iframe[0].src += "?rel=0&controls=1&autoplay=1";
                $this.hide("slow");
                $this.unbind("click");//or some other way to make sure that this only happens once
            }
        });
    }


    $.frontEndAppDetailsPage = {
        $showMoreBtnContainer: $(".show-more-btns-container"),
        $showMoreBtns: $(".see-more-btn"),
        $showLessBtns: $(".less-btn"),
        $moreExcert: $(".more"),
        execute: function () {
            $("div.app-suggested-list-items-mobile:first,div.featured-apps-list-items").owlCarousel({
                navigation: true,
                navigationText: [
                  "<i class='fa fa-chevron-circle-left'></i>",
                  "<i class='fa fa-chevron-circle-right'></i>"
                ],
                items: 1, //10 items above 1000px browser width
                //itemsDesktop: [1152, 6], //5 items between 1000px and 901px
                //itemsDesktopSmall: [900, 4], // betweem 900px and 601px
                //itemsTablet: [600, 3], //2 items between 600 and 0
                //itemsMobile: [450, 2],
                itemsCustom: [370, 1]
            });


            var $frontPageGallyery = $(".tp-banner");
            if ($frontPageGallyery.length > 0) {
                $frontPageGallyery.show().revolution({
                    dottedOverlay: "none",
                    delay: 5000,
                    startwidth: 960,
                    startheight: 320,
                    hideThumbs: 10,
                    fullWidth: "off",
                    navigationType: "bullet",
                    navigationStyle: "preview2",
                    forceFullWidth: "off"
                });
            }

            var $suggestionCarosel = $(".owl-list");
            if ($suggestionCarosel.length > 0) {
                $suggestionCarosel.owlCarousel({
                    navigation: true,
                    navigationText: [
                      "<i class='fa fa-chevron-circle-left'></i>",
                      "<i class='fa fa-chevron-circle-right'></i>"
                    ],
                    items: 7, //10 items above 1000px browser width
                    itemsDesktop: [1152, 6], //5 items between 1000px and 901px
                    itemsDesktopSmall: [966, 5], // betweem 900px and 601px
                    itemsTabletSmall: [730, 4],
                    itemsTablet: [600, 3], //2 items between 600 and 0
                    //itemsCustom: [[0, 2], [435, 3], [450, 2], [600, 3], [730, 4], [900, 5],  [950, 6]], // [[740, 6], [1000, 8], [1200, 10], [1600, 16]]
                    itemsMobile: [450, 2]
                    //itemsScaleUp: false

                });
            }
            //$(".app-suggested-list").owlCarousel({
            //    navigation: true,
            //    navigationText: [
            //      "<i class='fa fa-chevron-circle-left'></i>",
            //      "<i class='fa fa-chevron-circle-right'></i>"
            //    ],
            //    items:1

            //});

            var $frontPageRatings = $(".rating-5-front");
            if ($frontPageRatings.length > 0) {
                $frontPageRatings.rating({
                    showClear: false,
                    showCaption: false
                });
            }

            var $detailPageRatingDisplayItems = $(".rating-5-page-details");
            if ($detailPageRatingDisplayItems.length > 0) {
                $detailPageRatingDisplayItems.rating({
                    showClear: false,
                    showCaption: true,
                    starCaptions: {
                        0: "0",
                        0.5: "0.5",
                        1: "1",
                        1.5: "1.5",
                        2: "2",
                        2.5: "2.5",
                        3: "3",
                        3.5: "3.5",
                        4: "4",
                        4.5: "4.5",
                        5: "5"
                    },
                    starCaptionClasses: {
                        0: 'label label-danger',
                        0.5: 'label label-danger',
                        1: 'label label-danger',
                        1.5: 'label label-warning',
                        2: 'label label-warning',
                        2.5: 'label label-info',
                        3: 'label label-info',
                        3.5: 'label label-primary',
                        4: 'label label-primary',
                        4.5: 'label label-success',
                        5: 'label label-success'
                    }
                });
            }
            var $appsPreview = $("#apps-preview");
            if ($appsPreview.length > 0) {
                $appsPreview.owlCarousel({
                    slideSpeed: 300,
                    paginationSpeed: 400,
                    singleItem: true,
                    items: 1,
                    itemsDesktop: false,
                    itemsDesktopSmall: false,
                    itemsTablet: false,
                    itemsMobile: false,
                    stopOnHover: true,
                    navigation: true, // Show next and prev buttons
                    pagination: false,
                    autoHeight: true,
                    navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"]
                });
            }

            if (this.$moreExcert.length > 0) {
                this.$moreExcert.hide();
            }

            //filtering through isotop
            var $isotopContainer = $("ul.search-page-apps-list:first");
            if ($isotopContainer.length > 0) {
                var $filterIsotopItems = $('.filter li a');
                if ($filterIsotopItems.length > 0) {
                    $filterIsotopItems.click(function () {
                        $('.filter').find("li a").removeClass('active');
                        $(this).addClass('active');
                        var selector = $(this).attr('data-filter');

                        $isotopContainer.isotope({
                            filter: selector
                        });
                        return false;
                    });
                }
            }
            var $numberElement = $(".app-viewed-numbers:first-child");
            if ($numberElement.length > 0) {
                $numberElement.number(true);
            }

            this.$showMoreBtns.click(function () {
                var $this = $(this);
                var moreReference = $this.attr("data-ref");
                var dataId = $this.attr("data-id");
                var dataRefSelector;
                var dataIdSelector = _.isUndefined(dataId) === false ? "[data-id='" + dataId + "']" : "";
                if (_.isUndefined(moreReference) === false) {
                    dataRefSelector = "[data-ref='" + moreReference + "']" + dataIdSelector + ":first";

                    var $specificMoreExcertFound = $.frontEndAppDetailsPage.$moreExcert.filter(dataRefSelector);
                    if ($specificMoreExcertFound.length > 0) {
                        $specificMoreExcertFound.show("slow");
                        $specificMoreExcertFound.css("display", "inline");
                    }
                    var $moreBtnContainer = $.frontEndAppDetailsPage.$showMoreBtnContainer.filter(dataRefSelector);
                    if ($moreBtnContainer.length > 0) {
                        $moreBtnContainer.hide("slow");
                    }
                }
            });

            this.$showLessBtns.click(function () {
                var $this = $(this);
                var moreReference = $this.attr("data-ref");
                var dataId = $this.attr("data-id");
                var dataRefSelector;
                var dataIdSelector = _.isUndefined(dataId) === false ? "[data-id='" + dataId + "']" : "";
                if (_.isUndefined(moreReference) === false) {
                    dataRefSelector = "[data-ref='" + moreReference + "']" + dataIdSelector + ":first";

                    var $specificMoreExcertFound = $.frontEndAppDetailsPage.$moreExcert.filter(dataRefSelector);
                    if ($specificMoreExcertFound.length > 0) {
                        $specificMoreExcertFound.hide("slow");
                    }
                    var $moreBtnContainer = $.frontEndAppDetailsPage.$showMoreBtnContainer.filter(dataRefSelector);
                    if ($moreBtnContainer.length > 0) {
                        $moreBtnContainer.show("slow");
                    }
                }
            });
        }
    };
    $.frontEndAppDetailsPage.execute();
});
