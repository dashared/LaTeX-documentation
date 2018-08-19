# Документация для курсового проекта в LaTeX

## Что:
Пять файлов

  * ТЗ,
  * ПЗ, 
  * РО, 
  * ТП, 
  * ПМИ,

с расширением `.tex`, стилевой файл `.sty` и архив `.zip`, содержащий `.tex` файл с презентацией и `.pdf` логотип для слайдов.

## Как:
Каждый `.tex` файл советую поместить в отдельную папку с названием документа + к нему приложить `.sty` файл. В идеале должна быть папка "Документы для курсовой", в которой лежат шесть папок (ТЗ, ПЗ, РО, ТП, ПМИ, ПРЕЗЕНТАЦИЯ), уже в которых содержатся соответствующие `.tex` файлы + `.sty` (он одинаковый для всех документов, в папку с презентацией стилевой файл добавлять не надо). 
###### после компиляции `.tex` файла в этих папках появятся файлы с расширениями `.log`, `.aux` и т.д.

## Редактирование:
Для редактирования (исправление ФИО, тема курсовой работы, ...) в `.tex` файлах надо будет менять содержание {} (внутри `\begin{document}...\end{document}`) в нужном разделе (все изменения по большей части должны произойти на первых двух страницах документов). Возможно придется даже залезть в `.sty` и сменить там какие-то более фундаментальные (возможно, изначально непредназначенные для изменения) вещи. 
