If (-Not (Get-InstalledModule -Name posh-git)) {
  Install-Module -Name posh-git -Scope CurrentUser
}

Import-Module posh-git

# Aliases
New-Alias msbuild 'c:\program files (x86)\msbuild\14.0\bin\msbuild.exe'

# PoshGit prompt
$GitPromptSettings.DefaultPromptSuffix = '`n$(''>'' * ($nestedPromptLevel + 1)) '
