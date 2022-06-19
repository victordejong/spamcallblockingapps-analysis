.class public final Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
.super Lzipkin2/reporter/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;,
        Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;,
        Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    }
.end annotation


# instance fields
.field final client:Lm/c0;

.field volatile closeCalled:Z

.field final compressionEnabled:Z

.field final encoder:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

.field final encoding:Lu/h/b;

.field final endpoint:Lm/y;

.field final maxRequests:I

.field final messageMaxBytes:I


# direct methods
.method constructor <init>(Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lzipkin2/reporter/a;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->endpoint:Lm/y;

    const-string v1, "endpoint == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->endpoint:Lm/y;

    .line 4
    iget-object v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->encoding:Lu/h/b;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoding:Lu/h/b;

    .line 5
    sget-object v1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$1;->$SwitchMap$zipkin2$codec$Encoding:[I

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
    sget-object v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->PROTO3:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoder:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

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
    sget-object v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->THRIFT:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoder:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->JSON:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoder:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    .line 10
    :goto_0
    iget v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->maxRequests:I

    iput v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->maxRequests:I

    .line 11
    iget v1, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->messageMaxBytes:I

    iput v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->messageMaxBytes:I

    .line 12
    iget-boolean v1, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->compressionEnabled:Z

    iput-boolean v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->compressionEnabled:Z

    .line 13
    invoke-static {v0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->newDispatcher(I)Lm/r;

    move-result-object v0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->getOkHttpClient(Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;Lm/r;)Lm/c0;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->client:Lm/c0;

    return-void
.end method

.method public static create(Ljava/lang/String;Lm/c0$a;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->newBuilder(Lm/c0$a;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->endpoint(Ljava/lang/String;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->build()Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;

    move-result-object p0

    return-object p0
.end method

.method private getOkHttpClient(Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;Lm/r;)Lm/c0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder()Lm/c0$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lm/c0;->z()Lm/c0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lm/c0$a;->h(Lm/r;)Lm/c0$a;

    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method public static newBuilder(Lm/c0$a;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;

    invoke-direct {v0, p0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;-><init>(Lm/c0$a;)V

    return-object v0
.end method

.method static newDispatcher(I)Lm/r;
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v7, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;->INSTANCE:Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

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

    iget-object v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->endpoint:Lm/y;

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
    iget-object v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->client:Lm/c0;

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

    .line 8
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 9
    :try_start_4
    invoke-virtual {v0}, Lm/g0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lu/d;->a(Ljava/lang/Throwable;)Lu/d;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->closeCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->closeCalled:Z

    .line 3
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->client:Lm/c0;

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
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoding:Lu/h/b;

    return-object v0
.end method

.method public messageMaxBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->messageMaxBytes:I

    return v0
.end method

.method public messageSizeInBytes(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoding:Lu/h/b;

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
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoding:Lu/h/b;

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

    iget-object v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->endpoint:Lm/y;

    invoke-virtual {v0, v1}, Lm/e0$a;->l(Lm/y;)Lm/e0$a;

    const-string v1, "b3"

    const-string v2, "0"

    .line 2
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 3
    iget-boolean v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->compressionEnabled:Z

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
    new-instance v2, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;

    invoke-virtual {p1}, Lm/f0;->contentType()Lm/a0;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;-><init>(Lm/a0;Ln/f;)V

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
    iget-boolean v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->closeCalled:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoder:Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;

    invoke-virtual {v0, p1}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;->encode(Ljava/util/List;)Lm/f0;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    invoke-static {v0}, Ln/r;->h(Ljava/io/OutputStream;)Ln/b0;

    move-result-object v0

    invoke-static {v0}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Lm/f0;->writeTo(Ln/g;)V

    .line 6
    invoke-interface {v0}, Ln/g;->flush()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->newRequest(Lm/f0;)Lm/e0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance v0, Lcom/hiya/api/zipkin/reporter/HttpCall;

    iget-object v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->client:Lm/c0;

    invoke-virtual {v1, p1}, Lm/c0;->a(Lm/e0;)Lm/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hiya/api/zipkin/reporter/HttpCall;-><init>(Lm/f;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {}, Lcom/hiya/api/zipkin/reporter/Platform;->get()Lcom/hiya/api/zipkin/reporter/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/api/zipkin/reporter/Platform;->uncheckedIOException(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 10
    :cond_0
    new-instance p1, Lzipkin2/reporter/ClosedSenderException;

    invoke-direct {p1}, Lzipkin2/reporter/ClosedSenderException;-><init>()V

    throw p1
.end method

.method public final toBuilder()Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;

    invoke-direct {v0, p0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;-><init>(Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipkinCustomHiyaSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->endpoint:Lm/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
