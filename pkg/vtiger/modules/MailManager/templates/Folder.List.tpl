{************************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.1
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ************************************************************************************}
{if $FOLDERS}
<table cellpadding=0 cellspacing=0 border=0 class="small" width="98%">
    <tr>
        <td class="dvtSelectedCell" style="padding-left: 5px; padding-bottom: 5px;">{'LBL_Folders'|@getTranslatedString}</td>
    </tr>
    <tr></tr>
    <tr>
        <td class="dvtContentSpace">
        <table cellpadding=2 cellspacing=0 border=0 class="small" width="100%">
        {foreach item=FOLDER from=$FOLDERS}
        <tr>
            <td>
                <a class="mm_folder" id='_mailfolder_{$FOLDER->name()}' href='#{$FOLDER->name()}' onclick="MailManager.clearSearchString(); MailManager.folder_open('{$FOLDER->name()}'); "
{* JFV - convert imap7 encoding *}
{*                >{if $FOLDER->unreadCount()}<b>{$FOLDER->name()} ({$FOLDER->unreadCount()})</b>{else}{$FOLDER->name()}{/if}</a> *}
                >{if $FOLDER->unreadCount()}<b>{$FOLDER->name()|jfv_utf72uft8} ({$FOLDER->unreadCount()})</b>{else}{$FOLDER->name()|jfv_utf72uft8}{/if}</a>
{* JFV END *}
            </td>
        </tr>
        {/foreach}
        </table>
        </td>
    </tr>
</table>
{/if}