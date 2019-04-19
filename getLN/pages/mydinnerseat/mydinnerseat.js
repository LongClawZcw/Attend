var fileData = require('../../utils/data.js')
Page({
  data: {
    result: '',
    showData: fileData.mtData().list,
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