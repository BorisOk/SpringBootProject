<#import "detail/overall.ftlh" as o>
<@o.page>
    User editor
    <form method="post" action="/user">
        <label>
            <input type="text" name="username" value="${user.username}" />
        </label>
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} />${role}
                </label>
            </div>
        </#list>
        <input type="hidden" name="userId" value="${user.id}" />
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Save</button>
    </form>
</@o.page>