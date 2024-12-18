Function Get-ODTURL {
  $MSWebPage = (Invoke-WebRequest "https://www.microsoft.com/en-us/download/details.aspx?id=49117" -UseBasicParsing).Content
  [regex]$regex = '"(https://download\.microsoft\.com/download/[^\s"]+\.exe)"'
  if ($MSWebPage -match $regex) {
    $matches[1]
  } else {
    write-host "Unable to find ODT Download URL from https://www.microsoft.com/en-us/download/details.aspx?id=49117"
    exit 1
  }
}
