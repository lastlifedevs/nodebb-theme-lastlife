<div class="outgoing">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="well-wrapper groove-border-wrapper">
		<div class="well">
			<h3>
				[[notifications:outgoing_link_message, {title}]]
			</h3>
			<p>
				<div class="groove-border-wrapper btn-wrapper"><a href="{outgoing}" rel="nofollow noopener noreferrer" class="btn btn-primary btn-lg">[[notifications:continue_to, {outgoing}]]</a></div>
				<div class="groove-border-wrapper btn-wrapper"><a id="return-btn" href="#" class="btn btn-lg btn-warning">[[notifications:return_to, {title}]]</a></div>
			</p>
		</div>
	</div>
</div>

<script>
	$('#return-btn').on('click', function() {
		history.back();
		return false;
	});
</script>
