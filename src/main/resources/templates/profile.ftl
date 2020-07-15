<#import "parts/common.ftl" as c>

<@c.page>
<div>
    <h1>${user.username}<h1>
</div>
<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
        <a href="main/post/${message.postId}">
            <#if message.filename??>
            <img src="/img/${message.filename}" class="card-img-top">
            </#if>
        </a>
        <div class="m-2">
        <a href="main/post/${message.postId}">
            <span>${message.title}</span>
        </a>
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