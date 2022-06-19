.class public final Ln3/y/b/a/n0/z;
.super Ln3/y/b/a/n0/s;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:Z

.field public j:[B

.field public k:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/n0/s;-><init>()V

    .line 2
    sget-object v0, Ln3/y/b/a/x0/x;->f:[B

    iput-object v0, p0, Ln3/y/b/a/n0/z;->j:[B

    .line 3
    iput-object v0, p0, Ln3/y/b/a/n0/z;->k:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/z;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x249f0

    .line 2
    iget v2, p0, Ln3/y/b/a/n0/s;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 3
    iget v1, p0, Ln3/y/b/a/n0/z;->h:I

    mul-int/2addr v0, v1

    .line 4
    iget-object v6, p0, Ln3/y/b/a/n0/z;->j:[B

    array-length v6, v6

    if-eq v6, v0, :cond_0

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Ln3/y/b/a/n0/z;->j:[B

    :cond_0
    const-wide/16 v6, 0x4e20

    mul-long/2addr v2, v6

    .line 6
    div-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/2addr v0, v1

    .line 7
    iput v0, p0, Ln3/y/b/a/n0/z;->n:I

    .line 8
    iget-object v1, p0, Ln3/y/b/a/n0/z;->k:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Ln3/y/b/a/n0/z;->k:[B

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Ln3/y/b/a/n0/z;->l:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Ln3/y/b/a/n0/z;->p:J

    .line 12
    iput v0, p0, Ln3/y/b/a/n0/z;->m:I

    .line 13
    iput-boolean v0, p0, Ln3/y/b/a/n0/z;->o:Z

    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/s;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Ln3/y/b/a/n0/z;->i:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    iget v0, p0, Ln3/y/b/a/n0/z;->l:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Ln3/y/b/a/n0/z;->o(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    iget-wide v3, p0, Ln3/y/b/a/n0/z;->p:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Ln3/y/b/a/n0/z;->h:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Ln3/y/b/a/n0/z;->p:J

    .line 8
    iget-object v3, p0, Ln3/y/b/a/n0/z;->k:[B

    iget v4, p0, Ln3/y/b/a/n0/z;->n:I

    invoke-virtual {p0, p1, v3, v4}, Ln3/y/b/a/n0/z;->q(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 9
    iget-object v1, p0, Ln3/y/b/a/n0/z;->k:[B

    iget v3, p0, Ln3/y/b/a/n0/z;->n:I

    invoke-virtual {p0, v1, v3}, Ln3/y/b/a/n0/z;->p([BI)V

    .line 10
    iput v2, p0, Ln3/y/b/a/n0/z;->l:I

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 14
    invoke-virtual {p0, p1}, Ln3/y/b/a/n0/z;->o(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v1, v4

    .line 16
    iget-object v5, p0, Ln3/y/b/a/n0/z;->j:[B

    array-length v6, v5

    iget v7, p0, Ln3/y/b/a/n0/z;->m:I

    sub-int/2addr v6, v7

    if-ge v1, v0, :cond_3

    if-ge v4, v6, :cond_3

    .line 17
    invoke-virtual {p0, v5, v7}, Ln3/y/b/a/n0/z;->p([BI)V

    .line 18
    iput v2, p0, Ln3/y/b/a/n0/z;->m:I

    .line 19
    iput v2, p0, Ln3/y/b/a/n0/z;->l:I

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    iget-object v4, p0, Ln3/y/b/a/n0/z;->j:[B

    iget v5, p0, Ln3/y/b/a/n0/z;->m:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 23
    iget v4, p0, Ln3/y/b/a/n0/z;->m:I

    add-int/2addr v4, v1

    iput v4, p0, Ln3/y/b/a/n0/z;->m:I

    .line 24
    iget-object v1, p0, Ln3/y/b/a/n0/z;->j:[B

    array-length v5, v1

    if-ne v4, v5, :cond_5

    .line 25
    iget-boolean v5, p0, Ln3/y/b/a/n0/z;->o:Z

    if-eqz v5, :cond_4

    .line 26
    iget v4, p0, Ln3/y/b/a/n0/z;->n:I

    invoke-virtual {p0, v1, v4}, Ln3/y/b/a/n0/z;->p([BI)V

    .line 27
    iget-wide v4, p0, Ln3/y/b/a/n0/z;->p:J

    iget v1, p0, Ln3/y/b/a/n0/z;->m:I

    iget v6, p0, Ln3/y/b/a/n0/z;->n:I

    mul-int/2addr v6, v3

    sub-int/2addr v1, v6

    iget v6, p0, Ln3/y/b/a/n0/z;->h:I

    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ln3/y/b/a/n0/z;->p:J

    goto :goto_1

    .line 28
    :cond_4
    iget-wide v5, p0, Ln3/y/b/a/n0/z;->p:J

    iget v1, p0, Ln3/y/b/a/n0/z;->n:I

    sub-int/2addr v4, v1

    iget v1, p0, Ln3/y/b/a/n0/z;->h:I

    div-int/2addr v4, v1

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Ln3/y/b/a/n0/z;->p:J

    .line 29
    :goto_1
    iget-object v1, p0, Ln3/y/b/a/n0/z;->j:[B

    iget v4, p0, Ln3/y/b/a/n0/z;->m:I

    invoke-virtual {p0, p1, v1, v4}, Ln3/y/b/a/n0/z;->q(Ljava/nio/ByteBuffer;[BI)V

    .line 30
    iput v2, p0, Ln3/y/b/a/n0/z;->m:I

    .line 31
    iput v3, p0, Ln3/y/b/a/n0/z;->l:I

    .line 32
    :cond_5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 33
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Ln3/y/b/a/n0/z;->j:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 36
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_7

    .line 37
    iget v3, p0, Ln3/y/b/a/n0/z;->h:I

    div-int/2addr v2, v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 39
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 40
    iput v1, p0, Ln3/y/b/a/n0/z;->l:I

    goto :goto_4

    .line 41
    :cond_9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 43
    invoke-virtual {p0, v2}, Ln3/y/b/a/n0/s;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_a

    .line 44
    iput-boolean v1, p0, Ln3/y/b/a/n0/z;->o:Z

    .line 45
    :cond_a
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public j(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/n0/g$a;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    mul-int/lit8 v0, p2, 0x2

    .line 1
    iput v0, p0, Ln3/y/b/a/n0/z;->h:I

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ln3/y/b/a/n0/s;->n(III)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Ln3/y/b/a/n0/g$a;

    invoke-direct {v0, p1, p2, p3}, Ln3/y/b/a/n0/g$a;-><init>(III)V

    throw v0
.end method

.method public k()V
    .locals 4

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/z;->m:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/n0/z;->j:[B

    invoke-virtual {p0, v1, v0}, Ln3/y/b/a/n0/z;->p([BI)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Ln3/y/b/a/n0/z;->o:Z

    if-nez v0, :cond_1

    .line 4
    iget-wide v0, p0, Ln3/y/b/a/n0/z;->p:J

    iget v2, p0, Ln3/y/b/a/n0/z;->n:I

    iget v3, p0, Ln3/y/b/a/n0/z;->h:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ln3/y/b/a/n0/z;->p:J

    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/n0/z;->i:Z

    .line 2
    iput v0, p0, Ln3/y/b/a/n0/z;->n:I

    .line 3
    sget-object v0, Ln3/y/b/a/x0/x;->f:[B

    iput-object v0, p0, Ln3/y/b/a/n0/z;->j:[B

    .line 4
    iput-object v0, p0, Ln3/y/b/a/n0/z;->k:[B

    return-void
.end method

.method public final o(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 3
    iget p1, p0, Ln3/y/b/a/n0/z;->h:I

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method public final p([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Ln3/y/b/a/n0/s;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/y/b/a/n0/z;->o:Z

    :cond_0
    return-void
.end method

.method public final q(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Ln3/y/b/a/n0/z;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Ln3/y/b/a/n0/z;->n:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 3
    iget-object v2, p0, Ln3/y/b/a/n0/z;->k:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object p2, p0, Ln3/y/b/a/n0/z;->k:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
