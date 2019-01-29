conda install conda-build  
conda install anaconda-client 
PKG_NAME=s2-toa-to-lai && USER=f0xy  
conda config --set anaconda_upload no  
conda build . -c conda-forge -c f0xy
export CONDA_PACKAGE=`conda build --output . -c conda-forge -c f0xy | grep bz2`
echo $CONDA_PACKAGE
anaconda -t $CONDA_UPLOAD_TOKEN upload -u $USER $CONDA_PACKAGE --force

