base_dir = $(shell pwd)

target_dir = $(base_dir)/latex-theme
working_dir = $(base_dir)/build
windows = windows
macos = macos
linux = linux
typora = typora
pandoc = pandoc

$(shell mkdir -p $(working_dir))
$(shell mkdir -p $(target_dir))

# $(1) is the name of operating system, $(3) is light or dark theme
define build
	mkdir -p $(target_dir)/$(1)-$(2)
	mkdir -p $(target_dir)/$(1)-$(2)/target
	echo '$$os: "$(1)";' >> $(working_dir)/$(1)-$(2)-$(3).scss
	echo '$$tool: "$(2)";' >> $(working_dir)/$(1)-$(2)-$(3).scss
	echo '$$theme: "$(3)";' >> $(working_dir)/$(1)-$(2)-$(3).scss
	cat $(base_dir)/latex-theme.scss >> $(working_dir)/$(1)-$(2)-$(3).scss
	scss --sourcemap=none $(working_dir)/$(1)-$(2)-$(3).scss $(target_dir)/$(1)-$(2)/target/latex-$(3).css
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
	cp -r $(base_dir)/../Supplemental $(target_dir)/$(1)-$(typora)/Supplemental
	cd $(target_dir)/$(1)-$(typora); zip -r $(target_dir)/latex-theme-$(1).zip ./*
endef

define build-pandoc
	$(call build,$(linux),$(pandoc),light)
	$(call build,$(linux),$(pandoc),dark)
	cd $(target_dir)/$(1)-$(pandoc); zip -r $(target_dir)/latex-theme-$(1)-$(pandoc).zip ./*
endef

.PHONY: all
all:
	make windows
	make macos
	make linux
	make pandoc

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

.PHONY: clean
clean:
	rm -rf $(target_dir) $(working_dir)
