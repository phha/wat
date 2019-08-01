release:
	pipenv run python setup.py sdist bdist_wheel

clean:
	rm -rf dist/
	rm -rf build/
	rm -rf click_config_file.egg-info
	rm -rf __pycache__

upload: release
	pipenv run twine upload dist/*

.PHONY: clean upload release
