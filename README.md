# Иконки Metin2

В данном репозитории представлены иконки из официального клиента Metin2. Вы можете использовать их, например, для создания баз данных, вики, различных программ и приложений. Все иконки являются собственностью компаний Webzen Games и Ymir Games.

## Pull request'ы

Если у вас есть иконки, которых нет в данном репозитории &mdash; смело открывайте pull request. Иконки должны иметь то же имя, что и в официальном клиенте. Если вы предлагаете неофициальные иконки, то дайте им имя в формате `__<ваш-github-логин>__<порядковый-номер>.png`. Например, `__terron-kun__1.png`. Иконки должны быть строго в формате PNG с альфа-каналом (прозрачным фоном) с размерами 32x32, 32x64 или 32x96. Загружайте иконки в обе директории.

Также вы можете открывать pull request'ы или создавать issues, если нашли дубли или хотите предложить переместить иконки из одной директории в другую внутри [/sorted_icons](/sorted_icons).

## Использование иконок на своих сайтах

Вы можете использовать иконки на своем сайте, загружая их прямо из данного репозитория без необходимости хранить их на своем сервере. Для этого берите иконки из директории [/unsorted_icons](/unsorted_icons), а не из [/sorted_icons](/sorted_icons). В неотсортированной директории никаких изменений кроме добавления новых иконок быть не может, а в отсортированной иконки могут удаляться и перемещаться между дочерними директориями. Не забудьте к иконкам добавить параметр `?raw=true`, чтобы они отображались корректно:

````html
<img src="https://github.com/terron-kun/metin2-icons/blob/master/unsorted_icons/00010.png?raw=true" alt="00010.png">
````

## sorted_folders.json

Файл [sorted_icons.json](/sorted_icons.json) содержит проиндексированные директории из [/sorted_icons](/sorted_icons). Директории указаны в приоритетном порядке, а также имеют локализацию названия. При необходимости добавить локализацию надо добавить новый элемент объекта с сопутствующим переводу кодом языка. Ниже представлен пример перевода папки [/sorted_icons/swords](/sorted_icons/swords):

```json
{
    "i18n": [{
        "swords": {
            "ru": "Одноручные мечи",
            "en": "Swords"
        },
        ...
    }]
}
```

Для использования данного файла на удаленном сервере или с помощью AJAX используйте данную ссылку:

````
https://raw.githubusercontent.com/terron-kun/metin2-icons/master/sorted_folders.json
````

## unsorted_icons.txt

Файл [unsorted_icons.txt](/unsorted_icons.txt) содержит проиндексированные иконки из [/unsorted_icons](/unsorted_icons). Необходим этот файл потому, что в данной директории больше тысячи иконок, но GitHub не позволяет загрузить больше тысячи иконок ни через веб-интерфейс, ни через API. Если вам необходимо получить все иконки из данной директории, то обращайтесь к этому файлу, чтобы получить их список. При создании pull request'ов добавление новых иконок в этот файл обязательно. Данный файл генерируется при вызове файла [unsorted_icons.bat](/unsorted_icons.bat).

Для использования данного файла на удаленном сервере или с помощью AJAX используйте данную ссылку:

````
https://raw.githubusercontent.com/terron-kun/metin2-icons/master/unsorted_icons.txt
````

## Лицензия

Материалы распространяются под [лицензией MIT](/LICENSE). Разрешается распространение и модификация материалов, но только с указанием активной ссылки на данный репозиторий. Использование иконок по назначению (для описания предметов) указания активной ссылки не требует.
