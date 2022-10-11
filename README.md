# Modul1_Probstat_502521114
Berisi penjelasan terhadap praktikum probstat

## Soal 1

```
  Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 
```
- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?

Menggunakan distribusi geometrik dengan `dgeom` sehingga didapatkan peluang sebesar `0.1024` dengan menggunakan `x` (sampel yang tidak mengikut vaksinisasi) dan `p` (peluang kehadiran orang menghadiri vaksisnisasi)

```r
p = 0.2
x = 3
P <- dgeom(x, p)
P
```
![Screenshot 2022-10-11 22 01 32](https://user-images.githubusercontent.com/90259304/195156199-6612ea9c-95ae-4638-a601-dfd6573ca355.png)

- mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )


Rataan dicari mengunakan dengan parameter berupa angka acak dari distrbusi geometri dengan menggunakan ``rgeom`` dan didapat hasil yang berubah-ubah dengan contoh ``0.1041`` dan ``0.1068``  Fungsi ``rgeom()`` tersebut berisi banyaknya data acak orang dan peluang kehadiran orang dalam menghadiri acara vaksinasi.
```r
mean(rgeom(n= 10000, prob=p) == 3)
```

![Screenshot 2022-10-12 00 23 04](https://user-images.githubusercontent.com/90259304/195158913-24dcd346-07c8-4b48-9bb6-cfd37c7169d3.png)

- Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Jika melihat data pada A dan B didapatkan hasil yang berbeda. Pada poin A didapatkan hasil yang tetap karena nilai distribusi geometrik yang dipakai selalu tetap dan tidak berubah. Pada poin B didapatkan hasil yang berbeda karena hasil tersebut merupakan rata-rata dari semua peluang-peluang yang dapat terjadi dimana nilai karena hasil tersebut merupakan rata-rata dari semua peluang-peluang yang dapat terjadi dikarenakan fungsi ``rgeom``

Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.




