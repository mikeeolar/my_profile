// class GithubRepoResponse {
//   int? id;
//   String? nodeId;
//   String? name;
//   String? fullName;
//   bool? private;
//   Owner? owner;
//   String? htmlUrl;
//   String? description;
//   bool? fork;
//   String? url;
//   String? forksUrl;
//   String? keysUrl;
//   String? collaboratorsUrl;
//   String? teamsUrl;
//   String? hooksUrl;
//   String? issueEventsUrl;
//   String? eventsUrl;
//   String? assigneesUrl;
//   String? branchesUrl;
//   String? tagsUrl;
//   String? blobsUrl;
//   String? gitTagsUrl;
//   String? gitRefsUrl;
//   String? treesUrl;
//   String? statusesUrl;
//   String? languagesUrl;
//   String? stargazersUrl;
//   String? contributorsUrl;
//   String? subscribersUrl;
//   String? subscriptionUrl;
//   String? commitsUrl;
//   String? gitCommitsUrl;
//   String? commentsUrl;
//   String? issueCommentUrl;
//   String? contentsUrl;
//   String? compareUrl;
//   String? mergesUrl;
//   String? archiveUrl;
//   String? downloadsUrl;
//   String? issuesUrl;
//   String? pullsUrl;
//   String? milestonesUrl;
//   String? notificationsUrl;
//   String? labelsUrl;
//   String? releasesUrl;
//   String? deploymentsUrl;
//   String? createdAt;
//   String? updatedAt;
//   String? pushedAt;
//   String? gitUrl;
//   String? sshUrl;
//   String? cloneUrl;
//   String? svnUrl;
//   String? homepage;
//   int? size;
//   int? stargazersCount;
//   int? watchersCount;
//   String? language;
//   bool? hasIssues;
//   bool? hasProjects;
//   bool? hasDownloads;
//   bool? hasWiki;
//   bool? hasPages;
//   bool? hasDiscussions;
//   int? forksCount;
//   String? mirrorUrl;
//   bool? archived;
//   bool? disabled;
//   int? openIssuesCount;
//   String? license;
//   bool? allowForking;
//   bool? isTemplate;
//   bool? webCommitSignoffRequired;
//   List? topics;
//   String? visibility;
//   int? forks;
//   int? openIssues;
//   int? watchers;
//   String? defaultBranch;

//   GithubRepoResponse(
//       {this.id,
//       this.nodeId,
//       this.name,
//       this.fullName,
//       this.private,
//       this.owner,
//       this.htmlUrl,
//       this.description,
//       this.fork,
//       this.url,
//       this.forksUrl,
//       this.keysUrl,
//       this.collaboratorsUrl,
//       this.teamsUrl,
//       this.hooksUrl,
//       this.issueEventsUrl,
//       this.eventsUrl,
//       this.assigneesUrl,
//       this.branchesUrl,
//       this.tagsUrl,
//       this.blobsUrl,
//       this.gitTagsUrl,
//       this.gitRefsUrl,
//       this.treesUrl,
//       this.statusesUrl,
//       this.languagesUrl,
//       this.stargazersUrl,
//       this.contributorsUrl,
//       this.subscribersUrl,
//       this.subscriptionUrl,
//       this.commitsUrl,
//       this.gitCommitsUrl,
//       this.commentsUrl,
//       this.issueCommentUrl,
//       this.contentsUrl,
//       this.compareUrl,
//       this.mergesUrl,
//       this.archiveUrl,
//       this.downloadsUrl,
//       this.issuesUrl,
//       this.pullsUrl,
//       this.milestonesUrl,
//       this.notificationsUrl,
//       this.labelsUrl,
//       this.releasesUrl,
//       this.deploymentsUrl,
//       this.createdAt,
//       this.updatedAt,
//       this.pushedAt,
//       this.gitUrl,
//       this.sshUrl,
//       this.cloneUrl,
//       this.svnUrl,
//       this.homepage,
//       this.size,
//       this.stargazersCount,
//       this.watchersCount,
//       this.language,
//       this.hasIssues,
//       this.hasProjects,
//       this.hasDownloads,
//       this.hasWiki,
//       this.hasPages,
//       this.hasDiscussions,
//       this.forksCount,
//       this.mirrorUrl,
//       this.archived,
//       this.disabled,
//       this.openIssuesCount,
//       this.license,
//       this.allowForking,
//       this.isTemplate,
//       this.webCommitSignoffRequired,
//       this.topics,
//       this.visibility,
//       this.forks,
//       this.openIssues,
//       this.watchers,
//       this.defaultBranch});

