# Tutorial 4 - Game Dev

## fitur yang ditambahkan sendiri

1. Fly.tscn yang mekanismenya sama seperti fish.tscn tetapi berjalan secara horizontal.
2. Menambahkan despawner untuk men-despawn fly yang sudah di-spawn
3. Menambahkan button untuk restart game (kembali ke scene sebelumnya) ketika menang dan kalah
4. Menambahkan animasi Duck pada spritesheet
5. Menambahkan mekanisme penggantian collision shape ketika player melakukan duck. Ketika player melakukan duck, collision shape akan berubah menjadi lebih kecil sehingga player bisa melewati obstacle yang lebih rendah.
6. Menambahkan pengecekan raycast2d untuk mendeteksi apakah di atas player ada obstacle ketika duck. Jika iya, maka animasi player akan tetap duck, tetapi jika tidak ada obstacle maka animasi player akan kembali ke idle.
7. Menambahkan Coyote time untuk memberikan sedikit grace period ketika player meloncat sehingga player masih bisa melakukan jump meskipun sudah melewati edge platform.
