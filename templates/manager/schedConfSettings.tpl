{**
 * schedConfSettings.tpl
 *
 * Copyright (c) 2003-2005 The Public Knowledge Project
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Basic scheduled conference settings under site administration.
 *
 * $Id$
 *}

{assign var="pageTitle" value="manager.schedConfs.schedulingAConference"}
{include file="common/header.tpl"}

<br />

<form method="post" action="{url op="updateSchedConf"}">
{if $schedConfId}
<input type="hidden" name="schedConfId" value="{$schedConfId}" />
{/if}
<input type="hidden" name="conferenceId" value="{$conferenceId}" />

{include file="common/formErrors.tpl"}

{if not $schedConfId}
<p><span class="instruct">{translate key="manager.schedConfs.form.createInstructions"}</span></p>
{/if}

<table class="data" width="100%">
	<tr valign="top">
		<td width="20%" class="label">{fieldLabel name="title" key="manager.schedConfs.form.title" required="true"}</td>
		<td width="80%" class="value"><input type="text" id="title" name="title" value="{$title|escape}" size="40" maxlength="120" class="textField" /></td>
	</tr>
	<tr valign="top">
		<td width="20%" class="label">{fieldLabel name="acronym" required="true" key="manager.schedConfs.form.acronym"}</td>
		<td width="80%" class="value">
			<input type="text" name="acronym" id="acronym" value="{$acronym|escape}" size="8" maxlength="16" class="textField" />
		</td>
	</tr>
	<tr valign="top">
		<td class="label">{fieldLabel name="title" key="common.path" required="true"}</td>
		<td class="value">
			<input type="text" id="path" name="path" value="{$path|escape}" size="16" maxlength="32" class="textField" />
			<br />
			{translate|assign:"sampleEllipsis" key="common.ellipsis"}
			{url|assign:"sampleUrl" schedConf="path" page="$sampleEllipsis"}
			<span class="instruct">{translate key="manager.schedConfs.form.urlWillBe" sampleUrl=$sampleUrl}</span>
		</td>
	</tr>
</table>

<p><input type="submit" value="{translate key="common.save"}" class="button defaultButton" /> <input type="button" value="{translate key="common.cancel"}" class="button" onclick="document.location.href='{url op="schedConfs" escape=false}'" /></p>

</form>

<p><span class="formRequired">{translate key="common.requiredField"}</span></p>

{include file="common/footer.tpl"}
