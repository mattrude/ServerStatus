<#ftl output_format="HTML">
<#import "page.ftl" as page/>
<@page.page title="Historical Uptime Statistics" historical=true>
<h2>Historical Uptime Statistics</h2>
<p>This page shows the historical uptime of each of the <i>Primary Domains</i>.<br />
<small><i>Being <i>up</i> is defined being able to log into a server with a client.</i></small></p>
<#if serverMap?size == 0>
    <p class="info">Calculating Historical Data</p>
<#else>
<table class="rightbound">
    <thead>
    <tr>
        <th></th>
        <#list durations as duration>
            <th><#if duration == 1>24 hours<#else>${duration} days</#if></th>
        </#list>
    </tr>
    </thead>
    <#list serverMap as server, historicalData>
        <tr>
            <td><a href="/<#if availableDomains?seq_index_of(server) != 0>${server}/</#if>">${server}</a></td>
            <#list durations as duration>
                <#if historicalData.isAvailableForDuration(duration)>
                    <#assign availability=historicalData.getForDuration(duration)>
                    <td class="<#if 98.00 < availability>successful<#elseif 95.00 < availability>amber<#else>unsuccessful</#if>">${availability?string["0.##"]}&percnt;</td>
                <#else>
                    <td class="info">N/A</td>
                </#if>
            </#list>
        </tr>
    </#list>
</table>
</#if>
</@page.page>
