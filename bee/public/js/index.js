$(function(){
    // 轮播图
    var i = 0;
    var li=$('#carousel_list>li');
    function autoPlay() { //自动播放暂停
        function play() {//play函数-begin
            i++;
            if (i > li.length) {
                i = 0;
            }
            $(li).eq(i).show().siblings("[data-toggle=carousel_item]").hide();
            //改变下面三条横杠状态
            $("#slide li").eq(i).addClass("slide_active").siblings().removeClass("slide_active");
        } //play函数-end
        setplay = setInterval(play, 2000);
    }
    autoPlay();

    //鼠标移进移出轮播暂停和启动
    $(li).hover(function() {
        clearInterval(setplay);
    }, autoPlay);


    //点击小长条方框 图片切换
    $("#slide li").click(function() {
        $(this).addClass("slide_active").siblings().removeClass("slide_active")
        var index = $(this).index();

        $(li).eq(index).show().siblings().hide();
    });
})

