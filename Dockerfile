FROM ruby:2.7.1
COPY . ./
RUN gem install bundler:2.2.26
RUN bundle config unset frozen
RUN bundle install
EXPOSE 3000
CMD ["rails server --binding=0.0.0.0"]
