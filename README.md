# AgriLink Market

A Django-based agricultural marketplace connecting Kenyan smallholder farmers directly with buyers.

## Features

- **Module 1**: User Registration & Authentication (Farmer / Buyer / Admin roles)
- **Module 2**: Product Listing with real product images
- **Module 3**: Product Browsing & Search with filters
- **Module 4**: Order Management with cart, checkout, and dispute system
- **Module 5**: Full Admin Dashboard with detail pages for Users, Products, Orders, and Disputes

## Quick Start

```bash
bash setup.sh
```

Then visit: http://127.0.0.1:8000/

## Manual Setup

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py seed_demo_data --reseed
python manage.py runserver
```


      
## Admin Panel

URL: `/admin-panel/`

- **Dashboard** — KPIs, recent activity, open disputes, top products
- **Users** — List with filters; click any user to see full profile, products, orders
- **Products** — List with filters; click any product to see detail, sales history, reviews
- **Orders** — Full order list with status + payment filters; click to view detail with items
- **Disputes** — Review and resolve open disputes inline
- **Audit Log** — Full record of all admin actions
- **Reseed Demo Data** — Wipes seeded records and recreates them with real product images


## Stack

- Django 4.2 + SQLite
- Pillow (image handling)
- WhiteNoise (static files)
- Gunicorn (production WSGI)
