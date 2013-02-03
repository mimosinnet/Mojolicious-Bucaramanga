package MyMojoliciousApp::Pagines;
use Mojo::Base 'Mojolicious::Controller';
use MyMojoliciousApp::History::VignettNumber;

# This action will render a template
sub principal {
  my $self = shift;

  # Render template "pagines/principal.html.ep" with message
  $self->render();
}

sub info {
  my $self = shift;

  # Render template "pagines/principal.html.ep" with message
  $self->render();
}

sub llista_caps {
  my $self = shift;

  # Render template "pagines/principal.html.ep" with message
  $self->render();
}

sub historia {
  my $self = shift;
  my $hist = $self->stash('hist');
  my $frame = $self->stash('frame');
  my $c = MyMojoliciousApp::History::VignettNumber->new(hist => $hist);
  my $number_vignetts = $c->number_vignetts;
  my $f_anterior = $frame -1;
  my $f_seguent = $frame +1;
  my $imatge = "/img/$hist/bcm$frame.jpg";
  my ($anterior,$seguent) = ("/","/llista_caps");
  # url de la imatge anterior i posterior
  $anterior = "/hist$hist/0$f_anterior" unless $f_anterior < 1;
  $seguent  = "/hist$hist/0$f_seguent"  unless $f_seguent > $number_vignetts;

  # Render template "pagines/historia.html.ep" with message
  $self->render(imatge => $imatge, anterior => $anterior, seguent => $seguent);
}


1;
