<#ftl output_format="HTML">
<#import "page.ftl" as page/>
<@page.page title="About XMPP Status Site" about=true>

    <h2>About This Site</h2>
    <p>This is the status site for my XMPP servers.  This site shows whether the server is up and accepting connections
       form clients and other servers.  It also shows the historical uptime of the servers. service about every 5 minutes.</p>

    <p>The server will connect to one of the <i>primary</i> domains, as a client, via a standerd JID to the C2S port 5222.
       It then will send a <code>ping</code> request to each of the other domains (both the <i>Remote Domains</i> and the
       <i>Primary Domains</i>) and wait for a response.  If it receives a response, it considers the domain up and
       <b style="color:green;">reachable</b>, if it does not receive the response in the prescribed time period, it will
       consider the domain down and <b style="color:red;">unreachable</b>.</p>

    <p>This site checks the XMPP service about every 5 minutes.</p>

    <h2>Site Source</h2>
    <p>The software running this site was originally written by <a href="https://gultsch.de/">Daniel Gultsch</a>, the
       source is available in the Github repository 
       <a href="https://github.com/iNPUTmice/ServerStatus">iNPUTmice/ServerStatus</a> and is licensed under the 
       <a href="https://github.com/iNPUTmice/ServerStatus/blob/master/LICENSE">3 Clause BSD License</a>.</p>

    <p>Customizations to the original software, as shown on this site, is available as a fork in the Github 
       repository <a href="https://github.com/mattrude/ServerStatus">mattrude/ServerStatus</a>.</p>
</@page.page>
