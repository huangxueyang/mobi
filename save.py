import zipfile
import os
import shutil

def word2pic(path, zip_path, tmp_path, store_path):
    #将docx文件重命名为zip文件    
    os.rename(path, zip_path)
    #进行解压
    f = zipfile.ZipFile(zip_path,'r')
    #将图片提取保存到中转目录
    for file in f.namelist():
        f.extract(file,temp_path)
    #释放zip文件
    f.close() 
    os.rename(zip_path,path)
    pic = os.listdir(os.path.join(temp_path,'word/media'))
    for img in pic:
        #根据word路径生成图片的名称
        shutil.copy(os.path.join(temp_path + '/word/media',img),os.path.join(store_path,img))
    for i in os.listdir(temp_path):
        if os.path.isdir(os.path.join(temp_path+'/word/media',i)):
            shutil.retree(os.path.join(temp_path+'/word/media',i))

if __name__ == '__main__':
    #目标文件路径
    path = r'....\1.docx'
    #压缩文件路径
    zip_path = r'....\1.zip'
    #建立一个中转文件夹
    temp_path = r'....\temp'
    #建立一个目标文件夹
    store_path = r'....\images'
    m = word2pic(path,zip_path,temp_path,store_path)