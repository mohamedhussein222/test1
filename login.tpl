{assign var="type" value="1"}
{assign var="titlepage" value="Member Login"}
{include file="logohome.tpl"}

{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}

{if $frm.say eq 'invalid_login'}
<h3>Login error:</h3><br><br>

Your login or password or turing image code is wrong. Please check this information.
{/if}
<center>
<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value='{$frm.follow}'>
<input type=hidden name=follow_id value='{$frm.follow_id}'>
<div class="logpage col-lg-12 col-md-12 col-sm-12 col-xs-12 table-responsive">
{literal}
<style>


@media (min-width:1200px) {



.logpage table .inpts , .logpage table textarea {
    border: none;
    min-width: 390px;
    padding-left: 6px;
}


}

.logpage {
width:100%;
padding:30px 0;
background-color:#1a2235;
}


::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: rgba(255, 255, 255, 0.5);
}
::-moz-placeholder { /* Firefox 19+ */
  color: rgba(255, 255, 255, 0.5);
}
:-ms-input-placeholder { /* IE 10+ */
  color: rgba(255, 255, 255, 0.5);
}
:-moz-placeholder { /* Firefox 18- */
  color: rgba(255, 255, 255, 0.5);
}
.logpage table tr td{
line-height:48px;
padding:0 10px;
    color: #ffcd00;
}

</style>
{/literal}
<table class="valid" cellspacing=0 cellpadding=0 border=0  >
    <tbody>
<tr>
 <td>Username:</td></tr><tr>
 <td><input type=text name=username value='{$frm.username|escape:"html"}' class=inpts size=30 autofocus="autofocus"></td>
</tr><tr>
 <td>Password:</td></tr><tr>
 <td><input type=password name=password value='' class=inpts size=30></td>
</tr>
{if $userinfo.validation_enabled == 1}
<tr>
 <td class=menutxt><br/><img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}"></td>
 </tr><tr><td><input type=text name=validation_number class=inpts size=30></td>
</tr>
{/if}
<tr>  
        	<td style="padding:15px;"><input type=submit value="Login" class="sbmt btn btn-default"><a href="?a=forgot_password" style="text-decoration:none; color:#fff; padding: 0 6px">Forgot password?</a></td>        
        </tr>  
</table>
</form>
</center>
{include file="footer_custume.tpl"}
