FROM ruby:3.1.2-bullseye
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client libpq-dev ragel
WORKDIR /ruby_app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install
# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
