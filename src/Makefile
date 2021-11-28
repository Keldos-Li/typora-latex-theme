base_dir = $(shell pwd)

target_dir = $(base_dir)/latex-theme
working_dir = $(base_dir)/build
windows = windows
macos = macos
linux = linux
typora = typora
pandoc = pandoc
joplin = joplin

$(shell mkdir -p $(working_dir))
$(shell mkdir -p $(target_dir))

# $(1) is the name of operating system, $(2) is typora or pandoc, $(3) is light or dark theme
define build
	mkdir -p $(target_dir)/$(1)-$(2)
	mkdir -p $(target_dir)/$(1)-$(2)/target
	echo '$$os: "$(1)";' >> $(working_dir)/$(1)-$(2)-$(3).scss
	echo '$$tool: "$(2)";' >> $(working_dir)/$(1)-$(2)-$(3).scss
	echo '$$theme: "$(3)";' >> $(working_dir)/$(1)-$(2)-$(3).scss
	cat $(base_dir)/latex-theme.scss >> $(working_dir)/$(1)-$(2)-$(3).scss
	if [ "$(3)" = "light" ]; then \
		scss --sourcemap=none --style expanded $(working_dir)/$(1)-$(2)-$(3).scss $(target_dir)/$(1)-$(2)/target/latex.css; \
	else \
		scss --sourcemap=none --style expanded $(working_dir)/$(1)-$(2)-$(3).scss $(target_dir)/$(1)-$(2)/target/latex-$(3).css; \
	fi
endef

# $(1) is the name of operating system
define build-typora
	$(call build,$(1),$(typora),light)
	$(call build,$(1),$(typora),dark)
	if [ "$(1)" = "$(windows)" ]; then \
		cp $(base_dir)/install.ps1 $(target_dir)/$(1)-$(typora); \
	else \
		cp $(base_dir)/install.sh $(target_dir)/$(1)-$(typora); \
	fi;
	cp $(base_dir)/README.md $(target_dir)/$(1)-$(typora)
	cp $(base_dir)/../LICENSE $(target_dir)/$(1)-$(typora)
	cp $(base_dir)/../credits.md $(target_dir)/$(1)-$(typora)
	cp -r $(base_dir)/../Supplemental $(target_dir)/$(1)-$(typora)/Supplemental
endef

define build-pandoc
	$(call build,$(linux),$(pandoc),light)
	$(call build,$(linux),$(pandoc),dark)
endef

define build-joplin
	$(call build,$(1),$(joplin),light)
	if [ "$(1)" = "$(windows)" ]; then \
		cp $(base_dir)/install_joplin.ps1 $(target_dir)/$(1)-$(joplin); \
	fi;
endef

.PHONY: all
all:
	make windows
	make macos
	make linux
	make pandoc
	make joplin

.PHONY: all-and-compress
all-and-compress:
	make all
	cd $(target_dir)/$(windows)-$(typora); zip -r $(target_dir)/latex-theme-$(windows).zip ./*
	cd $(target_dir)/$(macos)-$(typora); zip -r $(target_dir)/latex-theme-$(macos).zip ./*
	cd $(target_dir)/$(linux)-$(typora); zip -r $(target_dir)/latex-theme-$(linux).zip ./*
#	cd $(target_dir)/$(pandoc)-$(typora); zip -r $(target_dir)/latex-theme-$(pandoc).zip ./*

.PHONY: windows
windows:
	$(call build-typora,$(windows))

.PHONY: macos
macos:
	$(call build-typora,$(macos))

.PHONY: linux
linux:
	$(call build-typora,$(linux))

.PHONY: pandoc
pandoc:
	$(call build-pandoc,$(linux))

.PHONY: joplin
joplin:
	$(call build-joplin,$(windows))
	$(call build-joplin,$(linux))
	$(call build-joplin,$(macos))

.PHONY: clean
clean:
	rm -rf $(target_dir) $(working_dir)
