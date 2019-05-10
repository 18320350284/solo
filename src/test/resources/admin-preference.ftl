<div id="tabPreference" class="sub-tabs fn-clear">
    <ul>
        <li>
            <div id="tabPreference_config">
                <a class="tab-current" href="#tools/preference/config">信息配置</a>
            </div>
        </li>
        <li>
            <div id="tabPreference_signs">
                <a href="#tools/preference/signs">签名档</a>
            </div>
        </li>
        <li>
            <div id="tabPreference_setting">
                <a href="#tools/preference/setting">参数设置</a>
            </div>
        </li>
    </ul>
</div>
<div id="tabPreferencePanel" class="sub-tabs-main">
    <div id="tabPreferencePanel_config" class="form">
        <div class="clear"></div>
        <label for="blogTitle">博客标题：</label>
        <input id="blogTitle" type="text"/>
        <label for="blogSubtitle">博客子标题：</label>
        <input id="blogSubtitle" type="text"/>
        <label for="blogHost">博客地址：</label>
        <input id="blogHost" type="text" value="${servePath}" readonly="true"/>
        <label for="noticeBoard">公告栏：</label>
        <textarea rows="6" id="noticeBoard"></textarea>
        <label for="footerContent">页脚：</label>
        <textarea rows="2" id="footerContent"></textarea><br><br>
        <button onclick="admin.preference.update()" class="right">更新</button>
        <div class="clear"></div>
    </div>

    <div id="tabPreferencePanel_setting" class="none form">
        <div class="clear"></div>
        <label for="localeString">语言：</label>
        <select id="localeString">
            <option value="zh_CN">简体中文</option>
        </select>
        <label for="timeZoneId">时区：</label>
        <select id="timeZoneId">
        ${timeZoneIdOptions}
        </select>
        <label for="articleListDisplay">文章列表显示方式：</label>
        <select id="articleListDisplay">
            <option value="titleOnly">仅标题</option>
            <option value="titleAndAbstract">标题+摘要</option>
            <option value="titleAndContent">标题+正文</option>
        </select>
        <label for="mostUsedTagDisplayCount">首页标签显示数：</label>
        <input id="mostUsedTagDisplayCount" class="normalInput" type="text"/>
        <label for="recentCommentDisplayCount">最新评论显示数目：</label>
        <input id="recentCommentDisplayCount" class="normalInput" type="text"/>
        <label for="mostCommentArticleDisplayCount">评论最多文章显示数目：</label>
        <input id="mostCommentArticleDisplayCount" class="normalInput" type="text"/>
        <label for="mostViewArticleDisplayCount">访问最多文章显示数目：</label>
        <input id="mostViewArticleDisplayCount" class="normalInput" type="text"/>
        <label for="articleListDisplayCount">分页每页显示文章数：</label>
        <input id="articleListDisplayCount" class="normalInput" type="text"/>
        <label for="articleListPaginationWindowSize">分页页码最大宽度：</label>
        <input id="articleListPaginationWindowSize" class="normalInput" type="text"/>
        <label for="randomArticlesDisplayCount">随机阅读显示数目：</label>
        <input id="randomArticlesDisplayCount" class="normalInput" type="text"/>
        <label for="relevantArticlesDisplayCount">相关阅读显示数目：</label>
        <input id="relevantArticlesDisplayCount" class="normalInput" type="text"/>
        <label for="externalRelevantArticlesDisplayCount">站外相关阅读显示数目：</label>
        <input id="externalRelevantArticlesDisplayCount" class="normalInput" type="text"/>
        <label for="enableArticleUpdateHint">更新提示：</label>
        <input id="enableArticleUpdateHint" type="checkbox" class="normalInput"/>
        <label for="allowVisitDraftViaPermalink">链接访问草稿：</label>
        <input id="allowVisitDraftViaPermalink" type="checkbox" class="normalInput"/>
        <label for="commentable">允许评论：</label>
        <input id="commentable" type="checkbox" class="normalInput"/>
        <label for="allowRegister">允许注册：</label>
        <input id="allowRegister" type="checkbox" class="normalInput"/>
        <label for="feedOutputMode">订阅输出模式：</label>
        <select id="feedOutputMode">
            <option value="abstract">摘要</option>
            <option value="fullContent">全文</option>
        </select>
        <label for="feedOutputCnt">订阅输出文章数：</label>
        <input id="feedOutputCnt" class="normalInput" type="text"/><br/><br/>
        <button class="right" onclick="admin.preference.update()">更新</button>
        <div class="clear"></div>
    </div>

    <div id="tabPreferencePanel_skins" class="none form">
        <table class="form" width="100%" cellpadding="0" cellspacing="0">
            <tbody>
            <tr>
                <td>
                    <button style="float: right" onclick="admin.preference.update()">${updateLabel}</button>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="skinMain"></div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <div id="tabPreferencePanel_signs" class="none form">
        <div class="clear"></div>
        <button id="preferenceSignButton1">签名档1</button>
        <textarea rows="8" id="preferenceSign1"></textarea>
        <button id="preferenceSignButton2">签名档2</button>
        <textarea rows="8" id="preferenceSign2"></textarea>
        <button id="preferenceSignButton3">签名档3</button>
        <textarea rows="8" id="preferenceSign3"></textarea><br><br>
        <button onclick="admin.preference.update()" class="right">更新</button>
        <div class="clear"></div>
    </div>

</div>
${plugins}