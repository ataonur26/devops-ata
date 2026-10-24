# 1. ZEMİN: İçinde Python yüklü, hafif bir hazır altyapı seçiyoruz.
FROM python:3.9-slim

# 2. HEDEF: Konteynerin içinde kendimize bir çalışma klasörü açıyoruz.
WORKDIR /uygulama

# 3. KOPYALA: Bilgisayarımızdaki app.py dosyasını konteynerin içine kalıcı olarak kopyalıyoruz.
COPY app.py .

# 4. BAŞLAT: Konteyner çalıştırıldığında içerde tetiklenecek ana komutu belirliyoruz.
CMD ["python", "app.py"]