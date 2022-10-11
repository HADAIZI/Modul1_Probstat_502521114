# Modul1_Probstat_502521114
Berisi penjelasan terhadap praktikum probstat

## Soal 1

```http
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

