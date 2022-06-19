.class public Lorg/apache/http/client/config/RequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/client/config/RequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private authenticationEnabled:Z

.field private circularRedirectsAllowed:Z

.field private connectTimeout:I

.field private connectionRequestTimeout:I

.field private contentCompressionEnabled:Z

.field private cookieSpec:Ljava/lang/String;

.field private expectContinueEnabled:Z

.field private localAddress:Ljava/net/InetAddress;

.field private maxRedirects:I

.field private normalizeUri:Z

.field private proxy:Lorg/apache/http/HttpHost;

.field private proxyPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectsEnabled:Z

.field private relativeRedirectsAllowed:Z

.field private socketTimeout:I

.field private staleConnectionCheckEnabled:Z

.field private targetPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->staleConnectionCheckEnabled:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->redirectsEnabled:Z

    const/16 v1, 0x32

    .line 4
    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->maxRedirects:I

    .line 5
    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->relativeRedirectsAllowed:Z

    .line 6
    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->authenticationEnabled:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->connectionRequestTimeout:I

    .line 8
    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->connectTimeout:I

    .line 9
    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->socketTimeout:I

    .line 10
    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    .line 11
    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->normalizeUri:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/client/config/RequestConfig;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v19, Lorg/apache/http/client/config/RequestConfig;

    move-object/from16 v1, v19

    iget-boolean v2, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->expectContinueEnabled:Z

    iget-object v3, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->proxy:Lorg/apache/http/HttpHost;

    iget-object v4, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->localAddress:Ljava/net/InetAddress;

    iget-boolean v5, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->staleConnectionCheckEnabled:Z

    iget-object v6, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->cookieSpec:Ljava/lang/String;

    iget-boolean v7, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->redirectsEnabled:Z

    iget-boolean v8, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->relativeRedirectsAllowed:Z

    iget-boolean v9, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->circularRedirectsAllowed:Z

    iget v10, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->maxRedirects:I

    iget-boolean v11, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->authenticationEnabled:Z

    iget-object v12, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->targetPreferredAuthSchemes:Ljava/util/Collection;

    iget-object v13, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    iget v14, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->connectionRequestTimeout:I

    iget v15, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->connectTimeout:I

    move-object/from16 v20, v1

    iget v1, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->socketTimeout:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->normalizeUri:Z

    move/from16 v18, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lorg/apache/http/client/config/RequestConfig;-><init>(ZLorg/apache/http/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZZ)V

    return-object v19
.end method

.method public setAuthenticationEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->authenticationEnabled:Z

    return-object p0
.end method

.method public setCircularRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->circularRedirectsAllowed:Z

    return-object p0
.end method

.method public setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->connectTimeout:I

    return-object p0
.end method

.method public setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->connectionRequestTimeout:I

    return-object p0
.end method

.method public setContentCompressionEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    return-object p0
.end method

.method public setCookieSpec(Ljava/lang/String;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->cookieSpec:Ljava/lang/String;

    return-object p0
.end method

.method public setDecompressionEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    return-object p0
.end method

.method public setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->expectContinueEnabled:Z

    return-object p0
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->localAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public setMaxRedirects(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->maxRedirects:I

    return-object p0
.end method

.method public setNormalizeUri(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->normalizeUri:Z

    return-object p0
.end method

.method public setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->proxy:Lorg/apache/http/HttpHost;

    return-object p0
.end method

.method public setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/config/RequestConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    return-object p0
.end method

.method public setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->redirectsEnabled:Z

    return-object p0
.end method

.method public setRelativeRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->relativeRedirectsAllowed:Z

    return-object p0
.end method

.method public setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->socketTimeout:I

    return-object p0
.end method

.method public setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->staleConnectionCheckEnabled:Z

    return-object p0
.end method

.method public setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/config/RequestConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->targetPreferredAuthSchemes:Ljava/util/Collection;

    return-object p0
.end method
