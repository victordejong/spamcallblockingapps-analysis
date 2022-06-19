.class public final Lzipkin2/reporter/b/b;
.super Lzipkin2/reporter/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/b/b$b;,
        Lzipkin2/reporter/b/b$d;,
        Lzipkin2/reporter/b/b$c;
    }
.end annotation


# instance fields
.field final f:Lm/y;

.field final g:Lm/c0;

.field final h:Lzipkin2/reporter/b/d;

.field final i:Lu/h/b;

.field final j:I

.field final k:I

.field final l:Z

.field volatile m:Z


# direct methods
.method constructor <init>(Lzipkin2/reporter/b/b$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lzipkin2/reporter/a;-><init>()V

    .line 2
    iget-object v0, p1, Lzipkin2/reporter/b/b$c;->b:Lm/y;

    const-string v1, "endpoint == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lzipkin2/reporter/b/b;->f:Lm/y;

    .line 4
    iget-object v0, p1, Lzipkin2/reporter/b/b$c;->c:Lu/h/b;

    iput-object v0, p0, Lzipkin2/reporter/b/b;->i:Lu/h/b;

    .line 5
    sget-object v1, Lzipkin2/reporter/b/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 6
    sget-object v0, Lzipkin2/reporter/b/d;->PROTO3:Lzipkin2/reporter/b/d;

    iput-object v0, p0, Lzipkin2/reporter/b/b;->h:Lzipkin2/reporter/b/d;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    sget-object v0, Lzipkin2/reporter/b/d;->THRIFT:Lzipkin2/reporter/b/d;

    iput-object v0, p0, Lzipkin2/reporter/b/b;->h:Lzipkin2/reporter/b/d;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lzipkin2/reporter/b/d;->JSON:Lzipkin2/reporter/b/d;

    iput-object v0, p0, Lzipkin2/reporter/b/b;->h:Lzipkin2/reporter/b/d;

    .line 10
    :goto_0
    iget v0, p1, Lzipkin2/reporter/b/b$c;->e:I

    iput v0, p0, Lzipkin2/reporter/b/b;->k:I

    .line 11
    iget v1, p1, Lzipkin2/reporter/b/b$c;->f:I

    iput v1, p0, Lzipkin2/reporter/b/b;->j:I

    .line 12
    iget-boolean v1, p1, Lzipkin2/reporter/b/b$c;->d:Z

    iput-boolean v1, p0, Lzipkin2/reporter/b/b;->l:Z

    .line 13
    invoke-static {v0}, Lzipkin2/reporter/b/b;->newDispatcher(I)Lm/r;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lzipkin2/reporter/b/b$c;->b()Lm/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    invoke-virtual {p1}, Lm/c0;->z()Lm/c0$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lm/c0$a;->h(Lm/r;)Lm/c0$a;

    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    iput-object p1, p0, Lzipkin2/reporter/b/b;->g:Lm/c0;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lzipkin2/reporter/b/b;
    .locals 1

    .line 1
    invoke-static {}, Lzipkin2/reporter/b/b;->b()Lzipkin2/reporter/b/b$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzipkin2/reporter/b/b$c;->c(Ljava/lang/String;)Lzipkin2/reporter/b/b$c;

    invoke-virtual {v0}, Lzipkin2/reporter/b/b$c;->a()Lzipkin2/reporter/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lzipkin2/reporter/b/b$c;
    .locals 2

    .line 1
    new-instance v0, Lzipkin2/reporter/b/b$c;

    new-instance v1, Lm/c0$a;

    invoke-direct {v1}, Lm/c0$a;-><init>()V

    invoke-direct {v0, v1}, Lzipkin2/reporter/b/b$c;-><init>(Lm/c0$a;)V

    return-object v0
.end method

.method static newDispatcher(I)Lm/r;
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v7, Lzipkin2/reporter/b/b$d;->INSTANCE:Lzipkin2/reporter/b/b$d;

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    new-instance v0, Lm/r;

    invoke-direct {v0, v8}, Lm/r;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 3
    invoke-virtual {v0, p0}, Lm/r;->l(I)V

    .line 4
    invoke-virtual {v0, p0}, Lm/r;->m(I)V

    return-object v0
.end method


# virtual methods
.method public check()Lu/d;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lm/e0$a;

    invoke-direct {v0}, Lm/e0$a;-><init>()V

    iget-object v1, p0, Lzipkin2/reporter/b/b;->f:Lm/y;

    invoke-virtual {v0, v1}, Lm/e0$a;->l(Lm/y;)Lm/e0$a;

    const-string v1, "application/json"

    .line 2
    invoke-static {v1}, Lm/a0;->h(Ljava/lang/String;)Lm/a0;

    move-result-object v1

    const-string v2, "[]"

    invoke-static {v1, v2}, Lm/f0;->create(Lm/a0;Ljava/lang/String;)Lm/f0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/e0$a;->h(Lm/f0;)Lm/e0$a;

    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lzipkin2/reporter/b/b;->g:Lm/c0;

    invoke-virtual {v1, v0}, Lm/c0;->a(Lm/e0;)Lm/f;

    move-result-object v0

    invoke-interface {v0}, Lm/f;->execute()Lm/g0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Lm/g0;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check response failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lu/d;->a(Ljava/lang/Throwable;)Lu/d;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Lm/g0;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm/g0;->close()V

    .line 7
    :cond_2
    sget-object v0, Lu/d;->c:Lu/d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 8
    :try_start_3
    invoke-virtual {v0}, Lm/g0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lu/d;->a(Ljava/lang/Throwable;)Lu/d;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lzipkin2/reporter/b/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lzipkin2/reporter/b/b;->m:Z

    .line 3
    iget-object v0, p0, Lzipkin2/reporter/b/b;->g:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->p()Lm/r;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lm/r;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Lm/r;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lm/r;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public encoding()Lu/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lzipkin2/reporter/b/b;->i:Lu/h/b;

    return-object v0
.end method

.method public messageMaxBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lzipkin2/reporter/b/b;->j:I

    return v0
.end method

.method public messageSizeInBytes(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lzipkin2/reporter/b/b;->i:Lu/h/b;

    invoke-virtual {v0, p1}, Lu/h/b;->listSizeInBytes(I)I

    move-result p1

    return p1
.end method

.method public messageSizeInBytes(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzipkin2/reporter/b/b;->i:Lu/h/b;

    invoke-virtual {v0, p1}, Lu/h/b;->listSizeInBytes(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method newRequest(Lm/f0;)Lm/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lm/e0$a;

    invoke-direct {v0}, Lm/e0$a;-><init>()V

    iget-object v1, p0, Lzipkin2/reporter/b/b;->f:Lm/y;

    invoke-virtual {v0, v1}, Lm/e0$a;->l(Lm/y;)Lm/e0$a;

    const-string v1, "b3"

    const-string v2, "0"

    .line 2
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 3
    iget-boolean v1, p0, Lzipkin2/reporter/b/b;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    .line 4
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 5
    new-instance v1, Ln/f;

    invoke-direct {v1}, Ln/f;-><init>()V

    .line 6
    new-instance v2, Ln/n;

    invoke-direct {v2, v1}, Ln/n;-><init>(Ln/b0;)V

    invoke-static {v2}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v2}, Lm/f0;->writeTo(Ln/g;)V

    .line 8
    invoke-interface {v2}, Ln/b0;->close()V

    .line 9
    new-instance v2, Lzipkin2/reporter/b/b$b;

    invoke-virtual {p1}, Lm/f0;->contentType()Lm/a0;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lzipkin2/reporter/b/b$b;-><init>(Lm/a0;Ln/f;)V

    move-object p1, v2

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lm/e0$a;->h(Lm/f0;)Lm/e0$a;

    .line 11
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object p1

    return-object p1
.end method

.method public sendSpans(Ljava/util/List;)Lu/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lu/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lzipkin2/reporter/b/b;->m:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lzipkin2/reporter/b/b;->h:Lzipkin2/reporter/b/d;

    invoke-virtual {v0, p1}, Lzipkin2/reporter/b/d;->encode(Ljava/util/List;)Lm/f0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzipkin2/reporter/b/b;->newRequest(Lm/f0;)Lm/e0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v0, Lzipkin2/reporter/b/a;

    iget-object v1, p0, Lzipkin2/reporter/b/b;->g:Lm/c0;

    invoke-virtual {v1, p1}, Lm/c0;->a(Lm/e0;)Lm/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lzipkin2/reporter/b/a;-><init>(Lm/f;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {}, Lzipkin2/reporter/b/c;->b()Lzipkin2/reporter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzipkin2/reporter/b/c;->c(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 5
    :cond_0
    new-instance p1, Lzipkin2/reporter/ClosedSenderException;

    invoke-direct {p1}, Lzipkin2/reporter/ClosedSenderException;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttpSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/reporter/b/b;->f:Lm/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
