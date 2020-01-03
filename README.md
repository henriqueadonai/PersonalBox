# Link for DX

[All you need to know about DX](https://forcedotcom.github.io/salesforcedx-vscode/articles/getting-started/install)

# SFDX App

- sfdx force:auth:web:login -d -a DevHUb
- sfdx force:project:create -n PersonalBox --template standard (Create From scratch)
- sfdx force:org:create -s -f config/project-scratch-def.json -a PersonalBox
- sfdx force:org:open

- sfdx force:source:pull
- sfdx force:source:push

## Dev, Build and Test

## Resources

- Enabling Deploy on Save in your project is straightforward: simply update your .vscode/settings.json file with the config "salesforcedx-vscode-core.push-or-deploy-on-save.enabled": true.
- Retrieve Metadata from the UI. To enable this feature you need to go to the VS Code settings and enable Org Browser. Also, for now this feature only works against non-scratch orgs – it will automatically hide when you are authenticated against scratch orgs. Go to File->Setting to fin the org Browser
- Lightning Explorer in the VS Code Settings
- Setup Prettier

## Description of Files and Directories

## Issues

## Links and examples in this org

- [x] [Test and deploy Changes](https://trailhead.salesforce.com/content/learn/modules/org-development-model/test-and-deploy-changes)
- [x] [Developer Maintenance Spring 19](https://trailhead.salesforce.com/content/learn/modules/platform-developer1-maintenance-spring19)
- [x] [Lightning Web components Basics](https://trailhead.salesforce.com/content/learn/modules/lightning-web-components-basics)
- [x] [asynchronous apex triggers ](https://developer.salesforce.com/blogs/2019/06/get-buildspiration-with-asynchronous-apex-triggers-in-summer-19.html)
- [][custom notifications in summer](https://developer.salesforce.com/blogs/2019/06/get-buildspiration-with-custom-notifications-in-summer-19.html)
- [][external objects](https://trailhead.salesforce.com/en/content/learn/modules/lightning_connect/lightning_connect_introduction)
- [x] [Breaking Runtime Dependecies](https://developer.salesforce.com/blogs/2019/07/breaking-runtime-dependencies-with-dependency-injection.html)
- [][convert a javascript datepicker to a lightning web component](https://developer.salesforce.com/blogs/2019/08/convert-a-javascript-datepicker-to-a-lightning-web-component.html)
- [][live coding: handling triggers in a multi-package org](https://developer.salesforce.com/blogs/2019/08/live-coding-with-simon-goodyear.html)
- [][scaling data](https://developer.salesforce.com/blogs/2019/08/scaling-data-access-with-app-layer-cache.html)
- [][apex enterprise patterns: service layer](https://trailhead.salesforce.com/content/learn/modules/apex_patterns_sl)
- [][pdf in lwc](https://developer.salesforce.com/blogs/2019/07/display-pdf-files-with-lightning-web-components.html)
- [][streamer monitor](https://developer.salesforce.com/blogs/2019/07/a-refresher-on-the-four-streaming-apis-and-a-monitoring-tool.html)
- [x] [Building a Set from any field](https://bigassforce.com/field-keysets)
- [][continuation on lightning web components](https://medium.com/@jefersonchaves/continuation-on-lightning-web-components-8735b7f37fa1)
- [][my top 4 patterns](https://medium.com/@dangoslen/my-top-4-patterns-for-writing-simple-code-466705ac0b97)
- [x] [Retrieving Picklist Values Without Using Apex](https://developer.salesforce.com/blogs/2019/12/retrieving-picklist-values-without-using-apex.html)
- [x] [Build Invocable actions that work for Multiple Objects](https://releasenotes.docs.salesforce.com/en-us/spring20/release-notes/rn_forcecom_flow_fbuilder_dynamic_types.htm)


## How to Deploy LWC to Org

- Ctr+Ship+P = Authorize and Org
- sfdx force:source:deploy -p .\force-app\main\default\lwc\
- sfdx force:user:permset:assign -n XXXX Permission Sets
  **It's done**
  [Deploy Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm)

## Git commands

- git add .
- git commit -m "new changes"
- git push --set-upstream origin master

\*\* Push the branch to the remote repository

- git checkout -b "new branch"
- git push -u origin OrgDevelopmentModel

**Pull request**
git checkout master

- [Git Information](https://trailhead.salesforce.com/en/content/learn/modules/git-and-git-hub-basics/work-with-teams-in-git-hub)
