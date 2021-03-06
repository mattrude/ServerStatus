<#ftl output_format="HTML">
<#import "page.ftl" as page/>
<@page.page title="XMPP Server Status for ${domain}" historical=false>
<#if serverStatus??>
    <#assign isLoggedIn = serverStatus.isLoggedIn()>
    <#assign pingResults = serverStatus.getPingResults()>
    <#assign lastUpdated = serverStatus.getDate()>
    <#assign linkReverse = 1 < availableDomains?size>
    <#if isLoggedIn>

    <h2>${domain} is up and running</h2>
    <p>This site is here to anwser a simple question, can the users on the <a href="https://xmpp.org/" target="_blank">xmpp</a> server, for the domain <a href="https://im.${domain}" target="_blank">${domain}</a>, connect to users on other server.  The below table tries to give you a snapshot of the ${domain} domain's current connection status with other servers.</p>
    <p style="float:right;"><a href="https://caas.im.mattrude.com/server/${domain}/"><img src="https://caas.im.mattrude.com/badge/${domain}"></a></p>
    <h3>Primay Domains</h3>
    <table>
        <#list pingResults as result>
            <#if availableDomains?seq_contains(result.getServer())>
                <tr>
                    <td>
                        <a href="/<#if availableDomains?seq_index_of(result.getServer()) != 0>${result.getServer()}/</#if>">${result.getServer()}</a>
                    </td>
                    <td class="<#if result.isSuccessful()>successful">reachable<#else>unsuccessful">unreachable</#if></td>
                </tr>
            </#if>
        </#list>
    </table>

    <h3>Remote Domains</h3>
    <table>
        <#list pingResults as result>
        <#if !availableDomains?seq_contains(result.getServer())>
        <tr>
            <td>
               <a href="/reverse/${result.getServer()}">${result.getServer()}</a>
            </td>
            <td class="<#if result.isSuccessful()>successful">reachable<#else>unsuccessful">unreachable</#if></td>
        </tr>
        </#if>
        </#list>
    </table>
    <#else>
    <h1 style="color:red;">The <a href="https://xmpp.org/" style="color:red;">XMPP</a> service for the domain <b>${domain}</b> seems to be down</h1>
    <p></p>
    </#if>
<div id="last-updated" class="float-right">
    <p class="small info">Last updated: ${lastUpdated?datetime} UTC</p>
</div>
<#else>
<h2 style="color:gold;">No current information available on ${domain}</h2>
<p>There is not any information for the domain ${domain}, yet.  That will most likly change very shortly, so check back soon.</p>
</#if>
</@page.page>
