.class public Lorg/apache/http/impl/cookie/DefaultCookieSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

.field private final obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

.field private final strict:Lorg/apache/http/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/DefaultCookieSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/RFC2965Spec;Lorg/apache/http/impl/cookie/RFC2109Spec;Lorg/apache/http/impl/cookie/NetscapeDraftSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    .line 3
    iput-object p2, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

    .line 4
    iput-object p3, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 11

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965Spec;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    invoke-direct {v0, p2, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    .line 7
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109Spec;

    new-array v1, v9, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v2, v1, v8

    invoke-direct {v0, p2, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

    .line 8
    new-instance p2, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    new-array v0, v8, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v1, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "EEE, dd-MMM-yy HH:mm:ss z"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v1, v0, v7

    invoke-direct {p2, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object p2, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    return-void
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    const-string v0, "List of cookies"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/cookie/Cookie;

    .line 3
    instance-of v4, v3, Lorg/apache/http/cookie/SetCookie2;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 4
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 5
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_4

    if-eqz v2, :cond_3

    .line 6
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

    :goto_1
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    const-string v0, "Cookie"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    :goto_0
    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Header"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    const-string v8, "version"

    .line 5
    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_0

    move v5, v6

    :cond_0
    const-string v8, "expires"

    .line 6
    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_5

    if-nez v5, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Set-Cookie2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    :goto_1
    return-object p1

    .line 8
    :cond_5
    :goto_2
    sget-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 9
    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v1, :cond_6

    .line 10
    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 11
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_3

    .line 12
    :cond_6
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 14
    invoke-virtual {v1, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 15
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    :goto_3
    new-array p1, v6, [Lorg/apache/http/HeaderElement;

    .line 16
    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, p1, v2

    .line 17
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    new-instance p1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Cookie"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    :goto_0
    return-void
.end method
