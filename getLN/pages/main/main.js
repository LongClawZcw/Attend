//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    result: '',
    firstdata: '',
    state: '',
    nickName: '',
    userInfo: {},
    hasUserInfo: false,
    hasSeatInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    re:{}
  },
  onLoad: function () {
    // if (app.globalData.userInfo) {
    //   this.setData({
    //     userInfo: app.globalData.userInfo,
    //     hasUserInfo: true
    //   })
    // } else if (this.data.canIUse) {
    //   // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
    //   // 所以此处加入 callback 以防止这种情况
    //   app.userInfoReadyCallback = res => {
    //     this.setData({
    //       userInfo: res.userInfo,
    //       hasUserInfo: true
    //     })
    //   }
    // } else {
    //   // 在没有 open-type=getUserInfo 版本的兼容处理
    //   wx.getUserInfo({
    //     success: res => {
    //       app.globalData.userInfo = res.userInfo
    //       this.setData({
    //         userInfo: res.userInfo,
    //         hasUserInfo: true
    //       })
    //     }
    //   })
    // }
  },
  // getUserInfo: function (e) {
  //   console.log(e)
  //   app.globalData.userInfo = e.detail.userInfo
  //   this.setData({
  //     userInfo: e.detail.userInfo,
  //     hasUserInfo: true
  //   })
  // },
  goToSeatPage() {
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
    if(formData.length == 0){
      wx.showToast({
        title: '请输入姓名',
        icon: 'none',
        duration: 2000
      })
    }
    else{
      wx.request({
        // url: 'https://alumni.scut.edu.cn/wx/seat/Search.php?user_name=' + formData,
        url: 'http://localhost/wx/admin/home/seat/search?user_name=' + formData,
        //url: 'https://alumni.scut.edu.cn/wx/admin/home/seat/search?user_name=' + formData,
        method: 'GET',
        data: formData,
        header: { 'Content-Type': 'application/json' },
        success: function (res) {
          wx.showToast({
            title: '请稍后...',
            icon: 'loading',
            duration: 2000
          })
          console.log(res.data)
          app.globalData.alumniInfo = res.data;
          console.log(app.globalData.alumniInfo);
          that.setData({
            re: res.data,
          })
          
          if (res.data.length > 1){
            // wx.navigateTo({
            //   url: '../addalumni/addalumni',
            // })
            var itemList = 
            wx.showActionSheet({
              itemList: ['A'],
            })
          }else{
            wx.navigateTo({
              url: '../alumni/alumni',
            })
          }
          
        }, fail: function () {
          wx.showToast({
            title: '网络异常，请稍后再试',
            icon: 'none',
            duration: 2000
          });
        }
      })
    }
    
  }
})
