_obuild/{{cookiecutter.repo_name}}/{{cookiecutter.repo_name}}.js: _obuild/{{cookiecutter.repo_name}}/{{cookiecutter.repo_name}}.byte
	js_of_ocaml $<

_obuild/{{cookiecutter.repo_name}}/{{cookiecutter.repo_name}}.byte: *.ml
	ocp-build -init

clean:
	ocp-build -clean

watch:
	make ; while true ; do inotifywait -qe close_write *.ml; clear ; make ; echo OK ; done
