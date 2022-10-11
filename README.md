# Modul1_Probstat_502521114
Berisi penjelasan terhadap praktikum probstat

## Soal 1

```
  Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 
```
- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?

Menggunakan distribusi geometrik dengan `dgeom()` sehingga didapatkan peluang sebesar `0.1024` dengan menggunakan `x` (sampel yang tidak mengikut vaksinisasi) dan `p` (peluang kehadiran orang menghadiri vaksisnisasi)

```r
p = 0.2
x = 3
P <- dgeom(x, p)
P
```
didapatkan:
![Screenshot 2022-10-11 22 01 32](https://user-images.githubusercontent.com/90259304/195156199-6612ea9c-95ae-4638-a601-dfd6573ca355.png)

- mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )


Rataan dicari mengunakan dengan parameter berupa angka acak dari distrbusi geometri dengan menggunakan ``rgeom()`` dan didapat hasil yang berubah-ubah dengan contoh ``0.1041`` dan ``0.1068``  Fungsi ``rgeom()`` tersebut berisi banyaknya data acak orang dan peluang kehadiran orang dalam menghadiri acara vaksinasi.
```r
mean(rgeom(n= 10000, prob=p) == 3)
```
didapatkan:
![Screenshot 2022-10-12 00 23 04](https://user-images.githubusercontent.com/90259304/195158913-24dcd346-07c8-4b48-9bb6-cfd37c7169d3.png)

- Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Jika melihat data pada A dan B didapatkan hasil yang berbeda. Pada poin A didapatkan hasil yang tetap karena nilai distribusi geometrik yang dipakai selalu tetap dan tidak berubah. Pada poin B didapatkan hasil yang berbeda karena hasil tersebut merupakan rata-rata dari semua peluang-peluang yang dapat terjadi dimana nilai karena hasil tersebut merupakan rata-rata dari semua peluang-peluang yang dapat terjadi dikarenakan fungsi ``rgeom``

Untuk sampling, poin B lebih baik untuk digunakan daripada poin A.

- Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

Gunakan ``hist`` untuk membuat histogram dengan parameter angka acak dari distribusi geometrik 

```r
n= 10000
hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
```

Didapatkan:
![Screenshot 2022-10-11 22 01 59](https://user-images.githubusercontent.com/90259304/195161848-fe17c8d1-eb9b-42e3-a4b5-9f23510253db.png)

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

Nilai mean didapat menggunakan formula banyak data dibagi dengan peluang kejadian.

```r
mean = 1/p
mean
```

Nilai varian didapat menggunakan formula nilai rataan dan dibagi dengan kuadrat dari peluang kejadian.

```r
variance = (1 - p)/(p ^ 2)
variance
```

Didapatkan:

![Screenshot 2022-10-11 22 02 08](https://user-images.githubusercontent.com/90259304/195162602-3e1e5f61-0449-4175-a2a2-7d10c73f94f2.png)

## Soal 2
```
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.
```
- Peluang terdapat 4 pasien yang sembuh.


Untuk mendapatkan peluang 4 pasien yg sembuh menggunakan `dibinom()` yang berisi `x`(jumlah pasien yg sembuh) `n` (Jumlah total pasien) dan `p` (peluang sembuh) sebagai parameter

```r
n = 20
p = 0.2

#A
x = 4
peluang = dbinom(x, n, p, log = FALSE)
peluang
```

Didapat 
![Screenshot 2022-10-11 20 12 01](https://user-images.githubusercontent.com/90259304/195164296-e2a480d5-7ade-44c5-81da-43e1e1dc3d5b.png)

- Gambarkan grafik histogram berdasarkan kasus tersebut.

Gunakan ``hist`` untuk membuat histogram dengan parameter dari distribusi binomial :
![Screenshot 2022-10-11 20 12 30](https://user-images.githubusercontent.com/90259304/195165141-7604979b-68a1-47cd-820e-73b04f8e82fd.png)

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
Rataan didapat menggunakan formula banyak data dikali dengan peluang kejadian.
```r
mean = n * p
mean
```
Varian didapat menggunakan formula nilai rataan dan dikali dengan komplemen dari peluang kejadian.
```r
variance = n * p * (1 - p)
variance
```
didapat:
![Screenshot 2022-10-11 20 19 30](https://user-images.githubusercontent.com/90259304/195165742-3a268231-98e9-4a1f-98b9-d82404a0d00c.png)

## Soal 3
```
Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
```
- Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
Menggunakan distribusi Poisson dengan bantuan fungsi `dpois()` yang berisi `x` (jumlah data) dan `lambda` (rata-rata historis) sebagai parameter

```r
lambda = 4.5

# A
x = 6
P = dpois(x, lambda)
P
```
Didapat:
![Screenshot 2022-10-11 20 55 46](https://user-images.githubusercontent.com/90259304/195166859-7e874fb5-7cb5-4d8a-b843-79ab69a572a7.png)

- simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
Gunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Poisson sebagai parameternya.
```r
x = 6
n = 365
hist(rpois(n, lambda), main = "Histogram")
```
didapat:
![Screenshot 2022-10-11 20 55 55](https://user-images.githubusercontent.com/90259304/195167251-e05a8141-c76c-4bc2-ab7e-c4724bbb4081.png)

- Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
Poin A dan B cenderung sama, karena nilai dari poin A sendiri didapat dari range nilai poin B. Range dari B dapat dilihat pada plot yang telah terbentuk. Dari sana, nilai dari A berada di dalam range B.

Oleh karena itu, dalam estimasi selama 365 hari akan memberikan nilai hasil yang hampir sama dengan estimasi jumlah bayi yang akan dilahirkan di waktu selanjutnya (esok hari).

-Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
Besarnya nilai rataan sama dengan varian (distribusi possium)

```r
mean = variance = lambda
mean
variance
```
didapat :
![Screenshot 2022-10-11 20 56 36](https://user-images.githubusercontent.com/90259304/195168205-0311feba-1b23-4a77-99c2-94d13bd484e9.png)

## Soal 4





