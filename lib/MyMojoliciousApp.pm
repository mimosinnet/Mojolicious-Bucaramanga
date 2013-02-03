package MyMojoliciousApp;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Router
  my $r = $self->routes;


  $r->get('/info')->to('pagines#info');
  $r->get('/llista_caps')->to('pagines#llista_caps');

  $r->get('/hist(:hist)/:frame')->to('pagines#historia');
  $r->get('/hist(:hist)')->to('pagines#historia', frame => '01');

  # Normal route to controller
  $r->get('/')->to('pagines#principal');
}

1;
