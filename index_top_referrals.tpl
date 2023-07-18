{if $top_referrals}

{foreach from=$top_referrals item=s}

<div class="invest-single">
                	<div class="invest-name">
                    	<p>{$s.username}</p>
                    </div>
                    <div class="invest-dolar">
                    	<p>{$currency_sign}{$s.amount}</p>
                    </div>
                    
                </div>	
{/foreach}

{/if}