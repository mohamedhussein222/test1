{assign var="title" value="Please confirm your deposit"}
{include file="header.tpl"}

{if $ok == 1}


<table cellspacing=0 cellpadding=2 class="tab">
<tr>
 <th>Plan:</th>
 <td>{$deposit.name|escape:html}</td>
</tr>
<tr>
 <th>Profit:</th>
 <td>{$deposit.percent}% {if $deposit.period == 'end'}after {$deposit.periods} days{else}{$deposit.period_name} for {$deposit.periods} {$deposit.time_units}{if $deposit.time_units != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}</td>
</tr>
<tr>
 <th>Principal Return:</th>
 <td>{if $deposit.principal_return}Yes{if $deposit.principal_return_hold_percent > 0}, with {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}{else}No (included in profit){/if}</td>
</tr>
<tr>
 <th>Principal Withdraw:</th>
 <td>{if $deposit.principal_withdraw}Available with {$deposit.principal_withdraw_hold_percent|number_format:2}% fee {if $deposit.principal_withdraw_duration_min}after {$deposit.principal_withdraw_duration_min|number_format} days{/if}{if $deposit.principal_withdraw_duration_max} before {$deposit.principal_withdraw_duration_max|number_format} days{/if}{else}Not available{/if}</td>
</tr>
{if $deposit.compound != -1}
<tr>
 <th>Compound:</th>
 <td>{$deposit.compound|number_format}%</td>
</tr>
{/if}
<tr>
 <th>Amount:</th>
 <td>{$currency_sign}{$deposit.amount|number_format:2}</td>
</tr>
</table>

<form name=spend method=post>

<input type=hidden name=a value=deposit>
<input type=hidden name=action value=confirm>
<input type=hidden name=type value={$type}>
<input type=hidden name=h_id value={$h_id}>
<input type=hidden name=amount value="{$famount}">
<input type=hidden name=compound value={$compound}>
<br><input type=submit value="Process" class=sbmt style="width:30%;"> &nbsp;
<input type=button class=sbmt value="Cancel" style="width:30%;" onclick="document.location='?a=deposit'">
</form>

{else}
{if $max_deposit_less == 1}Sorry, the maximal deposit is {$max_deposit_format}.<br>{/if}
{if $wrong_paln == 1} The Plan does not exist. {/if} 
{if $not_enough_funds == 1} You have not enough funds to complete the operation.<br>{/if}
{if $less_than_min == 1}The minimal spend amount for '{$plan_name}' is {$currency_sign}{$min_amount}.<br>{/if}
{if $on_hold == 1}Sorry, this amount on hold now.<br>{/if}
<br>
Click <a href="?a=deposit">here</a> and try again.
{/if}

{include file="footer.tpl"}
