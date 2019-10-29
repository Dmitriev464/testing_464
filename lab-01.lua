lgi = require 'lgi' --подключение модуля lgi

gtk = lgi.Gtk
gtk.init() --инициализация библиотеки gtk

bld=gtk.Builder()--создание экземпляра построителя интерфейсов
bld:add_from_file('lab-01.glade') --загрузка описания интерфейса

ui=bld.objects

ui.wnd.title='Lab-01 - Dmitriev 464' --задание название главного окна
ui.wnd.on_destroy=gtk.main_quit --выход из цикла обработки событий при закрытии окна
ui.wnd:show_all() --отображени главного окна и его элементов

gtk.main() --запуск цикла обработки событий интерфейса
