$(function(){
    // �ֲ�ͼ
    var i = 0;
    var li=$('#carousel_list>li');
    function autoPlay() { //�Զ�������ͣ
        function play() {//play����-begin
            i++;
            if (i > li.length) {
                i = 0;
            }
            $(li).eq(i).show().siblings("[data-toggle=carousel_item]").hide();
            //�ı������������״̬
            $("#slide li").eq(i).addClass("slide_active").siblings().removeClass("slide_active");
        } //play����-end
        setplay = setInterval(play, 2000);
    }
    autoPlay();

    //����ƽ��Ƴ��ֲ���ͣ������
    $(li).hover(function() {
        clearInterval(setplay);
    }, autoPlay);


    //���С�������� ͼƬ�л�
    $("#slide li").click(function() {
        $(this).addClass("slide_active").siblings().removeClass("slide_active")
        var index = $(this).index();

        $(li).eq(index).show().siblings().hide();
    });
})

