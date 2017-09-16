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

    <p>Customizations to the original software, as shown on this site, is available as a fork in the git
       repository <a href="https://github.com/mattrude/ServerStatus">ServerStatus</a>.</p>

    <h2>License</h2>
    <pre>Copyright (c) 2017, Daniel Gultsch All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.</pre>
</@page.page>
