use inc::Module::Install;
use Module::Install::AuthorTests;
use Module::Install::Repository;

name 'App-Tacochan';
all_from 'lib/App/Tacochan.pm';

requires 'Skype::Any' => '0.03';
requires 'Twiggy';
requires 'Plack::Middleware::ReverseProxy';
requires 'Plack::Builder::Conditionals';

test_requires 'Test::More' => 0.98;

tests 't/*.t';
author_tests 'xt';

install_script 'bin/tacochan';
install_script 'bin/tacochan_client';

auto_set_repository;

WriteAll;
