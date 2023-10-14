## REST Api

- REST Api: Sebuah program yang digunakan untuk mengirim permintaan ke server web dengan tujuan mendapatkan informasi atau melakukan tindakan pada data tertentu.
- Data yang disajikan dalam format `Json`.
- Device mengirim request ke api -> api menerima dan mengirimkan ke web server -> web server menerima dan mengirimkan response ke api -> api menerima dan mengirimkan response ke device.

## Struktur request

- `Url`: Alamat yang menunjuk ke data yang ingin diakses.
- `Method`: Adalah aksi yang di inginkan, `get` (mengambil), `post` (mengirim), `put` (update), `delete` (menghapus).
- `Header`: Informasi tambahan yang dikirim bersama request, seperti token otentikasi.
- `Body`: Tempat data tambahan dikirimkan bersama request.

## Struktur request

- `Status code`: Angka yang mengindikasikan apakah permintaan berhasil atau gagal. `200` sukses, `404` tidak ditemukan, `500` kesalahan server.
- `Header`: Informasi tambahan yang dikirim bersama response.
- `Body`: Tempat data tambahan dikirimkan bersama response.

## Dio

- Sebuah package yang digunakan untuk akses Api.

```
void getApi() async {
  final response = await dio().get('https://example.com/api/data');
  print(response.data);
}
```

![get api json](pic/get%20api%20with%20dio.png)

## Serialisasi JSON

- Adalah proses mengubah data dari format yang dapat dibaca oleh manusia menjadi format yang dapat dipahami oleh komputer, yaitu format `JSON`.
- `JSON Encode`: mengubah objek atau array menjadi format JSON dalam bentuk string, menggunakan fungsi `jsonEncode`.
- `JSON Decode`: mengubah format JSON menjadi objek atau array menggunakan fungsi `jsonDecode`, request data dari api harus di `Decode`.

## Jenis format JSON

### Array of object

```
[
  {
    "nama": "John Doe",
    "usia": 22,
    "jurusan": "Informatika"
  },
  {
    "nama": "Jane Smith",
    "usia": 20,
    "jurusan": "Teknik Elektro"
  },
  {
    "nama": "Alice Johnson",
    "usia": 23,
    "jurusan": "Teknik Mesin"
  }
]
```

### Object with nested object

```
{
  "nama": "John Doe",
  "umur": 30,
  "alamat": {
    "jalan": "123 Main Street",
    "kota": "Contoh Kota",
    "kode_pos": "12345"
  }
}
```

### Object with array

```
{
  "nama": "Contoh JSON",
  "versi": 1.0,
  "penulis": {
    "nama_depan": "John",
    "nama_belakang": "Doe"
  },
  "fitur": ["Parsing JSON", "Menggunakan Array", "Mengirim Data"]
}
```
