$servers = 'halnmossqlp03a','halnmossqlp03b','hsvlmossqlp03a','hsvlmossqlp03b','halnmossqlp04a','halnmossqlp04b','hsvlmossqlp04a','hsvlmossqlp04b','halnmossqlp05a','halnmossqlp05b','hsvlmossqlp05a','hsvlmossqlp05b','halnmossqlp06a','halnmossqlp06b','hsvlmossqlp06a','hsvlmossqlp06b','halnmossqlp07a','halnmossqlp07b','hsvlmossqlp07a','hsvlmossqlp07b','hsvlmossqlp08a','halnmossqlp08b','hsvlmossqlp08a','hsvlmossqlp08b'
foreach ($server in $servers) {
    Invoke-Command {
        C:\Users\_H_jordan.blair\Downloads\PSTools\psexec.exe \\$server -s schtasks /change /tn "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /ENABLE
        C:\Users\_H_jordan.blair\Downloads\PSTools\psexec.exe \\$server -s schtasks /change /tn "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /ENABLE
        C:\Users\_H_jordan.blair\Downloads\PSTools\psexec.exe \\$server -s schtasks /change /tn "\Microsoft\Windows\TaskScheduler\Regular Maintenance" /ENABLE
        C:\Users\_H_jordan.blair\Downloads\PSTools\psexec.exe \\$server -s schtasks /change /tn "\Microsoft\Windows\TaskScheduler\Manual Maintenance" /ENABLE
        C:\Users\_H_jordan.blair\Downloads\PSTools\psexec.exe \\$server -s schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /ENABLE
        }
    }
