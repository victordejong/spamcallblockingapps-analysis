.class public final Le/m/b/x/b/c0/c;
.super Le/m/b/x/b/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/b/c0/c$b;,
        Le/m/b/x/b/c0/c$c;
    }
.end annotation


# static fields
.field public static final g:Le/m/b/x/b/c0/c$c;


# instance fields
.field public final e:Ljava/net/HttpURLConnection;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/b/x/b/c0/c$b;

    invoke-direct {v0}, Le/m/b/x/b/c0/c$b;-><init>()V

    sput-object v0, Le/m/b/x/b/c0/c;->g:Le/m/b/x/b/c0/c$c;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/b/x/b/w;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/b/c0/c;->e:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/m/b/x/b/c0/c;->f:I

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/c0/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Le/m/b/x/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/b/x/b/c0/c;->g:Le/m/b/x/b/c0/c$c;

    .line 2
    iget-object v1, p0, Le/m/b/x/b/c0/c;->e:Ljava/net/HttpURLConnection;

    .line 3
    iget-object v2, p0, Le/m/b/x/b/w;->d:Le/m/b/x/d/u;

    if-eqz v2, :cond_9

    .line 4
    iget-object v2, p0, Le/m/b/x/b/w;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "Content-Type"

    .line 5
    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v2, p0, Le/m/b/x/b/w;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 7
    iget-object v3, p0, Le/m/b/x/b/c0/c;->e:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-wide v2, p0, Le/m/b/x/b/w;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Length"

    invoke-virtual {v1, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "POST"

    .line 11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_5

    const-string v6, "PUT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v7

    :goto_0
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v7

    const-string v3, "%s with non-zero content length is not supported"

    .line 12
    invoke-static {v0, v3, v2}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-ltz v4, :cond_6

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    long-to-int v2, v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 16
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 17
    :try_start_0
    invoke-virtual {p0, v0, v2}, Le/m/b/x/b/c0/c;->e(Le/m/b/x/b/c0/c$c;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 19
    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 20
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v3, :cond_7

    move v7, v8

    :catch_2
    :cond_7
    if-eqz v7, :cond_8

    .line 21
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    .line 22
    :cond_8
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 24
    :catch_3
    throw v0

    .line 25
    :catch_4
    :cond_9
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 26
    new-instance v0, Le/m/b/x/b/c0/d;

    invoke-direct {v0, v1}, Le/m/b/x/b/c0/d;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 27
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 28
    throw v0
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/c0/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2
    iget-object p2, p0, Le/m/b/x/b/c0/c;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput p1, p0, Le/m/b/x/b/c0/c;->f:I

    return-void
.end method

.method public final e(Le/m/b/x/b/c0/c$c;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/b/x/b/c0/c;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/b/x/b/w;->d:Le/m/b/x/d/u;

    .line 3
    check-cast p1, Le/m/b/x/b/c0/c$b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, p2}, Le/m/b/x/d/u;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/m/b/x/b/w;->d:Le/m/b/x/d/u;

    .line 7
    new-instance v1, Le/m/b/x/b/c0/c$a;

    invoke-direct {v1, p0, p1, p2, v0}, Le/m/b/x/b/c0/c$a;-><init>(Le/m/b/x/b/c0/c;Le/m/b/x/b/c0/c$c;Ljava/io/OutputStream;Le/m/b/x/d/u;)V

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 11
    :try_start_0
    iget v0, p0, Le/m/b/x/b/c0/c;->f:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Socket write timed out"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Exception in socket write"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 16
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Socket write interrupted"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
