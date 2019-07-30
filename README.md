# Link for DX
 [All you need to know about DX] (https://forcedotcom.github.io/salesforcedx-vscode/articles/getting-started/install)

# SFDX App
 * sfdx force:auth:web:login -d -a DevHUb
 * sfdx force:project:create -n PersonalBox --template standard
 * sfdx force:org:create -s -f config/project-scratch-def.json -a PersonalBox
 * sfdx force:org:open

 * sfdx force:source:pull
 * sfdx force:source:push
 
## Dev, Build and Test

## Resources

## Description of Files and Directories

## Issues

## Links and examples in this org
- [x] [Test and deploy Changes](https://trailhead.salesforce.com/content/learn/modules/org-development-model/test-and-deploy-changes)
- [x] [Developer Maintenance Spring 19](https://trailhead.salesforce.com/content/learn/modules/platform-developer1-maintenance-spring19)
- [x] [Lightning Web components Basics](https://trailhead.salesforce.com/content/learn/modules/lightning-web-components-basics)
- [] [Asynchronous Apex Triggers ](https://developer.salesforce.com/blogs/2019/06/get-buildspiration-with-asynchronous-apex-triggers-in-summer-19.html)
- [] [Custom Notifications in Summer](https://developer.salesforce.com/blogs/2019/06/get-buildspiration-with-custom-notifications-in-summer-19.html)
- [] [External Objects](https://trailhead.salesforce.com/en/content/learn/modules/lightning_connect/lightning_connect_introduction)
- [x] [Breaking Runtime Dependecies](https://developer.salesforce.com/blogs/2019/07/breaking-runtime-dependencies-with-dependency-injection.html)
<<<<<<< HEAD
- [] [Apex Enterprise Patterns: Service Layer](https://trailhead.salesforce.com/content/learn/modules/apex_patterns_sl)
- [] [PDF in LWC](https://developer.salesforce.com/blogs/2019/07/display-pdf-files-with-lightning-web-components.html)
- [][Streamer Monitor](https://developer.salesforce.com/blogs/2019/07/a-refresher-on-the-four-streaming-apis-and-a-monitoring-tool.html)
=======
>>>>>>> 7a84e4e98a386bc00330dee2042d2dff3a205bb7

## How to Deploy LWC to Org
* Ctr+Ship+P = Authorize and Org
* sfdx force:source:deploy -p .\force-app\main\default\lwc\
* sfdx force:user:permset:assign -n XXXX  Permission Sets
**It's done**
[Deploy Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm)


## Git commands
* git add .
* git commit -m "new changes"
* git push --set-upstream origin master

** Push the branch to the remote repository
* git checkout -b "new branch"
* git push -u origin OrgDevelopmentModel

**Pull request**
git checkout master

- [Git Information](https://trailhead.salesforce.com/en/content/learn/modules/git-and-git-hub-basics/work-with-teams-in-git-hub) 