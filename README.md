XMPP Server Status
==================

[![Build Status](https://travis-ci.org/mattrude/ServerStatus.svg?branch=master)](https://travis-ci.org/mattrude/ServerStatus) [![GitHub license](https://img.shields.io/github/license/mattrude/ServerStatus.svg)](https://github.com/mattrude/ServerStatus/blob/master/LICENSE) [![GitHub tag](https://img.shields.io/github/tag/mattrude/ServerStatus.svg)](https://github.com/mattrude/ServerStatus/tags) [![Open Issues](https://img.shields.io/github/issues-raw/mattrude/ServerStatus.svg)](https://github.com/mattrude/ServerStatus/issues) [![Maintenance](https://img.shields.io/maintenance/yes/2018.svg)](http://github.com/mattrude/ServerStatus)

This project aims to provide an all-in-one solution for monitoring the uptime of one or many XMPP servers.

It’s primary job is to answer the “is X down or is it just me?” question and also to display the status of some (common) S2S connections. Furthermore it will record historic data and display the average uptime over the last 24 hours, 7 days, 30 days and a year.

It acts as a status page for the conversations.im XMPP server on [status.im.mattrude.com](https://status.im.mattrude.com).

This site uses [Bootstrap 4.0](https://getbootstrap.com/).

Compile & Deploy
----------------

Configuration happens in a file called `config.json`.


```
git clone https://github.com/mattrude/ServerStatus.git
cd ServerStatus
mvn package
cp config.example.json config.json
java -jar target/ServerStatus.jar -c /path/to/config.json
```

License
-------

```
Copyright (c) 2017, Daniel Gultsch All rights reserved.
Copyright (c) 2017-2018, Matt Rude All rights reserved.

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
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
