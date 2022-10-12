# Modul1_Probstat_502521114
Berisi penjelasan terhadap praktikum probstat

## Identitas
- Adam Haidar Azizi
- 5025211114

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
```
Diketahui nilai x = 2 dan v = 10. Tentukan:
```
- Fungsi Probabilitas dari Distribusi Chi-Square.
Gunakan fungsi `dchisq()` untuk menggunakan distribusi Chi-Square dengan `x` (jumlah data) dan `v`

```
x = 2
v = 10
#A
P = dchisq(x, 10)
P
```
didapatkan
![Screenshot 2022-10-11 21 07 56](https://user-images.githubusercontent.com/90259304/195255662-055cb425-38f1-4e15-a355-a43cd1ce8d85.png)

-Histogram dari Distribusi Chi-Square dengan 100 data random.

Gunakan fungsi `hist()` dengan dari fungsi distribusi Chi-Square  (angka acak).
```r
n = 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram")
```
didapatkan
![Screenshot 2022-10-11 21 08 04](https://user-images.githubusercontent.com/90259304/195256100-182a69e0-7e81-41e8-a1a9-20c716ac7d60.png)

-Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
Untuk mendapatkan rataan nilainya sama dengan `v`

```r
mean = v
mean
```
Untuk mendapat variansi hasilnya sama dengan `2 x v`
```r
variance = 2 * v
variance 
```
didapatkan:

![Screenshot 2022-10-11 21 08 12](https://user-images.githubusercontent.com/90259304/195256743-74cfa346-1771-478f-abc3-d810cd0250a0.png)

## Soal 5
```
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3)
```
- Fungsi Probabilitas dari Distribusi Exponensial 
Gunakan Distribusi Exponensial dengan fungsi `dexp()` yang berisi banyaknya data dan rate `λ` 

```r
lambda = 3

#A
set.seed(1)
rnorm(1)
P = dexp(1, rate = lambda)
P
```

didapat
![Screenshot 2022-10-11 21 46 04](https://user-images.githubusercontent.com/90259304/195257461-28639701-fd59-485d-9f02-1be3b853d282.png)

- Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
Gunakan fungsi `hist()` dengan acak yg berasal dari distribusi exponensial dari fungsi `rexp` dengan jumlah data (10, 100, 1000, 10000)

```r
set.seed(1)
hist(rexp(10, rate = lambda), main = "Histogram (10 Random Generations)")
hist(rexp(100, rate = lambda), main = "Histogram (100 Random Generations)")
hist(rexp(1000, rate = lambda), main = "Histogram (1000 Random Generations)")
hist(rexp(10000, rate = lambda), main = "Histogram (10000 Random Generations)")
```

didapat
![Screenshot 2022-10-11 21 46 14](https://user-images.githubusercontent.com/90259304/195257888-4316d987-6468-43cd-a712-8946677699ac.png)
![Screenshot 2022-10-11 21 47 01](https://user-images.githubusercontent.com/90259304/195257914-319d1e70-f9ec-4425-89c7-f0902e03bbf6.png)
![Screenshot 2022-10-11 21 47 21](https://user-images.githubusercontent.com/90259304/195257933-b716a4bd-94c7-4cf8-9e0f-e5f52ee264fc.png)
![Screenshot 2022-10-11 21 47 31](https://user-images.githubusercontent.com/90259304/195257946-958b4936-3933-4217-aa8a-5844dc08d174.png)

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Untuk mendapat rataan gunakan fungsi `mean()` yang berisi angka acak dari distribusi exponesial

```r
n = 100
set.seed(1)
mean = mean(rexp(n, rate = lambda))
mean
```

Variansi didapat menggunakan fungsi `sd` denagn angka acak dari distribusi exponensial yang hasilnya dikuadrat
```r
n = 100
set.seed(1)
variance = (sd(rexp(n, rate = lambda))) ^ 2
variance
```
didapat:
![Screenshot 2022-10-11 21 47 38](https://user-images.githubusercontent.com/90259304/195258713-a7eac1fb-9ff5-4d6c-b601-ae78e42a128d.png)

## Soal 6
```
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.
```
- Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

Fungsi Probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score-nya dan plot data generate randomnya dalam bentuk grafik.

Z score didapat dengan fungsi `rnorm()`

`x1` dan `x2` diapakai untuk memplotting grafik

Besarnya `p1` `p2` didapatkan dengan fungsi `pnorm()` dengan x12, mean, dan sd sebagai parameter

```r
n = 100
mean = 50
sd = 8

#A
set.seed(1)
d <- rnorm(n, mean, sd)
d
summary(d)
x1 = runif(1, min = min(d), max = mean)
x2 = runif(1, min = mean, max = max(d))
x1
x2
P1 <- pnorm(x1, mean, sd)
P1
P2 <- pnorm(x2, mean, sd)
P2
P <- P2 - P1
plot(d)
```

didapat:
![Screenshot 2022-10-11 21 56 11](https://user-images.githubusercontent.com/90259304/195259713-cbddefc1-395d-41ae-ae2f-55ebc8934159.png)

- Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

Gunakan fungsi `hist()` dengan `d` (data) dan breaks sebagai parameter
```r
breaks = 50
hist(d, breaks, main = "5025211114_Adam Haidar Azizi_ProbstatA_DNhistogram")
```

![Screenshot 2022-10-11 21 56 28](https://user-images.githubusercontent.com/90259304/195260231-628d738d-975d-4db9-9d01-3798160965c5.png)


-Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

Didapat dengan bantuan fungsi `sd` sebagai `d` sebagai parameter yang hasilnya dikuadratkan

```r
variance = (sd(d)) ^ 2
variance
```

didapat:

![Screenshot 2022-10-11 21 56 40](https://user-images.githubusercontent.com/90259304/195260293-bd4c933b-885f-4ef1-b7fa-c92aef6f4043.png)










