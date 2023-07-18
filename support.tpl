{assign var="type" value="1"}
{assign var="titlepage" value="Support Form"}
{include file="logohome.tpl"}


{if $say eq 'send'}
Message has been successfully sent. We will back to you in next 24 hours. Thank you.<br><br>
{else}

<script language=javascript>
{if $userinfo.logged == 1}
{literal}
function checkform() { 
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{else}
{literal}
function checkform() {
  if (document.mainform.name.value == '') {
    alert("Please type your full name!");
    document.mainform.name.focus();
    return false;
  }
  if (document.mainform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.mainform.email.focus();
    return false;
  }
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{/if}
</script>

<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value=support>
<input type=hidden name=action value=send>

<div class="all-information">
        	<div class="signup-left" style="float:left;">


 {if $errors}
  <ul style="color:red">
   {if $errors.turing_image == 1}
    <li>Invalid turing image</li>
   {/if}
   {if $errors.invalid_email == 1}
    <li>Invalid email address</li>
   {/if}
  </ul>
 {/if}

<table cellspacing=10 cellpadding=2 border=0>
<tr>
 <td>Your Name:</td>
{if $userinfo.logged}
 <td><b>{$userinfo.name}</b></td>
{else}
 <td><input type="text" name="name" value="{$frm.name|escape:htmlall}" size=30 class=inpts></td>
{/if}
</tr>
<tr>
 <td>Your Email:</td>
{if $userinfo.logged}
 <td><b>{$userinfo.email}</b></td>
{else}
 <td><input type="text" name="email" value="{$frm.email|escape:htmlall}" size=30 class=inpts></td>
{/if}
</tr>
<tr>
 <td>Message:</td><td><textarea name=message class=inpts cols=45 rows=4>{$frm.message|escape:htmlall}</textarea>
</tr>
{if $userinfo.validation_enabled == 1}
<tr>
 <td class=menutxt><img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}"></td>
 <td><input type=text name=validation_number class=inpts size=30></td>
</tr>
{/if}
<tr>
 <td>&nbsp;</td>
 <td><div class="con-send"><input type=submit value="Send" class=sbmt></div></td>
</tr></table>
</form>
                           </div>
            <div class="signup-right" style="float:right;">
            	<div class="contact-information">
                    <div class="contact-head">
                    	<h4 style="color:black;"">contact information</h4>
                    </div>
                    <div class="contact-add">
                    	<div class="add-con">
                        	<p><i class="fa fa-paper-plane"></i> Address:</p>
                        </div>
                        <div class="finance">
                        	<p>16 Greville Street, London, United Kingdom, EC1N 8SQ</p>
                        </div>
                    </div>
                    <div class="phone"><br/>
                    	<p><i class="fa fa-phone"></i>Phone : <span> Coming Soon !</span></p>
                    </div>
                    <div class="phone">
                    	<p><i class="fa fa-user"></i>Email : <span>  admin@{$settings.site_name} </span></p>
                    </div>
                </div>
            </div>
        </div>
{/if}

{include file="footer_custume.tpl"}
