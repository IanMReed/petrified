# Maintainer: Troy Engel <troyengel+arch@gmail.com>

pkgname=petrified
pkgver=1.0.1
pkgrel=2
pkgdesc="Bash client to update dynamic DNS at freedns.afraid.org"
arch=('any')
url="https://github.com/troyengel/petrified"
license=('GPL3')
options=('emptydirs')
depends=('util-linux' 'coreutils' 'bash' 'iproute2' 'curl')
install=petrified.archinst
backup=('etc/petrified.conf')
source=("https://github.com/troyengel/${pkgname}/archive/v${pkgver}.tar.gz")
md5sums=('51eb41827d256950f0aa76710b23fef0')

package() {
  cd "${srcdir}/${pkgname}-${pkgver}"

  # Install the system bits
  install -Dm0755 petrified "${pkgdir}/usr/bin/petrified"
  install -Dm0600 petrified.conf "${pkgdir}/etc/petrified.conf" 
  install -Dm0644 petrified.logrotate "${pkgdir}/etc/logrotate.d/petrified" 
  install -dm0755 "${pkgdir}/var/cache/petrified"

  # Install examples for the user
  install -dm0755 "${pkgdir}/usr/share/doc/${pkgname}"
  install -m0644 petrified.conf petrified.crontab petrified.dispatch \
                 README.md "${pkgdir}/usr/share/doc/${pkgname}"
}

