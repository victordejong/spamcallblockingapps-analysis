.class public Lorg/apache/http/impl/auth/NegotiateScheme;
.super Lorg/apache/http/impl/auth/GGSSchemeBase;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KERBEROS_OID:Ljava/lang/String; = "1.2.840.113554.1.2.2"

.field private static final SPNEGO_OID:Ljava/lang/String; = "1.3.6.1.5.5.2"


# instance fields
.field private final log:Lw3/a/b/b/a;

.field private final spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(Z)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lw3/a/b/b/a;

    .line 3
    iput-object p1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/NegotiateScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/auth/GGSSchemeBase;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public generateToken([BLjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public generateToken([BLjava/lang/String;Lorg/apache/http/auth/Credentials;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.3.6.1.5.5.2"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lw3/a/b/b/a;

    const-string v1, "GSSException BAD_MECH, retry with Kerberos MECH"

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lw3/a/b/b/a;

    const-string v1, "Using Kerberos MECH 1.2.840.113554.1.2.2"

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.2.840.113554.1.2.2"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p2, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    if-eqz p2, :cond_0

    .line 10
    :try_start_1
    invoke-interface {p2, p1}, Lorg/apache/http/impl/auth/SpnegoTokenGenerator;->generateSpnegoDERObject([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 11
    iget-object p3, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lw3/a/b/b/a;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lw3/a/b/b/a;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object p1

    .line 12
    :cond_1
    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Parameter name"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "Negotiate"

    return-object v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
