# Base image
FROM ruby:2.7.4

# Set environment variables
ENV LANG C.UTF-8
ENV RAILS_ENV production
ENV RAILS_LOG_TO_STDOUT true

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    sqlite3 \
    libsqlite3-dev

# Set up application directory
RUN mkdir /app
WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5 --without development test

# Copy application files
COPY . .

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port
EXPOSE 3000

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
