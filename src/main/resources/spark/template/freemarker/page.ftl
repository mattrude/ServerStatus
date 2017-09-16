<#macro page title="" historical=false reverse=false about=false>
<!DOCTYPE html>
<html>
<head>
    <!-- <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'> -->
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="300" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>
    <style type="text/css">
        body {
            color: rgba(0, 0, 0, 0.87);
            font-family: 'Roboto', sans-serif;
            font-weight: 400;
            background-color: #f1f1f1;
        }

        #main {
            padding: 40px 15px;
        }

        .container {
            max-width: 768px;
            background-color: #fff;
        }

        @media only screen and (max-width: 650px) {
            #table {
                font-size: 12pt;
                overflow-x: scroll
            }
        }

        @media only screen and (min-width: 650px) {
            #table {
                font-size: 16pt;
            }
            #table p {
		font-size: 14px;
                padding: 0 0 25px;
                margin: 0px;
	    }
        }

        h1 {
            font-weight: 600;
        }

        #page {
            padding-bottom: 40px;
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

        .btn {
            padding: 0 1px;
            color: #000;
            font-size: 9px;
        }

        .btn-secondary {
            background-color: yellow;
            border-color: yellow;
        }

        .alert-warning span {
            float: left;
        }

        .alert-warning p {
            padding-left: 25px;
            font-size: 14px;
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
            padding-top: 20px;
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div id="main" class="container offsetanchor">
    <div class="section-headder" style="padding-top:0;"><center>
        <h1 class="page-header text-center" style="border-bottom: 0px;margin:0 0 20px; 0;">XMPP Service Status Site</h1>
    </div>

    <#if reverse>
        <div class="alert alert-warning" role="alert">
            <span class="fa fa-info-circle" style="font-size:26px;"></span>
            <p>This page shows if the servers listed below are able to receive connections from the domain <b>${domain}</b>.</p>
        </div>
    </#if>

    <#if !about>
    <div id=table>
    </#if>
    <#if about>
    <div id=page>
    </#if>
        <#nested />
    </div>
</div>

<!-- Page Footer -->
<footer class="footer">
    <div class="container" style="background-color:#f1f1f1;">
        <div class="pull-left">
            <p><a href="/">Home</a><#if !about> | <a href="/about/">About</a></#if><#if !historical> | <a href="/historical/">Historical</a></#if></p>
        </div>
        <div class="pull-right">
            <p>&copy; 2017 by <a href="https://mattrude.com/">Matt Rude</a></p>
        </div>
    </div>
</footer>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>
</#macro>
