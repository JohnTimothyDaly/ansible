default: ping

.PHONY: ping
ping:
	ansible all -u ansible -m ping

.PHONY: clean
clean:
	rm *.retry
