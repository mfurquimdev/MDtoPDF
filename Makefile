.PHONY: all clean tex pdf

all:
	$(MAKE) -C tex all

tex:
	$(MAKE) -C tex tex

pdf:
	$(MAKE) -C tex pdf

clean:
	$(MAKE) -C tex clean
