.class public Lp3/a/n1/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/v1$b;,
        Lp3/a/n1/v1$c;,
        Lp3/a/n1/v1$d;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/v1$d;

.field public b:I

.field public c:Lp3/a/n1/y2;

.field public d:Lp3/a/m;

.field public final e:Lp3/a/n1/v1$c;

.field public final f:Ljava/nio/ByteBuffer;

.field public final g:Lp3/a/n1/z2;

.field public final h:Lp3/a/n1/r2;

.field public i:Z

.field public j:I

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Lp3/a/n1/v1$d;Lp3/a/n1/z2;Lp3/a/n1/r2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lp3/a/n1/v1;->b:I

    .line 3
    sget-object v1, Lp3/a/k$b;->a:Lp3/a/k;

    iput-object v1, p0, Lp3/a/n1/v1;->d:Lp3/a/m;

    .line 4
    new-instance v1, Lp3/a/n1/v1$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lp3/a/n1/v1$c;-><init>(Lp3/a/n1/v1;Lp3/a/n1/v1$a;)V

    iput-object v1, p0, Lp3/a/n1/v1;->e:Lp3/a/n1/v1$c;

    const/4 v1, 0x5

    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    .line 6
    iput v0, p0, Lp3/a/n1/v1;->k:I

    const-string v0, "sink"

    .line 7
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/v1;->a:Lp3/a/n1/v1$d;

    const-string p1, "bufferAllocator"

    .line 8
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/v1;->g:Lp3/a/n1/z2;

    const-string p1, "statsTraceCtx"

    .line 9
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/n1/v1;->h:Lp3/a/n1/r2;

    return-void
.end method

