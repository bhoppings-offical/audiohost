@echo off
for /l %%i in (1,1,3) do (
    powershell -NoProfile -Command ^
    "$r = New-Object System.Random;" ^
    "$x = $r.Next(0, [System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Width - 300);" ^
    "$y = $r.Next(0, [System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Height - 150);" ^
    "Add-Type -AssemblyName PresentationFramework; " ^
    "$msg = New-Object System.Windows.Window; " ^
    "$msg.Title = '?'; " ^
    "$msg.WindowStartupLocation = 'Manual'; " ^
    "$msg.Left = $x; $msg.Top = $y; " ^
    "$msg.Width = 250; $msg.Height = 120; " ^
    "$btn = New-Object System.Windows.Controls.Button; " ^
    "$btn.Content = 'let me prosper in the grass field'; $btn.Width = 60; $btn.Height = 25; $btn.Margin = '90,50,0,0'; " ^
    "$btn.Add_Click({ $msg.Close() }); " ^
    "$text = New-Object System.Windows.Controls.Label; $text.Content = ':)'; $text.HorizontalAlignment = 'Center'; $text.VerticalAlignment = 'Top'; $text.Margin = '0,20,0,0'; " ^
    "$panel = New-Object System.Windows.Controls.Grid; $panel.Children.Add($text) | Out-Null; $panel.Children.Add($btn) | Out-Null; $msg.Content = $panel; " ^
    "$msg.Topmost = $true; $msg.ShowDialog()"
)
