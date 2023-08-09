Regtweaks Collection files original created under the [Mozilla Public License 2.0 license](https://github.com/CHEF-KOCH/regtweaks/blob/master/LICENSE) 2015 - present by [CHEF-KOCH](https://github.com/CHEF-KOCH). Some tweaks are taken from the Internet but most tweaks are found by myself.



**Current Status: Over 900+ tweaks**





**Before** you use any tweak(s) ensure you read the comment(s) inside the .reg (labeled with **;**) to see what it really changes. Of course a backup/snapshot could also help in case something goes wrong. Remember: Shit happens!



Project Goal(s)
------------

1. All of the tweaks could be integrated into image creations tools (NTLite, WinToolKit,..) to simplify things, especially if you like to re-install Windows from the ground without need to apply each tweak one by one.
2. Show hidden things that aren't visible via GUI under Windows. Sometimes it's easier/faster to do this via .reg instead of search for the toggles.
3. Another goal is that the user doesn't need additional tools like O&O ShutUp, because some of such 'privacy' tools are bundled with bloatware and are not necessary, because all can already be done with scripts and .reg tweak - So overall an Index/Backup script to read the current state is more transparent (see 1/2).
4. [Provide a short overview of current Windows issue](https://github.com/CHEF-KOCH/regtweaks/blob/master/Known%20Windows%20Issue.md) and how to quickly solve them.
5. Fix everything listed under ToDo.



RegTweaks is free, but powered by your support
------------

There are many reoccurring costs involved with maintaining free, open source and privacy respecting programs. As you probably know, developing quality applications takes much time and resources. Your sponsoring will make it possible to release the [GUI](https://github.com/CHEF-KOCH/regtweaks/issues/14).


Any problems, questions or something wrong?
------------

* Feel free to open an [issue ticket](https://github.com/CHEF-KOCH/regtweaks/issues) and I will look at it asap. - Pull requests or ideas are always welcome!
* Please do not use the issue tracker to ask for xyz tweaks, I not waste my time with that until there is a very good reasons to do so. If you found something that wasn't added here contact me and I will add it.
* Windows 7 - 8 support is limited, I simply don't have time to check every OS and I personally won't support it anymore because my philosophy is to use the latest OS due security reasons.



Find _hidden_ registry settings yourself
------------

To answer the question how do I find all those registry tweaks, it's very easy and explained with pictures and an example video, which you can find over [here](https://chefkochblog.wordpress.com/2018/02/28/how-i-find-every-registry-tweak/).



Reboot myth
------------

There are several myths and misinformation about how the Windows Registry actually work, one of them is that you need to reboot. There are several methods in order to [apply registry changes without a reboot](https://www.thewindowsclub.com/how-to-make-registry-changes-take-effect-immediately-without-restart).

* Kill explorer.exe and restart it
* Log off and then log back in (recommend)



Find hidden Windows features yourself
------------

[ViVe Tool](https://github.com/thebookisclosed/ViVe/releases) is not an official Microsoft program. Nevertheless, you can still [download it from it's Github page](https://github.com/riverar/mach2/releases). 

Keep in mind that not all feature IDs can be found within Windows debugging symbols. [Capstone](https://github.com/aquynh/capstone) is still needed in order to disassemble all hidden details.


Win 7 - 10 "Home" Group Policy Editor
------------

The Home Editions doesn't official supporting the GPEDIT.MSC stuff, so here is how to add them back [here's the link how](http://drudger.deviantart.com/art/Add-GPEDIT-msc-215792914) or [this](http://www.askvg.com/how-to-enable-group-policy-editor-gpedit-msc-in-windows-7-home-premium-home-basic-and-starter-editions/).

In order to get RDP (Remote Desktop Protocol) in Home Editions simply use [rdpwrap](https://github.com/stascorp/rdpwrap/).



File Encoding
------------

All registry (.reg) files are UTF-16 w/o BOM (also called _UCS-2 LE BOM_) encoded, [that's what Windows uses](https://docs.microsoft.com/en-us/windows/desktop/sysinfo/registry-value-types). The line ending is [CRLF](https://stackoverflow.com/questions/1552749/difference-between-cr-lf-lf-and-cr-line-break-types). Theoretically you can use UTF-16/UTF-8 with or without BOM but [some people do have some problems](https://github.com/CHEF-KOCH/regtweaks/issues/20) and that's why I decided to go with the official MS Windows standards.



Project History
------------

- [x] 01.02.2019    Microsoft Windows & Office FAQ added (overview of most asked questions with answers)
- [x] 15.09.2018    Placeholder Logo added
- [x] 04.05.2018    Mach2 will be integrated into the GUI, until then I provide links to the project and an external guide how to find hidden Windows features in Insider Builds
- [x] 18.07.2017    GUI is done, some internal fixes before rolling out at the end of this year, some cleanups are necessary
- [x] 13.04.2017    Second and last GUI beta test
- [x] 26.01.2017    First beta GUI tests
- [x] 31.05.2016    First internal GUI tests
- [x] 01.09.2015    All tweaks are now in English.
- [x] 25.08.2015    Added some image creation tools which are able handle the registry tweaks.
- [x] 18.08.2015    Initial upload and first release.



ToDo
------------

- [x] Add Windows 'known Issue' _Bug list_(requested) (mid-prio)
- [ ] Add new tweaks (high-prio)
- [ ] Adapt or integrate Mach2 within the GUI (Work-in-Process WiP)
- [x] Sort all tweaks maybe via .html or .js parser to easier access them with e.g. a search function (like RSW?) (main-prio) in other words: GUI Client
- [x] Delete duplicates (high-prio)
- [x] Remove not working ones of course this needs some testers (high-prio)
- [x] Rename tweaks to english (some are in ger./ru.) (high-prio)
- [ ] Fix [reported problems](https://github.com/CHEF-KOCH/regtweaks/issues) (high-prio)
- [x] Add on/off toggles (registry/batch files) to revert all changes in case something goes wrong


Research
------------

* [Windows 10 release information](https://docs.microsoft.com/en-us/windows/release-information/)
* [Windows Processor Requirements](https://docs.microsoft.com/en-us/windows-hardware/design/minimum/windows-processor-requirements)
* [Windows 10 Editions Overview](https://en.wikipedia.org/wiki/Windows_10_editions)
* [Windows 10 and Server 2016 Secure Baseline Group Policy](https://github.com/mxk/win10-secure-baseline-gpo)
* [Crash Course in Upgrading to Windows 10](https://resources.office.com/ww-landing-M365PD-EOL-crash-course-in-upgrading-to-windows-10-ebook.html?LCID=en)
* [Windows monthly security and quality updates overview](https://blogs.windows.com/windowsexperience/2018/12/10/windows-monthly-security-and-quality-updates-overview/#Pfmob218dxfU6WCB.97)
* [Vista Registry Editor - Examples of .Reg Files](http://www.computerperformance.co.uk/vista/vista_registry_tweaks.htm)
* [Sevenforums Tutorial Index](http://www.sevenforums.com/tutorials/257-windows-7-tutorial-index.html)
* [Microsoft Is Downloading 6GB of Windows 10 Updates Without User’s Consent (nextbigwhat.com)](http://www.nextbigwhat.com/microsoft-is-downloading-6gb-of-windows-10-updates-without-users-consent-297/)
* [Patch Tuesday Dashboard](https://patchtuesdaydashboard.com)
* [NSA Windows Secure Host Baseline](https://github.com/nsacyber/Windows-Secure-Host-Baseline)
* [Security baseline (DRAFT) for Windows 10 v1903 and Windows Server v1903](https://blogs.technet.microsoft.com/secguide/2019/04/24/security-baseline-draft-for-windows-10-v1903-and-windows-server-v1903/)


### Search old KB articles
- [Search old KB entries](https://mskb.pkisolutions.com/kb/search)
- [Microsoft Product List](https://mskb.pkisolutions.com/products)
- [kbupdate](https://github.com/potatoqualitee/kbupdate)


#### Articles (Telemetry analyzed)
- [Old german BSI Telemetry report, which tested Windows 10 Pro Build 1607](https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Cyber-Sicherheit/SiSyPHus/Analyse_Telemetriekomponente.pdf?__blob=publicationFile&v=3)
- [Latest Telemetry BSI report, which tested Windows 10 Pro Build 1909](https://www.lda.bayern.de/media/baylda_report_09.pdf)
- [SiSyPHuS Win10: Analyse der Telemetriekomponenten in Windows 10](https://www.bsi.bund.de/DE/Themen/Cyber-Sicherheit/Empfehlungen/SiSyPHuS_Win10/AP4/SiSyPHuS_AP4_node.html)
- [SiSyPHuS Win10: Studie zu Systemaufbau, Protokollierung, Härtung und Sicherheitsfunktionen in Windows 10](https://www.bsi.bund.de/DE/Themen/Cyber-Sicherheit/Empfehlungen/SiSyPHuS_Win10/SiSyPHuS_node.html)
* [Data processor service for Windows Enterprise Overview](https://docs.microsoft.com/en-us/windows/privacy/deploy-data-processor-service-windows) & [Public Preview](https://forms.microsoft.com/FormsPro/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR6tMGsSA7uxIvw6v9Tpong5UN1hRTVJZQjRLQ000QjFYMjZFNElEU0VEVC4u)


#### Find hidden tweaks and unlock them
* [mach2](https://github.com/riverar/mach2) - A complete guide is [available here](https://www.bleepingcomputer.com/news/microsoft/finding-and-enabling-hidden-features-in-windows-10-using-mach2/).
* [ViveTool](https://github.com/thebookisclosed/ViVe/releases)


#### Optional Tools and Scripts
* [OfflineInsiderEnroll - A script to enable access to the Windows Insider Program on machines not signed in with Microsoft Account](https://github.com/whatever127/offlineinsiderenroll)
* [Administrative Templates (.admx) for Windows 10 May 2019 Update (1909)](https://www.microsoft.com/en-us/download/100591)
* [Aero Glass for Windows 8+](https://www.glass8.eu/)
* [NTLite](https://www.ntlite.com) or (_free_) [MSMG ToolKit](https://m.majorgeeks.com/files/details/msmg_toolkit.html), or [Optimize-Offline](https://github.com/DrEmpiricism/Optimize-Offline/)
* [PowerToys](https://github.com/microsoft/PowerToys)
* [RSAT for Windows 10](https://www.microsoft.com/en-us/download/details.aspx?id=45520)
* [Sandbox Configuration Manager](https://gallery.technet.microsoft.com/Windows-Sandbox-Configurati-f2c863dc)
* [Win10-Initial-Setup-Script](https://github.com/Disassembler0/Win10-Initial-Setup-Script) 
* [WinLight](https://github.com/Biswa96/WinLight)
* [WinToolkit](https://www.wincert.net)
* [lusrmgr](https://github.com/proviq/lusrmgr) - Local User and Group Management application, for all Windows editions
* [OfflineInsiderEnroll](https://github.com/luzeagithub/offlineinsiderenroll) - OfflineInsiderEnroll - A script to enable access to the Windows Insider Program on machines not signed in with Microsoft Account.

