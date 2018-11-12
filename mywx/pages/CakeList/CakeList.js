// pages/CakeList/CakeList.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    cakelist:[],
    pageIndex:0,
    pageSize:6,
    hasMore: true
  },
  /**
   * 生命周期函数--监听页面加载
   */
  loadMoad:function(){
    wx.request({
      url: "http://127.0.0.1:8625/cake/cakelist",
      data: {
        pno:++this.data.pageIndex,
        pageSize:this.data.pageSize
      },
      success: (res) => {
        var listdata = res.data.msg;
        var pageCount = listdata.pageCount;
        if (this.data.pageIndex >= pageCount) {
          this.setData({
            hasMore: false
          })
        }
        for (var i = 0; i < listdata.data.length; i++) {
          listdata.data[i].img_url = listdata.data[i].img_url.split(",")[0];
        }
        var rows = this.data.cakelist.concat(res.data.msg.data);
        this.setData({
          cakelist: rows
        });
      }
    })
  },
  onLoad: function (options) {
    this.loadMoad();
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    this.setData({
      pageIndex:0,
      cakelist:[],
      hasMore:true
    });
    this.loadMoad();
    wx.stopPullDownRefresh();
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    this.loadMoad();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  showDetail:function(e){
    console.log(e);
    var cid=e.target.dataset.cid;
    wx.navigateTo({
      url:"../detail/detail?cid="+cid
    })
  }
})