//   GithubRepoResponse.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nodeId = json['node_id'];
//     name = json['name'];
//     fullName = json['full_name'];
//     private = json['private'];
//     owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
//     htmlUrl = json['html_url'];
//     description = json['description'];
//     fork = json['fork'];
//     url = json['url'];
//     forksUrl = json['forks_url'];
//     keysUrl = json['keys_url'];
//     collaboratorsUrl = json['collaborators_url'];
//     teamsUrl = json['teams_url'];
//     hooksUrl = json['hooks_url'];
//     issueEventsUrl = json['issue_events_url'];
//     eventsUrl = json['events_url'];
//     assigneesUrl = json['assignees_url'];
//     branchesUrl = json['branches_url'];
//     tagsUrl = json['tags_url'];
//     blobsUrl = json['blobs_url'];
//     gitTagsUrl = json['git_tags_url'];
//     gitRefsUrl = json['git_refs_url'];
//     treesUrl = json['trees_url'];
//     statusesUrl = json['statuses_url'];
//     languagesUrl = json['languages_url'];
//     stargazersUrl = json['stargazers_url'];
//     contributorsUrl = json['contributors_url'];
//     subscribersUrl = json['subscribers_url'];
//     subscriptionUrl = json['subscription_url'];
//     commitsUrl = json['commits_url'];
//     gitCommitsUrl = json['git_commits_url'];
//     commentsUrl = json['comments_url'];
//     issueCommentUrl = json['issue_comment_url'];
//     contentsUrl = json['contents_url'];
//     compareUrl = json['compare_url'];
//     mergesUrl = json['merges_url'];
//     archiveUrl = json['archive_url'];
//     downloadsUrl = json['downloads_url'];
//     issuesUrl = json['issues_url'];
//     pullsUrl = json['pulls_url'];
//     milestonesUrl = json['milestones_url'];
//     notificationsUrl = json['notifications_url'];
//     labelsUrl = json['labels_url'];
//     releasesUrl = json['releases_url'];
//     deploymentsUrl = json['deployments_url'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     pushedAt = json['pushed_at'];
//     gitUrl = json['git_url'];
//     sshUrl = json['ssh_url'];
//     cloneUrl = json['clone_url'];
//     svnUrl = json['svn_url'];
//     homepage = json['homepage'];
//     size = json['size'];
//     stargazersCount = json['stargazers_count'];
//     watchersCount = json['watchers_count'];
//     language = json['language'];
//     hasIssues = json['has_issues'];
//     hasProjects = json['has_projects'];
//     hasDownloads = json['has_downloads'];
//     hasWiki = json['has_wiki'];
//     hasPages = json['has_pages'];
//     hasDiscussions = json['has_discussions'];
//     forksCount = json['forks_count'];
//     mirrorUrl = json['mirror_url'];
//     archived = json['archived'];
//     disabled = json['disabled'];
//     openIssuesCount = json['open_issues_count'];
//     license = json['license'];
//     allowForking = json['allow_forking'];
//     isTemplate = json['is_template'];
//     webCommitSignoffRequired = json['web_commit_signoff_required'];
//     topics=json['topics'];
//     visibility = json['visibility'];
//     forks = json['forks'];
//     openIssues = json['open_issues'];
//     watchers = json['watchers'];
//     defaultBranch = json['default_branch'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['node_id'] = nodeId;
//     data['name'] = name;
//     data['full_name'] = fullName;
//     data['private'] = private;
//     if (owner != null) {
//       data['owner'] = owner!.toJson();
//     }
//     data['html_url'] = htmlUrl;
//     data['description'] = description;
//     data['fork'] = fork;
//     data['url'] = url;
//     data['forks_url'] = forksUrl;
//     data['keys_url'] = keysUrl;
//     data['collaborators_url'] = collaboratorsUrl;
//     data['teams_url'] = teamsUrl;
//     data['hooks_url'] = hooksUrl;
//     data['issue_events_url'] = issueEventsUrl;
//     data['events_url'] = eventsUrl;
//     data['assignees_url'] = assigneesUrl;
//     data['branches_url'] = branchesUrl;
//     data['tags_url'] = tagsUrl;
//     data['blobs_url'] = blobsUrl;
//     data['git_tags_url'] = gitTagsUrl;
//     data['git_refs_url'] = gitRefsUrl;
//     data['trees_url'] = treesUrl;
//     data['statuses_url'] = statusesUrl;
//     data['languages_url'] = languagesUrl;
//     data['stargazers_url'] = stargazersUrl;
//     data['contributors_url'] = contributorsUrl;
//     data['subscribers_url'] = subscribersUrl;
//     data['subscription_url'] = subscriptionUrl;
//     data['commits_url'] = commitsUrl;
//     data['git_commits_url'] = gitCommitsUrl;
//     data['comments_url'] = commentsUrl;
//     data['issue_comment_url'] = issueCommentUrl;
//     data['contents_url'] = contentsUrl;
//     data['compare_url'] = compareUrl;
//     data['merges_url'] = mergesUrl;
//     data['archive_url'] = archiveUrl;
//     data['downloads_url'] = downloadsUrl;
//     data['issues_url'] = issuesUrl;
//     data['pulls_url'] = pullsUrl;
//     data['milestones_url'] = milestonesUrl;
//     data['notifications_url'] = notificationsUrl;
//     data['labels_url'] = labelsUrl;
//     data['releases_url'] = releasesUrl;
//     data['deployments_url'] = deploymentsUrl;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['pushed_at'] = pushedAt;
//     data['git_url'] = gitUrl;
//     data['ssh_url'] = sshUrl;
//     data['clone_url'] = cloneUrl;
//     data['svn_url'] = svnUrl;
//     data['homepage'] = homepage;
//     data['size'] = size;
//     data['stargazers_count'] = stargazersCount;
//     data['watchers_count'] = watchersCount;
//     data['language'] = language;
//     data['has_issues'] = hasIssues;
//     data['has_projects'] = hasProjects;
//     data['has_downloads'] = hasDownloads;
//     data['has_wiki'] = hasWiki;
//     data['has_pages'] = hasPages;
//     data['has_discussions'] = hasDiscussions;
//     data['forks_count'] = forksCount;
//     data['mirror_url'] = mirrorUrl;
//     data['archived'] = archived;
//     data['disabled'] = disabled;
//     data['open_issues_count'] = openIssuesCount;
//     data['license'] = license;
//     data['allow_forking'] = allowForking;
//     data['is_template'] = isTemplate;
//     data['web_commit_signoff_required'] = webCommitSignoffRequired;
//     if (topics != null) {
//       data['topics'] = topics!.map((v) => v.toJson()).toList();
//     }
//     data['visibility'] = visibility;
//     data['forks'] = forks;
//     data['open_issues'] = openIssues;
//     data['watchers'] = watchers;
//     data['default_branch'] = defaultBranch;
//     return data;
//   }
// }

