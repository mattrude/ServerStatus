<#ftl output_format="HTML">
<#import "page.ftl" as page/>
<#assign title="Reverse reachability for ${domain}">
<@page.page title="Reverse reachability for ${domain}" historical=false reverse=true>
<h2>${title}</h2>
<p>This page shows if the servers listed below are able to receive connections from the domain <b>${domain}</b>.</p>
<table class="rightbound">
    <#list pingResults as result>
        <tr>
            <td><a href="/${result.getServer()}/">${result.getServer()}</a></td>
            <td class="<#if result.isSuccessful()>successful">reachable<#else>unsuccessful">unreachable</#if></td>
        </tr>
    </#list>
</table>
</@page.page>
