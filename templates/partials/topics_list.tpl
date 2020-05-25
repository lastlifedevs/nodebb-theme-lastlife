<div class="category topics-container">
	<ul component="category" class="topic-list b-1px-black mt2" itemscope itemtype="http://www.schema.org/ItemList"
		data-nextstart="{nextStart}" data-set="{set}">
		<meta itemprop="itemListOrder" content="descending">
		{{{each topics}}}
		<li component="category/topic" class="clearfix category-item d-flex align-items-center p0 {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
			<meta itemprop="name" content="{function.stripTags, title}">

			<div class="col-sm-9 col-xs-10 content topic-info">
				<div class="avatar pull-left pr1 pt1 pb2 mt2 mb1">
					<!-- IF showSelect -->
					<div class="select" component="topic/select">
						<div class="bubbleback bubbleback-icon">
							<div class="bubble bubble-icon"></div>
						</div>
						<i class="lastlife-icon icon-lastlife-hp topic-icon-unread"></i>
						<i class="fa fa-check"></i>
					</div>
					<!-- ENDIF showSelect -->

					<!-- IF !showSelect -->
					<div class="topic-icon-container">
						<div class="bubbleback bubbleback-icon">
							<div class="bubble bubble-icon"></div>
						</div>
						<i class="lastlife-icon icon-lastlife-hp topic-icon-unread"></i>
					</div>
					<!-- ENDIF !showSelect -->

				</div>

				<div class="d-flex topic-title-wrapper">
					<h2 component="topic/header" class="title py1">
						<i component="topic/pinned"
							class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"
							title="[[topic:pinned]]"></i>
						<i component="topic/locked"
							class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"
							title="[[topic:locked]]"></i>
						<i component="topic/moved"
							class="fa fa-arrow-circle-right <!-- IF !topics.oldCid -->hide<!-- ENDIF !topics.oldCid -->"
							title="[[topic:moved]]"></i>
						{{{each icons}}}@value{{{end}}}

						<!-- IF !topics.noAnchor -->
						<a href="{config.relative_path}/topic/{topics.slug}<!-- IF topics.bookmark -->/{topics.bookmark}<!-- ENDIF topics.bookmark -->"
							itemprop="url">{topics.title}</a><br />
						<!-- ELSE -->
						<span>{topics.title}</span><br />
						<!-- ENDIF !topics.noAnchor -->

						<!-- IF !template.category -->
						<small>
							<a href="{config.relative_path}/category/{topics.category.slug}"><span class="fa-stack fa-lg"
									style="{function.generateCategoryBackground, topics.category}"><i
										style="color:{topics.category.color};"
										class="fa {topics.category.icon} fa-stack-1x"></i></span> {topics.category.name}</a>
							&bull;
						</small>
						<!-- ENDIF !template.category -->

						<!-- IF topics.tags.length -->
						<span class="tag-list hidden-xs">
							{{{each topics.tags}}}
							<a href="{config.relative_path}/tags/{topics.tags.valueEscaped}"><span class="tag"
									style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">{topics.tags.valueEscaped}</span></a>
							{{{end}}}
							<small>&bull;</small>
						</span>
						<!-- ENDIF topics.tags.length -->

						<small class="hidden-xs"><span class="timeago" title="{topics.timestampISO}"></span> &bull; <a
								href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">{topics.user.username}</a></small>
						<small class="visible-xs-inline">
							<i class="fa fa-reply"></i> &nbsp;
							<!-- IF topics.teaser.timestamp -->
							<span class="timeago" title="{topics.teaser.timestampISO}"></span>
							<!-- ELSE -->
							<span class="timeago" title="{topics.timestampISO}"></span>
							<!-- ENDIF topics.teaser.timestamp -->
						</small>
					</h2>
				</div>
				
				<div class="hidden-sm hidden-xs stats stats-postcount">
					<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
					<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span>
				</div>

				<div class="hidden-sm hidden-xs stats stats-viewcount">
					<small>[[global:posts]]</small><br />
					<small>[[global:views]]</small>
				</div>
			</div>

			<div class="mobile-stat col-xs-2 visible-xs text-right">
				<span class="human-readable-number">{topics.postcount}</span> <a
					href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"><i
						class="fa fa-arrow-circle-right"></i></a>
			</div>

			<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
				<div class="card" style="border-color: {topics.category.bgColor}">
					<!-- IF topics.unreplied -->
					<p>
						[[category:no_replies]]
					</p>
					<!-- ELSE -->
					<!-- IF topics.teaser.pid -->
					<div>
						<p>
							<a href="{config.relative_path}/user/{topics.teaser.user.userslug}"
								title="{topics.teaser.user.username}">
								<!-- IF topics.teaser.user.fullname -->{topics.teaser.user.fullname}
								<!-- ELSE -->{topics.teaser.user.username}
								<!-- ENDIF topics.teaser.user.fullname -->
							</a>
						</p>
						<p>
							<a class="permalink"
								href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
								<span class="timeago" title="{topics.teaser.timestampISO}"></span> <i
									class="fa fa-chevron-circle-right"></i>
							</a>
						</p>
					</div>
					<!-- ENDIF topics.teaser.pid -->
					<!-- ENDIF topics.unreplied -->
				</div>
			</div>
		</li>
		{{{end}}}
	</ul>
</div>