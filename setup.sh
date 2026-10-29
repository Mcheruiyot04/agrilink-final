#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# AgriLink Market – Full Setup Script
# Run once after extracting the project.
# ─────────────────────────────────────────────────────────────
set -e

echo ""
echo "🌱 AgriLink Market — Setup"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 1. Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "📦 Creating virtual environment..."
    python3 -m venv venv
fi

echo "📦 Activating virtual environment..."
source venv/bin/activate

# 2. Install dependencies
echo "📦 Installing Python dependencies..."
pip install -q --upgrade pip
pip install -q -r requirements.txt

# 3. Apply migrations
echo "🗄  Running database migrations..."
python manage.py migrate --no-input

# 4. Collect static files
echo "📂 Collecting static files..."
python manage.py collectstatic --no-input --clear 2>/dev/null || true

# 5. Seed demo data (with product images)
echo "🌾 Seeding demo data with product images..."
python manage.py seed_demo_data --reseed

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ AgriLink Market is ready!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "▶  Start the server:"
echo "   source venv/bin/activate"
echo "   python manage.py runserver"
echo ""
echo "   Then open: http://127.0.0.1:8000/"
echo ""
echo "📋 Login credentials:"
echo "   Admin panel: http://127.0.0.1:8000/admin-panel/"
echo "   Username: admin    Password: admin1234"
echo ""
echo "   Farmer:  farmer_mercy / farmer123"
echo "   Buyer:   buyer_john  / buyer123"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
