var name = "";
var company="";
var position = "";
var local_alumni_association_position = '';
var gender = "男";
Page({
  data: {
    sex: [
      { name: '男', value: '男', checked:'ture'},
      { name: '女', value: '女'},
    ],
    isAdd:false
  },
  // radioChange: function (e) {
  //   console.log('radio发生change事件，携带value值为：', e.detail.value)
  //   gender = e.detail.value
  // },
  // inputname:function(e){
  //   name = e.detail.value;
  // },
  // inputcompany: function (e) {
  //   company = e.detail.value;
  // },
  // inputposition: function (e) {
  //   position = e.detail.value;
  // },
  // inputlocalposition: function (e) {
  //   local_alumni_association_position = e.detail.value;
  // },
  radioChange: function (e) {
    this.setData({
      value: e.detail.value
    })
    gender = e.detail.value
    //console.log(gender)
  },
  checkinput:function(){
    // if (this.data.sex[0].checked == "ture"){
    //   gender = this.data.sex[0].value
    // } else if (this.data.sex[1].checked == "ture"){
    //   gender = this.data.sex[1].value
    // }
    if (name == "" || name == null || name == undefined){
      wx.showToast({
        title: '请输入姓名',
        icon:'loading'
      })
      return false;
    } else if (gender == "" || gender == null || gender == undefined){
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
    } else if (position == "" || position == null || position == undefined){
      wx.showToast({
        title: '请输入单位职务',
        icon: 'loading'
      })
      return false;
    }
    return true;
  },
  addAlumni:function(e){
    var that = this;
    name = e.detail.value.inputname;

    company = e.detail.value.inputcompany;
    position = e.detail.value.inputposition;
    local_alumni_association_position = e.detail.value.inputlocalposition;
    var isrightful = that.checkinput();
    if(isrightful){
      wx.request({
        //url: 'http://www.getln.com/wx/seat/addAlumni.php',
        //url: 'http://localhost/wx/admin/home/seat/addAlumni',
        url: 'https://alumni.scut.edu.cn/wx/admin/home/seat/addAlumni',
        header: { 'Content-Type': 'application/json' },
        method:"GET",
        data:{
          name:name,
          gender: gender,
          company:company,
          position:position,
          local_alumni_association_position: local_alumni_association_position
        },
        success:function(res){
          //console.log(res)
          if(res.data == false){
            wx.showToast({
              title: '临时添加失败',
              icon: 'loading',
              duration:4000
            })
          }else{
            wx.showToast({
              title: '添加成功',
              icon:'success',
              duration:4000
            });
            that.setData({
              isAdd :true
            })
            wx.navigateTo({
              url: '../main/main',
            })
          }
        },
        fail:function(res){
          console(res)
          wx.showToast({
            title: '请求失败',
            icon: 'none',
            duration:1500
          })
        }
      })
    }
  }
})