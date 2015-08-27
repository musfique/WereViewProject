﻿
/*
 * Written by Alim Ul Karim
 * Developers Organism
 * https://www.facebook.com/DevelopersOrganism
 * mailto:info@developers-organism.com
*/


function transactionStatusHide() {
    var $transactionStatus = $(".transaction-status");
    if ($transactionStatus.length > 0) {
        $transactionStatus.delay(1500).fadeOut(2500);
    }
}


$(function () {
    //var devBackBtns = $("a.dev-btn-back");
    //if (devBackBtns.length > 0) {
    //    devBackBtns.click(function (e) {
    //        e.preventDefault();
    //        history.back();
    //    });
    //} 
    var $tooltipItems = $('.tooltip-show');
    if ($tooltipItems.length > 0) {
        $tooltipItems.tooltip({container:'body'});
    }
    var $seoHideItems = $(".seo-hide");
    if ($seoHideItems.length > 0) {
        $seoHideItems.hide();
    }
    transactionStatusHide();
});
