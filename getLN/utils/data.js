module.exports = {
  mtData: mtData,
  searchmyData: searchmyData,
  searchmyData1: searchmyData1
}

var mt_data = mtData()
function searchmyData(user_name){
  var result = []
  if (user_name.length == 0) {
    var msg = {
      errMsg: "请输入您的姓名后查询"
    }
    result.push(msg);
    return result;
  }
  for (let i = 0; i < mt_data.list.length;i++){
    var temp = mt_data.list[i];
    if(temp.user_name == user_name){
      result.push(temp);
    }
  }
  if(result.length == 0){
    var msg ={
      errMsg : "对不起，没有您的座位信息"
    }
    result.push(msg);
  }
  return result ||{}
}
function searchmyData1(user_name) {
  var result = []
  for (let i = 0; i < mt_data.list.length; i++) {
    var temp = mt_data.list[i];
    if (temp.user_name == user_name) {
      result.push(temp);
    }
  }
  return result || {}
}
function mtData(){
  var arr = {
    list:[
      {
        id: '1',
        user_name: '冯曦蒙',
        seat_number: 'A1',
        dinner_table_number: 'B2'
      },
      {
        id: '2',
        user_name: '黄奕君',
        seat_number: 'A2',
        dinner_table_number: 'B3'
      },
      {
        id: '3',
        user_name: '张津',
        seat_number: 'A11',
        dinner_table_number: 'B22'
      },
      {
        id: '4',
        user_name: '林军',
        seat_number: 'A1111111111111111',
        dinner_table_number: 'B22'
      },
      {
        id: '4',
        user_name: '张昌伟',
        seat_number: 'A1111111111111222222222',
        dinner_table_number: 'B22'
      },
      {
        id: '5',
        user_name: '测试1',
        seat_number: 'A1111222',
        dinner_table_number: 'B7'
      }
    ]
  }
  return arr
}