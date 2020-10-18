cd /mnt/hgfs/Development/Odoo/odoo_test_modules
if [[ `git status --porcelain` ]]; then
  echo "Changed"
else
  echo "Not Changed"
fi

