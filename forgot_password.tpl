{assign var="type" value="1"}
{assign var="titlepage" value="Forgot Password"}
{include file="logohome.tpl"}



{literal}
<script language=javascript>
function checkform() {
  if (document.forgotform.email.value == '') {
    alert("Please type your username or email!");
    document.forgotform.email.focus();
    return false;
  }
  return true;
}
</script>
{/literal}


{if $found_records == 2}
Your accound was found. Please check your e-mail address and follow confirm URL to reset your password.
<br><br>
{else}

{if $found_records == 0}
No accounts found for provided info.
<br><br>
{elseif $found_records == 1}
Request was confirmed. Login and password was sent to your email address.
<br><br>
{/if}

<form method=post name=forgotform onsubmit="return checkform();">
<input type=hidden name=a value="forgot_password">
<input type=hidden name=action value="forgot_password">
<table cellspacing=4 cellpadding=2 border=0>
<tr>
 <td>Type your username or e-mail:</td>
 <td><input type=text name='email' value="{$frm.email|escape:htmlall}" class=inpts size=30></td>
</tr>
<tr>
 <td>&nbsp;</td>
 <td><input type=submit value="Forgot" class=sbmt></td>
</tr>
</table>
</form>
{/if}
</div></div>
{include file="footer_custume.tpl"}
