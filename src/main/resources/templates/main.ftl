<#import "parts/common.ftl" as c>

<@c.page>
<div>
    <form method="post" action="/main">
        <input type="text" name="text" placeholder="Add text"/>
        <input type="tag" name="tag" placeholder="Add tag"/>
        <button type="submit">Send</button>
    </form>
</div>
<#list messages as message>
<div>
    ${message.text}
    ${message.tag}
</div>
<#else>
No messages
</#list>
</@c.page>
