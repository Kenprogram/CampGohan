FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs mariadb-client
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn \
    && mkdir /CampGohan
WORKDIR /CampGohan
COPY Gemfile /CampGohan/Gemfile
COPY Gemfile.lock /CampGohan/Gemfile.lock
RUN bundle install
COPY . /CampGohan

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]