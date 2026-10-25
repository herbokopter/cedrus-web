#!/usr/bin/env python3
"""Egyszer futtatandó: letölti a képeket a jelenlegi Squarespace-oldalról az img/ mappába.
Használat (a repó gyökeréből):  python _tools/get_images.py
A Squarespace lemondása ELŐTT futtasd!
"""
import pathlib
import urllib.request

CDN = "https://images.squarespace-cdn.com/content/v1/67754ad232ef611abffc0801"
IMGS = {
    "logo.png": f"{CDN}/c1b6f46a-15c2-4132-bca0-8e2462c2d5d9/11zon_cropped+%285%29.png?format=500w",
    "hero.jpg": f"{CDN}/1735741858981-71OP23YT5OEYSY7X7N3Q/unsplash-image-W4zX2DrEIDA.jpg?format=2500w",
    "gyerek.jpg": f"{CDN}/7abe8e44-6ce7-471e-bbbb-65f287dcbd93/cdrusgyerek-ezgif.com-webp-to-jpg-converter.jpg?format=1500w",
    "felnott.jpg": f"{CDN}/5074b08a-dc2e-43ed-a98b-768789114cbe/DALLE2025-01-0118.22.44-Arealisticandnaturalimageofapsychologicalcounselingsessionforadults.Onlythelowerpartsoftwoindividualsarevisible.Onepersonissit-ezgif.com-webp-to-jpg-converter.jpg?format=1500w",
    "g1.jpg": f"{CDN}/30ea0b40-5765-4be9-86e6-41f41b886181/IMG_5493.jpg?format=1500w",
    "g2.jpg": f"{CDN}/6be71f71-dd94-4113-b558-b4cd9e0cebbd/IMG_5481.jpg?format=1500w",
    "g3.jpg": f"{CDN}/f15b3635-5ca1-448c-9cf2-e9590a9195b0/IMG_5507.jpg?format=1500w",
    "g4.jpg": f"{CDN}/3e85ef1e-8ae7-4564-af1f-b255ff08fa0c/IMG_5510.jpg?format=1500w",
    "g5.jpg": f"{CDN}/41eb8e15-6929-47cb-8db4-2196390ead54/IMG_5500.jpg?format=1500w",
    "g6.jpg": f"{CDN}/240f1aba-1947-4431-b8fe-154e7af40fab/IMG_5501.jpg?format=1500w",
}

out = pathlib.Path(__file__).resolve().parent.parent / "img"
out.mkdir(exist_ok=True)
for name, url in IMGS.items():
    dest = out / name
    if dest.exists() and dest.stat().st_size > 0:
        print(f"megvan: {name}")
        continue
    try:
        req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
        with urllib.request.urlopen(req, timeout=30) as r:
            dest.write_bytes(r.read())
        print(f"ok:     {name}  ({dest.stat().st_size // 1024} KB)")
    except Exception as e:
        print(f"HIBA:   {name}: {e}")
