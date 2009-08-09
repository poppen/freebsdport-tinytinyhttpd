# New ports collection makefile for:	tinytinyhttpd
# Date created:		01 Aug 2009
# Whom:			Shinsuke Matsui <smatsui@karashi.org>
#
# $FreeBSD: ports/www/tinytinyhttpd/Makefile,v 1.2 2009/08/07 20:09:35 miwi Exp $
#

PORTNAME=	tinytinyhttpd
PORTVERSION=	0.0.5
CATEGORIES=	www
MASTER_SITES=	http://cloud.github.com/downloads/mattn/tinytinyhttpd/ \
		${MASTER_SITE_LOCAL}

MAINTAINER=	smatsui@karashi.org
COMMENT=	Tiny tiny httpd

PLIST_FILES=	bin/tthttpd
PORTDOCS=	README.mkd example.conf ChangeLog

.include <bsd.port.pre.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tthttpd ${PREFIX}/bin

.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${FILESDIR}/example.conf ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.mkd ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