.method public static h(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lp3/a/u;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lp3/a/u;

    invoke-interface {p0, p1}, Lp3/a/u;->b(Ljava/io/OutputStream;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    sget v0, Lcom/google/common/io/ByteStreams;->a:I

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v1, p0

    if-gtz p0, :cond_1

    const/4 v5, 0x1

    :cond_1
    const-string p0, "Message size overflow: %s"

    .line 7
    invoke-static {v5, p0, v1, v2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;J)V

    long-to-int p0, v1

    return p0

    .line 8
    :cond_2
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method


# virtual methods
.method public a(Lp3/a/m;)Lp3/a/n1/p0;
    .locals 1

    const-string v0, "Can\'t pass an empty compressor"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/v1;->d:Lp3/a/m;

    return-object p0
.end method

.method public b(Ljava/io/InputStream;)V
    .locals 7

    const-string v0, "Failed to frame message"

    .line 1
    iget-boolean v1, p0, Lp3/a/n1/v1;->i:Z

    if-nez v1, :cond_a

    .line 2
    iget v1, p0, Lp3/a/n1/v1;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lp3/a/n1/v1;->j:I

    .line 3
    iget v1, p0, Lp3/a/n1/v1;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lp3/a/n1/v1;->k:I

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, p0, Lp3/a/n1/v1;->l:J

    .line 5
    iget-object v1, p0, Lp3/a/n1/v1;->h:Lp3/a/n1/r2;

    .line 6
    iget-object v1, v1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    .line 7
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lp3/a/n1/v1;->d:Lp3/a/m;

    sget-object v3, Lp3/a/k$b;->a:Lp3/a/k;

    if-eq v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    .line 9
    :goto_1
    :try_start_0
    instance-of v3, p1, Lp3/a/h0;

    const/4 v5, -0x1

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_3

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    :goto_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0, p1}, Lp3/a/n1/v1;->f(Ljava/io/InputStream;)I

    move-result p1

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {p0, p1, v3}, Lp3/a/n1/v1;->i(Ljava/io/InputStream;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    if-eq v3, v5, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Message length inaccurate %s != %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    .line 15
    :cond_6
    :goto_5
    iget-object p1, p0, Lp3/a/n1/v1;->h:Lp3/a/n1/r2;

    .line 16
    iget-object p1, p1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v0, p1

    move v1, v4

    :goto_6
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 18
    :cond_7
    iget-object p1, p0, Lp3/a/n1/v1;->h:Lp3/a/n1/r2;

    iget-wide v0, p0, Lp3/a/n1/v1;->l:J

    .line 19
    iget-object p1, p1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v2, p1

    move v3, v4

    :goto_7
    if-ge v3, v2, :cond_8

    aget-object v5, p1, v3

    .line 20
    invoke-virtual {v5, v0, v1}, Lp3/a/j1;->a(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 21
    :cond_8
    iget-object p1, p0, Lp3/a/n1/v1;->h:Lp3/a/n1/r2;

    .line 22
    iget-object p1, p1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v0, p1

    :goto_8
    if-ge v4, v0, :cond_9

    aget-object v1, p1, v4

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    return-void

    :catch_0
    move-exception p1

    .line 24
    sget-object v1, Lp3/a/g1;->o:Lp3/a/g1;

    .line 25
    invoke-virtual {v1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28
    sget-object v1, Lp3/a/g1;->o:Lp3/a/g1;

    .line 29
    invoke-virtual {v1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Framer already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    .line 3
    iget-object v1, p0, Lp3/a/n1/v1;->a:Lp3/a/n1/v1$d;

    iget v2, p0, Lp3/a/n1/v1;->j:I

    invoke-interface {v1, v0, p1, p2, v2}, Lp3/a/n1/v1$d;->o(Lp3/a/n1/y2;ZZI)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lp3/a/n1/v1;->j:I

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/v1;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/n1/v1;->i:Z

    .line 3
    iget-object v1, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lp3/a/n1/y2;->f()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lp3/a/n1/y2;->release()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    .line 7
    :cond_0
    invoke-virtual {p0, v0, v0}, Lp3/a/n1/v1;->c(ZZ)V

    :cond_1
    return-void
.end method

.method public final d(Lp3/a/n1/v1$b;Z)V
    .locals 5

    .line 1
    iget-object v0, p1, Lp3/a/n1/v1$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/n1/y2;

    .line 2
    invoke-interface {v3}, Lp3/a/n1/y2;->f()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget-object p2, p0, Lp3/a/n1/v1;->g:Lp3/a/n1/z2;

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lp3/a/n1/z2;->a(I)Lp3/a/n1/y2;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v3, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p2, v0, v1, v3}, Lp3/a/n1/y2;->write([BII)V

    if-nez v2, :cond_1

    .line 7
    iput-object p2, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lp3/a/n1/v1;->a:Lp3/a/n1/v1$d;

    iget v3, p0, Lp3/a/n1/v1;->j:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, p2, v1, v1, v3}, Lp3/a/n1/v1$d;->o(Lp3/a/n1/y2;ZZI)V

    .line 9
    iput v4, p0, Lp3/a/n1/v1;->j:I

    .line 10
    iget-object p1, p1, Lp3/a/n1/v1$b;->a:Ljava/util/List;

    move p2, v1

    .line 11
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge p2, v0, :cond_2

    .line 12
    iget-object v0, p0, Lp3/a/n1/v1;->a:Lp3/a/n1/v1$d;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/n1/y2;

    invoke-interface {v0, v3, v1, v1, v1}, Lp3/a/n1/v1$d;->o(Lp3/a/n1/y2;ZZI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {p1, v4}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/a/n1/y2;

    iput-object p1, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    int-to-long p1, v2

    .line 14
    iput-wide p1, p0, Lp3/a/n1/v1;->l:J

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget v0, p0, Lp3/a/n1/v1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max size already set"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iput p1, p0, Lp3/a/n1/v1;->b:I

    return-void
.end method

.method public final f(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/n1/v1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp3/a/n1/v1$b;-><init>(Lp3/a/n1/v1;Lp3/a/n1/v1$a;)V

    .line 2
    iget-object v1, p0, Lp3/a/n1/v1;->d:Lp3/a/m;

    invoke-interface {v1, v0}, Lp3/a/m;->c(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {p1, v1}, Lp3/a/n1/v1;->h(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 5
    iget v1, p0, Lp3/a/n1/v1;->b:I

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-gt p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lp3/a/g1;->m:Lp3/a/g1;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lp3/a/n1/v1;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "message too large %d > %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v2}, Lp3/a/n1/v1;->d(Lp3/a/n1/v1$b;Z)V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp3/a/n1/y2;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lp3/a/n1/v1;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public final g([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_2

    .line 1
    iget-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp3/a/n1/y2;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lp3/a/n1/v1;->c(ZZ)V

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lp3/a/n1/v1;->g:Lp3/a/n1/z2;

    invoke-interface {v0, p3}, Lp3/a/n1/z2;->a(I)Lp3/a/n1/y2;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    .line 5
    :cond_1
    iget-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    invoke-interface {v0}, Lp3/a/n1/y2;->a()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    invoke-interface {v1, p1, p2, v0}, Lp3/a/n1/y2;->write([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Ljava/io/InputStream;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "message too large %d > %d"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    int-to-long v4, p2

    .line 1
    iput-wide v4, p0, Lp3/a/n1/v1;->l:J

    .line 2
    iget v4, p0, Lp3/a/n1/v1;->b:I

    if-ltz v4, :cond_1

    if-gt p2, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lp3/a/g1;->m:Lp3/a/g1;

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    iget p2, p0, Lp3/a/n1/v1;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iget-object v0, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lp3/a/n1/v1;->g:Lp3/a/n1/z2;

    iget-object v1, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lp3/a/n1/z2;->a(I)Lp3/a/n1/y2;

    move-result-object p2

    iput-object p2, p0, Lp3/a/n1/v1;->c:Lp3/a/n1/y2;

    .line 11
    :cond_2
    iget-object p2, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object v0, p0, Lp3/a/n1/v1;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, p2, v3, v0}, Lp3/a/n1/v1;->g([BII)V

    .line 12
    iget-object p2, p0, Lp3/a/n1/v1;->e:Lp3/a/n1/v1$c;

    invoke-static {p1, p2}, Lp3/a/n1/v1;->h(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    return p1

    .line 13
    :cond_3
    new-instance p2, Lp3/a/n1/v1$b;

    const/4 v4, 0x0

    invoke-direct {p2, p0, v4}, Lp3/a/n1/v1$b;-><init>(Lp3/a/n1/v1;Lp3/a/n1/v1$a;)V

    .line 14
    invoke-static {p1, p2}, Lp3/a/n1/v1;->h(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    .line 15
    iget v4, p0, Lp3/a/n1/v1;->b:I

    if-ltz v4, :cond_5

    if-gt p1, v4, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    sget-object p2, Lp3/a/g1;->m:Lp3/a/g1;

    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget p1, p0, Lp3/a/n1/v1;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v3}, Lp3/a/n1/v1;->d(Lp3/a/n1/v1$b;Z)V

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/v1;->i:Z

    return v0
.end method
