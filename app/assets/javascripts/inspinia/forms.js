//= require iCheck/icheck.min.js
//= require steps/jquery.steps.min.js
//= require dropzone/dropzone.js
//= require summernote/summernote.min.js
//= require datapicker/bootstrap-datepicker.js
//= require bootstrap-datetimepicker/bootstrap-datetimepicker.min.js
//= require bootstrap-datetimepicker/bootstrap-datetimepicker.zh-CN.js
//= require ionRangeSlider/ion.rangeSlider.min.js
//= require jasny/jasny-bootstrap.min.js
//= require jsKnob/jquery.knob.js
//= require nouslider/jquery.nouislider.min.js
//= require switchery/switchery.js
//= require chosen/chosen.jquery.js
//= require fullcalendar/moment.min.js
//= require clockpicker/clockpicker.js
//= require daterangepicker/daterangepicker.js
//= require select2/select2.full.min.js
//= require touchspin/jquery.bootstrap-touchspin.min.js
//= require bootstrap-tagsinput/bootstrap-tagsinput.js


$.fn.datepicker.dates['zh-CN'] = {
  days: ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"],
  daysShort: ["日","一","二","三","四","五","六"],
  daysMin:  ["日","一","二","三","四","五","六"],
  months: ["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],
  monthsShort: ["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],
  today: "今天",
  clear: "清除",
  format: "yyyy-mm-dd",
  titleFormat: "yyyy MM", /* Leverages same syntax as 'format' */
  weekStart: 0
};