<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <#if known>
        <h5>Hello, ${name}</h5>
    <#else>
        <h5>Hello, guest</h5>
    </#if>
</@c.page>