install
-------

	git clone git@bitbucket.org:lightwerk/surfcaptaindistribution.git
	cd surfcaptaindistribution
	composer install
	edit Configuration/Settings.yaml for db connection
	create database <db_name> DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
	copy route from Packages/Application/Lightwerk.SurfCaptain/Configuration/Routes.yaml to Configuration/Routes.yaml
	set Lightwerk/SurfCaptain/git/privateToken in Configuration/Settings.yaml (see Packages/Application/Lightwerk.SurfCaptain/Configuration/Settings.yaml)

	as root:
	./flow flow:core:setfilepermissions <cli-user> <www-user> <group>

	as user:
	./flow doctrine:migrate

