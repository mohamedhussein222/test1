{assign var="type" value="1"}
{assign var="titlepage" value="Paidout"}
{include file="logohome.tpl"}



{literal}
<script language=javascript>
function go(p)
{
  document.opts.page.value=p;
  document.opts.submit();
}
</script>
{/literal}

<form method=post name=opts>
<input type=hidden name=a value=paidout>
<input type=hidden name=page value={$current_page}>
<table cellspacing=0 cellpadding=0 border=0 width=100%>
<tr>
 <td>
	<h3 style="color:#000;">Search Paid Out :</h3>
 </td>
 <td align=right>
<select name=month class=inpts>
{section name=month loop=$month}
<option value={$smarty.section.month.index+1} {if $smarty.section.month.index+1 == $frm.month}selected{/if}>{$month[month]}
{/section}
</select> &nbsp;
<select name=year class=inpts>
{section name=year loop=$year}
<option value={$year[year]} {if $year[year] == $frm.year}selected{/if}>{$year[year]}
{/section}
</select>
 </td>
 <td width=1% nowrap>
	&nbsp; <input type=submit value="Search now " class=sbmt>
 </td>
</tr></table>
</form>
<br>

<table cellspacing=1 cellpadding=2 border=0 width=100%  class="tab">
<tr>
 <th class=inheader>Username</th>
 <th class=inheader width=200>Date</th>
 <th class=inheader width=170>Amount</th>
</tr>
{if $stats}
{section name=s loop=$stats}
<tr>
 <td><b>{$stats[s].username}</b></td>
 <td><b>{$stats[s].dd}</b></td>
 <td align=right><b>{$currency_sign}{$stats[s].actual_amount}</b> <img src=images/{$stats[s].ec}.gif></td>
</tr>
{/section}
{else}
<tr>
 <td colspan=3 align=center>No transactions found</td>
</tr>
{/if}
{if $stats}
<tr>
 <td colspan=2><b>TOTAL</b></td>
 <td align=right><b>{$currency_sign}{$total_withdraw}</b></td>
</tr>
{/if}
</table>

{if $colpages > 1}
<center>
{if $prev_page > 0}
 <a href="javascript:go('{$prev_page}')">&lt;&lt;</a>
{/if}
{section name=p loop=$pages}
{if $pages[p].current == 1}
{$pages[p].page}
{else}
 <a href="javascript:go('{$pages[p].page}')">{$pages[p].page}</a>
{/if}
{/section}
{if $next_page > 0}
 <a href="javascript:go('{$next_page}')">&gt;&gt;</a>
{/if}
</center>
{/if}
</div>
</div>

{include file="footer_custume.tpl"}
