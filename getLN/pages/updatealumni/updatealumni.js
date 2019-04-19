var name = "";
var company = "";
var position = "";
var local_alumni_association_position = "";
var gender = '男';
var app = getApp();
Page({
  data: {
    sex: [
      { name: '男', value: '男', checked: 'ture' },
      { name: '女', value: '女' },
    ],
    gender:"男",
    isAdd: false,
    alumniData: {}
  },
  inputname: function (e) {
    name = e.detail.value;
  },
  inputcompany: function (e) {
    company = e.detail.value;
  },
  inputposition: function (e) {
    position = e.detail.value;
  },
  // radio:function(e){
  //   this.setData({
  //     name: e.currentTarget.dataset.id
  //   })
  //   gender = e.currentTarget.dataset.id
  //   //console.log(gender)
  // },
  radioChange:function(e){
    this.setData({
      value:e.detail.value
    })
    gender = e.detail.value
    //console.log(gender)
  },
  onLoad:function(){
    //console.log(app.globalData.alumniInfo);
    var that = this;
    var alumniData = app.globalData.alumniInfo[0];
    gender = "男";
    this.setData({
      alumniData: alumniData,
      // gender: "男"
    })
    // console.log(gender)
  },
  inputlocalposition: function (e) {
    local_alumni_association_position = e.detail.value;
  },
  checkinput: function () {
    // console.log(gender)
    if (name == "" || name == null || name == undefined) {
      wx.showToast({
        title: '请输入姓名',
        icon: 'loading'
      })
      return false;
    } else if (gender == "" || gender == null || gender == undefined) {
      wx.showToast({
        title: '请输入性别',
        icon: 'loading'
      })
      return false;
    } else if (company == "" || company == null || company == undefined) {
      wx.showToast({
        title: '请输入工作单位',
        icon: 'loading'
      })
      return false;
    } else if (position == "" || position == null || position == undefined) {
      wx.showToast({
        title: '请输入单位职务',
        icon: 'loading'
      })
      return false;
    }
    return true;
  },
  updateAlumni: function (e) {
    var that = this;
    //console.log(gender)
    name = e.detail.value.inputname;
    //gender = e.detail.value.rad;
    company = e.detail.value.inputcompany;
    position = e.detail.value.inputposition;
    local_alumni_association_position = e.detail.value.inputlocalposition;
    var oldname = app.globalData.alumniInfo[0].name;

    var isrightful = that.checkinput();
    var user_info ={
      oldname: oldname,
      name: name,
      gender: gender,
      company: company,
      position: position,
      local_alumni_association_position: local_alumni_association_position

    };

    if (isrightful) {
      wx.request({
        //url: 'http://www.getln.com/wx/seat/updateAlumni.php',
        url: 'http://localhost/wx/admin/home/seat/updateAlumni',
        //url: 'https://alumni.scut.edu.cn/wx/admin/home/seat/updateAlumni' ,
        header: { 'Content-Type': 'application/json' },
        method: "GET",
        data: user_info,
        success: function (res) {
          // console.log(res)
          if (res.data == false) {
            wx.showToast({
              title: '修改失败',
              icon: 'loading',
              duration: 1500
            })
          } else {
            //app.globalData.alumniData = res.data;
            console.log(user_info);
            //app.globalData.alumniInfo = user_info;
            wx.showToast({
              title: '修改成功',
              icon: 'success',
              duration: 2000
            });
            console.log(app.globalData.alumniInfo);
            that.setData({
              isAdd: true
            })
            wx.navigateTo({
              url: '../alumni/alumni',
            })
          }
        },
        fail: function (res) {
          console(res)
          wx.showToast({
            title: '请求失败',
            icon: 'none',
            duration: 15000
          })
        }
      })
    }
  }
})