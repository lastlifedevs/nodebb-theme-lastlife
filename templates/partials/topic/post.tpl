<div class="rpg-box author-info-box">
    <div class="icon" aria-hidden="true">
        <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
            <!-- IF posts.user.picture -->
            <img src="{posts.user.picture}" align="left" itemprop="image" />
            <!-- ELSE -->
            <div class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
            <!-- ENDIF posts.user.picture -->
            <i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>

        </a>
    </div>
    <div class="author-name-container">
        <span class="author-name">
            <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}" title="{posts.user.username}"><!-- IF posts.user.fullname -->{posts.user.fullname}<!-- ELSE -->{posts.user.username}<!-- ENDIF posts.user.fullname --></a>
        </span>
        <!-- IF posts.user.fullname -->
        <span class="author-user-name-hint hidden-lg">({posts.user.username})</span>
        <!-- ENDIF posts.user.fullname -->
    </div>
    <div class="author-badges">
        <!-- IMPORT partials/topic/badge.tpl -->

        <!-- IF posts.user.banned -->
        <span class="label label-danger">[[user:banned]]</span>
        <!-- ENDIF posts.user.banned -->
    </div>
    <div class="row author-stats" aria-hidden="true">
        <div>
            <small class="user-stat-name">[[global:posts]]:</small> <small class="user-stat-value">{posts.user.postcount}</small>
        </div>
    </div>
    <div class="row social-links" aria-hidden="true">
        <!-- IF posts.customFields.twitter -->
        <a href="https://twitter.com/{posts.customFields.twitter}" class="twitter" tooltip="Twitter: {posts.customFields.twitter}"><i class="ll-social-icon icon-twitter"></i></a>
        <!-- ENDIF posts.customFields.twitter -->
        <!-- IF posts.customFields.discord -->
        <span class="discord" tooltip="Discord: {posts.customFields.discord}"><i class="ll-social-icon icon-discord"></i></span>
        <!-- ENDIF posts.customFields.discord -->
        <!-- IF posts.customFields.twitch -->
        <a href="https://twitch.tv/{posts.customFields.twitch}" class="twitch" tooltip="Twitch: {posts.customFields.twitch}"><i class="ll-social-icon icon-twitch"></i></a>
        <!-- ENDIF posts.customFields.twitch -->
        <!-- IF posts.customFields.youtube -->
        <a href="https://www.youtube.com/channel/{posts.customFields.youtube}" class="youtube" tooltip="YouTube"><i class="ll-social-icon icon-youtube"></i></a>
        <!-- ENDIF posts.customFields.youtube -->
        <!-- IF posts.customFields.steam -->
        <a href="https://steamcommunity.com/id/{posts.customFields.steam}" class="steam" tooltip="Steam Profile"><i class="ll-social-icon icon-steam"></i></a>
        <!-- ENDIF posts.customFields.steam -->
    </div>

</div>

<div class="post-wrapper">
    <div class="post-container">
        <div class="post-header">
            <small class="pull-right visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
                <!-- IF posts.toPid -->
                <a component="post/parent" class="hidden-xs" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><i class="fa fa-reply"></i> Posted in reply to @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
                <!-- ENDIF posts.toPid -->

                <a class="permalink" href="{config.relative_path}/post/{posts.pid}"><i class="fa fa-clock-o"></i> <span class="timeago" title="{posts.timestampISO}"></span></a>
            
                <i component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>
            
                <small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small>
            
                <span>
                    <!-- IF posts.user.custom_profile_info.length -->
                    &#124;
                    <!-- BEGIN custom_profile_info -->
                    {posts.user.custom_profile_info.content}
                    <!-- END custom_profile_info -->
                    <!-- ENDIF posts.user.custom_profile_info.length -->
                </span>
            </small>
        </div>
        <div class="content" component="post/content" itemprop="text">
            {posts.content}
        </div>
        <!-- IF posts.user.signature -->
        <div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
        <!-- ENDIF posts.user.signature -->
        <div class="clearfix post-footer">
            <div class="footer-container">
                <!-- IF !reputation:disabled -->
                <span class="votes">
                    <a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
                        <i class="fa fa-thumbs-up"></i>
                    </a>
        
                    <span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
        
                    <!-- IF !downvote:disabled -->
                    <a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
                        <i class="fa fa-chevron-down"></i>
                    </a>
                    <!-- ENDIF !downvote:disabled -->
                </span>
                <!-- ENDIF !reputation:disabled -->

                <small class="pull-right">
                    <span class="post-tools">
                        <div class="post-tool groove-border-wrapper btn-wrapper"><a component="post/reply" href="#" class="no-select btn btn-primary <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a></div>
                        <div class="post-tool groove-border-wrapper btn-wrapper"><a component="post/quote" href="#" class="no-select btn btn-secondary <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a></div>
                    </span>

                    <!-- IMPORT partials/topic/post-menu.tpl -->
                </small>
            </div>
        </div>
    </div>
</div>

<hr />
