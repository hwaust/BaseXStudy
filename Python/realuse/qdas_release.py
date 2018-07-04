#!/usr/bin/python
import os, time, shutil, zipfile

#打包目录为zip文件（未压缩）
def make_zip(source_dir, output_filename):
  zipf = zipfile.ZipFile(output_filename, 'w')
  pre_len = len(os.path.dirname(source_dir))
  for parent, dirnames, filenames in os.walk(source_dir):
    for filename in filenames:
      pathfile = os.path.join(parent, filename)
      arcname = pathfile[pre_len:].strip(os.path.sep)   #相对路径
      zipf.write(pathfile, arcname)
  zipf.close()


# input and output paths
indir  = r"C:/Users/hao/source/repos/AntaiDBReport/AntaiDBReport/bin/debug/"
outdir = r"C:/Users/hao/source/repos/AntaiDBReport/AntaiDBReport/bin/published/" 
subname = time.strftime("Antai_%Y%m%d_%H%M%S", time.localtime()) 
os.mkdir(outdir + subname)

# to-be-copied files
files=["AntaiDBReport.exe", "Spire.License.dll", "Spire.XLS.dll", "template.xlsx", "WindGoes.dll"]

# copy files
for file in files:
    shutil.copyfile(indir + file, outdir + subname + "/" + file)

make_zip(outdir + subname, outdir + subname + ".zip")

# view in Explorer
os.system("explorer /e, /select, " + outdir.replace("/", "\\") + subname + ".zip")
 
