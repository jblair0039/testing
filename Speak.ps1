Add-Type -AssemblyName System.speech
$speak.SetOutputToWaveFile("C:\Users\Jordan.blair\Desktop\PowershellVoice.wav") 
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.speak("Powershell is the Awesome")


#Test

