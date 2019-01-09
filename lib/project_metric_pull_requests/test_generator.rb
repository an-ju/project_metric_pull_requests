class ProjectMetricPullRequests
  def self.fake_data
    [fake_metric(3, 3), fake_metric(5, 0), fake_metric(0, 0)]
  end

  def self.fake_metric(num_open, num_close)
    image = { charType: 'pull_requests',
              data: { new_pr: Array.new(num_open) { open_pr },
                      closed_pr: Array.new(num_close) { closed_pr },
                      pr_link: 'https://github.com/an-ju/projectscope/pulls' } }
    { score: num_open + num_close + rand(10), image: image }
  end

  def self.open_pr
    {"id":"8584327368","type":"PullRequestEvent","actor":{"id":5564756,"login":"an-ju","display_login":"an-ju","gravatar_id":"","url":"https://api.github.com/users/an-ju","avatar_url":"https://avatars.githubusercontent.com/u/5564756?"},"repo":{"id":72873514,"name":"an-ju/projectscope","url":"https://api.github.com/repos/an-ju/projectscope"},"payload":{"action":"opened","number":124,"pull_request":{"url":"https://api.github.com/repos/an-ju/projectscope/pulls/124","id":230646353,"node_id":"MDExOlB1bGxSZXF1ZXN0MjMwNjQ2MzUz","html_url":"https://github.com/an-ju/projectscope/pull/124","diff_url":"https://github.com/an-ju/projectscope/pull/124.diff","patch_url":"https://github.com/an-ju/projectscope/pull/124.patch","issue_url":"https://api.github.com/repos/an-ju/projectscope/issues/124","number":124,"state":"open","locked":false,"title":"update github flow gem.","user":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"body":"","created_at":"2018-11-13 22:24:28 UTC","updated_at":"2018-11-13 22:24:28 UTC","closed_at":null,"merged_at":null,"merge_commit_sha":null,"assignee":null,"assignees":[],"requested_reviewers":[],"requested_teams":[],"labels":[],"milestone":null,"commits_url":"https://api.github.com/repos/an-ju/projectscope/pulls/124/commits","review_comments_url":"https://api.github.com/repos/an-ju/projectscope/pulls/124/comments","review_comment_url":"https://api.github.com/repos/an-ju/projectscope/pulls/comments{/number}","comments_url":"https://api.github.com/repos/an-ju/projectscope/issues/124/comments","statuses_url":"https://api.github.com/repos/an-ju/projectscope/statuses/06295c034439db1bb9ee965ab7522011f06ae057","head":{"label":"an-ju:github_flow","ref":"github_flow","sha":"06295c034439db1bb9ee965ab7522011f06ae057","user":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"repo":{"id":72873514,"node_id":"MDEwOlJlcG9zaXRvcnk3Mjg3MzUxNA==","name":"projectscope","full_name":"an-ju/projectscope","private":false,"owner":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"html_url":"https://github.com/an-ju/projectscope","description":"ProjectScope developed for CS169 at UC Berkeley.","fork":true,"url":"https://api.github.com/repos/an-ju/projectscope","forks_url":"https://api.github.com/repos/an-ju/projectscope/forks","keys_url":"https://api.github.com/repos/an-ju/projectscope/keys{/key_id}","collaborators_url":"https://api.github.com/repos/an-ju/projectscope/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/an-ju/projectscope/teams","hooks_url":"https://api.github.com/repos/an-ju/projectscope/hooks","issue_events_url":"https://api.github.com/repos/an-ju/projectscope/issues/events{/number}","events_url":"https://api.github.com/repos/an-ju/projectscope/events","assignees_url":"https://api.github.com/repos/an-ju/projectscope/assignees{/user}","branches_url":"https://api.github.com/repos/an-ju/projectscope/branches{/branch}","tags_url":"https://api.github.com/repos/an-ju/projectscope/tags","blobs_url":"https://api.github.com/repos/an-ju/projectscope/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/an-ju/projectscope/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/an-ju/projectscope/git/refs{/sha}","trees_url":"https://api.github.com/repos/an-ju/projectscope/git/trees{/sha}","statuses_url":"https://api.github.com/repos/an-ju/projectscope/statuses/{sha}","languages_url":"https://api.github.com/repos/an-ju/projectscope/languages","stargazers_url":"https://api.github.com/repos/an-ju/projectscope/stargazers","contributors_url":"https://api.github.com/repos/an-ju/projectscope/contributors","subscribers_url":"https://api.github.com/repos/an-ju/projectscope/subscribers","subscription_url":"https://api.github.com/repos/an-ju/projectscope/subscription","commits_url":"https://api.github.com/repos/an-ju/projectscope/commits{/sha}","git_commits_url":"https://api.github.com/repos/an-ju/projectscope/git/commits{/sha}","comments_url":"https://api.github.com/repos/an-ju/projectscope/comments{/number}","issue_comment_url":"https://api.github.com/repos/an-ju/projectscope/issues/comments{/number}","contents_url":"https://api.github.com/repos/an-ju/projectscope/contents/{+path}","compare_url":"https://api.github.com/repos/an-ju/projectscope/compare/{base}...{head}","merges_url":"https://api.github.com/repos/an-ju/projectscope/merges","archive_url":"https://api.github.com/repos/an-ju/projectscope/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/an-ju/projectscope/downloads","issues_url":"https://api.github.com/repos/an-ju/projectscope/issues{/number}","pulls_url":"https://api.github.com/repos/an-ju/projectscope/pulls{/number}","milestones_url":"https://api.github.com/repos/an-ju/projectscope/milestones{/number}","notifications_url":"https://api.github.com/repos/an-ju/projectscope/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/an-ju/projectscope/labels{/name}","releases_url":"https://api.github.com/repos/an-ju/projectscope/releases{/id}","deployments_url":"https://api.github.com/repos/an-ju/projectscope/deployments","created_at":"2016-11-04 18:10:46 UTC","updated_at":"2018-11-12 22:46:05 UTC","pushed_at":"2018-11-13 22:23:56 UTC","git_url":"git://github.com/an-ju/projectscope.git","ssh_url":"git@github.com:an-ju/projectscope.git","clone_url":"https://github.com/an-ju/projectscope.git","svn_url":"https://github.com/an-ju/projectscope","homepage":"","size":12603,"stargazers_count":0,"watchers_count":0,"language":"JavaScript","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":4,"mirror_url":null,"archived":false,"open_issues_count":15,"license":null,"forks":4,"open_issues":15,"watchers":0,"default_branch":"develop"}},"base":{"label":"an-ju:develop","ref":"develop","sha":"dec722744356bd2c15a5d445e1f0b2f5f3728d2f","user":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"repo":{"id":72873514,"node_id":"MDEwOlJlcG9zaXRvcnk3Mjg3MzUxNA==","name":"projectscope","full_name":"an-ju/projectscope","private":false,"owner":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"html_url":"https://github.com/an-ju/projectscope","description":"ProjectScope developed for CS169 at UC Berkeley.","fork":true,"url":"https://api.github.com/repos/an-ju/projectscope","forks_url":"https://api.github.com/repos/an-ju/projectscope/forks","keys_url":"https://api.github.com/repos/an-ju/projectscope/keys{/key_id}","collaborators_url":"https://api.github.com/repos/an-ju/projectscope/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/an-ju/projectscope/teams","hooks_url":"https://api.github.com/repos/an-ju/projectscope/hooks","issue_events_url":"https://api.github.com/repos/an-ju/projectscope/issues/events{/number}","events_url":"https://api.github.com/repos/an-ju/projectscope/events","assignees_url":"https://api.github.com/repos/an-ju/projectscope/assignees{/user}","branches_url":"https://api.github.com/repos/an-ju/projectscope/branches{/branch}","tags_url":"https://api.github.com/repos/an-ju/projectscope/tags","blobs_url":"https://api.github.com/repos/an-ju/projectscope/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/an-ju/projectscope/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/an-ju/projectscope/git/refs{/sha}","trees_url":"https://api.github.com/repos/an-ju/projectscope/git/trees{/sha}","statuses_url":"https://api.github.com/repos/an-ju/projectscope/statuses/{sha}","languages_url":"https://api.github.com/repos/an-ju/projectscope/languages","stargazers_url":"https://api.github.com/repos/an-ju/projectscope/stargazers","contributors_url":"https://api.github.com/repos/an-ju/projectscope/contributors","subscribers_url":"https://api.github.com/repos/an-ju/projectscope/subscribers","subscription_url":"https://api.github.com/repos/an-ju/projectscope/subscription","commits_url":"https://api.github.com/repos/an-ju/projectscope/commits{/sha}","git_commits_url":"https://api.github.com/repos/an-ju/projectscope/git/commits{/sha}","comments_url":"https://api.github.com/repos/an-ju/projectscope/comments{/number}","issue_comment_url":"https://api.github.com/repos/an-ju/projectscope/issues/comments{/number}","contents_url":"https://api.github.com/repos/an-ju/projectscope/contents/{+path}","compare_url":"https://api.github.com/repos/an-ju/projectscope/compare/{base}...{head}","merges_url":"https://api.github.com/repos/an-ju/projectscope/merges","archive_url":"https://api.github.com/repos/an-ju/projectscope/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/an-ju/projectscope/downloads","issues_url":"https://api.github.com/repos/an-ju/projectscope/issues{/number}","pulls_url":"https://api.github.com/repos/an-ju/projectscope/pulls{/number}","milestones_url":"https://api.github.com/repos/an-ju/projectscope/milestones{/number}","notifications_url":"https://api.github.com/repos/an-ju/projectscope/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/an-ju/projectscope/labels{/name}","releases_url":"https://api.github.com/repos/an-ju/projectscope/releases{/id}","deployments_url":"https://api.github.com/repos/an-ju/projectscope/deployments","created_at":"2016-11-04 18:10:46 UTC","updated_at":"2018-11-12 22:46:05 UTC","pushed_at":"2018-11-13 22:23:56 UTC","git_url":"git://github.com/an-ju/projectscope.git","ssh_url":"git@github.com:an-ju/projectscope.git","clone_url":"https://github.com/an-ju/projectscope.git","svn_url":"https://github.com/an-ju/projectscope","homepage":"","size":12603,"stargazers_count":0,"watchers_count":0,"language":"JavaScript","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":4,"mirror_url":null,"archived":false,"open_issues_count":15,"license":null,"forks":4,"open_issues":15,"watchers":0,"default_branch":"develop"}},"_links":{"self":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/124"},"html":{"href":"https://github.com/an-ju/projectscope/pull/124"},"issue":{"href":"https://api.github.com/repos/an-ju/projectscope/issues/124"},"comments":{"href":"https://api.github.com/repos/an-ju/projectscope/issues/124/comments"},"review_comments":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/124/comments"},"review_comment":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/comments{/number}"},"commits":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/124/commits"},"statuses":{"href":"https://api.github.com/repos/an-ju/projectscope/statuses/06295c034439db1bb9ee965ab7522011f06ae057"}},"author_association":"OWNER","merged":false,"mergeable":null,"rebaseable":null,"mergeable_state":"unknown","merged_by":null,"comments":0,"review_comments":0,"maintainer_can_modify":false,"commits":1,"additions":14155,"deletions":11,"changed_files":6}},"public":true,"created_at":"2018-11-13 22:24:29 UTC"}
  end

  def self.closed_pr
    {"id":"8584331194","type":"PullRequestEvent","actor":{"id":5564756,"login":"an-ju","display_login":"an-ju","gravatar_id":"","url":"https://api.github.com/users/an-ju","avatar_url":"https://avatars.githubusercontent.com/u/5564756?"},"repo":{"id":72873514,"name":"an-ju/projectscope","url":"https://api.github.com/repos/an-ju/projectscope"},"payload":{"action":"closed","number":124,"pull_request":{"url":"https://api.github.com/repos/an-ju/projectscope/pulls/124","id":230646353,"node_id":"MDExOlB1bGxSZXF1ZXN0MjMwNjQ2MzUz","html_url":"https://github.com/an-ju/projectscope/pull/124","diff_url":"https://github.com/an-ju/projectscope/pull/124.diff","patch_url":"https://github.com/an-ju/projectscope/pull/124.patch","issue_url":"https://api.github.com/repos/an-ju/projectscope/issues/124","number":124,"state":"closed","locked":false,"title":"update github flow gem.","user":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"body":"","created_at":"2018-11-13 22:24:28 UTC","updated_at":"2018-11-13 22:25:13 UTC","closed_at":"2018-11-13 22:25:13 UTC","merged_at":"2018-11-13 22:25:13 UTC","merge_commit_sha":"601e0085d5e4200f46d30141e093e3a63d41ef13","assignee":null,"assignees":[],"requested_reviewers":[],"requested_teams":[],"labels":[],"milestone":null,"commits_url":"https://api.github.com/repos/an-ju/projectscope/pulls/124/commits","review_comments_url":"https://api.github.com/repos/an-ju/projectscope/pulls/124/comments","review_comment_url":"https://api.github.com/repos/an-ju/projectscope/pulls/comments{/number}","comments_url":"https://api.github.com/repos/an-ju/projectscope/issues/124/comments","statuses_url":"https://api.github.com/repos/an-ju/projectscope/statuses/06295c034439db1bb9ee965ab7522011f06ae057","head":{"label":"an-ju:github_flow","ref":"github_flow","sha":"06295c034439db1bb9ee965ab7522011f06ae057","user":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"repo":{"id":72873514,"node_id":"MDEwOlJlcG9zaXRvcnk3Mjg3MzUxNA==","name":"projectscope","full_name":"an-ju/projectscope","private":false,"owner":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"html_url":"https://github.com/an-ju/projectscope","description":"ProjectScope developed for CS169 at UC Berkeley.","fork":true,"url":"https://api.github.com/repos/an-ju/projectscope","forks_url":"https://api.github.com/repos/an-ju/projectscope/forks","keys_url":"https://api.github.com/repos/an-ju/projectscope/keys{/key_id}","collaborators_url":"https://api.github.com/repos/an-ju/projectscope/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/an-ju/projectscope/teams","hooks_url":"https://api.github.com/repos/an-ju/projectscope/hooks","issue_events_url":"https://api.github.com/repos/an-ju/projectscope/issues/events{/number}","events_url":"https://api.github.com/repos/an-ju/projectscope/events","assignees_url":"https://api.github.com/repos/an-ju/projectscope/assignees{/user}","branches_url":"https://api.github.com/repos/an-ju/projectscope/branches{/branch}","tags_url":"https://api.github.com/repos/an-ju/projectscope/tags","blobs_url":"https://api.github.com/repos/an-ju/projectscope/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/an-ju/projectscope/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/an-ju/projectscope/git/refs{/sha}","trees_url":"https://api.github.com/repos/an-ju/projectscope/git/trees{/sha}","statuses_url":"https://api.github.com/repos/an-ju/projectscope/statuses/{sha}","languages_url":"https://api.github.com/repos/an-ju/projectscope/languages","stargazers_url":"https://api.github.com/repos/an-ju/projectscope/stargazers","contributors_url":"https://api.github.com/repos/an-ju/projectscope/contributors","subscribers_url":"https://api.github.com/repos/an-ju/projectscope/subscribers","subscription_url":"https://api.github.com/repos/an-ju/projectscope/subscription","commits_url":"https://api.github.com/repos/an-ju/projectscope/commits{/sha}","git_commits_url":"https://api.github.com/repos/an-ju/projectscope/git/commits{/sha}","comments_url":"https://api.github.com/repos/an-ju/projectscope/comments{/number}","issue_comment_url":"https://api.github.com/repos/an-ju/projectscope/issues/comments{/number}","contents_url":"https://api.github.com/repos/an-ju/projectscope/contents/{+path}","compare_url":"https://api.github.com/repos/an-ju/projectscope/compare/{base}...{head}","merges_url":"https://api.github.com/repos/an-ju/projectscope/merges","archive_url":"https://api.github.com/repos/an-ju/projectscope/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/an-ju/projectscope/downloads","issues_url":"https://api.github.com/repos/an-ju/projectscope/issues{/number}","pulls_url":"https://api.github.com/repos/an-ju/projectscope/pulls{/number}","milestones_url":"https://api.github.com/repos/an-ju/projectscope/milestones{/number}","notifications_url":"https://api.github.com/repos/an-ju/projectscope/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/an-ju/projectscope/labels{/name}","releases_url":"https://api.github.com/repos/an-ju/projectscope/releases{/id}","deployments_url":"https://api.github.com/repos/an-ju/projectscope/deployments","created_at":"2016-11-04 18:10:46 UTC","updated_at":"2018-11-12 22:46:05 UTC","pushed_at":"2018-11-13 22:25:13 UTC","git_url":"git://github.com/an-ju/projectscope.git","ssh_url":"git@github.com:an-ju/projectscope.git","clone_url":"https://github.com/an-ju/projectscope.git","svn_url":"https://github.com/an-ju/projectscope","homepage":"","size":12603,"stargazers_count":0,"watchers_count":0,"language":"JavaScript","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":4,"mirror_url":null,"archived":false,"open_issues_count":14,"license":null,"forks":4,"open_issues":14,"watchers":0,"default_branch":"develop"}},"base":{"label":"an-ju:develop","ref":"develop","sha":"dec722744356bd2c15a5d445e1f0b2f5f3728d2f","user":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"repo":{"id":72873514,"node_id":"MDEwOlJlcG9zaXRvcnk3Mjg3MzUxNA==","name":"projectscope","full_name":"an-ju/projectscope","private":false,"owner":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"html_url":"https://github.com/an-ju/projectscope","description":"ProjectScope developed for CS169 at UC Berkeley.","fork":true,"url":"https://api.github.com/repos/an-ju/projectscope","forks_url":"https://api.github.com/repos/an-ju/projectscope/forks","keys_url":"https://api.github.com/repos/an-ju/projectscope/keys{/key_id}","collaborators_url":"https://api.github.com/repos/an-ju/projectscope/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/an-ju/projectscope/teams","hooks_url":"https://api.github.com/repos/an-ju/projectscope/hooks","issue_events_url":"https://api.github.com/repos/an-ju/projectscope/issues/events{/number}","events_url":"https://api.github.com/repos/an-ju/projectscope/events","assignees_url":"https://api.github.com/repos/an-ju/projectscope/assignees{/user}","branches_url":"https://api.github.com/repos/an-ju/projectscope/branches{/branch}","tags_url":"https://api.github.com/repos/an-ju/projectscope/tags","blobs_url":"https://api.github.com/repos/an-ju/projectscope/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/an-ju/projectscope/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/an-ju/projectscope/git/refs{/sha}","trees_url":"https://api.github.com/repos/an-ju/projectscope/git/trees{/sha}","statuses_url":"https://api.github.com/repos/an-ju/projectscope/statuses/{sha}","languages_url":"https://api.github.com/repos/an-ju/projectscope/languages","stargazers_url":"https://api.github.com/repos/an-ju/projectscope/stargazers","contributors_url":"https://api.github.com/repos/an-ju/projectscope/contributors","subscribers_url":"https://api.github.com/repos/an-ju/projectscope/subscribers","subscription_url":"https://api.github.com/repos/an-ju/projectscope/subscription","commits_url":"https://api.github.com/repos/an-ju/projectscope/commits{/sha}","git_commits_url":"https://api.github.com/repos/an-ju/projectscope/git/commits{/sha}","comments_url":"https://api.github.com/repos/an-ju/projectscope/comments{/number}","issue_comment_url":"https://api.github.com/repos/an-ju/projectscope/issues/comments{/number}","contents_url":"https://api.github.com/repos/an-ju/projectscope/contents/{+path}","compare_url":"https://api.github.com/repos/an-ju/projectscope/compare/{base}...{head}","merges_url":"https://api.github.com/repos/an-ju/projectscope/merges","archive_url":"https://api.github.com/repos/an-ju/projectscope/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/an-ju/projectscope/downloads","issues_url":"https://api.github.com/repos/an-ju/projectscope/issues{/number}","pulls_url":"https://api.github.com/repos/an-ju/projectscope/pulls{/number}","milestones_url":"https://api.github.com/repos/an-ju/projectscope/milestones{/number}","notifications_url":"https://api.github.com/repos/an-ju/projectscope/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/an-ju/projectscope/labels{/name}","releases_url":"https://api.github.com/repos/an-ju/projectscope/releases{/id}","deployments_url":"https://api.github.com/repos/an-ju/projectscope/deployments","created_at":"2016-11-04 18:10:46 UTC","updated_at":"2018-11-12 22:46:05 UTC","pushed_at":"2018-11-13 22:25:13 UTC","git_url":"git://github.com/an-ju/projectscope.git","ssh_url":"git@github.com:an-ju/projectscope.git","clone_url":"https://github.com/an-ju/projectscope.git","svn_url":"https://github.com/an-ju/projectscope","homepage":"","size":12603,"stargazers_count":0,"watchers_count":0,"language":"JavaScript","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"forks_count":4,"mirror_url":null,"archived":false,"open_issues_count":14,"license":null,"forks":4,"open_issues":14,"watchers":0,"default_branch":"develop"}},"_links":{"self":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/124"},"html":{"href":"https://github.com/an-ju/projectscope/pull/124"},"issue":{"href":"https://api.github.com/repos/an-ju/projectscope/issues/124"},"comments":{"href":"https://api.github.com/repos/an-ju/projectscope/issues/124/comments"},"review_comments":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/124/comments"},"review_comment":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/comments{/number}"},"commits":{"href":"https://api.github.com/repos/an-ju/projectscope/pulls/124/commits"},"statuses":{"href":"https://api.github.com/repos/an-ju/projectscope/statuses/06295c034439db1bb9ee965ab7522011f06ae057"}},"author_association":"OWNER","merged":true,"mergeable":null,"rebaseable":null,"mergeable_state":"unknown","merged_by":{"login":"an-ju","id":5564756,"node_id":"MDQ6VXNlcjU1NjQ3NTY=","avatar_url":"https://avatars0.githubusercontent.com/u/5564756?v=4","gravatar_id":"","url":"https://api.github.com/users/an-ju","html_url":"https://github.com/an-ju","followers_url":"https://api.github.com/users/an-ju/followers","following_url":"https://api.github.com/users/an-ju/following{/other_user}","gists_url":"https://api.github.com/users/an-ju/gists{/gist_id}","starred_url":"https://api.github.com/users/an-ju/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/an-ju/subscriptions","organizations_url":"https://api.github.com/users/an-ju/orgs","repos_url":"https://api.github.com/users/an-ju/repos","events_url":"https://api.github.com/users/an-ju/events{/privacy}","received_events_url":"https://api.github.com/users/an-ju/received_events","type":"User","site_admin":false},"comments":0,"review_comments":0,"maintainer_can_modify":false,"commits":1,"additions":14155,"deletions":11,"changed_files":6}},"public":true,"created_at":"2018-11-13 22:25:14 UTC"}
  end

  def self.null
    nil
  end
end