# Позволяет задавать версию .NET через аргумент сборки (по умолчанию 6.0)
ARG DOTNET_VERSION=6.0

# Используем официальный образ .NET Runtime с выбранной версией
FROM mcr.microsoft.com/dotnet/runtime:${DOTNET_VERSION} AS base

# Устанавливаем рабочую директорию (типично для Pterodactyl)
WORKDIR /home/container

# Переменная окружения для ASP.NET Core (если требуется)
ENV ASPNETCORE_URLS=http://+:5000

# Обратите внимание: приложение не копируется – бот будет передаваться извне
# Скрипт запуска будет определен в файле start.sh (его можно настроить по необходимости)
CMD [ "bash", "start.sh" ]
