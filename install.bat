@echo OFF

echo Installing OPENAI-CLI on your OS...

echo Go to https://beta.openai.com/account/api-keys to get your API Token
set /p token=Enter OpenAI Token: 
echo OPENAI_API_TOKEN=%token% > .env

echo Please move :
echo - .env          to C:\WINDOWS\system32
echo - openai-cli.py to C:\WINDOWS\system32
echo - openai.bat    to C:\WINDOWS\system32