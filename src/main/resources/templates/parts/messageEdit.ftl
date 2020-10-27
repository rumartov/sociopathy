<#include "security.ftl">

<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="title" placeholder="Add title"/>
        <input type="text" name="text" placeholder="Add text"/>
        <input type="tag" name="tag" placeholder="Add tag"/>
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Send</button>
    </form>
</div>