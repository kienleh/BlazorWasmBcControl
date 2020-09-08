Remove-Item -Recurse .\docs\ -Force
dotnet publish -o docs
Move-Item  .\docs\wwwroot\* .\docs
New-Item -Type File -Path ./docs/.nojekyll