.class public Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;
.super Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    const-string v0, "http.request"

    .line 1
    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    if-eqz v0, :cond_1

    const-string v1, "Connection"

    .line 2
    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 3
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lorg/apache/http/message/BasicTokenIterator;

    new-instance v2, Lorg/apache/http/message/BasicHeaderIterator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/http/message/BasicHeaderIterator;-><init>([Lorg/apache/http/Header;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 5
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v1}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Close"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
