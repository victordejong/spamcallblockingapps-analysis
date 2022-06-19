.class public abstract Lorg/apache/http/impl/auth/GGSSchemeBase;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/GGSSchemeBase$State;
    }
.end annotation


# instance fields
.field private final base64codec:Lw3/a/b/a/b/a;

.field private final log:Lw3/a/b/b/a;

.field private state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

.field private final stripPort:Z

.field private token:[B

.field private final useCanonicalHostname:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    .line 3
    new-instance v0, Lw3/a/b/a/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw3/a/b/a/b/a;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->base64codec:Lw3/a/b/a/b/a;

    .line 4
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->stripPort:Z

    .line 5
    iput-boolean p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->useCanonicalHostname:Z

    .line 6
    sget-object p1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->UNINITIATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    return-void
.end method

.method private resolveCanonicalHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_7

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal state: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " authentication has failed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    const-string p2, "http.route"

    .line 6
    invoke-interface {p3, p2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/http/conn/routing/HttpRoute;

    if-eqz p2, :cond_a

    .line 7
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->isProxy()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p3

    if-nez p3, :cond_3

    .line 9
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p3

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p3

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->useCanonicalHostname:Z
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    .line 13
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;->resolveCanonicalHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    :catch_0
    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->stripPort:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    :goto_1
    iget-object p3, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    invoke-interface {p3}, Lw3/a/b/b/a;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 17
    iget-object p3, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 18
    :cond_6
    iget-object p3, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    invoke-virtual {p0, p3, p2, p1}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;Lorg/apache/http/auth/Credentials;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    .line 19
    sget-object p1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->TOKEN_GENERATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_1

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->base64codec:Lw3/a/b/a/b/a;

    iget-object p3, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    invoke-virtual {p2, p3}, Lw3/a/b/a/b/b;->b([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 21
    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 22
    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending response \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' back to the auth server"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 23
    :cond_8
    new-instance p2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 24
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->isProxy()Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "Proxy-Authorization"

    .line 25
    invoke-virtual {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string p3, "Authorization"

    .line 26
    invoke-virtual {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_2
    const-string p3, ": Negotiate "

    .line 27
    invoke-virtual {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 29
    new-instance p1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {p1, p2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object p1

    .line 30
    :cond_a
    :try_start_3
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p2, "Connection route is not available"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lorg/ietf/jgss/GSSException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 31
    sget-object p2, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    .line 32
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x9

    if-eq p2, p3, :cond_e

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_e

    .line 33
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0xd

    if-eq p2, p3, :cond_d

    .line 34
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0xa

    if-eq p2, p3, :cond_c

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x13

    if-eq p2, p3, :cond_c

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x14

    if-ne p2, p3, :cond_b

    goto :goto_3

    .line 35
    :cond_b
    new-instance p2, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 36
    :cond_c
    :goto_3
    new-instance p2, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 37
    :cond_d
    new-instance p2, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 38
    :cond_e
    new-instance p2, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 39
    :cond_f
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " authentication has not been initiated"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createGSSContext(Lorg/ietf/jgss/GSSManager;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 1
    invoke-interface {p3, p2}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, p4, v0}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-interface {p1, p2}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    return-object p1
.end method

.method public generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B

    move-result-object p1

    return-object p1
.end method

.method public generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->getManager()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    const-string v1, "HTTP@"

    .line 3
    invoke-static {v1, p3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v0, p3, v1}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p3

    .line 4
    instance-of v1, p4, Lorg/apache/http/auth/KerberosCredentials;

    if-eqz v1, :cond_0

    .line 5
    check-cast p4, Lorg/apache/http/auth/KerberosCredentials;

    invoke-virtual {p4}, Lorg/apache/http/auth/KerberosCredentials;->getGSSCredential()Lorg/ietf/jgss/GSSCredential;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/http/impl/auth/GGSSchemeBase;->createGSSContext(Lorg/ietf/jgss/GSSManager;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 7
    array-length p4, p1

    invoke-interface {p2, p1, p3, p4}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p1, p3, [B

    invoke-interface {p2, p1, p3, p3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public generateToken([BLjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public generateToken([BLjava/lang/String;Lorg/apache/http/auth/Credentials;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getManager()Lorg/ietf/jgss/GSSManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    sget-object v1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->TOKEN_GENERATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received challenge \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' from the auth server"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    sget-object p3, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->UNINITIATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    if-ne p2, p3, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lw3/a/b/a/b/a;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    .line 6
    sget-object p1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lw3/a/b/b/a;

    const-string p2, "Authentication already attempted"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    :goto_0
    return-void
.end method
