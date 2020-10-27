<#include "security.ftl">
<#import "pager.ftl" as p>

<@p.pager url page />
<div class="card-columns" id="message-list">
    <#list page.content as message>
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