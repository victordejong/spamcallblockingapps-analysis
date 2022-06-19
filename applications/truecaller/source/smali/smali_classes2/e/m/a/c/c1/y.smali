.class public final Le/m/a/c/c1/y;
.super Le/m/a/c/c1/r;
.source "SourceFile"


# instance fields
.field public i:I

.field public j:Z

.field public k:[B

.field public l:[B

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/a/c/c1/r;-><init>()V

    .line 2
    sget-object v0, Le/m/a/c/q1/d0;->f:[B

    iput-object v0, p0, Le/m/a/c/c1/y;->k:[B

    .line 3
    iput-object v0, p0, Le/m/a/c/c1/y;->l:[B

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/c1/y;->j:Z

    return v0
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
    iget-object v0, p0, Le/m/a/c/c1/r;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    iget v0, p0, Le/m/a/c/c1/y;->m:I

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
    invoke-virtual {p0, p1}, Le/m/a/c/c1/y;->l(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    iget-wide v3, p0, Le/m/a/c/c1/y;->q:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Le/m/a/c/c1/y;->i:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Le/m/a/c/c1/y;->q:J

    .line 8
    iget-object v3, p0, Le/m/a/c/c1/y;->l:[B

    iget v4, p0, Le/m/a/c/c1/y;->o:I

    invoke-virtual {p0, p1, v3, v4}, Le/m/a/c/c1/y;->n(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 9
    iget-object v1, p0, Le/m/a/c/c1/y;->l:[B

    iget v3, p0, Le/m/a/c/c1/y;->o:I

    invoke-virtual {p0, v1, v3}, Le/m/a/c/c1/y;->m([BI)V

    .line 10
    iput v2, p0, Le/m/a/c/c1/y;->m:I

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
    invoke-virtual {p0, p1}, Le/m/a/c/c1/y;->l(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v1, v4

    .line 16
    iget-object v5, p0, Le/m/a/c/c1/y;->k:[B

    array-length v6, v5

    iget v7, p0, Le/m/a/c/c1/y;->n:I

    sub-int/2addr v6, v7

    if-ge v1, v0, :cond_3

    if-ge v4, v6, :cond_3

    .line 17
    invoke-virtual {p0, v5, v7}, Le/m/a/c/c1/y;->m([BI)V

    .line 18
    iput v2, p0, Le/m/a/c/c1/y;->n:I

    .line 19
    iput v2, p0, Le/m/a/c/c1/y;->m:I

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
    iget-object v4, p0, Le/m/a/c/c1/y;->k:[B

    iget v5, p0, Le/m/a/c/c1/y;->n:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 23
    iget v4, p0, Le/m/a/c/c1/y;->n:I

    add-int/2addr v4, v1

    iput v4, p0, Le/m/a/c/c1/y;->n:I

    .line 24
    iget-object v1, p0, Le/m/a/c/c1/y;->k:[B

    array-length v5, v1

    if-ne v4, v5, :cond_5

    .line 25
    iget-boolean v5, p0, Le/m/a/c/c1/y;->p:Z

    if-eqz v5, :cond_4

    .line 26
    iget v4, p0, Le/m/a/c/c1/y;->o:I

    invoke-virtual {p0, v1, v4}, Le/m/a/c/c1/y;->m([BI)V

    .line 27
    iget-wide v4, p0, Le/m/a/c/c1/y;->q:J

    iget v1, p0, Le/m/a/c/c1/y;->n:I

    iget v6, p0, Le/m/a/c/c1/y;->o:I

    mul-int/2addr v6, v3

    sub-int/2addr v1, v6

    iget v6, p0, Le/m/a/c/c1/y;->i:I

    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Le/m/a/c/c1/y;->q:J

    goto :goto_1

    .line 28
    :cond_4
    iget-wide v5, p0, Le/m/a/c/c1/y;->q:J

    iget v1, p0, Le/m/a/c/c1/y;->o:I

    sub-int/2addr v4, v1

    iget v1, p0, Le/m/a/c/c1/y;->i:I

    div-int/2addr v4, v1

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Le/m/a/c/c1/y;->q:J

    .line 29
    :goto_1
    iget-object v1, p0, Le/m/a/c/c1/y;->k:[B

    iget v4, p0, Le/m/a/c/c1/y;->n:I

    invoke-virtual {p0, p1, v1, v4}, Le/m/a/c/c1/y;->n(Ljava/nio/ByteBuffer;[BI)V

    .line 30
    iput v2, p0, Le/m/a/c/c1/y;->n:I

    .line 31
    iput v3, p0, Le/m/a/c/c1/y;->m:I

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

    iget-object v3, p0, Le/m/a/c/c1/y;->k:[B

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
    iget v3, p0, Le/m/a/c/c1/y;->i:I

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
    iput v1, p0, Le/m/a/c/c1/y;->m:I

    goto :goto_4

    .line 41
    :cond_9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 43
    invoke-virtual {p0, v2}, Le/m/a/c/c1/r;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_a

    .line 44
    iput-boolean v1, p0, Le/m/a/c/c1/y;->p:Z

    .line 45
    :cond_a
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public g(Le/m/a/c/c1/l$a;)Le/m/a/c/c1/l$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/c1/l$b;
        }
    .end annotation

    .line 1
    iget v0, p1, Le/m/a/c/c1/l$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/m/a/c/c1/y;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Le/m/a/c/c1/l$a;->e:Le/m/a/c/c1/l$a;

    :goto_0
    return-object p1

    .line 3
    :cond_1
    new-instance v0, Le/m/a/c/c1/l$b;

    invoke-direct {v0, p1}, Le/m/a/c/c1/l$b;-><init>(Le/m/a/c/c1/l$a;)V

    throw v0
.end method

.method public h()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/m/a/c/c1/y;->j:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/r;->b:Le/m/a/c/c1/l$a;

    iget v1, v0, Le/m/a/c/c1/l$a;->d:I

    iput v1, p0, Le/m/a/c/c1/y;->i:I

    const-wide/32 v2, 0x249f0

    .line 3
    iget v0, v0, Le/m/a/c/c1/l$a;->a:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    long-to-int v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Le/m/a/c/c1/y;->k:[B

    array-length v2, v2

    if-eq v2, v0, :cond_0

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Le/m/a/c/c1/y;->k:[B

    :cond_0
    const-wide/16 v2, 0x4e20

    mul-long/2addr v4, v2

    .line 6
    div-long/2addr v4, v6

    long-to-int v0, v4

    mul-int/2addr v0, v1

    .line 7
    iput v0, p0, Le/m/a/c/c1/y;->o:I

    .line 8
    iget-object v1, p0, Le/m/a/c/c1/y;->l:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Le/m/a/c/c1/y;->l:[B

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Le/m/a/c/c1/y;->m:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Le/m/a/c/c1/y;->q:J

    .line 12
    iput v0, p0, Le/m/a/c/c1/y;->n:I

    .line 13
    iput-boolean v0, p0, Le/m/a/c/c1/y;->p:Z

    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget v0, p0, Le/m/a/c/c1/y;->n:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/a/c/c1/y;->k:[B

    invoke-virtual {p0, v1, v0}, Le/m/a/c/c1/y;->m([BI)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/a/c/c1/y;->p:Z

    if-nez v0, :cond_1

    .line 4
    iget-wide v0, p0, Le/m/a/c/c1/y;->q:J

    iget v2, p0, Le/m/a/c/c1/y;->o:I

    iget v3, p0, Le/m/a/c/c1/y;->i:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/c1/y;->q:J

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/c1/y;->j:Z

    .line 2
    iput v0, p0, Le/m/a/c/c1/y;->o:I

    .line 3
    sget-object v0, Le/m/a/c/q1/d0;->f:[B

    iput-object v0, p0, Le/m/a/c/c1/y;->k:[B

    .line 4
    iput-object v0, p0, Le/m/a/c/c1/y;->l:[B

    return-void
.end method

.method public final l(Ljava/nio/ByteBuffer;)I
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
    iget p1, p0, Le/m/a/c/c1/y;->i:I

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

.method public final m([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Le/m/a/c/c1/r;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/m/a/c/c1/y;->p:Z

    :cond_0
    return-void
.end method

.method public final n(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Le/m/a/c/c1/y;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Le/m/a/c/c1/y;->o:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 3
    iget-object v2, p0, Le/m/a/c/c1/y;->l:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object p2, p0, Le/m/a/c/c1/y;->l:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
