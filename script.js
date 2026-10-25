// Formspree űrlap azonosító – a formspree.io-n létrehozott űrlap URL-je
const FORM_ENDPOINT = 'https://formspree.io/f/XXXXXXXX';

document.getElementById('year').textContent = new Date().getFullYear();

// mobil menü
const btn = document.querySelector('.menu-btn');
const nav = document.querySelector('.nav');
btn.addEventListener('click', () => {
  const open = nav.classList.toggle('open');
  btn.setAttribute('aria-expanded', open);
});
nav.querySelectorAll('a').forEach(a => a.addEventListener('click', () => nav.classList.remove('open')));

// galéria nagyítás
document.querySelectorAll('.gallery img').forEach(img => {
  img.addEventListener('click', () => {
    const lb = document.createElement('div');
    lb.className = 'lightbox';
    lb.innerHTML = `<img src="${img.src}" alt="">`;
    lb.addEventListener('click', () => lb.remove());
    document.body.appendChild(lb);
  });
});
document.addEventListener('keydown', e => { if (e.key === 'Escape') document.querySelector('.lightbox')?.remove(); });

// űrlap
const form = document.getElementById('contact-form');
const status = form.querySelector('.form-status');
form.addEventListener('submit', async e => {
  e.preventDefault();
  status.className = 'form-status';
  if (!form.checkValidity()) {
    status.textContent = 'Kérjük, töltse ki a csillaggal jelölt mezőket, és fogadja el az adatkezelési tájékoztatót.';
    status.classList.add('err');
    return;
  }
  const submit = form.querySelector('button[type=submit]');
  submit.disabled = true;
  status.textContent = 'Küldés…';
  try {
    const data = Object.fromEntries(new FormData(form));
    const res = await fetch(FORM_ENDPOINT, {
      method: 'POST',
      headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
      body: JSON.stringify(data)
    });
    const out = await res.json().catch(() => ({}));
    if (!res.ok) throw new Error(out.errors?.map(x => x.message).join(' ') || 'Hiba történt.');
    form.reset();
    status.textContent = 'Köszönjük! Üzenetét megkaptuk, hamarosan válaszolunk.';
    status.classList.add('ok');
  } catch (err) {
    status.textContent = err.message + ' Kérjük, írjon közvetlenül a cedruspszichologia@gmail.com címre.';
    status.classList.add('err');
  } finally {
    submit.disabled = false;
  }
});
