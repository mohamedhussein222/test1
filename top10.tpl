{assign var="type" value="1"}
{assign var="titlepage" value="Investors Top 10"}
{include file="logohome.tpl"}


<table class=tab cellspacing=1 cellpadding=2 border=0 width=100%>
<tr>
 <th class=inheader>Username</th>
 <th class=inheader width=200>Reg. Date</th>
 <th class=inheader width=170>Deposit</th>
</tr>
{if $top}
{section name=s loop=$top}
<tr>
 <td><b>{$top[s].username}</b></td>
 <td><b>{$top[s].dd}</b></td>
 <td align=right><b>{$currency_sign}{$top[s].balance}</b></td>
</tr>
{/section}
{else}
<tr>
 <td colspan=3 align=center>No investors found</td>
</tr>
{/if}
</table>

{include file="footer_custume.tpl"}
