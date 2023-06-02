FROM x86/ubuntu:2004

# compile kernel documentation
# docker build . -t kdoc
# docker run -v /path/to/kernelsrc:/code kdoc

#ARG DEBIAN_FRONTEND=noninteractive
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
	apt-get install --no-install-recommends -y \
		perl-modules \
		imagemagick graphviz dvipng fonts-dejavu \
		fonts-noto-cjk gcc latexmk python librsvg2-bin texlive-lang-chinese \
		texlive-xetex make \
		python3-venv \
		python3-sphinx

WORKDIR /code

# run command in shell `make htmldocs'
# output goes to Documentation/output/index.html
CMD ["make", "htmldocs"]
