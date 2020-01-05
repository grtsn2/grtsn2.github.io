FROM jekyll/jekyll:latest

COPY Gemfile .
COPY Gemfile.lock

RUN bundle install --quiet --clean
RUN jekyll clean
RUN jekyll build

CMD ["jekyll", "serve"]
