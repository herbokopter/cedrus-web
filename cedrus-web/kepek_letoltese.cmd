@echo off
cd /d "%~dp0"
if not exist img mkdir img
echo Kepek letoltese...
curl.exe -fsSL -A "Mozilla/5.0" -o "img\logo.png" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/c1b6f46a-15c2-4132-bca0-8e2462c2d5d9/11zon_cropped+%%285%%29.png?format=500w" && echo ok: logo.png || echo HIBA: logo.png
curl.exe -fsSL -A "Mozilla/5.0" -o "img\hero.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/1735741858981-71OP23YT5OEYSY7X7N3Q/unsplash-image-W4zX2DrEIDA.jpg?format=2500w" && echo ok: hero.jpg || echo HIBA: hero.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\gyerek.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/7abe8e44-6ce7-471e-bbbb-65f287dcbd93/cdrusgyerek-ezgif.com-webp-to-jpg-converter.jpg?format=1500w" && echo ok: gyerek.jpg || echo HIBA: gyerek.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\felnott.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/5074b08a-dc2e-43ed-a98b-768789114cbe/DALLE2025-01-0118.22.44-Arealisticandnaturalimageofapsychologicalcounselingsessionforadults.Onlythelowerpartsoftwoindividualsarevisible.Onepersonissit-ezgif.com-webp-to-jpg-converter.jpg?format=1500w" && echo ok: felnott.jpg || echo HIBA: felnott.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\g1.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/30ea0b40-5765-4be9-86e6-41f41b886181/IMG_5493.jpg?format=1500w" && echo ok: g1.jpg || echo HIBA: g1.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\g2.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/6be71f71-dd94-4113-b558-b4cd9e0cebbd/IMG_5481.jpg?format=1500w" && echo ok: g2.jpg || echo HIBA: g2.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\g3.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/f15b3635-5ca1-448c-9cf2-e9590a9195b0/IMG_5507.jpg?format=1500w" && echo ok: g3.jpg || echo HIBA: g3.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\g4.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/3e85ef1e-8ae7-4564-af1f-b255ff08fa0c/IMG_5510.jpg?format=1500w" && echo ok: g4.jpg || echo HIBA: g4.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\g5.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/41eb8e15-6929-47cb-8db4-2196390ead54/IMG_5500.jpg?format=1500w" && echo ok: g5.jpg || echo HIBA: g5.jpg
curl.exe -fsSL -A "Mozilla/5.0" -o "img\g6.jpg" "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801/240f1aba-1947-4431-b8fe-154e7af40fab/IMG_5501.jpg?format=1500w" && echo ok: g6.jpg || echo HIBA: g6.jpg
echo.
echo Kesz. Most toltsd fel a mappa tartalmat a GitHubra.
explorer .
pause
