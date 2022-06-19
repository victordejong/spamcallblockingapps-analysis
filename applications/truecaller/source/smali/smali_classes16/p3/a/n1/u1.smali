.class public Lp3/a/n1/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lp3/a/n1/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/u1$c;,
        Lp3/a/n1/u1$d;,
        Lp3/a/n1/u1$e;,
        Lp3/a/n1/u1$b;
    }
.end annotation


# instance fields
.field public a:Lp3/a/n1/u1$b;

.field public b:I

.field public final c:Lp3/a/n1/r2;

.field public final d:Lp3/a/n1/x2;

.field public e:Lp3/a/s;

.field public f:Lp3/a/n1/s0;

.field public g:[B

.field public h:I

.field public i:Lp3/a/n1/u1$e;

.field public j:I

.field public k:Z

.field public l:Lp3/a/n1/w;

.field public m:Lp3/a/n1/w;

.field public n:J

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public volatile s:Z


# direct methods
.method public constructor <init>(Lp3/a/n1/u1$b;Lp3/a/s;ILp3/a/n1/r2;Lp3/a/n1/x2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lp3/a/n1/u1$e;->a:Lp3/a/n1/u1$e;

    iput-object v0, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lp3/a/n1/u1;->j:I

    .line 4
    new-instance v0, Lp3/a/n1/w;

    invoke-direct {v0}, Lp3/a/n1/w;-><init>()V

    iput-object v0, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lp3/a/n1/u1;->o:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lp3/a/n1/u1;->p:I

    .line 7
    iput-boolean v0, p0, Lp3/a/n1/u1;->r:Z

    .line 8
    iput-boolean v0, p0, Lp3/a/n1/u1;->s:Z

    const-string v0, "sink"

    .line 9
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    const-string p1, "decompressor"

    .line 10
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/u1;->e:Lp3/a/s;

    .line 11
    iput p3, p0, Lp3/a/n1/u1;->b:I

    const-string p1, "statsTraceCtx"

    .line 12
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    const-string p1, "transportTracer"

    .line 13
    invoke-static {p5, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lp3/a/n1/u1;->d:Lp3/a/n1/x2;

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p0, Lp3/a/n1/u1;->q:I

    .line 5
    iget-boolean v0, p0, Lp3/a/n1/u1;->k:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lp3/a/n1/u1;->e:Lp3/a/s;

    sget-object v1, Lp3/a/k$b;->a:Lp3/a/k;

    if-eq v0, v1, :cond_1

    .line 7
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    .line 8
    sget-object v2, Lp3/a/n1/f2;->a:Lp3/a/n1/e2;

    .line 9
    new-instance v2, Lp3/a/n1/f2$a;

    invoke-direct {v2, v1}, Lp3/a/n1/f2$a;-><init>(Lp3/a/n1/e2;)V

    .line 10
    invoke-interface {v0, v2}, Lp3/a/s;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 11
    new-instance v1, Lp3/a/n1/u1$d;

    iget v2, p0, Lp3/a/n1/u1;->b:I

    iget-object v3, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    invoke-direct {v1, v0, v2, v3}, Lp3/a/n1/u1$d;-><init>(Ljava/io/InputStream;ILp3/a/n1/r2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_1
    sget-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object v0

    throw v0

    .line 15
    :cond_2
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    iget-object v1, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    .line 16
    iget v1, v1, Lp3/a/n1/w;->a:I

    .line 17
    iget-object v0, v0, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    .line 20
    sget-object v1, Lp3/a/n1/f2;->a:Lp3/a/n1/e2;

    .line 21
    new-instance v1, Lp3/a/n1/f2$a;

    invoke-direct {v1, v0}, Lp3/a/n1/f2$a;-><init>(Lp3/a/n1/e2;)V

    :goto_2
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    .line 23
    iget-object v2, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    new-instance v3, Lp3/a/n1/u1$c;

    invoke-direct {v3, v1, v0}, Lp3/a/n1/u1$c;-><init>(Ljava/io/InputStream;Lp3/a/n1/u1$a;)V

    invoke-interface {v2, v3}, Lp3/a/n1/u1$b;->a(Lp3/a/n1/t2$a;)V

    .line 24
    sget-object v0, Lp3/a/n1/u1$e;->a:Lp3/a/n1/u1$e;

    iput-object v0, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lp3/a/n1/u1;->j:I

    return-void
.end method

.method public final I()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    invoke-virtual {v0}, Lp3/a/n1/w;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xfe

    if-nez v1, :cond_3

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iput-boolean v0, p0, Lp3/a/n1/u1;->k:Z

    .line 3
    iget-object v0, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v0, v3}, Lp3/a/n1/c;->b(I)V

    .line 5
    invoke-virtual {v0}, Lp3/a/n1/w;->readUnsignedByte()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lp3/a/n1/w;->readUnsignedByte()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Lp3/a/n1/w;->readUnsignedByte()I

    move-result v5

    .line 8
    invoke-virtual {v0}, Lp3/a/n1/w;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 9
    iput v0, p0, Lp3/a/n1/u1;->j:I

    if-ltz v0, :cond_2

    .line 10
    iget v3, p0, Lp3/a/n1/u1;->b:I

    if-gt v0, v3, :cond_2

    .line 11
    iget v0, p0, Lp3/a/n1/u1;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lp3/a/n1/u1;->p:I

    .line 12
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    .line 13
    iget-object v0, v0, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lp3/a/n1/u1;->d:Lp3/a/n1/x2;

    .line 16
    iget-object v1, v0, Lp3/a/n1/x2;->g:Lp3/a/n1/l1;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lp3/a/n1/l1;->a(J)V

    .line 17
    iget-object v0, v0, Lp3/a/n1/x2;->a:Lp3/a/n1/u2;

    invoke-interface {v0}, Lp3/a/n1/u2;->a()J

    .line 18
    sget-object v0, Lp3/a/n1/u1$e;->b:Lp3/a/n1/u1$e;

    iput-object v0, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    return-void

    .line 19
    :cond_2
    sget-object v0, Lp3/a/g1;->m:Lp3/a/g1;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lp3/a/n1/u1;->b:I

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lp3/a/n1/u1;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "gRPC message exceeds maximum size %d: %d"

    .line 21
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object v0

    throw v0

    .line 24
    :cond_3
    sget-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v1, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object v0

    throw v0
.end method

.method public final J()Z
    .locals 10

    .line 1
    sget-object v0, Lp3/a/n1/u1$e;->b:Lp3/a/n1/u1$e;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lp3/a/n1/w;

    invoke-direct {v2}, Lp3/a/n1/w;-><init>()V

    iput-object v2, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    move v2, v1

    move v3, v2

    .line 4
    :goto_0
    :try_start_1
    iget v4, p0, Lp3/a/n1/u1;->j:I

    iget-object v5, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    .line 5
    iget v5, v5, Lp3/a/n1/w;->a:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_a

    .line 6
    iget-object v5, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    .line 7
    :try_start_2
    iget-object v5, p0, Lp3/a/n1/u1;->g:[B

    if-eqz v5, :cond_1

    iget v6, p0, Lp3/a/n1/u1;->h:I

    array-length v5, v5

    if-ne v6, v5, :cond_2

    :cond_1
    const/high16 v5, 0x200000

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lp3/a/n1/u1;->g:[B

    .line 9
    iput v1, p0, Lp3/a/n1/u1;->h:I

    .line 10
    :cond_2
    iget-object v5, p0, Lp3/a/n1/u1;->g:[B

    array-length v5, v5

    iget v6, p0, Lp3/a/n1/u1;->h:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    iget-object v5, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    iget-object v6, p0, Lp3/a/n1/u1;->g:[B

    iget v7, p0, Lp3/a/n1/u1;->h:I

    invoke-virtual {v5, v6, v7, v4}, Lp3/a/n1/s0;->b([BII)I

    move-result v4

    .line 12
    iget-object v5, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    .line 13
    iget v6, v5, Lp3/a/n1/s0;->m:I

    .line 14
    iput v1, v5, Lp3/a/n1/s0;->m:I

    add-int/2addr v2, v6

    .line 15
    iget v6, v5, Lp3/a/n1/s0;->n:I

    .line 16
    iput v1, v5, Lp3/a/n1/s0;->n:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v3, v6

    if-nez v4, :cond_5

    if-lez v2, :cond_4

    .line 17
    iget-object v4, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    invoke-interface {v4, v2}, Lp3/a/n1/u1$b;->b(I)V

    .line 18
    iget-object v4, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    if-ne v4, v0, :cond_4

    .line 19
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lp3/a/n1/r2;->a(J)V

    .line 21
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Lp3/a/n1/u1;->q:I

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lp3/a/n1/r2;->a(J)V

    .line 23
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lp3/a/n1/u1;->q:I

    :cond_4
    :goto_1
    return v1

    .line 24
    :cond_5
    :try_start_3
    iget-object v5, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    iget-object v6, p0, Lp3/a/n1/u1;->g:[B

    iget v7, p0, Lp3/a/n1/u1;->h:I

    .line 25
    sget-object v8, Lp3/a/n1/f2;->a:Lp3/a/n1/e2;

    .line 26
    new-instance v8, Lp3/a/n1/f2$b;

    invoke-direct {v8, v6, v7, v4}, Lp3/a/n1/f2$b;-><init>([BII)V

    .line 27
    invoke-virtual {v5, v8}, Lp3/a/n1/w;->d(Lp3/a/n1/e2;)V

    .line 28
    iget v5, p0, Lp3/a/n1/u1;->h:I

    add-int/2addr v5, v4

    iput v5, p0, Lp3/a/n1/u1;->h:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 29
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    .line 30
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 31
    :cond_6
    iget-object v5, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    .line 32
    iget v5, v5, Lp3/a/n1/w;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_9

    if-lez v2, :cond_8

    .line 33
    iget-object v4, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    invoke-interface {v4, v2}, Lp3/a/n1/u1$b;->b(I)V

    .line 34
    iget-object v4, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    if-ne v4, v0, :cond_8

    .line 35
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lp3/a/n1/r2;->a(J)V

    .line 37
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Lp3/a/n1/u1;->q:I

    goto :goto_2

    .line 38
    :cond_7
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lp3/a/n1/r2;->a(J)V

    .line 39
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lp3/a/n1/u1;->q:I

    :cond_8
    :goto_2
    return v1

    .line 40
    :cond_9
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 41
    iget-object v5, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    iget-object v6, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    invoke-virtual {v6, v4}, Lp3/a/n1/w;->D(I)Lp3/a/n1/e2;

    move-result-object v4

    invoke-virtual {v5, v4}, Lp3/a/n1/w;->d(Lp3/a/n1/e2;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    if-lez v2, :cond_c

    .line 42
    iget-object v4, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    invoke-interface {v4, v2}, Lp3/a/n1/u1$b;->b(I)V

    .line 43
    iget-object v4, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    if-ne v4, v0, :cond_c

    .line 44
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lp3/a/n1/r2;->a(J)V

    .line 46
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Lp3/a/n1/u1;->q:I

    goto :goto_3

    .line 47
    :cond_b
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lp3/a/n1/r2;->a(J)V

    .line 48
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lp3/a/n1/u1;->q:I

    :cond_c
    :goto_3
    return v1

    :catchall_0
    move-exception v1

    move v9, v2

    move-object v2, v1

    move v1, v9

    goto :goto_4

    :catchall_1
    move-exception v2

    move v3, v1

    :goto_4
    if-lez v1, :cond_e

    .line 49
    iget-object v4, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    invoke-interface {v4, v1}, Lp3/a/n1/u1$b;->b(I)V

    .line 50
    iget-object v4, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    if-ne v4, v0, :cond_e

    .line 51
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lp3/a/n1/r2;->a(J)V

    .line 53
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Lp3/a/n1/u1;->q:I

    goto :goto_5

    .line 54
    :cond_d
    iget-object v0, p0, Lp3/a/n1/u1;->c:Lp3/a/n1/r2;

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lp3/a/n1/r2;->a(J)V

    .line 55
    iget v0, p0, Lp3/a/n1/u1;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lp3/a/n1/u1;->q:I

    :cond_e
    :goto_5
    throw v2
.end method

.method public b(I)V
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "numMessages must be > 0"

    .line 1
    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lp3/a/n1/u1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v0, p0, Lp3/a/n1/u1;->n:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp3/a/n1/u1;->n:J

    .line 4
    invoke-virtual {p0}, Lp3/a/n1/u1;->q()V

    return-void
.end method

.method public close()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/u1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, v0, Lp3/a/n1/w;->a:I

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 5
    iget-boolean v0, v4, Lp3/a/n1/s0;->i:Z

    xor-int/2addr v0, v1

    const-string v5, "GzipInflatingBuffer is closed"

    invoke-static {v0, v5}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 6
    iget-object v0, v4, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v0}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v4, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    sget-object v4, Lp3/a/n1/s0$c;->a:Lp3/a/n1/s0$c;

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 7
    :cond_5
    :goto_3
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    invoke-virtual {v0}, Lp3/a/n1/s0;->close()V

    move v0, v1

    .line 8
    :cond_6
    iget-object v1, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {v1}, Lp3/a/n1/w;->close()V

    .line 10
    :cond_7
    iget-object v1, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    if-eqz v1, :cond_8

    .line 11
    invoke-virtual {v1}, Lp3/a/n1/w;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_8
    iput-object v3, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    .line 13
    iput-object v3, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    .line 14
    iput-object v3, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    .line 15
    iget-object v1, p0, Lp3/a/n1/u1;->a:Lp3/a/n1/u1$b;

    invoke-interface {v1, v0}, Lp3/a/n1/u1$b;->c(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 16
    iput-object v3, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    .line 17
    iput-object v3, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    .line 18
    iput-object v3, p0, Lp3/a/n1/u1;->l:Lp3/a/n1/w;

    throw v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp3/a/n1/u1;->b:I

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lp3/a/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already set full stream decompressor"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "Can\'t pass an empty decompressor"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/s;

    iput-object p1, p0, Lp3/a/n1/u1;->e:Lp3/a/s;

    return-void
.end method

.method public k(Lp3/a/n1/e2;)V
    .locals 6

    const-string v0, "data"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lp3/a/n1/u1;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lp3/a/n1/u1;->r:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    .line 3
    iget-object v2, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v3, v2, Lp3/a/n1/s0;->i:Z

    xor-int/2addr v3, v1

    const-string v4, "GzipInflatingBuffer is closed"

    invoke-static {v3, v4}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 5
    iget-object v3, v2, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    invoke-virtual {v3, p1}, Lp3/a/n1/w;->d(Lp3/a/n1/e2;)V

    .line 6
    iput-boolean v0, v2, Lp3/a/n1/s0;->o:Z

    goto :goto_2

    .line 7
    :cond_2
    iget-object v2, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    invoke-virtual {v2, p1}, Lp3/a/n1/w;->d(Lp3/a/n1/e2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lp3/a/n1/u1;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 9
    invoke-interface {p1}, Lp3/a/n1/e2;->close()V

    :cond_4
    return-void

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {p1}, Lp3/a/n1/e2;->close()V

    :cond_5
    throw v0
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/u1;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp3/a/n1/u1;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lp3/a/n1/u1;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lp3/a/n1/u1;->r:Z

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/u1;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/n1/u1;->o:Z

    :goto_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lp3/a/n1/u1;->s:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lp3/a/n1/u1;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lp3/a/n1/u1;->J()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lp3/a/n1/u1;->E()V

    .line 6
    iget-wide v2, p0, Lp3/a/n1/u1;->n:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lp3/a/n1/u1;->n:J

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp3/a/n1/u1;->i:Lp3/a/n1/u1$e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lp3/a/n1/u1;->I()V

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v0, p0, Lp3/a/n1/u1;->s:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lp3/a/n1/u1;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v1, p0, Lp3/a/n1/u1;->o:Z

    return-void

    .line 12
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lp3/a/n1/u1;->r:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lp3/a/n1/u1;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lp3/a/n1/u1;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_5
    iput-boolean v1, p0, Lp3/a/n1/u1;->o:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lp3/a/n1/u1;->o:Z

    throw v0
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, v0, Lp3/a/n1/s0;->i:Z

    xor-int/2addr v1, v2

    const-string v2, "GzipInflatingBuffer is closed"

    invoke-static {v1, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v0, v0, Lp3/a/n1/s0;->o:Z

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    .line 5
    iget v0, v0, Lp3/a/n1/w;->a:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
