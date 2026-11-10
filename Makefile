install:
	@echo "running on:"
	@cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2
	@echo "installing lilith's coreutils, please wait..."
	rm build/*
	cd cat && cargo build --release
	cd cp && cargo build --release
	cd grep && cargo build --release
	cd ls && cargo build --release
	cd mkdir && cargo build --release
	cd mv && cargo build --release
	cd cd && cargo build --release
	mv cat/target/release/cat build
	mv cp/target/release/cp build
	mv grep/target/release/grep build
	mv ls/target/release/ls build
	mv mkdir/target/release/mkdir build
	mv mv/target/release/mv build
	mv cd/target/release/cd build