<div>
    <div id="linkTable"></div>
    <div id="linkPagination" class="margin12 right"></div>
</div>
<div class="clear"></div>
<div class="form form__no-table">
添加链接
    <label>标题：</label>
    <input id="linkTitle" type="text"/>
    <label>URL：</label>
    <input id="linkAddress" type="text"/>
    <label>描述：</label>
    <input id="linkDescription" type="text"/> <br><br>
    <button onclick="admin.linkList.add();" class="right">保存</button>
    <div class="clear"></div>
</div>
<div id="updateLink" class="none form form__no-table" data-title="${updateLinkLabel}">
    <label>标题：</label>
    <input id="linkTitleUpdate" type="text"/>
    <label>URL：</label>
    <input id="linkAddressUpdate" type="text"/>
    <label>描述：</label>
    <input id="linkDescriptionUpdate" type="text"/><br><br>
    <button onclick="admin.linkList.update();" class="right">更新</button>
    <div class="clear"></div>
</div>
${plugins}