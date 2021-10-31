base_dir = $(shell pwd)

target_dir = $(base_dir)/latex-theme
working_dir = $(base_dir)/build
windows = windows
macos = macos
linux = linux

$(shell mkdir -p $(working_dir))
$(shell mkdir -p $(target_dir))

# $(1) is the name of operating system, $(2) is light or dark theme
define build
	mkdir -p $(target_dir)/$(1)
	mkdir -p $(target_dir)/$(1)/target
	echo '$$theme: "$(2)";' >> $(working_dir)/$(1)-$(2).scss
	echo '$$os: "$(1)";' >> $(working_dir)/$(1)-$(2).scss
	cat $(base_dir)/latex-theme.scss >> $(working_dir)/$(1)-$(2).scss
	if [ "$(2)" = "light" ]; then \
		scss --sourcemap=none $(working_dir)/$(1)-$(2).scss $(target_dir)/$(1)/target/latex.css; \
	else \
		scss --sourcemap=none $(working_dir)/$(1)-$(2).scss $(target_dir)/$(1)/target/latex-$(2).css; \
	fi;
endef

# $(1) is the name of operating system
define build-os
	$(call build,$(1),light)
	$(call build,$(1),dark)
	if [ "$(1)" = "$(windows)" ]; then \
		cp $(base_dir)/install.ps1 $(target_dir)/$(1); \
	else \
		cp $(base_dir)/install.sh $(target_dir)/$(1); \
	fi;
	cp $(base_dir)/README.md $(target_dir)/$(1)
	cp -r $(base_dir)/../Supplemental $(target_dir)/$(1)/Supplemental
	cd $(target_dir)/$(1); zip -r $(target_dir)/latex-theme-$(1).zip ./*
endef

.PHONY: all
all:
	make windows
	make macos
	make linux

.PHONY: windows
windows:
	$(call build-os,$(windows))

.PHONY: macos
macos:
	$(call build-os,$(macos))

.PHONY: linux
linux:
	$(call build-os,$(linux))

.PHONY: clean
clean:
	rm -rf $(target_dir) $(working_dir)
