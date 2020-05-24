<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="tag">
	<div class="btn-toolbar">
		<div class="pull-left">
			<div class="groove-border-wrapper btn-wrapper">
				<!-- IF loggedIn -->
				<!-- IMPORT partials/buttons/newTopic.tpl -->
				<!-- ELSE -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
				<!-- ENDIF loggedIn -->
			</div>
		</div>
	</div>

	<hr class="hidden-xs"/>

	<!-- IF !topics.length -->
	<div class="alert alert-warning">[[tags:no_tag_topics]]</div>
	<!-- ENDIF !topics.length -->

	<div class="category">
		<!-- IMPORT partials/topics_list.tpl -->
		<div class="groove-border-wrapper btn-wrapper"><button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button></div>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
