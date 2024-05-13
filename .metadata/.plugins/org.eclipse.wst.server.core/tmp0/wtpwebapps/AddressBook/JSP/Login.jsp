<%-- 
    Document   : EmailLogin
    Created on : Apr 1, 2011, 2:29:15 PM
    Author     : SIVAJI
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
      
    </head>
    <style type="text/css">
        <!--
        body,td,div,p,a,font,span {font-family: arial,sans-serif}

        #highlight
        {
            float:left;
            padding-top:0.6em;
            margin:2em 2em 0 0;
            border-top:1px solid #ddd;
            min-width:160px
        }
        #highlight h2
        { font-size:1em;
          margin:0 0 0.2em
        }
        .time
        { color:#999;
          margin:0;
          display:inline;
          padding:0 0 0 0.8em;
        }
        .post
        {
            padding:0;
            padding-top:2px;
        }
        .snippet
        {
            margin:0.3em 0 0
        }
        .feed-heading
        {
            color:#999;
            float:left;
            margin:1.05em 0.3em 0 0
        }
        #feed-icons
        {
            list-style:none;
            margin:1em 0 0; padding:0; text-indent:-10000px; overflow:hidden }
        #feed-icons li
        {
            width:16px;
            height:16px;
            float:left;
            margin-right:0.5em
        }
        #feed-icons li a
        {
            display:block;
            width:16px;
            height:16px;
            background-image:url(//www.google.com/images/icons/feature/sprite_mail_hp.png);
            background-repeat:no-repeat
        }
        .feed-blogger a
        {
            background-position: -16px -168px;
        }
        .feed-twitter a
        {
            background-position: 0 -168px;
        }
        .feed-facebook a
        {
            background-position: 0 -184px;
        }
        .feed-buzz a
        {
            background-position: 0 -200px
        }
        .feed-rss a
        {
            background-position: -16px -184px;
        }
        //-->
    </style>

    <body>
        <form  action="LoginProcess.jsp" method="get">
        <table width=94% border=0 align=center cellpadding=0 cellspacing=0>
            <tr valign=top>
                <td width=1%>
                    
                </td>
                <td width=99% bgcolor=#ffffff valign=top>
                    <table width=100% cellpadding=1>
                        <tr valign=bottom>

                            <td><div align=right>&nbsp;</div></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width=94% align="center"cellpadding=5 cellspacing=1>
          <tr>
            <td width=75% valign=top><h1>Welcome to Online Address Book.</h1>
                <p class="intro" style="text-align:left"><font size=-1>The Online Address Book is a tool intended to be used by  evereybody and which is very helpful to store details of users and friends of users.:</font></p>
              <font size=-1>
                <table border="0" cellpadding="0" cellspacing="0" width="95%">
                  <tbody>
                    <tr>
                      <td class="feature-image"><div class="SPRITE_storage" /></td>
                      <td class="feature-description"><font size=-1>
                        <li><b>My Profile</b><br>
                          This <span id=quota>helps</span> to view the details of the users</li>
                      </font> </td>
                    </tr>
                    <tr>
                      <td class="feature-image"><div class="SPRITE_spam_new" /></td>
                      <td class="feature-description"><font size=-1>
                        <li><b>My Attachments</b><br>
                          This is useful to add the attacments in your account.<br>
                          <!-- End-user will be able to ostpone the scheduled event.<br> -->
                        </li>
                      </font> </td>
                    </tr>
                    <tr>
                      <td class="feature-image"><div class="SPRITE_cell" /></td>
                      <td class="feature-description"><font size=-1>
                        <li><b>Phone Book</b><br>
                          This is useful to store the mobile numbers <br/></li>
                      </font></td>
                    </tr>
                   <!--  <tr>
                      <td class="feature-image"><div class="SPRITE_cell" /></td>
                      <td class="feature-description"><font size=-1>
                        <li><b>Calander</b><br>
                          The mail composing is done.<br>
                          Once mails composed can be sent from this part of the module.<br>
                          The drafted mails can be saved.</li>
                      </font> </td>
                    </tr> -->
                  </tbody>
                </table>
                <div id="highlight"> <font size='-1'>&nbsp; </font></div>
              </font></td>
            <td valign=top><!-- login box -->
                <div id=login>
                  <style type="text/css">
          <!--
                                            div.errormsg
                                            {
                                                color: red; font-size: smaller;
                                                font-family:arial,sans-serif;
                                            }
                                            font.errormsg
                                            {
                                                color: red;
                                                font-size: smaller;
                                                font-family:arial,sans-serif;
                                            }
                                            -->
                                        </style>
                  <style type="text/css">
          <!--
                                            .gaia.le.lbl
                                            {
                                                font-family: Arial, Helvetica, sans-serif;
                                                font-size: smaller;
                                            }
                                            .gaia.le.fpwd
                                            {
                                                font-family: Arial, Helvetica, sans-serif;
                                                font-size: 70%;
                                            }
                                            .gaia.le.chusr
                                            {
                                                font-family: Arial, Helvetica, sans-serif;
                                                font-size: 70%;
                                            }
                                            .gaia.le.val
                                            {
                                                font-family: Arial, Helvetica, sans-serif;
                                                font-size: smaller;
                                            }
                                            .gaia.le.button
                                            {
                                                font-family: Arial, Helvetica, sans-serif;
                                                font-size: smaller;
                                            }
                                            .gaia.le.rem
                                            {
                                                font-family: Arial, Helvetica, sans-serif;
                                                font-size: smaller;
                                            }

                                            .gaia.captchahtml.desc
                                            {
                                                font-family: arial, sans-serif;
                                                font-size: smaller;
                                            }
                                            .gaia.captchahtml.cmt
                                            {
                                                font-family: arial, sans-serif;
                                                font-size: smaller;
                                                font-style: italic;
                                            }

                                            -->
          </style>
                    <div id="gaia_loginbox">
                      <table align="left" class="form-noindent" cellspacing="3" cellpadding="5" width="100%" border="0">
                        <tr>
                          <td valign="top" style="text-align:center" nowrap="nowrap"
                                                            bgcolor="#e8eefa"><input type="hidden" name="ltmpl"
                                                                   value="default">
                              <input type="hidden" name="ltmplcache"
                                                                   value="2">
                              <div class="loginBox">
                                <table width="250" height="248" border="0" align="center" cellpadding="1" cellspacing="0" bgcolor="#c2bddd" id="gaia_table" bordercolor="#666666">
                                  <tr>
                                    <td colspan="2" align="center"><font size="-1"> Sign in with your </font>
                                        <table >
                                          <tr>
                                            <td valign="top"></td>
                                            <td valign="middle"><font size="+0"><b>Account</b></font> </td>
                                          </tr>
                                      </table></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2" align="center"></td>
                                  </tr>
                                  <tr id="email-row">
                                    <td nowrap="nowrap"><div align="right"> <span class="gaia le lbl"> Username: </span> </div></td>
                                    <td><input type="hidden" name="continue" id="continue"
                                                                                   value="http://mail.google.com/mail/?ui=html&amp;zy=l" />
                                        <input type="hidden" name="service" id="service"
                                                                                   value="mail" />
                                        <input type="hidden" name="rm" id="rm"
                                                                                   value="false" />
                                        <input type="hidden" name="dsh" id="dsh"  value="-423051491917785370" />
                                        <input type="hidden" name="ltmpl2" id="ltmpl"  value="default" />
                                        <input type="hidden" name="ltmpl2" id="ltmpl" value="default" />
                                        <input type="hidden" name="scc" id="scc" value="1" />
                                        <input type="hidden" name="timeStmp" id="timeStmp"
                                                                                   value=''/>
                                        <input type="hidden" name="secTok" id="secTok"
                                                                                   value=''/>
                                        <input type="hidden"
                                                                                   name="GALX"
                                                                                   value="Y5DPH5WCmOc" />
                                        <input type="text" name="uname"  id="uname"
                                                                                />
                                    </td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td align="left"><div style="color: #666666; font-size: 75%;"> ex: sivaji@bonu.com </div></td>
                                  </tr>
                                  <tr id="password-row" class="enabled">
                                    <td align="right" nowrap="nowrap"><span class="gaia le lbl"> Password: </span> </td>
                                    <td><input type="password" name="pass" id="pass"  size="18" class="gaia le val" />
                                    </td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td align="left"></td>
                                  </tr>
                                  <tr id="rememberme-row" class="enabled">
                                    <td align="right" valign="top"><input type="checkbox" name="PersistentCookie" id="PersistentCookie" value="yes" />
                                        <input type="hidden" name='rmShown' value="1" />
                                    </td>
                                    <td><label for="PersistentCookie" id="PersistentCookieLabel" class="gaia le rem"> Stay signed in </label>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td align="left"><input type="submit" class="gaia le button" name="signIn" id="signIn"
                                                            value="Sign in"/>
                                    <a href="RegistrationaCap.jsp">|New User?</a></td>
                                  </tr>
                                </table>
                              </div></td>
                        </tr>
                      </table>
                    </div>
                 
                  <!-- end links box (below login box) -->
                </div>
    </table>
     </form>
    </body>
   </html>



