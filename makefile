default:
	@cat makefile

view:
	pytest db_viewer.py
	python db_viewer.py

init:
	python initialize_database.py

test:
	pytest -vvx db_viewer.py
test_smoke:
	pytest db_viewer.py::test_is_singleton
clean:
	rm aquarium.db
	
clean_view: clean init view

