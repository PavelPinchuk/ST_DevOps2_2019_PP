1) get-help get-help получение справки о командлете справки
2) get-help get-help –full более подробная справка
3) get-help about_PowerShell.exe  справка о возможностях PS
4) get-command –commandtype cmdlet set-*  получение всех командлетов установки значений
5) get-command *item* получение команд для работы  с файлами
6) get-command *object* получение команд для работы  с объектами
7) get-alias - получение всех псевдонимов
8)set-alias c clear установили на кнопку "с" алиас clear
9)get-process | get-member получили список методов и объектов для объекта типа процесс
10) $string = “ASDASD” создали строку
       $string | get-member   получили список методов и объектов для объекта типа string
11)get-process получили список запущенных процессов
get-process –id 7500 получили данные об конкретном прцоессе
12) get-service данные о всех сервисах
get-service –name AGMService данные об определенном сервисе 
13) get-hotfix получаем список обновлений системы
14)get-culture смотрим язык windows
15)get-date получаем дату и время
16) $a = 1,2,3,4,5,6,7,8,9 создали массив
      get-random –inputobject $a выбрали рандомное число из массива
      get-random -maximum 9 тоже самое
17) (get-process –name explorer).StartTime дата последнего запуска процесса с именем explorer
18)$a = E:\asd.docx     открыли документ + создалась переменная
 $a = [Runtime.Interopservices.Marshal]::GetActiveObject('Word.Application') подключаемся к исполняемому экземпляру
 $a.Documents | ? { $_.Name -eq 'asd.docx' } | % {
   $_.Saved = $true   сохранили файл
   $_.Close()          закрыли
}
19) $sum = 0
for ($i=1; $i –le 10; $i++){         
$sum = $sum+3*$i
$sum
}              для 10 итераций (n=10)
20)function sum($i, $sum){
For ($i=1; $i –le 10; $i++){
$sum = $sum +3*$i
$sum
}
}