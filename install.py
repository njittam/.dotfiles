import os

def link(src, dst):
    if os.path.isfile(dst):
        answer = input("{fn} already exsists replace it? (y/N)".format(fn=dst))
        if answer not in ["y", "Y", "yes", "Yes"]:
            return
        os.remove(dst)
    print(src, '->', dst)
    dstdir = os.path.dirname(dst)
    if  not os.path.isdir(dstdir):
        os.mkdir(dstdir)
    os.symlink(src, dst)

def linking():
    home = os.getenv('HOME')
    cwd = os.getcwd()
    os.chdir(home)
    os.chdir('.dotfiles')
    os.chdir('skelhome')
    skel = "{home}/.dotfiles/skelhome".format(home=home)
    for (dirpath, dirnames, filenames) in os.walk("."):
        print(dirpath,dirnames,filenames)
        for fn in filenames:
            filename_src = "{skel}/{dirpath}/{fn}".format(skel=skel, dirpath=dirpath, fn=fn)
            filename_dst = "{home}/{dirpath}/{fn}".format(home=home, dirpath=dirpath, fn=fn)
            link(filename_src, filename_dst)
    os.chdir(cwd)
linking()
