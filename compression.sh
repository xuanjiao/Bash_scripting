origin_file=$1
comp_file=${origin_file%.*}

echo "original file : $origin_file"
echo "compressing.."
tar zcvf ${comp_file}.tar.gz ./${origin_file}
echo "composed Success! File name: $comp_file.tar.gz"
