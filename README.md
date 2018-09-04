
### dapy
The `dapy` docker image.


### Purpose
* Runs jupyter notebook for python only
* Allows to enter into bpython

### Commands
Use the following commands to install, start, or uninstall the images or container.

| command | description |
|:-------:|:-----------:|
| `./config uninstall` | Cleanup previous installations (Mounted data is not deleted!) |
| `vi config.conf` | Increment the version |
| `./config.sh build run` | Build the Image and instantiate the Container |
| `./config.sh start` | Start the Container again |
| `./config.sh bpython` | Opens bpython |

Requires execution rights for `config.sh`.
For example, run `chmod u+x config.sh` to call `./config.sh ...`.
Otherwise call `bash config.sh ...`.


### script.sh
The script starts jupyter.

### Dockerfile
Add or remove `RUN pip install <packagename>` commands in the Dockerfile depending on your needs.

Here is a list of packages that might be useful. 
The status columns indicates if a package is included in the Dockerfile.

| status | package | field |
|:------:|:-------:|:------|
| i | `numpy` | Basic package. Matrix Math. |
| i | `scipy` | Basic package. Contains everything that is missing in Numpy. |
| i | `pandas` | Data Preprocessing (It's main strength) |
| i | `matplotlib` | DataViz |
| - | `ggplot` | DataViz. Wrappter for ggplot |
| - | `seaborn` | DataViz |
| - | `bokeh` | DataViz |
| - | `plotly` | DataViz |
| - | `vincent` | DataViz |
| - | `altair` | DataViz |
| i | `cvxopt` | Numerical Optimization. Convex Optimization |
| i | `statsmodels` | Statistics. Linear Regression |
| i | `scikit-learn` | Machine Learning |
| - | `pybrain` | Machine Learning |
| - | `scikit-image` | Image Processing |
| - | `nltk` | Natural Language Processing |
| - | `gensim` | Natural Language Processing |
| - | `tensorflow` | Deep Learning |
| - | `keras` | Deep Learning |
| - | `theano` | Deep Learning |
| i | `beautifulsoup4` | Web Scraping |
| - | `scrapy` | Web Scraping |
| - | `xlrds` | File Processing. Edit Excel files |
| - | `python-docx` | File Processing. Edit Word files |
| - | `cloudpickle` | File Processing. Serialization beyond pickle |
| - | `dill` | File Processing. Serialization beyond pickle |
| i | `unqlite` | File-based Data Storage. Similar to SQLite but NoSQL |
| - | `sympy` | Symbolic Math |
| - | `sagemath` | Symbolic Math |
| - | `patsy` | Formula driven creating of Linear Regression Models (similar to R formulas) |
| i | `nose` | Unit-Testing. Allows to run all unittest scripts of a project |
| - | `numba` | Compilation. LLVM compiler. (Easy to Use) |
| - | `cython` | Compilation. |



### Links
* [template1](https://github.com/waalfisk/template1)
