# Scrips: tong_hop.ps1
# Tac gia: DoDuyThanh
# Ngay tao: 11/11/2026
Write host "Dan tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
gc logs/request.log | sls "status=404" >> logs/tong_hop.txt
(gc logs/request.log | sls "status=500" | Measure-Object).Count >> logs/tong_hop.txt

Write-Host "Hoan thanh!"
