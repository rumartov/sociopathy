<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<form action="/registration" method="post">
    <input type="text" name="username" placeholder="User name" />
    <input type="password" name="password"  placeholder="password" />
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Button</button>
</form>
</body>
</html>