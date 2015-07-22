Install
-------
To install a running SurfCaptain Instance you should use the distribution Package that holds all the
composer dependencies. Follow theses steps to enter the Setup:

	git clone git@github.com:lightwerk/SurfCaptainDistribution.git
	cd surfcaptaindistribution
	composer install
	sudo ./flow core:setfilepermissions <cli-user> <www-user> <group>
	Now go to http://<your-domain>/setup and follow the on-screen instructions.

Custom Configuration
-------

You can of course manually edit your ``Configuration/Settings.yaml`.  You find example Configurations within 
the SurfCaptain Package:

* [Github](https://github.com/lightwerk/SurfCaptain/blob/master/Configuration/Github.yaml.example)
* [Bitbucket](https://github.com/lightwerk/SurfCaptain/blob/master/Configuration/Bitbucket.yaml.example)
* [Gitlab](https://github.com/lightwerk/SurfCaptain/blob/master/Configuration/Gitlab.yaml.example)

For a detailed description, refer to the ``Configuration.md`` in the SurfCaptain Package <https://github.com/lightwerk/SurfCaptain/blob/master/Documentation/Configuration.md>

Further Documentation
-------
Check out <https://github.com/lightwerk/SurfCaptain/blob/master/Documentation/>

Troubleshooting
-------
If you have trouble navigating to the /setup URL, please have a look at Configuration/Routes.yaml and compare it with Packages/Application/Lightwerk.SurfCaptain/Configuration/Routes.yaml.
