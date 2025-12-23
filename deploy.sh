

# مسیر پروژه

PROJECT_DIR="/home/aqsasystem/sa_Backend_mobile"
APP_NAME="sarafiApp"

# رفتن به پوشه پروژه
cd "$PROJECT_DIR" || { echo "مسیر پروژه پیدا نشد!"; exit 1; }

# Pull از GitHub
echo "Pull آخرین تغییرات از GitHub..."

git fetch origin main
git reset --hard origin/main

# نصب پکیج‌های جدید (اگر اضافه شده باشند)
echo "نصب پکیج‌ها..."

npm install

# ریستارت برنامه با PM2
echo "ریستارت برنامه با PM2..."
pm2 restart "$APP_NAME"

echo "Deploy کامل شد ✅"