// class Owner {
//   String? login;
//   int? id;
//   String? nodeId;
//   String? avatarUrl;
//   String? gravatarId;
//   String? url;
//   String? htmlUrl;
//   String? followersUrl;
//   String? followingUrl;
//   String? gistsUrl;
//   String? starredUrl;
//   String? subscriptionsUrl;
//   String? organizationsUrl;
//   String? reposUrl;
//   String? eventsUrl;
//   String? receivedEventsUrl;
//   String? type;
//   bool? siteAdmin;

//   Owner(
//       {this.login,
//       this.id,
//       this.nodeId,
//       this.avatarUrl,
//       this.gravatarId,
//       this.url,
//       this.htmlUrl,
//       this.followersUrl,
//       this.followingUrl,
//       this.gistsUrl,
//       this.starredUrl,
//       this.subscriptionsUrl,
//       this.organizationsUrl,
//       this.reposUrl,
//       this.eventsUrl,
//       this.receivedEventsUrl,
//       this.type,
//       this.siteAdmin});

//   Owner.fromJson(Map<String, dynamic> json) {
//     login = json['login'];
//     id = json['id'];
//     nodeId = json['node_id'];
//     avatarUrl = json['avatar_url'];
//     gravatarId = json['gravatar_id'];
//     url = json['url'];
//     htmlUrl = json['html_url'];
//     followersUrl = json['followers_url'];
//     followingUrl = json['following_url'];
//     gistsUrl = json['gists_url'];
//     starredUrl = json['starred_url'];
//     subscriptionsUrl = json['subscriptions_url'];
//     organizationsUrl = json['organizations_url'];
//     reposUrl = json['repos_url'];
//     eventsUrl = json['events_url'];
//     receivedEventsUrl = json['received_events_url'];
//     type = json['type'];
//     siteAdmin = json['site_admin'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['login'] = login;
//     data['id'] = id;
//     data['node_id'] = nodeId;
//     data['avatar_url'] = avatarUrl;
//     data['gravatar_id'] = gravatarId;
//     data['url'] = url;
//     data['html_url'] = htmlUrl;
//     data['followers_url'] = followersUrl;
//     data['following_url'] = followingUrl;
//     data['gists_url'] = gistsUrl;
//     data['starred_url'] = starredUrl;
//     data['subscriptions_url'] = subscriptionsUrl;
//     data['organizations_url'] = organizationsUrl;
//     data['repos_url'] = reposUrl;
//     data['events_url'] = eventsUrl;
//     data['received_events_url'] = receivedEventsUrl;
//     data['type'] = type;
//     data['site_admin'] = siteAdmin;
//     return data;
//   }
// }



