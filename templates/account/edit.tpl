<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<!-- IF sso.length --><div><!-- ENDIF sso.length -->
		<div class="row">
			<div class="col-md-2 col-sm-4">
				<div class="account-picture-block text-center">
					<div class="row">
						<div class="col-xs-12 hidden-xs">
							<!-- IF picture -->
							<img id="user-current-picture" class="avatar avatar-xl avatar-rounded" src="{picture}" />
							<!-- ELSE -->
							<div class="avatar avatar-xl avatar-rounded" style="background-color: {icon:bgColor};">{icon:text}</div>
							<!-- ENDIF picture -->
						</div>
					</div>
					<ul class="list-group">
						<!-- IF allowProfilePicture -->
						<div class="groove-border-wrapper"><a id="changePictureBtn" href="#" class="btn btn-block btn-primary">[[user:change_picture]]</a></div>
						<!-- ENDIF allowProfilePicture -->
						<!-- IF !username:disableEdit -->
						<div class="groove-border-wrapper"><a href="{config.relative_path}/user/{userslug}/edit/username" class="btn btn-block btn-primary">[[user:change_username]]</a></div>
						<!-- ENDIF !username:disableEdit -->
						<!-- IF !email:disableEdit -->
						<div class="groove-border-wrapper"><a href="{config.relative_path}/user/{userslug}/edit/email" class="btn btn-block btn-primary">[[user:change_email]]</a></div>
						<!-- ENDIF !email:disableEdit -->
						<!-- IF canChangePassword -->
						<div class="groove-border-wrapper"><a href="{config.relative_path}/user/{userslug}/edit/password" class="btn btn-block btn-primary">[[user:change_password]]</a></div>
						<!-- ENDIF canChangePassword -->
						<!-- BEGIN editButtons -->
						<div class="groove-border-wrapper"><a href="{config.relative_path}{editButtons.link}" class="btn btn-block btn-primary">{editButtons.text}</a></div>
						<!-- END editButtons -->
					</ul>

					<!-- IF config.requireEmailConfirmation -->
					<!-- IF email -->
					<!-- IF isSelf -->
					<div class="groove-border-wrapper btn-wrapper"><a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a></div><br/><br/>
					<!-- ENDIF isSelf -->
					<!-- ENDIF email -->
					<!-- ENDIF config.requireEmailConfirmation -->

					<!-- IF allowAccountDelete -->
					<!-- IF isSelf -->
					<div class="groove-border-wrapper btn-wrapper"><a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a></div><br/><br/>
					<!-- ENDIF isSelf -->
					<!-- ENDIF allowAccountDelete -->

				</div>
			</div>

			<div class="<!-- IF !sso.length -->col-md-9 col-sm-8<!-- ELSE -->col-md-5 col-sm-4<!-- ENDIF !sso.length -->">
				<div>
					<form class='form-horizontal'>

						<div class="control-group">
							<label class="control-label" for="inputFullname">Display Name</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputFullname" placeholder="Display Name - Leave blank to use your username" value="{fullname}">
							</div>
						</div>
						<!-- IF allowWebsite -->
						<div class="control-group">
							<label class="control-label" for="inputWebsite">[[user:website]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
							</div>
						</div>
						<!-- ENDIF allowWebsite -->

						<div class="control-group">
							<label class="control-label" for="inputLocation">[[user:location]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputBirthday">[[user:birthday]]</label>
							<div class="controls">
								<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="mm/dd/yyyy">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="grouptitle">[[user:grouptitle]]</label>
							<div class="controls">

								<select class="form-control" id="groupTitle" data-property="groupTitle" <!-- IF allowMultipleBadges --> multiple<!-- ENDIF allowMultipleBadges -->>
									<option value="">[[user:no-group-title]]</option>
									<!-- BEGIN groups -->
									<!-- IF groups.userTitleEnabled -->
									<option value="{groups.name}" <!-- IF groups.selected -->selected<!-- ENDIF groups.selected -->>{groups.userTitle}</option>
									<!-- ENDIF groups.userTitleEnabled -->
									<!-- END groups -->
								</select>
							</div>
						</div>

						<!-- IF allowAboutMe -->
						<div class="control-group">
							<label class="control-label" for="inputAboutMe">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<div class="controls">
								<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
							</div>
						</div>
						<!-- ENDIF allowAboutMe -->

						<!-- IF allowSignature -->
						<!-- IF !disableSignatures -->
						<div class="control-group">
							<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<div class="controls">
								<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
							</div>
						</div>
						<!-- ENDIF !disableSignatures -->
						<!-- ENDIF allowSignature -->

						<input type="hidden" id="inputUID" value="{uid}"><br />

						<div class="form-actions">
							<div class="groove-border-wrapper btn-wrapper"><a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a></div>
						</div>

					</form>
				</div>

				<hr class="visible-xs visible-sm"/>
			</div>

			<!-- IF sso.length -->
			<div class="col-md-5 col-sm-4">
				<label class="control-label">[[user:sso.title]]</label>
				<div class="list-group">
					<!-- BEGIN sso -->
					<div class="list-group-item">
						<!-- IF ../deauthUrl -->
						<div class="groove-border-wrapper btn-wrapper"><a class="btn btn-default btn-xs pull-right" href="{../deauthUrl}">[[user:sso.dissociate]]</a></div>
						<!-- END -->
						<a href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
							<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
							<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
							{../name}
						</a>
					</div>
					<!-- END sso -->
				</div>
			</div>
			<!-- ENDIF sso.length -->
		</div>
	<!-- IF sso.length --></div><!-- ENDIF sso.length -->
</div>

