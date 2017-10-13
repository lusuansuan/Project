
/*是否登录验证*/
function IsLogin(res)//
{
    if (res.Islogin != undefined && res.Islogin == 0)//
    {
        window.location.href = '/Home/Login';
        return;
    }
}

/*邮箱格式验证：正确返回true , 反之 false*/
function IsMail(data)//
{
    if (data.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/))//
    {
        return true;
    }
    return false;
}
/*手机格式验证：正确返回true , 反之 false*/
function IsPhone(data)//
{
    if (data.match(/^(((13[0-9]{1})|(15([0-9]){1})|(18[0-9]{1})|(14([0-9]){1})|(17[0-9]{1})|)+\d{8})$/))//
    {
        return true;
    }
    return false;
}
//重写layer提示
function LayerMsg(txt)//
{
    layer.msg(txt, {
        time: 1500 //1秒关闭（如果不配置，默认是3秒）
    })
}

//去除字符串里所有空格
function RemoveWhiteSpace(data)//
{
    return data.replace(/ /g, '');
}

//获取物理地址
function GetPhyPath(src)//
{
    return 'http://127.0.0.1:9000' + src;
}