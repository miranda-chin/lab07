git rm --cached daily_44201_2003.csv
git commit -m "remove daily_44201_2003.csv"

git filter-branch --index-filter 'git rm -rf --cached --ignore-unmatch daily_44201_2003.csv' HEAD