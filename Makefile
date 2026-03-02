default_target: clean build_app build_plugins config_plugins

clean:
	@rm -rf bin

build_app:
	@dotnet publish PatreonDownloader.App -c Release -r linux-x64 --self-contained -f net9.0 -o bin/

build_plugins: build_google_drive build_mega

build_google_drive:
	@dotnet publish submodules/UniversalDownloaderPlatform/UniversalDownloaderPlatform.GoogleDriveDownloader -c Release -r linux-x64 --self-contained -f net9.0 -o bin/plugins

build_mega:
	@dotnet publish submodules/UniversalDownloaderPlatform/UniversalDownloaderPlatform.MegaDownloader -c Release -r linux-x64 --self-contained -f net9.0 -o bin/plugins

config_plugins: config_mega

config_mega:
	@cp mega_credentials.json bin/