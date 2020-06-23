<#import "parts/common.ftl" as c>

<@c.page>
<div>
    <form method="post"  enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Add text"/>
        <input type="tag" name="tag" placeholder="Add tag"/>
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Send</button>
    </form>
</div>

<div class="card-columns">
    <#list messages as message>
    <div class="card my-3">
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
    </#if>
    <div class="m-2">
        <span>${message.text}</span>
        <i>${message.tag}</i>
    </div>
    <div class="card-footer text-muted">
        ${message.author.username}
    </div>
</div>
<#else>
No message
</#list>
</div>
</@c.page>