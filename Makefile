travis:
	git clone --depth=50 --branch=docker https://github.com/sjsrey/pysal.git sjsrey/pysal
	conda config --set always_yes yes --set changeps1 no --set show_channel_urls true
	conda config --add channels conda-forge --force
	conda create --name TEST --file sjsrey/pysal/requirements.txt --file sjsrey/pysal/requirements_dev.txt --file sjsrey/pysal/requirements_docs.txt --file sjsrey/pysal/requirements_plus.txt

clean:
	rm -rf sjsrey/pysal
	conda env remove --name TEST
