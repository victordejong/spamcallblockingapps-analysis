.class public final Ls1/a/a/a/v0/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/io/InputStream;

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/h/d;->i:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/h/d;->a:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ls1/a/a/a/v0/h/d;->c:I

    .line 5
    iput v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 6
    iput v0, p0, Ls1/a/a/a/v0/h/d;->h:I

    .line 7
    iput-object p1, p0, Ls1/a/a/a/v0/h/d;->f:Ljava/io/InputStream;

    .line 8
    iput-boolean v0, p0, Ls1/a/a/a/v0/h/d;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/h/j;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method public b()I
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v1, p0, Ls1/a/a/a/v0/h/d;->h:I

    iget v2, p0, Ls1/a/a/a/v0/h/d;->e:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls1/a/a/a/v0/h/d;->i:I

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->p()V

    return-void
.end method

.method public d(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->h:I

    iget v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Ls1/a/a/a/v0/h/d;->i:I

    if-gt v0, p1, :cond_0

    .line 3
    iput v0, p0, Ls1/a/a/a/v0/h/d;->i:I

    .line 4
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->p()V

    return p1

    .line 5
    :cond_0
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Ls1/a/a/a/v0/h/j;->a()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1
.end method

.method public e()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ls1/a/a/a/v0/h/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    iget v2, p0, Ls1/a/a/a/v0/h/d;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    .line 4
    sget-object v3, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    .line 5
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 6
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v1, Ls1/a/a/a/v0/h/o;

    invoke-direct {v1, v3}, Ls1/a/a/a/v0/h/o;-><init>([B)V

    .line 8
    iget v2, p0, Ls1/a/a/a/v0/h/d;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Ls1/a/a/a/v0/h/d;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 9
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    return-object v0

    .line 10
    :cond_1
    new-instance v1, Ls1/a/a/a/v0/h/o;

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/h/d;->i(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/h/o;-><init>([B)V

    return-object v1
.end method

.method public g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v0

    return v0
.end method

.method public h(Ls1/a/a/a/v0/h/r;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ls1/a/a/a/v0/h/p;",
            ">(",
            "Ls1/a/a/a/v0/h/r<",
            "TT;>;",
            "Ls1/a/a/a/v0/h/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v0

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->j:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result v0

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/h/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls1/a/a/a/v0/h/d;->j:I

    .line 5
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/h/p;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/h/d;->a(I)V

    .line 7
    iget p2, p0, Ls1/a/a/a/v0/h/d;->j:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Ls1/a/a/a/v0/h/d;->j:I

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/h/d;->i:I

    .line 9
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->p()V

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Ls1/a/a/a/v0/h/j;->b()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1
.end method

.method public final i(I)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ls1/a/a/a/v0/h/i;->a:[B

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Ls1/a/a/a/v0/h/j;->a()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 3
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->h:I

    iget v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Ls1/a/a/a/v0/h/d;->i:I

    if-gt v2, v3, :cond_a

    const/16 v2, 0x1000

    const/4 v3, 0x0

    if-ge p1, v2, :cond_4

    .line 4
    new-array v0, p1, [B

    .line 5
    iget v2, p0, Ls1/a/a/a/v0/h/d;->c:I

    sub-int/2addr v2, v1

    .line 6
    iget-object v4, p0, Ls1/a/a/a/v0/h/d;->a:[B

    invoke-static {v4, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    iput v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, v1

    if-ge v1, p1, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/d;->t(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput p1, p0, Ls1/a/a/a/v0/h/d;->e:I

    return-object v0

    .line 12
    :cond_4
    iget v4, p0, Ls1/a/a/a/v0/h/d;->c:I

    add-int/2addr v0, v4

    .line 13
    iput v0, p0, Ls1/a/a/a/v0/h/d;->h:I

    .line 14
    iput v3, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 15
    iput v3, p0, Ls1/a/a/a/v0/h/d;->c:I

    sub-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-lez v0, :cond_8

    .line 17
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    move v8, v3

    :goto_2
    if-ge v8, v6, :cond_7

    .line 18
    iget-object v9, p0, Ls1/a/a/a/v0/h/d;->f:Ljava/io/InputStream;

    const/4 v10, -0x1

    if-nez v9, :cond_5

    move v9, v10

    goto :goto_3

    :cond_5
    sub-int v11, v6, v8

    invoke-virtual {v9, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    :goto_3
    if-eq v9, v10, :cond_6

    .line 19
    iget v10, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int/2addr v10, v9

    iput v10, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int/2addr v8, v9

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    :cond_7
    sub-int/2addr v0, v6

    .line 21
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_8
    new-array p1, p1, [B

    .line 23
    iget-object v0, p0, Ls1/a/a/a/v0/h/d;->a:[B

    invoke-static {v0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 25
    array-length v2, v1

    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    array-length v1, v1

    add-int/2addr v4, v1

    goto :goto_4

    :cond_9
    return-object p1

    :cond_a
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 27
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/h/d;->s(I)V

    .line 28
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1
.end method

.method public j()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Ls1/a/a/a/v0/h/d;->q(I)V

    .line 4
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 5
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    add-int/lit8 v2, v0, 0x4

    .line 6
    iput v2, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 7
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public k()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Ls1/a/a/a/v0/h/d;->q(I)V

    .line 4
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 5
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    add-int/lit8 v3, v0, 0x8

    .line 6
    iput v3, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 7
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public l()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/v0/h/d;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    .line 5
    iput v3, p0, Ls1/a/a/a/v0/h/d;->e:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    long-to-int v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    int-to-long v7, v0

    cmp-long v1, v7, v5

    if-ltz v1, :cond_5

    const-wide/16 v0, 0x3f80

    xor-long/2addr v0, v7

    long-to-int v0, v0

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v5, v3, v5

    if-gez v5, :cond_6

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    int-to-long v4, v0

    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    long-to-int v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    .line 10
    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_7

    .line 11
    :goto_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->n()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 12
    :cond_7
    :goto_2
    iput v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    return v0
.end method

.method public m()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/v0/h/d;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    .line 5
    iput v3, p0, Ls1/a/a/a/v0/h/d;->e:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    int-to-long v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/16 v1, 0x3f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 8
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x15

    int-to-long v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v1, 0xfe03f80

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 10
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x7f01fc080L

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 11
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_8

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 12
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v1, 0x1

    .line 13
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 14
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_b

    .line 15
    :goto_2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->n()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    :cond_b
    move-wide v2, v3

    .line 16
    :goto_3
    iput v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    return-wide v2
.end method

.method public n()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 1
    iget v3, p0, Ls1/a/a/a/v0/h/d;->e:I

    iget v4, p0, Ls1/a/a/a/v0/h/d;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/h/d;->q(I)V

    .line 3
    :cond_0
    iget-object v3, p0, Ls1/a/a/a/v0/h/d;->a:[B

    iget v4, p0, Ls1/a/a/a/v0/h/d;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ls1/a/a/a/v0/h/d;->e:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Ls1/a/a/a/v0/h/j;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 5
    throw v0
.end method

.method public o()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ls1/a/a/a/v0/h/d;->t(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iput v3, p0, Ls1/a/a/a/v0/h/d;->g:I

    return v3

    .line 3
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->l()I

    move-result v0

    iput v0, p0, Ls1/a/a/a/v0/h/d;->g:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    return v0

    .line 4
    :cond_2
    new-instance v0, Ls1/a/a/a/v0/h/j;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 5
    throw v0
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->c:I

    iget v1, p0, Ls1/a/a/a/v0/h/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/h/d;->c:I

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int/2addr v1, v0

    .line 3
    iget v2, p0, Ls1/a/a/a/v0/h/d;->i:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Ls1/a/a/a/v0/h/d;->d:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Ls1/a/a/a/v0/h/d;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ls1/a/a/a/v0/h/d;->d:I

    :goto_0
    return-void
.end method

.method public final q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/d;->t(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1
.end method

.method public r(ILs1/a/a/a/v0/h/e;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->j()I

    move-result v0

    .line 2
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 3
    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/h/e;->w(I)V

    return v1

    .line 4
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/h/j;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 7
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->o()I

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_4
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 9
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/d;->a(I)V

    .line 10
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    return v1

    .line 11
    :cond_5
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->f()Ls1/a/a/a/v0/h/c;

    move-result-object v0

    .line 12
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 13
    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/h/e;->m(Ls1/a/a/a/v0/h/c;)V

    return v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->k()J

    move-result-wide v2

    .line 15
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 16
    invoke-virtual {p2, v2, v3}, Ls1/a/a/a/v0/h/e;->x(J)V

    return v1

    .line 17
    :cond_7
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->m()J

    move-result-wide v2

    .line 18
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 19
    invoke-virtual {p2, v2, v3}, Ls1/a/a/a/v0/h/e;->z(J)V

    return v1
.end method

.method public s(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->c:I

    iget v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Ls1/a/a/a/v0/h/d;->e:I

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_3

    .line 3
    iget v2, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int v3, v2, v1

    add-int/2addr v3, p1

    iget v4, p0, Ls1/a/a/a/v0/h/d;->i:I

    if-gt v3, v4, :cond_2

    sub-int v1, v0, v1

    .line 4
    iput v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/h/d;->q(I)V

    :goto_0
    sub-int v2, p1, v1

    .line 6
    iget v3, p0, Ls1/a/a/a/v0/h/d;->c:I

    if-le v2, v3, :cond_1

    add-int/2addr v1, v3

    .line 7
    iput v3, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 8
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/h/d;->q(I)V

    goto :goto_0

    .line 9
    :cond_1
    iput v2, p0, Ls1/a/a/a/v0/h/d;->e:I

    :goto_1
    return-void

    :cond_2
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    .line 10
    invoke-virtual {p0, v4}, Ls1/a/a/a/v0/h/d;->s(I)V

    .line 11
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    invoke-static {}, Ls1/a/a/a/v0/h/j;->a()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1
.end method

.method public final t(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/d;->e:I

    add-int v1, v0, p1

    iget v2, p0, Ls1/a/a/a/v0/h/d;->c:I

    if-le v1, v2, :cond_7

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, Ls1/a/a/a/v0/h/d;->i:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    return v4

    .line 3
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    if-lez v0, :cond_2

    if-le v2, v0, :cond_1

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Ls1/a/a/a/v0/h/d;->h:I

    .line 6
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    .line 7
    iput v4, p0, Ls1/a/a/a/v0/h/d;->e:I

    .line 8
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/h/d;->f:Ljava/io/InputStream;

    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    iget v2, p0, Ls1/a/a/a/v0/h/d;->c:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-lt v0, v1, :cond_5

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/h/d;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    .line 10
    iget v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Ls1/a/a/a/v0/h/d;->c:I

    .line 11
    iget v0, p0, Ls1/a/a/a/v0/h/d;->h:I

    add-int/2addr v0, p1

    const/high16 v1, 0x4000000

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/d;->p()V

    .line 13
    iget v0, p0, Ls1/a/a/a/v0/h/d;->c:I

    if-lt v0, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/d;->t(I)Z

    move-result p1

    :goto_0
    return p1

    .line 14
    :cond_4
    new-instance p1, Ls1/a/a/a/v0/h/j;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v1, 0x66

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    const-string v3, "\nThe InputStream implementation is buggy."

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->M1(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v4

    .line 17
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4d

    const-string v2, "refillBuffer() called when "

    const-string v3, " bytes were already available in buffer"

    invoke-static {v1, v2, p1, v3}, Le/d/c/a/a;->M1(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
