green='\033[0;32m'
cyan='\033[0;36m'
yellow='\033[0;33m'
clear='\033[0m'

dir="path to dir"

cat << EOF                        
    /\_/\     
   (=^.^=)    
   (")(")_/  
EOF

cd ${dir}
echo "${cyan}Now running${clear} 🚀"
echo "${cyan}Installing and Updating Dependencies${clear} 🛠"
npm i
echo "${green}Done:${clear} Installing and Updating Dependencies"
echo "${cyan}Now Genrating Prisma Client${clear} 🛠"
npx prisma generate
echo "${green}Done:${clear} Genrating Prisma Client"
echo "${cyan}Migrating Schema${clear} 🛠"
npx prisma migrate dev
echo "${green}Done:${clear} Migrating Schema"

echo "${yellow}Do you want to run the server now?${clear} (y/n)"
read input

if [ "${input}" == "yes" ] || [ "${input}" == "y" ];
then
    npm run dev
    echo "${green}Done${clear}"
fi


echo "${cyan}All Done, cya !!${clear} ✨"
