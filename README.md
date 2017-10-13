# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

!["Screenshot of Jungle"](https://github.com/carloferrer/jungle-rails/blob/master/jungle-sample.png)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## General Testing

All pre-existing / seeded accounts have password 'carlo'.  See the `seeds.db` file for fake account details.

## Receipt Testing

Receipts can be sent to actual email addresses.
  - If you wish to test this, please create an account with the address you wish to have a receipt sent to.
  - As well, please modify the .env file to ensure that a valid gmail account is used to 'send' emails from.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

Credit Card expiry can be any MM/YY but cannot be in the past (i.e., if it's Oct 2017, expiry must be 10/17 or greater).

Credit Card CVC must be any 3 integers.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
