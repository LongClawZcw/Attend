//index.js
//获取应用实例
var app = getApp()
var fileData = require('../../utils/data.js')
Page({
  data: {
    result:'',
    firstdata:'',
    state:'',
    nickName:'',
    motto: 'Hello World',
    userInfo: {},
    hasUserInfo: false,
    hasSeatInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo')
  },
  
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  onLoad: function () {
    console.log(app.globalData.alumniInfo);
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    } else if (this.data.canIUse){
      // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
      // 所以此处加入 callback 以防止这种情况
      app.userInfoReadyCallback = res => {
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    } else {
      // 在没有 open-type=getUserInfo 版本的兼容处理
      wx.getUserInfo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          this.setData({
            userInfo: res.userInfo,
            hasUserInfo: true
          })
        }
      })
    }
  
    var that = this;
    var user = wx.getStorageSync('user')
    var nickName = user.nickName;
    var arr = fileData.searchmyData1(nickName);
    if(arr.length > 0){
      that.setData({
        result: arr,
        hasSeatInfo: true
      })
    }else{
      that.setData({
        result: arr,
        hasSeatInfo: false
      })
    } 
    console.log(user)
    console.log(arr)
  },
  getUserInfo: function(e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  }, 
  goToSeatPage(){
    wx.navigateTo({
      url: '../myseat/myseat',
    })
  },
  goToDinnerSeatPage() {
    wx.navigateTo({
      url: '../mydinnerseat/mydinnerseat',
    })
  },
  formSubmit: function (e) {
    var that = this;
    var formData = e.detail.value.user_name;
    wx.request({
      url: 'http://www.getln.com/search.php?user_name=' + formData,
      method: 'GET',
      data: formData,
      header: { 'Content-Type': 'application/json' },
      success: function (res) {
        console.log(res.data)
        that.setData({
          re: res.data,
        })
        wx.showToast({
          title: '已提交',
          icon: 'success',
          duration: 2000
        })
      }
    })
  }
})
