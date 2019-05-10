<#include "macro-common-page.ftl">

<@commonPage "${welcomeToSoloLabel}!">
<h2>登录</h2>
<div id="github">
    <br>
    <button class="hover" onclick="$('#github').hide();$('.form').show()">使用本地账号</button>
    <br>
    <a href="${servePath}/register"><span>没有账号？去注册</span></a>
</div>

<div class="form none">
    <label for="userEmail">
    用户名（邮箱）
    </label>
    <input id="userEmail" tabindex="1" />
    <label for="userPassword">
    密码
    </label>
    <input type="password" id="userPassword" tabindex="2" />
    <button onclick='login();'>登录</button>
    <a href="${servePath}/register"><span>去注册</span></a>
    <span id="tip">${resetMsg}</span>
</div>
<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript">
    (function() {
        $("#userEmail").focus();

        $("#userPassword, #userEmail").keypress(function(event) {
            if (13 === event.keyCode) { // Enter pressed
                login();
            }
        });

        // if no JSON, add it.
        try {
            JSON
        } catch (e) {
            document.write("<script src=\"${staticServePath}/js/lib/json2.js\"><\/script>");
        }
    })();

    var login = function() {
        if ($("#userPassword").val() === "") {
            $("#tip").text("${passwordEmptyLabel}");
            $("#userPassword").focus();
            return;
        }

        var requestJSONObject = {
            "userEmail": $("#userEmail").val(),
            "userPassword": $("#userPassword").val()
        };

        $("#tip").html("<img src='${staticServePath}/images/loading.gif'/> loading...")

        $.ajax({
            url: "${servePath}/login",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(requestJSONObject),
            error: function() {
                // alert("Login error!");
            },
            success: function(data, textStatus) {
                if (!data.isLoggedIn) {
                    $("#tip").text(data.msg);
                    return;
                }

                window.location.href = data.to;
            }
        });
    };
</script>
</@commonPage>