{{{each users}}}
<li class="list-group-item">
	<!-- IF ../canKick --><div class="groove-border-wrapper btn-wrapper"><button class="pull-right btn btn-xs btn-link" data-action="kick" data-uid="{../uid}">[[modules:chat.kick]]</button></div><!-- END -->
	{buildAvatar(users, "sm", true)}
	<span>{../username} <!-- IF ../isOwner --><i class="fa fa-star text-warning" title="[[modules:chat.owner]]"></i><!-- END --></span>
</li>
{{{end}}}
