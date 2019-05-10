<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta name="copyright" content="B3log">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta http-equiv="Window-target" content="_top">
        <meta name="robots" content="none" />
        <title>${blogTitle} - 后台管理</title>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/default-base${miniPostfix}.css?${staticResourceVersion}" />
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/default-admin${miniPostfix}.css?${staticResourceVersion}" />
        <link type="text/css" rel="stylesheet" href="${staticServePath}/js/lib/CodeMirrorEditor/codemirror.min.css?${staticResourceVersion}" />
        <link type="text/css" rel="stylesheet" href="${staticServePath}/js/lib/highlight.js-9.6.0/styles/github.css?${staticResourceVersion}" />
        <link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
        <link rel="manifest" href="${servePath}/manifest.json">
    </head>
    <body onhashchange="admin.setCurByHash();">
        <div class="tip tip-msg"><span id="tipMsg"></span></div>
        <div id="allPanel">
            <div id="top">
                <a href="${servePath}" target="_blank" class="hover">
                    ${blogTitle}
                </a>
                <span class="icon-unordered-list top__menu none"
                      onclick="admin.toggleMenu()"></span>
                <span class="right">
                    <a href="${servePath}" title='${indexLabel}'>
                        <div class="avatar" style="background-image: url(${gravatar})"></div>
                        ${userName}
                    </a>
                    <a href='javascript:admin.logout();' title='${logoutLabel}'>注销</a>
                </span>
            </div>
            <div id="tabs">
                <ul>
                    <li>
                        <div id="tabs_main">
                            <a href="#main">
                                <span class="icon-refresh"></span> 后台首页
                            </a>
                        </div>
                    </li>
                    <li>
                        <div id="tabArticleTitle" class="tab-current" onclick="admin.collapseNav(this)">
                            <span class="icon-article"></span>
                            文章管理
                            <span class="icon-chevron-up right"></span>
                        </div>
                        <ul id="tabArticleMgt">
                            <li>
                                <div id="tabs_article">
                                    <a href="#article/article" onclick="admin.article.prePost()">发布文章</a>
                                </div>
                            </li>
                            <li>
                                <div id="tabs_article-list">
                                    <a href="#article/article-list">文章管理</a>
                                </div>
                            </li>
                            <li>
                                <div id="tabs_draft-list">
                                    <a href="#article/draft-list">草稿夹</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div id="tabs_comment-list">
                            <a href="#comment-list">
                                <span class="icon-cmts"></span> 评论管理
                            </a>
                        </div>
                    </li>
                    <li>
                        <div id="tabToolsTitle" onclick="admin.collapseNav(this)">
                            <span class="icon-setting"></span>
                            其它管理
                            <span class="icon-chevron-down right"></span>
                        </div>
                        <ul class="none" id="tabTools">
                            <li>
                                <div id="tabs_preference">
                                    <a href="#tools/preference">偏好设定</a>
                                </div>
                            </li>
                            <li>
                                <div id="tabs_link-list">
                                    <a href="#tools/link-list">友情链接</a>
                                </div>
                            </li>
                            <li>
                                <div id="tabs_user-list">
                                    <a href="#tools/user-list">用户管理</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div id="tabs_about">
                            <a href="#about">
                                <span class="icon-info"></span> 关于
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="tabs__bg" onclick="admin.toggleMenu()"></div>
            <div id="tabsPanel">
                <div id="tabsPanel_main" class="none"></div>
                <div id="tabsPanel_article" class="none"></div>
                <div id="tabsPanel_article-list" class="none"></div>
                <div id="tabsPanel_draft-list" class="none"></div>
                <div id="tabsPanel_link-list" class="none"></div>
                <div id="tabsPanel_preference" class="none"></div>
                <div id="tabsPanel_category-list" class="none"></div>
                <div id="tabsPanel_page-list" class="none"></div>
                <div id="tabsPanel_others" class="none"></div>
                <div id="tabsPanel_user-list" class="none"></div>
                <div id="tabsPanel_comment-list" class="none"></div>
                <div id="tabsPanel_plugin-list" class="none"></div>
                <div id="tabsPanel_about" class="none"></div>
            </div>
            <div class="clear"></div>
            <div class="footer">
                个人博客资源管理系统后台
            </div>
        </div>
        <script src="${staticServePath}/js/lib/compress/admin-lib.min.js"></script>
        <script src="${servePath}/js/lib/tiny_mce/tiny_mce.js"></script>
        <script src="${servePath}/js/lib/KindEditor/kindeditor-min.js"></script>
        <script src="${staticServePath}/js/common${miniPostfix}.js"></script>
        <#if "" == miniPostfix>
        <script src="${staticServePath}/js/admin/admin.js"></script>
        <script src="${staticServePath}/js/admin/editor.js"></script>
        <script src="${staticServePath}/js/admin/editorTinyMCE.js"></script>
        <script src="${staticServePath}/js/admin/editorKindEditor.js"></script>
        <script src="${staticServePath}/js/admin/editorCodeMirror.js"></script>
        <script src="${staticServePath}/js/admin/tablePaginate.js"></script>
        <script src="${staticServePath}/js/admin/article.js"></script>
        <script src="${staticServePath}/js/admin/comment.js"></script>
        <script src="${staticServePath}/js/admin/articleList.js"></script>
        <script src="${staticServePath}/js/admin/draftList.js"></script>
        <script src="${staticServePath}/js/admin/pageList.js"></script>
        <script src="${staticServePath}/js/admin/others.js"></script>
        <script src="${staticServePath}/js/admin/linkList.js"></script>
        <script src="${staticServePath}/js/admin/preference.js"></script>
        <script src="${staticServePath}/js/admin/pluginList.js"></script>
        <script src="${staticServePath}/js/admin/userList.js"></script>
        <script src="${staticServePath}/js/admin/categoryList.js"></script>
        <script src="${staticServePath}/js/admin/commentList.js"></script>
        <script src="${staticServePath}/js/admin/plugin.js"></script>
        <script src="${staticServePath}/js/admin/main.js"></script>
        <script src="${staticServePath}/js/admin/about.js"></script>
        <#else>
        <script src="${staticServePath}/js/admin/latkeAdmin${miniPostfix}.js?${staticResourceVersion}"></script>
        </#if>
        <#include "admin-label.ftl">
        ${plugins}
        <script >
            admin.inited();
        </script>
    </body>
</html>