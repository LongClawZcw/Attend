var fileData = require('../../utils/data.js');
var app = getApp()
Page({
  data: {
    hasInputName:false,
    hasSeatResult:false,
    result: '',
    showData: fileData.mtData().list,
  },
  onLoad: function(){
    console.log('11111111');
    console.log(app.globalData.alumniInfo);
  },
  formSubmit: function (e) {
    var that = this;
    var formData = e.detail.value.user_name;
    var arr = fileData.searchmyData(formData);
   
    console.log(arr)
    that.setData({
      result: arr
    })
  }
})