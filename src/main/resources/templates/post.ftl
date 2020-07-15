<#import "parts/common.ftl" as c>

<@c.page>
<div class="card>
    <div class="card my-3">
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
    </#if>
    <div class="m-2">
        <span>${message.title}</span>
        <span>${message.text}</span>
        <i>${message.tag}</i>
    </div>
    <div class="card-footer text-muted">
        ${message.author.username}
    </div>
</div>
</@c.page>