# Cédrus Pszichológiai Központ – weboldal (GitHub Pages)

## 1. Képek letöltése (egyszer, a Squarespace lemondása ELŐTT)

```bash
python _tools/get_images.py
```

## 2. Űrlap: Formspree

1. Regisztráció: https://formspree.io a cedruspszichologia@gmail.com címmel → **New form**
2. A kapott URL (`https://formspree.io/f/abcdwxyz`) → `script.js` első sora: `FORM_ENDPOINT`
3. Formspree beállításoknál: Restrict to domain → `cedruspszichologia.com`

Ingyenes csomag: 50 beküldés/hó.

## 3. GitHub repó + Pages

```bash
git init -b main
git add .
git commit -m "Cédrus weboldal"
gh repo create cedrus-web --public --source=. --push
```
(`gh` nélkül: github.com → New repository → `cedrus-web`, majd `git remote add origin … && git push -u origin main`)

GitHub-on: **Settings → Pages → Source: Deploy from a branch → main / (root) → Save**

1-2 perc múlva elérhető: `https://<felhasznalonev>.github.io/cedrus-web/`

Ezután minden `git push` automatikusan frissíti az oldalt.

## 4. Saját domain: cedruspszichologia.com

A domainregisztrátornál (Squarespace Domains → DNS Settings) a régi Squarespace-rekordok helyére:

| Típus | Név | Érték |
|---|---|---|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |
| CNAME | www | `<felhasznalonev>.github.io` |

GitHub: **Settings → Pages → Custom domain:** `www.cedruspszichologia.com` → Save → amikor a DNS-ellenőrzés zöld: **Enforce HTTPS** ✔

A DNS-terjedés néhány perctől pár óráig tart. A Squarespace-előfizetést csak ezután mondd le (a domain maradhat ott regisztrálva).
