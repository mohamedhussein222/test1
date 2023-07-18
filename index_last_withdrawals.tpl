{if $last_withdrawals}


                   
{foreach from=$last_withdrawals item=s}
<tbody>
<tr>
 <td class=menutxt>{$s.username}</td>
<td class=menutxt ><img src="images/{$s.ec}.gif"></td>
 <td class=menutxt style="">{$currency_sign}{$s.amount}</td>
</tr>
</tbody>
					
					

              
	{/foreach}

{/if}
