echo -e "e\ne" | jupyter notebook password
jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root --no-browser
