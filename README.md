# jadwalshalat

Requirements : <br/>
``Phalcon ext >= 4`` <br/>
``Phalcon DevTools (4.1.0)``

Aplikasi ini belum menggunakan migration jadi silahkan import database secara manual dengan menggunakan file : sql/muslim_life.sql

Edit configurasi database di file : app/config/config.php

```
database' => [
        'adapter'     => 'Mysql',
        'host'        => 'localhost',
        'username'    => 'root',
        'password'    => 'root',
        'dbname'      => 'muslim_life',
        'charset'     => 'utf8',
    ],
```

Jalankan command `phalcon serve` di terminal untuk menjalan aplikasi

Buka url `http://0.0.0.0:8000/jadwal/` di browser
