/* ===========================================================
 * jquery-simple-text-rotator.js v1
 * ===========================================================
 * Copyright 2013 Pete Rojwongsuriya.
 * http://www.thepetedesign.com
 *
 * A very simple and light weight jQuery plugin that 
 * allows you to rotate multiple text without changing 
 * the layout
 * https://github.com/peachananr/simple-text-rotator
 *
 * ========================================================== */

!function ($) {

    var defaults = {
        animation: "dissolve",
        separator: ",",
        speed: 1000
    };
    var refreshIntervalId;
    var deg = 0;
    var isRotate = true;
    $.fn.textrotator = function (options) {
        var settings = $.extend({}, defaults, options);

        if (isRotate) {
            return this.each(function () {
                var el = $(this)
                var array = [];
                $.each(el.text().split(settings.separator), function (key, value) {
                    array.push(value);
                });
                el.text(array[0]);
                var rotate = function () {
                    index = $.inArray(el.text(), array)
                    if ((index + 1) == array.length) index = -1

                    el.wrapInner("<span class='rotating' />").find(".rotating").hide().text(array[index + 1]).show().css({
                        "-webkit-transform": "rotate(" + deg + "deg)",
                        "-moz-transform": "rotate(" + deg + "deg)",
                        "-o-transform": "rotate(" + deg + "deg)",
                        "transform": "rotate(" + deg + "deg)"
                    })
                    deg = (deg >= 360) ? 30 : deg + 30;
                };
                refreshIntervalId = setInterval(rotate, settings.speed);
                isRotate = false;
            });
        }
        else {
            clearInterval(refreshIntervalId);
            isRotate = true;
        }
    }
    $.fn.textstop = function (options) {
        clearInterval(refreshIntervalId);
        isRotate = true;
    }

} (window.jQuery);


