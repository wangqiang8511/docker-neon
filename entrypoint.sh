notebook_port=${PORT0:-8888}
ipython notebook --ip 0.0.0.0 --port $notebook_port --allow-root --notebook-dir /notebooks
