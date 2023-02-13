# codewars
Great for learning and sharpening your coding skillz.

## Build PHP 7.0 Docker image
Use the build script in order to build the custom PHP 7.0 Docker image
`andrerademacher/codewars-php70`. 

```bash
cd php70/container && build.sh
```

## Run command in container
The `container.sh` script makes running commands in the Docker container easy!
To open a shell, just add the "sh" command:
```bash
php70/container.sh sh
```

The current PHP version can be shown like this:
```bash
php70/container.sh php --version
```

The Composer binary is already present in the latest 2.2 LTS version supporting PHP 7.0 .
To run any composer command, like `composer install`, just type:
```bash
php70/container.sh composer install
```

After installing the dev dependencies, the PHPUnit test suite can be run 
inside the container by calling the phpunit binary in the vendor directory:
```bash
php70/container.sh vendor/bin/phpunit
```

