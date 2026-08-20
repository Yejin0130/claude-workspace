# 서울 강남구 날씨 + 미세먼지 정보를 가져와 weather.txt에 저장 (API 키 불필요)
# - 날씨: wttr.in (무료, 키 불필요)
# - 미세먼지: 네이버 모바일 검색 결과에 서버 렌더링된 요약 텍스트를 파싱 (비공식, 페이지 구조 변경 시 깨질 수 있음)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputPath = Join-Path $PSScriptRoot "weather.txt"

$lines = @()
$lines += "=== 서울 강남구 날씨/미세먼지 정보 ==="
$lines += "조회 시각: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$lines += ""

# 1) 날씨 (wttr.in)
try {
    $weather = Invoke-RestMethod -Uri "https://wttr.in/Gangnam-gu,Seoul?format=%C+%t+(체감:%f)+습도:%h+풍속:%w&lang=ko" -TimeoutSec 15
    $lines += "[날씨] $weather"
} catch {
    $lines += "[날씨] 조회 실패: $($_.Exception.Message)"
}

# 2) 미세먼지 (네이버 검색 결과 요약 텍스트 파싱)
try {
    $resp = Invoke-WebRequest -Uri "https://m.search.naver.com/search.naver?query=%EA%B0%95%EB%82%A8%EA%B5%AC+%EB%AF%B8%EC%84%B8%EB%A8%BC%EC%A7%80" `
        -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -TimeoutSec 15 -UseBasicParsing
    $html = $resp.Content -replace '<mark>', '' -replace '</mark>', ''

    $pattern = '측정시간\s*:\s*([\d\-]+\s[\d:]+)\s*-\s*미세먼지\s*(\d+)\((.+?)\)\s*-\s*초미세먼지\s*(\d+)\((.+?)\)'
    $m = [regex]::Match($html, $pattern)

    if ($m.Success) {
        $lines += "[미세먼지] 강남구 측정소 기준 (측정시간: $($m.Groups[1].Value))"
        $lines += "  - 미세먼지(PM10): $($m.Groups[2].Value) ug/m3 ($($m.Groups[3].Value))"
        $lines += "  - 초미세먼지(PM2.5): $($m.Groups[4].Value) ug/m3 ($($m.Groups[5].Value))"
    } else {
        $lines += "[미세먼지] 정보를 찾을 수 없습니다 (페이지 구조가 변경되었을 수 있음)"
    }
} catch {
    $lines += "[미세먼지] 조회 실패: $($_.Exception.Message)"
}

($lines -join "`r`n") | Out-File -FilePath $OutputPath -Encoding utf8

