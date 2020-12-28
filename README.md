# Systems_programming (2020)

## Script 1.	Automatic source code backup
1.  Copy all C files in the specified directory to the "/home/c_str" directory.
2.  Compress these files into "src_dd_mm_yy.tgz" and copy them to the "/home/c_comp" directory.

### Usage
```
sh code_backup.sh testDir
```

## Script 2. Automatic decompression and file classification
1.  Unzip test.tar.gz. Copy all c files to the "c_dir" directory and all headle files into the "h_dir" directory.
2.  Create a text file "dirinfo.txt" and list all c and headle files, count files.

### Usage
```
sh classification.sh
```