<#import "parts/common.ftl" as c>

<@c.page>
<div>
    <form method="post" action="/main">
        <input type="text" name="text" placeholder="Add text"/>
        <input type="tag" name="tag" placeholder="Add tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Send</button>
    </form>
</div>
<#list messages as message>
<div class="row">
    <div class="col">${message.text}</div>
    <div class="col">${message.tag}</div>
    <div class="col">${message.author.username}</div>
</div>
<#else>
No messages
</#list>
</@c.page>