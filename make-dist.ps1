Remove-Item -Recurse .\docs\ -Force
dotnet publish -o docs
Move-Item  .\docs\wwwroot\* .\docs
New-Item -Type File -Path ./docs/.nojekyll
New-Item -Type File -Path ./docs/_framework/.gitattributes
Add-Content -Path .\docs\_framework\.gitattributes -Value '* binary'