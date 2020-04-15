# 2020

3 курс. ОП "Программная инженерия"

## Проект

- Play-framework 2.6.13
- Scala 2.12.6
- play-silhouette 5.0.3
- postgresql 42.2.8
- play-slick 3.0.1
- slick-pg 0.18.0
- slick-pg_play-json 0.18.0
- scala-guice 4.2.6
- swagger-play2 1.6.1
- scalacheck 1.13.5
- scalatestplus-play 3.1.2
- akka-quartz-scheduler 1.8.2-akka-2.6.x

## Тестирование

Были протестированы API запросы с помощью библиотеки _scalatestplus-play 3.1.2_. Также были написаны *Unit* тесты в процессе разработки.

## Документация

- RP - руководство программиста

Для составления руководства программиста использовался сайт [editor.swagger.io](https://editor.swagger.io). С его помощью из `json` формата был получен `html` файл с полной документацией. А уже `html` формат можно было с помощью утилиты [pandoc](https://pandoc.org) можно было перевести в `tex` формат.

- TP - текст программы

Для того, чтобы быстро весь текст программы записать в `tex` документ, нужно ввести следующую комманду в директорий с папкой _app_, а потом и _test_:

```
for file in **.*
                echo "\\subsection{$file}" >> src.tex
                echo "\\begin{lstlisting}" >> src.tex
                cat $file >> src.tex
                echo "\\end{lstlisting}" >> src.tex
            end
```

- PZ - пояснительная записка

Для составления таблицы описания классов и методов в приложении документа воспользуемся скриптом:

```
for file in **.*
                echo "$file & \\\\ \\hline" >> tables.tex
            end
```

