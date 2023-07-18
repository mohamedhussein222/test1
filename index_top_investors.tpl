{if $top_investors}

{foreach from=$top_investors item=s}

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