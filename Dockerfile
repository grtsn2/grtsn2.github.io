FROM jekyll/jekyll:latest

COPY Gemfile .

RUN bundle install --clean
RUN jekyll build

CMD ["jekyll", "serve"]
