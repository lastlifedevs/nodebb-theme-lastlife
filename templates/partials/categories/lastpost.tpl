<div class="card" style="border-color: {../bgColor}">
	{{{each ./posts}}}
	<!-- IF @first -->
	<div component="category/posts">
        <p>
            <strong><a href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->" title="{../topic.title}">{../topic.title}</a></strong>
        </p>
        <p>
            <a href="{config.relative_path}/user/{../user.userslug}" title="{../user.username}">
				<!-- IF ../user.fullname -->{../user.fullname}<!-- ELSE -->{../user.username}<!-- ENDIF ../user.fullname -->
			</a>
        </p>
        <p>
            <a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
                <small class="timeago" title="{../timestampISO}"></small>
            </a>
        </p>
    </div>
	<!-- ENDIF @first -->
	{{{end}}}

	<!-- IF !../posts.length -->
	<div component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>
