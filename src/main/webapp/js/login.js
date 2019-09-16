function check() {
    var uid=$("#uid").val();
    if(null==uid||uid==""){
        alert("账户不为空");
        return false;
    }else{
        $.ajax({
            url: "/maven_war_exploded/admin/logajax.action",
            type: "POST",
            data:{"uid":uid},
            dataType: "text",
            success : function(res){
                alert(res);
                if(res=="1"){
                    $("#uid1").text("√").removeClass("uid1");
                }else{
                    $("#uid1").text("×").removeClass("uid1");
                }
            }
        });
    }
}
function check1() {
    var upass=$("#upass").val();
    if(null==upass||upass==""){
        $("#upass1").text("×").removeClass("upass1");
    }else{
        $("#upass1").text("√").removeClass("upass1");
    }

}