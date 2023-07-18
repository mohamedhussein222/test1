{assign var="title" value="My account"}
{include file="header.tpl"}

{if $userinfo.umessages}
<ul>
{foreach from=$userinfo.umessages item=m}
<li>{$m.text|escape:html|nl2br}</li>
{/foreach}
</ul>
{/if}


{if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''} <b>Note: currently you have not specified 
a Transaction code. The Transaction code strengthens your funds security in our 
system. The code is required to withdraw funds from your account{if $settings.internal_transfer_enabled} 
and for internal transfer to another user account{/if}. Just do not change 'Transaction 
code' in your account information if you do not want to use this feature. <a href=?a=edit_account>Click 
here</a> to specify a new transaction code .</b> <br>
<br>
{/if}

        	<div class="navigation col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="tik col-lg-12 col-md-12 col-sm-12 col-xs-12" align="center">
            <div class="contents1">
                <p><span><img src="images/bc.png" /></span></p>
                <p style="padding-top: 120px;">Account Balance:</p>
                <p>{$currency_sign}<b>{$ab_formated.total}</b></p>
            </div>
            <div class="contents1">
                <p><span><img src="images/id.png"   /></span></p>
                <p style="padding-top: 120px;">Active Deposit:</p>
                <p>{$currency_sign}<b>{$ab_formated.active_deposit}</b></p>
            </div>
            <div class="contents1">
                <p><span><img src="images/ems.png"   /></span></p>
                <p style="padding-top: 120px;">Earned Total:</p>
                <p>{$currency_sign}<b>{$ab_formated.earning}</b></p>
            </div>
            <div class="contents1">
                <p><span><img src="images/sb.png"   /></span></p>
                <p style="padding-top: 120px;">Withdraw Total:</p>
                <p>{$currency_sign}<b>{$ab_formated.withdrawal}</b></p>
            </div>
        </div>
        <div class="member_detail col-lg-12 col-md-12 col-sm-12 col-xs-12" align="center">
            <div class="left col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="boxcontent table-responsive col-lg-10 col-md-10 col-sm-10 col-xs-10">
                    <div class="memtitlebox">User Information</div>
                    <div class="usimg"><img src="images/users.png"></div>
                    <table width="100%" cellpadding="0" cellspacing="0">
                    <tbody><tr><td>Username</td><td style="text-align:right;">{$userinfo.username}</td></tr>
                    <tr><td>Registration Date</td><td style="text-align:right;">{$userinfo.create_account_date}</td></tr>
                    <tr><td>Last Access</td><td style="text-align:right;">{$last_access}</td></tr>                   
                    </tbody></table>           
                </div><!---boxcontent end -->
            </div><!---left end -->
            <div class="rightmembox col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="boxcontent table-responsive col-lg-10 col-md-10 col-sm-10 col-xs-10">
                    <div class="memtitlebox" style="margin-bottom: 18px;">Deposit &amp; Withdraw Information</div> 
                    <table class="valid" cellspacing="0" cellpadding="2" border="0" width="100%">                  
                        <tbody>
                            <tr>                   
                                 <td style="color:#012670;">Earned Total:</td>                    
                                 <td style="color:#012670;">{$currency_sign}<b>{$ab_formated.earning}</b></td>
                            </tr>
                            <tr>
                                 <td style="color:#012670;">Pending Withdrawal:</td>
                                 <td style="color:#012670;">{$currency_sign}<b>{$ab_formated.withdraw_pending}</b></td>
                            </tr>
                            <tr>
                                 <td style="color:#012670;">Withdrew Total:</td>
                                 <td style="color:#012670;">{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
                            </tr>
                            <tr>
                                 <td style="color:#012670;">Last Deposit:</td>
                                 <td style="color:#012670;">{$currency_sign}<b>{$last_deposit|default:"n/a"}</b></td>
                            </tr>
                            <tr>
                                 <td style="color:#012670;">Total Deposit:</td>
                                 <td style="color:#012670;">{$currency_sign}<b>{$ab_formated.deposit}</b></td>
                            </tr>
                            <tr>
                                 <td style="color:#012670;">Last Withdrawal:</td>
                                 <td style="color:#012670;">{$currency_sign}<b>{$last_withdrawal|default:"n/a"}</b></td>
                            </tr>
                            <tr>
                                <td style="color:#012670;">Withdrew Total:</td>
                             	<td style="color:#012670;">{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
                            </tr>
                        </tbody>
					</table>
                </div><!---boxcontent end -->
            </div><!---right end -->
		</div>
	</div>
</div>


<div class="member_detail" align="center">

</div>
                                                      <br><br>
<br>
</div></div>
</div></div>
</div></div>
</div></div><div class="clear"></div>


{include file="footer.tpl"}