// To parse this JSON data, do
//
//     final transactionSummaryResponse = transactionSummaryResponseFromJson(jsonString);

// ignore_for_file: constant_identifier_names

// To parse this JSON data, do
//
//     final githubRepoResponse = githubRepoResponseFromJson(jsonString);

import 'dart:convert';

List<GithubRepoResponse> githubRepoResponseFromJson(String str) =>
    List<GithubRepoResponse>.from(
        json.decode(str).map((x) => GithubRepoResponse.fromJson(x)));

String githubRepoResponseToJson(List<GithubRepoResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GithubRepoResponse {
  int id;
  String nodeId;
  String name;
  String fullName;
  bool private;
  Owner owner;
  String htmlUrl;
  String? description;
  bool fork;
  String url;
  String forksUrl;
  String keysUrl;
  String collaboratorsUrl;
  String teamsUrl;
  String hooksUrl;
  String issueEventsUrl;
  String eventsUrl;
  String assigneesUrl;
  String branchesUrl;
  String tagsUrl;
  String blobsUrl;
  String gitTagsUrl;
  String gitRefsUrl;
  String treesUrl;
  String statusesUrl;
  String languagesUrl;
  String stargazersUrl;
  String contributorsUrl;
  String subscribersUrl;
  String subscriptionUrl;
  String commitsUrl;
  String gitCommitsUrl;
  String commentsUrl;
  String issueCommentUrl;
  String contentsUrl;
  String compareUrl;
  String mergesUrl;
  String archiveUrl;
  String downloadsUrl;
  String issuesUrl;
  String pullsUrl;
  String milestonesUrl;
  String notificationsUrl;
  String labelsUrl;
  String releasesUrl;
  String deploymentsUrl;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime pushedAt;
  String gitUrl;
  String sshUrl;
  String cloneUrl;
  String svnUrl;
  dynamic homepage;
  int size;
  int stargazersCount;
  int watchersCount;
  String? language;
  bool hasIssues;
  bool hasProjects;
  bool hasDownloads;
  bool hasWiki;
  bool hasPages;
  bool hasDiscussions;
  int forksCount;
  dynamic mirrorUrl;
  bool archived;
  bool disabled;
  int openIssuesCount;
  dynamic license;
  bool allowForking;
  bool isTemplate;
  bool webCommitSignoffRequired;
  List<dynamic> topics;
  Visibility visibility;
  int forks;
  int openIssues;
  int watchers;
  DefaultBranch defaultBranch;

  GithubRepoResponse({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
    required this.forksUrl,
    required this.keysUrl,
    required this.collaboratorsUrl,
    required this.teamsUrl,
    required this.hooksUrl,
    required this.issueEventsUrl,
    required this.eventsUrl,
    required this.assigneesUrl,
    required this.branchesUrl,
    required this.tagsUrl,
    required this.blobsUrl,
    required this.gitTagsUrl,
    required this.gitRefsUrl,
    required this.treesUrl,
    required this.statusesUrl,
    required this.languagesUrl,
    required this.stargazersUrl,
    required this.contributorsUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.commitsUrl,
    required this.gitCommitsUrl,
    required this.commentsUrl,
    required this.issueCommentUrl,
    required this.contentsUrl,
    required this.compareUrl,
    required this.mergesUrl,
    required this.archiveUrl,
    required this.downloadsUrl,
    required this.issuesUrl,
    required this.pullsUrl,
    required this.milestonesUrl,
    required this.notificationsUrl,
    required this.labelsUrl,
    required this.releasesUrl,
    required this.deploymentsUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.pushedAt,
    required this.gitUrl,
    required this.sshUrl,
    required this.cloneUrl,
    required this.svnUrl,
    required this.homepage,
    required this.size,
    required this.stargazersCount,
    required this.watchersCount,
    required this.language,
    required this.hasIssues,
    required this.hasProjects,
    required this.hasDownloads,
    required this.hasWiki,
    required this.hasPages,
    required this.hasDiscussions,
    required this.forksCount,
    required this.mirrorUrl,
    required this.archived,
    required this.disabled,
    required this.openIssuesCount,
    required this.license,
    required this.allowForking,
    required this.isTemplate,
    required this.webCommitSignoffRequired,
    required this.topics,
    required this.visibility,
    required this.forks,
    required this.openIssues,
    required this.watchers,
    required this.defaultBranch,
  });

  factory GithubRepoResponse.fromJson(Map<String, dynamic> json) =>
      GithubRepoResponse(
        id: json["id"],
        nodeId: json["node_id"],
        name: json["name"],
        fullName: json["full_name"],
        private: json["private"],
        owner: Owner.fromJson(json["owner"]),
        htmlUrl: json["html_url"],
        description: json["description"],
        fork: json["fork"],
        url: json["url"],
        forksUrl: json["forks_url"],
        keysUrl: json["keys_url"],
        collaboratorsUrl: json["collaborators_url"],
        teamsUrl: json["teams_url"],
        hooksUrl: json["hooks_url"],
        issueEventsUrl: json["issue_events_url"],
        eventsUrl: json["events_url"],
        assigneesUrl: json["assignees_url"],
        branchesUrl: json["branches_url"],
        tagsUrl: json["tags_url"],
        blobsUrl: json["blobs_url"],
        gitTagsUrl: json["git_tags_url"],
        gitRefsUrl: json["git_refs_url"],
        treesUrl: json["trees_url"],
        statusesUrl: json["statuses_url"],
        languagesUrl: json["languages_url"],
        stargazersUrl: json["stargazers_url"],
        contributorsUrl: json["contributors_url"],
        subscribersUrl: json["subscribers_url"],
        subscriptionUrl: json["subscription_url"],
        commitsUrl: json["commits_url"],
        gitCommitsUrl: json["git_commits_url"],
        commentsUrl: json["comments_url"],
        issueCommentUrl: json["issue_comment_url"],
        contentsUrl: json["contents_url"],
        compareUrl: json["compare_url"],
        mergesUrl: json["merges_url"],
        archiveUrl: json["archive_url"],
        downloadsUrl: json["downloads_url"],
        issuesUrl: json["issues_url"],
        pullsUrl: json["pulls_url"],
        milestonesUrl: json["milestones_url"],
        notificationsUrl: json["notifications_url"],
        labelsUrl: json["labels_url"],
        releasesUrl: json["releases_url"],
        deploymentsUrl: json["deployments_url"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pushedAt: DateTime.parse(json["pushed_at"]),
        gitUrl: json["git_url"],
        sshUrl: json["ssh_url"],
        cloneUrl: json["clone_url"],
        svnUrl: json["svn_url"],
        homepage: json["homepage"],
        size: json["size"],
        stargazersCount: json["stargazers_count"],
        watchersCount: json["watchers_count"],
        language: json["language"],
        hasIssues: json["has_issues"],
        hasProjects: json["has_projects"],
        hasDownloads: json["has_downloads"],
        hasWiki: json["has_wiki"],
        hasPages: json["has_pages"],
        hasDiscussions: json["has_discussions"],
        forksCount: json["forks_count"],
        mirrorUrl: json["mirror_url"],
        archived: json["archived"],
        disabled: json["disabled"],
        openIssuesCount: json["open_issues_count"],
        license: json["license"],
        allowForking: json["allow_forking"],
        isTemplate: json["is_template"],
        webCommitSignoffRequired: json["web_commit_signoff_required"],
        topics: List<dynamic>.from(json["topics"].map((x) => x)),
        visibility: visibilityValues.map[json["visibility"]]!,
        forks: json["forks"],
        openIssues: json["open_issues"],
        watchers: json["watchers"],
        defaultBranch: defaultBranchValues.map[json["default_branch"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "name": name,
        "full_name": fullName,
        "private": private,
        "owner": owner.toJson(),
        "html_url": htmlUrl,
        "description": description,
        "fork": fork,
        "url": url,
        "forks_url": forksUrl,
        "keys_url": keysUrl,
        "collaborators_url": collaboratorsUrl,
        "teams_url": teamsUrl,
        "hooks_url": hooksUrl,
        "issue_events_url": issueEventsUrl,
        "events_url": eventsUrl,
        "assignees_url": assigneesUrl,
        "branches_url": branchesUrl,
        "tags_url": tagsUrl,
        "blobs_url": blobsUrl,
        "git_tags_url": gitTagsUrl,
        "git_refs_url": gitRefsUrl,
        "trees_url": treesUrl,
        "statuses_url": statusesUrl,
        "languages_url": languagesUrl,
        "stargazers_url": stargazersUrl,
        "contributors_url": contributorsUrl,
        "subscribers_url": subscribersUrl,
        "subscription_url": subscriptionUrl,
        "commits_url": commitsUrl,
        "git_commits_url": gitCommitsUrl,
        "comments_url": commentsUrl,
        "issue_comment_url": issueCommentUrl,
        "contents_url": contentsUrl,
        "compare_url": compareUrl,
        "merges_url": mergesUrl,
        "archive_url": archiveUrl,
        "downloads_url": downloadsUrl,
        "issues_url": issuesUrl,
        "pulls_url": pullsUrl,
        "milestones_url": milestonesUrl,
        "notifications_url": notificationsUrl,
        "labels_url": labelsUrl,
        "releases_url": releasesUrl,
        "deployments_url": deploymentsUrl,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pushed_at": pushedAt.toIso8601String(),
        "git_url": gitUrl,
        "ssh_url": sshUrl,
        "clone_url": cloneUrl,
        "svn_url": svnUrl,
        "homepage": homepage,
        "size": size,
        "stargazers_count": stargazersCount,
        "watchers_count": watchersCount,
        "language": language,
        "has_issues": hasIssues,
        "has_projects": hasProjects,
        "has_downloads": hasDownloads,
        "has_wiki": hasWiki,
        "has_pages": hasPages,
        "has_discussions": hasDiscussions,
        "forks_count": forksCount,
        "mirror_url": mirrorUrl,
        "archived": archived,
        "disabled": disabled,
        "open_issues_count": openIssuesCount,
        "license": license,
        "allow_forking": allowForking,
        "is_template": isTemplate,
        "web_commit_signoff_required": webCommitSignoffRequired,
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "visibility": visibilityValues.reverse[visibility],
        "forks": forks,
        "open_issues": openIssues,
        "watchers": watchers,
        "default_branch": defaultBranchValues.reverse[defaultBranch],
      };
}

enum DefaultBranch { MAIN, MASTER }

final defaultBranchValues =
    EnumValues({"main": DefaultBranch.MAIN, "master": DefaultBranch.MASTER});

class Owner {
  Login login;
  int id;
  NodeId nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  FollowingUrl followingUrl;
  GistsUrl gistsUrl;
  StarredUrl starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  EventsUrl eventsUrl;
  String receivedEventsUrl;
  Type type;
  bool siteAdmin;

  Owner({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: loginValues.map[json["login"]]!,
        id: json["id"],
        nodeId: nodeIdValues.map[json["node_id"]]!,
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: followingUrlValues.map[json["following_url"]]!,
        gistsUrl: gistsUrlValues.map[json["gists_url"]]!,
        starredUrl: starredUrlValues.map[json["starred_url"]]!,
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: eventsUrlValues.map[json["events_url"]]!,
        receivedEventsUrl: json["received_events_url"],
        type: typeValues.map[json["type"]]!,
        siteAdmin: json["site_admin"],
      );

  Map<String, dynamic> toJson() => {
        "login": loginValues.reverse[login],
        "id": id,
        "node_id": nodeIdValues.reverse[nodeId],
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrlValues.reverse[followingUrl],
        "gists_url": gistsUrlValues.reverse[gistsUrl],
        "starred_url": starredUrlValues.reverse[starredUrl],
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrlValues.reverse[eventsUrl],
        "received_events_url": receivedEventsUrl,
        "type": typeValues.reverse[type],
        "site_admin": siteAdmin,
      };
}

enum EventsUrl { HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_EVENTS_PRIVACY }

final eventsUrlValues = EnumValues({
  "https://api.github.com/users/mikeeolar/events{/privacy}":
      EventsUrl.HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_EVENTS_PRIVACY
});

enum FollowingUrl { HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_FOLLOWING_OTHER_USER }

final followingUrlValues = EnumValues({
  "https://api.github.com/users/mikeeolar/following{/other_user}":
      FollowingUrl.HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_FOLLOWING_OTHER_USER
});

enum GistsUrl { HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_GISTS_GIST_ID }

final gistsUrlValues = EnumValues({
  "https://api.github.com/users/mikeeolar/gists{/gist_id}":
      GistsUrl.HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_GISTS_GIST_ID
});

enum Login { MIKEEOLAR }

final loginValues = EnumValues({"mikeeolar": Login.MIKEEOLAR});

enum NodeId { MDQ6_VX_NLCJ_Q4_NT_UX_MJ_Y5 }

final nodeIdValues =
    EnumValues({"MDQ6VXNlcjQ4NTUxMjY5": NodeId.MDQ6_VX_NLCJ_Q4_NT_UX_MJ_Y5});

enum StarredUrl { HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_STARRED_OWNER_REPO }

final starredUrlValues = EnumValues({
  "https://api.github.com/users/mikeeolar/starred{/owner}{/repo}":
      StarredUrl.HTTPS_API_GITHUB_COM_USERS_MIKEEOLAR_STARRED_OWNER_REPO
});

enum Type { USER }

final typeValues = EnumValues({"User": Type.USER});

enum Visibility { PUBLIC }

final visibilityValues = EnumValues({"public": Visibility.PUBLIC});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
