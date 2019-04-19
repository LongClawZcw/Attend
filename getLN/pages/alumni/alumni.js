var app = getApp()
Page({
  data:{
    alumniData:{},
    avatarUrl:null,
  },
  onLoad:function(){
    //console.log(app.globalData.alumniInfo);
    var that = this;
   
    var alumniData = app.globalData.alumniInfo[0];
    //var alumniData = app.globalData.alumniData;
    if (alumniData.accommodation_time == null  || alumniData.accommodation_time == "" || alumniData.accommodation_time == undefined){
      alumniData.accommodation_time = "无"
    }
    if (alumniData.dining_time == null || alumniData.dining_time == "" || alumniData.dining_time == undefined ) {
      alumniData.dining_time = "无"
    }
    if (alumniData.hotel == null || alumniData.hotel == "" || alumniData.hotel == undefined) {
      alumniData.hotel = "无"
    }
    if (alumniData.room_number == null || alumniData.room_number == "" || alumniData.room_number == undefined ) {
      alumniData.room_number = "无"
    }
    if (alumniData.local_alumni_association_position == "" || alumniData.room_number == null  ||  alumniData.room_number == undefined) {
      alumniData.local_alumni_association_position = "无"
    }
    if (alumniData.vehicle == null || alumniData.vehicle == ""  || alumniData.vehicle == undefined) {
      alumniData.vehicle = "无"
    }
    if (alumniData.submeeting == null || alumniData.submeeting == "" || alumniData.submeeting == undefined) {
      alumniData.submeeting = "无"
    }
    if (alumniData.main_meeting_seat == null || alumniData.main_meeting_seat == "" || alumniData.main_meeting_seat == undefined) {
      alumniData.main_meeting_seat = "无"
    }
    if (alumniData.dinner_table_number == null || alumniData.dinner_table_number == "" || alumniData.dinner_table_number == undefined) {
      alumniData.dinner_table_number = "无"
    }
    if (alumniData.supper_table_number == null || alumniData.supper_table_number == "" || alumniData.supper_table_number == undefined) {
      alumniData.supper_table_number = "无"
    }
    this.setData({
      alumniData: alumniData,
    })
    if(alumniData.gender != '女'){
      this.setData({
        avatarUrl : "../image/man.jpg"
      })
    }else{
      this.setData({
        avatarUrl: "../image/woman.jpg"
      })
    }
   
  },
  goToSchedule:function(){
    wx.navigateTo({
      url: '../schedule/schedule',
    })
  },
  goToUpdateInfo:function(){
    wx.navigateTo({
      url: '../updatealumni/updatealumni',
    })
  }
})