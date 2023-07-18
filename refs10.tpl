{assign var="type" value="1"}
{assign var="titlepage" value="Top Referrals"}
{include file="logohome.tpl"}




<table cellspacing=1 cellpadding=2 border=0 width=100%  class="tab">
<tr>
    <th class=inheader>#</th>
    <th class=inheader>Username</th>
    <th class=inheader width=200><b>Active</b></th>
    <th class=inheader width=170><b>Total</b></th>
</tr>
{if $stats}
{section name=s loop=$stats}
<tr>
 <td align=center><b>{$smarty.section.s.index+1}</b></td>
 <td><b>{$stats[s].username}</b></td>
 <td align=right><b>{$stats[s].active_col}</b></td>
 <td align=right><b>{$stats[s].col}</b></td>
</tr>
{/section}
{else}
<tr>
 <td colspan=4 align=center>No referrers found</td>
</tr>
{/if}
</table>
<br><br>Last reset on {$start_date}

</div></div>
{include file="footer_custume.tpl"}
