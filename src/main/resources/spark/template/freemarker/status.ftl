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
    <p>This site is here to anwser a simple question, can the users on server ${domain} connect to users on a questioned server.  The below table tries to give you a snapshot of this server ${domain}'s current connection status with other servers.</p>

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
    <h1 style="color:red;">The <b>${domain}</b> seems to be down</h1>
    </#if>
<div id="last-updated" class="pull-right">
    <p class="small info">Last updated: ${lastUpdated?datetime} UTC</p>
</div>
<#else>
<p>No current information available on ${domain}</p>
</#if>
</@page.page>
