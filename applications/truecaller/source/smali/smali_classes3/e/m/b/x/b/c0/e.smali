.class public final Le/m/b/x/b/c0/e;
.super Le/m/b/x/b/t;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public final c:Le/m/b/x/b/c0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "DELETE"

    const-string v1, "GET"

    const-string v2, "HEAD"

    const-string v3, "OPTIONS"

    const-string v4, "POST"

    const-string v5, "PUT"

    const-string v6, "TRACE"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/b/x/b/c0/e;->d:[Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Le/m/b/x/b/t;-><init>()V

    const-string v0, "com.google.api.client.should_use_proxy"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Le/m/b/x/b/c0/b;

    .line 4
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "https.proxyHost"

    .line 5
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https.proxyPort"

    .line 6
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 7
    invoke-direct {v0, v1}, Le/m/b/x/b/c0/b;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Le/m/b/x/b/c0/b;

    invoke-direct {v0}, Le/m/b/x/b/c0/b;-><init>()V

    .line 9
    :goto_0
    iput-object v0, p0, Le/m/b/x/b/c0/e;->c:Le/m/b/x/b/c0/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Le/m/b/x/b/w;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/b/x/b/c0/e;->d:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "HTTP method %s not supported"

    .line 2
    invoke-static {v0, v2, v1}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/m/b/x/b/c0/e;->c:Le/m/b/x/b/c0/a;

    invoke-interface {p2, v0}, Le/m/b/x/b/c0/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    instance-of p1, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 7
    move-object p1, p2

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    :cond_1
    new-instance p1, Le/m/b/x/b/c0/c;

    invoke-direct {p1, p2}, Le/m/b/x/b/c0/c;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Le/m/b/x/b/c0/e;->d:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
