{if $_config.manager_html5_cache EQ 1}<!DOCTYPE HTML>{else}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">{/if}

<html xmlns="http://www.w3.org/1999/xhtml" {if $_config.manager_direction EQ 'rtl'}dir="rtl"{/if} lang="{$_config.manager_lang_attribute}" xml:lang="{$_config.manager_lang_attribute}"{if $_config.manager_html5_cache EQ 1} manifest="{$_config.manager_url}cache.manifest.php"{/if}>
<head>
<title>{$_config.site_name}{if $_pagetitle} :: {$_pagetitle}{/if}</title>
<meta http-equiv="Content-Type" content="text/html; charset={$_config.modx_charset}" />

{if $_config.manager_favicon_url}<link rel="shortcut icon" type="image/x-icon" href="{$_config.manager_favicon_url}" />{/if}

{if $_config.compress_css}
<link rel="stylesheet" type="text/css" href="{$_config.manager_url}assets/ext3/resources/css/ext-all-notheme-min.css" />
<link rel="stylesheet" type="text/css" href="{$_config.manager_url}min/?f={$_config.manager_url}templates/trendy/css/xtheme-modx.css,{$_config.manager_url}templates/trendy/css/index.css" />
{else}
<link rel="stylesheet" type="text/css" href="{$_config.manager_url}assets/ext3/resources/css/ext-all-notheme-min.css" />
<link rel="stylesheet" type="text/css" href="{$_config.manager_url}templates/trendy/css/xtheme-modx.css" />
<link rel="stylesheet" type="text/css" href="{$_config.manager_url}templates/trendy/css/index.css" />
{/if}
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Cuprum">

<script src="{$_config.manager_url}assets/ext3/adapter/ext/ext-base.js" type="text/javascript"></script>
<script src="{$_config.manager_url}assets/ext3/ext-all.js" type="text/javascript"></script>
<script src="{$_config.manager_url}assets/modext/core/modx.js" type="text/javascript"></script>
<script src="{$_config.connectors_url}lang.js.php?ctx=mgr&topic=topmenu,file,resource,{$_lang_topics}&action={$smarty.get.a|strip_tags}" type="text/javascript"></script>
<script src="{$_config.connectors_url}layout/modx.config.js.php?action={$smarty.get.a|strip_tags}{if $_ctx}&wctx={$_ctx}{/if}" type="text/javascript"></script>

{if $_config.compress_js_groups}
<script src="{$_config.manager_url}min/?g=coreJs1" type="text/javascript"></script>
<script src="{$_config.manager_url}min/?g=coreJs2" type="text/javascript"></script>
<script src="{$_config.manager_url}min/?g=coreJs3" type="text/javascript"></script>
{/if}

{$maincssjs}
{foreach from=$cssjs item=scr}
{$scr}
{/foreach}

<!--[if IE]>
<style type="text/css">body { behavior: url("{$_config.manager_url}templates/trendy/css/csshover3.htc"); }</style>
<link rel="stylesheet" type="text/css" href="{$_config.manager_url}templates/trendy/css/ie.css" />
<![endif]-->
</head>
<body id="modx-body-tag">

<div id="modx-browser"></div>
<div id="modx-container">
    <div id="modx-mainpanel">
        <div id="modx-header">
           <div id="topbar">
				<div id="modx-logo"><a href="http://modx.com" onclick="window.open(this.href); return false;">
					<img src="templates/{$_config.manager_theme}/images/style/modx-logo-header.png" alt="" /></a>
				</div>
								
				<h1 class="left">{$_config.site_name}</h1>
				<div class="right" id="login">
					<span>
						<a class="logout" href="javascript:;" onclick="MODx.logout();"><span>&nbsp;</span>{$_lang.logout}</a>
						<a id="modx-login-user" href="?a={$profileAction}">{$username}</a>
					</span>
				</div>
				<!-- End #login -->
				<span class="modx-version">MODx Revolution {$_config.settings_version} ({$_config.settings_distro})</span>
			</div>
			<!-- End #topbar -->				
				
			<div id="nav">				
				<ul class="sf-menu">
					{$navb}
				</ul>
			</div>
			<!-- End #nav -->
        </div>
        
        <div id="modAB"></div>
        <div id="modx-leftbar"></div>
        <div id="modx-content">
            <div id="modx-panel-holder"></div>