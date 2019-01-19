<#macro page title="" historical=false reverse=false about=false>
<!DOCTYPE html>
<html>
<head>
    <!-- <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'> -->
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="60" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>
    <style type="text/css">
        body {
            color: rgba(0, 0, 0, 0.87);
            font-family: 'Roboto', sans-serif;
            font-weight: 400;
            background-color: #f1f1f1;
        }

        #about, #historical, #main {
            padding: 40px 15px 40px 15px;
            margin-bottom: 60px;
        }

        .container {
            max-width: 768px;
            background-color: #fff;
        }

        @media only screen and (max-width: 412px) {
            #table {
                font-size: 12pt;
                overflow-x: scroll
            }
        }

        @media only screen and (min-width: 412px) {
            #table {
                font-size: 16pt;
            }
            #table p {
		font-size: 14px;
	    }
        }

        h1 {
            font-weight: 700;
        }

        h1, h2, h3, h4, h5, h6 {
            margin-top: .5rem;
            margin-bottom: .5rem;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        table.rightbound tr td:not(:first-child) {
            text-align: right;
        }

        th {
            padding-right: 6px;
            padding-left: 6px;
            line-height: 1;
        }

        td {
            padding-right: 6px;
            padding-left: 6px;
            width: 100%;
        }

        table thead tr th {
	    text-align: center;
        }

        table tr:hover td {
            background-color: #e0e0e0;
        }

        table tbody tr td.successful {
            color: #43a047;
            text-align: right;
        }

        table tbody tr td.amber {
            color: #e8b800;
            text-align: right;
        }

        table tbody tr td.unsuccessful {
            color: #e53935;
            text-align: right;
        }

        table tbody tr td.info {
            color: rgba(0, 0, 0, 0.54);
        }

        table tr td sup small {
            color: rgba(0, 0, 0, 0.54);
        }

        .alert-warning span {
            float: left;
        }

        .alert-warning p {
            padding-left: 30px;
            font-size: 14px;
        }

        #last-updated {
            margin: 0px;
        }

        a {
            color: #3f51b5;
        }

        p.small {
            font-size: 10pt;
        }

        p.info {
            color: rgba(0, 0, 0, 0.54);
	    padding: 10px 0;
        }

        /* Sticky footer styles
        -------------------------------------------------- */
        html {
            position: relative;
            min-height: 100%;
        }
        body {
            /* Margin bottom by footer height */
        //    margin-bottom: 60px;
        }
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            /* Set the fixed height of the footer here */
            height: 60px;
            padding: 20px 0;
            background-color: #f1f1f1;
        }
    </style>
</head>

<body>
<#if about>
<div id="about" class="container offsetanchor">
<#elseif historical>
<div id="historical" class="container offsetanchor">
<#else>
<div id="main" class="container offsetanchor">
</#if>
    <div class="section-headder" style="padding-top:0;"><center>
        <h1 class="page-header text-center" style="border-bottom: 0px;margin:0 0 20px;">XMPP Service Status Site</h1>
    </div>

    <#if !about>
    <div id=table>
    <#else>
    <div id=page>
    </#if>
        <#nested />
    </div>
</div>

<!-- Page Footer -->
<footer class="footer">
    <div class="container text-center" style="background-color:#f1f1f1;">
            <div class="float-md-left">
                <p><a href="/">Home</a><#if !about> | <a href="/about/">About</a></#if><#if !historical> | <a href="/historical/">Historical</a></#if></p>
            </div>
            <div class="float-md-right">
                <p>&copy; 2019 by <a href="https://im.mattrude.com/#about">Matt Rude</a></p>
            </div>
    </div>
</footer>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
</#macro>
