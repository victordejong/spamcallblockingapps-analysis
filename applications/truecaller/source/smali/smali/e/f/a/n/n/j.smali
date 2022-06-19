.class public Le/f/a/n/n/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/n/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/n/j$a;,
        Le/f/a/n/n/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/n/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Le/f/a/n/n/j$b;


# instance fields
.field public final a:Le/f/a/n/p/g;

.field public final b:I

.field public c:Ljava/net/HttpURLConnection;

.field public d:Ljava/io/InputStream;

.field public volatile e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/n/j$a;

    invoke-direct {v0}, Le/f/a/n/n/j$a;-><init>()V

    sput-object v0, Le/f/a/n/n/j;->f:Le/f/a/n/n/j$b;

    return-void
.end method

.method public constructor <init>(Le/f/a/n/p/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/n/j;->a:Le/f/a/n/p/g;

    .line 3
    iput p2, p0, Le/f/a/n/n/j;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/n/j;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    iget-object v0, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public c()Le/f/a/n/a;
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/a;->b:Le/f/a/n/a;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/f/a/n/n/j;->e:Z

    return-void
.end method

.method public d(Le/f/a/f;Le/f/a/n/n/d$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/f;",
            "Le/f/a/n/n/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const-string p1, "HttpUrlFetcher"

    .line 1
    sget v0, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 2
    :try_start_0
    iget-object v3, p0, Le/f/a/n/n/j;->a:Le/f/a/n/p/g;

    .line 3
    iget-object v4, v3, Le/f/a/n/p/g;->f:Ljava/net/URL;

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Le/f/a/n/p/g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Le/f/a/n/p/g;->f:Ljava/net/URL;

    .line 5
    :cond_0
    iget-object v3, v3, Le/f/a/n/p/g;->f:Ljava/net/URL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    iget-object v6, p0, Le/f/a/n/n/j;->a:Le/f/a/n/p/g;

    .line 7
    iget-object v6, v6, Le/f/a/n/p/g;->b:Le/f/a/n/p/h;

    invoke-interface {v6}, Le/f/a/n/p/h;->a()Ljava/util/Map;

    move-result-object v6

    .line 8
    invoke-virtual {p0, v3, v4, v5, v6}, Le/f/a/n/n/j;->e(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v3

    .line 9
    invoke-interface {p2, v3}, Le/f/a/n/n/d$a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v4, 0x3

    .line 11
    :try_start_1
    invoke-static {p1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    invoke-interface {p2, v3}, Le/f/a/n/n/d$a;->f(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    :goto_0
    invoke-static {v0, v1}, Le/f/a/t/f;->a(J)D

    :cond_1
    return-void

    .line 15
    :goto_1
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    invoke-static {v0, v1}, Le/f/a/t/f;->a(J)D

    :cond_2
    throw p2
.end method

.method public final e(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ge p2, v0, :cond_c

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Le/f/a/n/e;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Le/f/a/n/e;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    .line 4
    iput-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    .line 5
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    iget-object v1, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    iget v0, p0, Le/f/a/n/n/j;->b:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    iget v0, p0, Le/f/a/n/n/j;->b:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 9
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 10
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 11
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 12
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 13
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iput-object p3, p0, Le/f/a/n/n/j;->d:Ljava/io/InputStream;

    .line 14
    iget-boolean p3, p0, Le/f/a/n/n/j;->e:Z

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_3
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 16
    div-int/lit8 v2, p3, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    const/4 v4, 0x3

    if-eqz v3, :cond_7

    .line 17
    iget-object p1, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    .line 18
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long p2, p2

    .line 21
    new-instance p4, Le/f/a/t/c;

    invoke-direct {p4, p1, p2, p3}, Le/f/a/t/c;-><init>(Ljava/io/InputStream;J)V

    .line 22
    iput-object p4, p0, Le/f/a/n/n/j;->d:Ljava/io/InputStream;

    goto :goto_3

    :cond_5
    const-string p2, "HttpUrlFetcher"

    .line 23
    invoke-static {p2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    .line 25
    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Le/f/a/n/n/j;->d:Ljava/io/InputStream;

    .line 26
    :goto_3
    iget-object p1, p0, Le/f/a/n/n/j;->d:Ljava/io/InputStream;

    return-object p1

    :cond_7
    if-ne v2, v4, :cond_8

    move v0, v1

    :cond_8
    if-eqz v0, :cond_a

    .line 27
    iget-object p3, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Le/f/a/n/n/j;->b()V

    add-int/2addr p2, v1

    .line 31
    invoke-virtual {p0, v0, p2, p1, p4}, Le/f/a/n/n/j;->e(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 32
    :cond_9
    new-instance p1, Le/f/a/n/e;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, p2}, Le/f/a/n/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 p1, -0x1

    if-ne p3, p1, :cond_b

    .line 33
    new-instance p1, Le/f/a/n/e;

    invoke-direct {p1, p3}, Le/f/a/n/e;-><init>(I)V

    throw p1

    .line 34
    :cond_b
    new-instance p1, Le/f/a/n/e;

    iget-object p2, p0, Le/f/a/n/n/j;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Le/f/a/n/e;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Le/f/a/n/e;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, p2}, Le/f/a/n/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
