.class public Lorg/apache/http/impl/client/HttpAuthenticator;
.super Lorg/apache/http/impl/auth/HttpAuthenticator;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw3/a/b/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>(Lw3/a/b/b/a;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
