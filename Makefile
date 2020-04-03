build:
	go build -o octant-riff cmd/plugin/main.go

clean:
	$(RM) octant-riff

install: build
	mv octant-riff $(HOME)/.config/octant/plugins/

uninstall: clean
	$(RM) $(HOME)/.config/octant/plugins/octant-riff
