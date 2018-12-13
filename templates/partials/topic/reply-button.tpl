<div component="topic/reply/container" class="btn-group action-bar <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">
    <div class="groove-border-wrapper btn-wrapper"><a href="{config.relative_path}/compose?tid={tid}&title={title}" class="btn btn-primary" component="topic/reply" data-ajaxify="false" role="button">[[topic:reply]]</a></div>
</div>

<!-- IF loggedIn -->
<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<div class="groove-border-wrapper btn-wrapper"><a component="topic/reply/locked" class="btn btn-primary" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a></div>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<div class="groove-border-wrapper btn-wrapper hidden"><a component="topic/reply/locked" class="btn btn-primary hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a></div>
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<div class="groove-border-wrapper btn-wrapper guest-login-reply"><a component="topic/reply/guest" href="{config.relative_path}/login" class="btn btn-primary">[[topic:guest-login-reply]]</a></div>
<!-- ENDIF !privileges.topics:reply -->
<!-- ENDIF loggedIn -->
