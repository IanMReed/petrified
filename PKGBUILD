# Maintainer: Troy Engel <troyengel+arch@gmail.com>

pkgname=petrified
pkgver=1.0
pkgrel=1
pkgdesc="Bash client to update dynamic DNS at freedns.afraid.org"
arch=('any')
url="https://github.com/troyengel/petrified"
license=('GPL3')
options=('emptydirs')
depends=('util-linux' 'coreutils' 'bash' 'iproute2' 'curl')
install=petrified.archinst
backup=('etc/petrified.conf')
source=('petrified'
        'petrified.conf'
        'petrified.crontab'
        'petrified.dispatch'
        'petrified.logrotate'
        'README.md'
        'LICENSE')
md5sums=('019946e82cb8be1b1073fa8f4016bf02'
         'f011bccfc9ef01a7e27a8d79f8e8d0bd'
         '96748831c58c8b64e786a9f7386db22e'
         '01d6dd718325644c3bfbc89030d66a21'
         '66aff4c7c44404f32315abdab0a479bc'
         '56ab643013bdea713f0e67a095e77b56'
         'd32239bcb673463ab874e80d47fae504')

package() {
  install -dm0755 "${pkgdir}/usr/bin"
  install -m0755 petrified "${pkgdir}/usr/bin/"
  install -dm0755 "${pkgdir}/etc"
  install -m0640 petrified.conf "${pkgdir}/etc/" 
  install -dm0755 "${pkgdir}/var/cache/petrified"

  install -dm0755 "${pkgdir}/usr/share/doc/${pkgname}"
  install -m0644 petrified.crontab petrified.dispatch petrified.logrotate \
                 README.md "${pkgdir}/usr/share/doc/${pkgname}"
}

