{assign var="type" value="1"}
{assign var="titlepage" value="Investors Last 10"}
{include file="logohome.tpl"}



<table class=tab cellspacing=1 cellpadding=2 border=1 width=100%>
<tr>
 <td class=inheader>Username</td>
 <td class=inheader width=200>Reg. Date</td>
 <td class=inheader width=170>Deposit</td>
</tr>
{if $top}
{section name=s loop=$top}
<tr>
 <td><b>{$top[s].username}</b></td>
 <td><b>{$top[s].dd}</b></td>
 <td align=right><b>{$currency_sign}{$top[s].balance} <img src=images/{$top[s].ec}.gif></b></td>
</tr>
{/section}
{else}
<tr>
 <td colspan=3 align=center>No investors found</td>
</tr>
{/if}
</table>

{include file="footer_custume.tpl"}
