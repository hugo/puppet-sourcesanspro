# base font file into which the actual names
# will be inserted
define sourcesanspro::font {
  include sourcesanspro
  $fonts="/Users/${::luser}/Library/Fonts"
  $prefix='SourceSansPro'
  file { "${prefix}-${title}.otf":
    ensure => 'present',
    path   => "${fonts}/${prefix}-${title}.otf",
    source => "puppet:///modules/sourcesanspro/${prefix}-${title}.otf"
  }
}

