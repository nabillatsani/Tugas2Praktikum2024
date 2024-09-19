# Tugas Pertemuan 2

Nama : Nabilla Tsani Ayasi

NIM : H1D022058

Shift Baru: F


Fork 
![image](https://github.com/user-attachments/assets/59704496-6ec6-40a5-be20-3f58f2f7cecf)


Clone
![Screenshot 2024-09-19 222849](https://github.com/user-attachments/assets/3240540d-2d57-49a6-bb1c-7bc0ed61bc34)


flutter pub get
![Screenshot 2024-09-19 184412](https://github.com/user-attachments/assets/f1db98cf-8c72-4719-bcc7-1b2b023c6910)


PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE 
Passing data adalah proses mengirimkan data dari satu bagian program ke bagian lain. Dalam konteks aplikasi, passing data terjadi saat kita mengambil informasi dari satu layar (misalnya dari sebuah form) dan mengirimkannya ke layar lain untuk ditampilkan atau diolah lebih lanjut.

1. Mengambil Data dari Form:
   Di halaman form, pengguna mengisi data di kolom Nama, NIM, dan Tahun Lahir. Setiap kolom memiliki alat khusus yang digunakan untuk menyimpan data yang dimasukkan (disebut `TextEditingController`).

2. Menekan Tombol Simpan:
   Saat tombol "Simpan" ditekan, aplikasi mengambil data yang sudah diisi di kolom tadi, yaitu nama, NIM, dan tahun lahir. Data ini diambil menggunakan alat (controller) yang terhubung ke masing-masing kolom.

3. Memindahkan Data ke Halaman Baru:
   Setelah data diambil, aplikasi berpindah ke halaman baru menggunakan fungsi khusus (`Navigator`). Data yang sudah dikumpulkan tadi dikirim ke halaman baru ini. Di Flutter, cara mengirim data ini sangat mudah karena cukup menyertakan data sebagai bagian dari perintah saat berpindah halaman.

4. Menampilkan Data di Halaman Baru:
   Di halaman baru, data nama, NIM, dan umur (yang dihitung dari tahun lahir) ditampilkan. Data ini sebelumnya sudah dikirim saat berpindah halaman, dan sekarang hanya ditampilkan di layar menggunakan beberapa elemen teks.

Jadi intinya, data dari form diambil, kemudian dikirim ke halaman lain, dan ditampilkan di sana.



## Screenshot
![form](https://github.com/user-attachments/assets/52c4f8c7-c49c-47e9-a34e-319cb20967cf)
![hasil](https://github.com/user-attachments/assets/ace4dfbf-dfa6-4af4-aa03-df3f7c3f8a6b)



