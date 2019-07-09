# Link for DX
 [All you need to know about DX] (https://forcedotcom.github.io/salesforcedx-vscode/articles/getting-started/install)

# SFDX App
 * sfdx force:auth:web:login -d -a DevHUb
 * sfdx force:project:create -n PersonalBox --template standard
 * sfdx force:org:create -s -f config/project-scratch-def.json -a PersonalBox
 * sfdx force:org:open

 * sfdx force:source:pull
 * sfdx force:source:push.sf
 
## Dev, Build and Test

## Resources

## Description of Files and Directories

## Issues

## Links and examples in this org
- [x] [Test and deploy Changes](https://trailhead.salesforce.com/content/learn/modules/org-development-model/test-and-deploy-changes)
- [x] [Developer Maintenance Spring 19](https://trailhead.salesforce.com/content/learn/modules/platform-developer1-maintenance-spring19)
- [] [Asynchronous Apex Triggers ](https://developer.salesforce.com/blogs/2019/06/get-buildspiration-with-asynchronous-apex-triggers-in-summer-19.html)
- [] [Custom Notifications in Summer](https://developer.salesforce.com/blogs/2019/06/get-buildspiration-with-custom-notifications-in-summer-19.html)
- [] [External Objects](https://trailhead.salesforce.com/en/content/learn/modules/lightning_connect/lightning_connect_introduction)

## Git commands
* git add .
* git commit -m "new changes"
* git push --set-upstream origin master

** Push the branch to the remote repository
* git checkout -b "new branch"
* git push -u origin OrgDevelopmentModel

**Pull request
git checkout master

- [Git Information](https://trailhead.salesforce.com/en/content/learn/modules/git-and-git-hub-basics/work-with-teams-in-git-hub) 