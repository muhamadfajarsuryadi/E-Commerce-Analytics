# E-Commerce Performance & Customer Insights (2023-2024)

Proyek analisis data e-commerce *end-to-end* yang mengevaluasi efisiensi anggaran pemasaran (ROI), segmentasi pelanggan berbasis Lifetime Value (LTV) & Customer Acquisition Cost (CAC), serta efisiensi operasional logistik dan dampaknya terhadap kepuasan pelanggan (NPS).

---

## 📌 Latar Belakang & Masalah Bisnis
Perusahaan e-commerce menghadapi tantangan dalam mengoptimalkan biaya akuisisi pelanggan serta meminimalkan hambatan operasional pada *funnel* pembelian dan pengiriman barang.

**Tujuan Utama Analisis:**
1. **Segmentasi Pelanggan:** Mengidentifikasi segmen pelanggan dengan nilai *Lifetime Value* (LTV) dan *Customer Acquisition Cost* (CAC) paling optimal.
2. **Analisis Funnel & Pembayaran:** Memetakan titik *drop-off* waktu *checkout* serta preferensi metode pembayaran pelanggan.
3. **SLA Logistik & Retur:** Mengevaluasi dampak kecepatan pengiriman (*Shipping SLA*) terhadap tingkat kepuasan pelanggan (*Net Promoter Score* / NPS) dan mengidentifikasi penyebab utama retur produk.

---

## 🛠️ Metodologi & Alur Kerja
Proyek ini menggunakan pendekatan analitis bertahap (*multi-stage pipeline*):

1. **Pembersihan & Rekayasa Fitur Data (Python):** Pemrosesan 30.280 baris data mentah, pembentukan variabel kategorikal baru (*Discount Tier*, *Session Engagement*, *Shipping Category*, *Loyalty Status*).
2. **Validasi Metrik & Agregasi SQL (BigQuery):** Penulisan query SQL untuk analisis mendalam mengenai LTV vs CAC serta dampak SLA pengiriman terhadap NPS dan tingkat komplain.
3. **Visualisasi & Dasbor Interaktif (Power BI):** Penyusunan dasbor eksekutif untuk pemantauan KPI penjualan, kinerja kanal pemasaran, dan kepuasan pelanggan.

---

## 💡 Temuan Utama (*Key Findings*)

* **Profitabilitas & Nilai Pelanggan (LTV vs CAC):** Skema diskon kategori *High* (>15%) memberikan rata-rata margin profit per pesanan tertinggi. Segmen pelanggan korporat (**Enterprise & SMB**) merupakan kontributor terbesar terhadap LTV dengan biaya akuisisi (CAC) yang sangat efisien.
* **Perilaku Sesi & Pembelian:** Terdapat masa jeda (*drop-off*) yang signifikan di mana pelanggan membutuhkan rata-rata **32 hari** sebelum akhirnya menyelesaikan transaksi pertama. Mayoritas pendapatan didorong oleh transaksi melalui perangkat *Mobile*.
* **Evaluasi SLA Pengiriman & Kepuasan Pelanggan (NPS):** Analisis SQL menunjukkan anomali di mana pengiriman kategori *Slow* justru meraih skor NPS rata-rata tertinggi (6,60) dengan tingkat komplain terrendah. Sebaliknya, layanan *Fast* dan *Standard* mencatat komplain lebih tinggi akibat tidak terpenuhinya ekspektasi kecepatan pelanggan.
* **Analisis Pengembalian Barang (Retur):** Tingkat pengembalian barang tertinggi didominasi oleh kategori produk **Elektronik**, dengan alasan utama barang mengalami cacat fisik atau kerusakan (*Defective/Broken*).

---

## 🚀 Rekomendasi Strategis

1. **Realokasi Anggaran Pemasaran:** Dialokasikan 80% anggaran akuisisi pemasaran untuk fokus pada segmen korporasi (Enterprise & SMB) yang memiliki rasio LTV:CAC paling sehat.
2. **Pangkas Keraguan Checkout:** Menerapkan strategi konversi instan (*countdown timer*, notifikasi stok terbatas, *retargeting ads*) untuk mempercepat keputusan pembelian dari rata-rata 32 hari.
3. **Audit Operasional Vendor Logistik:** Melakukan evaluasi kinerja pihak ketiga (*3PL*) untuk layanan pengiriman *Fast* dan *Standard* guna menekan tingkat keluhan pelanggan.
4. **Perketat Quality Control Produk Elektronik:** Meningkatkan prosedur inspeksi fisik pra-pengiriman (*Quality Control*) pada inventaris elektronik guna menekan angka retur barang cacat.

---

## 📂 Struktur Repositori

```text
.
├── 1_data/
│   ├── Master_Data_Ecommerce_Cleaned.xlsx                     # Dataset hasil pembersihan (Cleaned Data)
│   └── data_ingestion.png                                     # Dokumentasi alur data ingestion
│
├── 2_python_processing/
│   ├── E_commerce.ipynb                                       # Notebook Python untuk cleansing & feature engineering
│   ├── Data Cleansing & Feature Engineering 1.png             # Screenshot dokumentasi Python (Part 1)
│   └── Data Cleansing & Feature Engineering 2.png             # Screenshot dokumentasi Python (Part 2)
│
├── 3_sql_analysis/
│   ├── Ecommerce Analisis Dampak SLA Pengiriman terhadap NPS dan Komplain.sql
│   ├── Ecommerce Analisis LTV vs CAC.sql
│   ├── Analisis Dampak SLA Pengiriman terhadap NPS dan Komplain.png
│   └── Analisis LTV vs CAC berdasarkan Segmen Pelanggan.png
│
├── 4_dashboard_&_reports/
│   ├── E-commerce_Dashboard.pbix                              # File dasbor interaktif Power BI
│   ├── E-Commerce Performance & Customer Insights.pdf          # Laporan presentasi eksekutif (PDF)
│   ├── dashboard_kpi_chart.png                                # Screenshot dasbor KPI utama
│   └── charts/                                            # Folder pendukung chart & grafik
│       ├── Checkout Time.png
│       ├── Customer Retention & Loyalty Rate by Segment.png
│       ├── Discount Impact on Profit Margin.png
│       ├── Lifetime Value (LTV) vs. Acquisition Cost (CAC) 2.png
│       ├── Lifetime Value (LTV) vs. Acquisition Cost (CAC).png
│       ├── Payment Method Preferences.png
│       ├── Return Reasons by Product Category.png
│       ├── Revenue Performance by Channel & Device.png
│       └── Shipping Impact on Satisfaction Score (NPS).png
│
└── README.md                                                  # Dokumentasi utama repositori
