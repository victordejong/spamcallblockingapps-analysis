.class public final Ln3/y/b/a/n0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/n0/g;


# instance fields
.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ln3/y/b/a/n0/a0;

.field public j:Ljava/nio/ByteBuffer;

.field public k:Ljava/nio/ShortBuffer;

.field public l:Ljava/nio/ByteBuffer;

.field public m:J

.field public n:J

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Ln3/y/b/a/n0/b0;->d:F

    .line 3
    iput v0, p0, Ln3/y/b/a/n0/b0;->e:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ln3/y/b/a/n0/b0;->b:I

    .line 5
    iput v0, p0, Ln3/y/b/a/n0/b0;->c:I

    .line 6
    iput v0, p0, Ln3/y/b/a/n0/b0;->f:I

    .line 7
    sget-object v1, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Ln3/y/b/a/n0/b0;->k:Ljava/nio/ShortBuffer;

    .line 9
    iput-object v1, p0, Ln3/y/b/a/n0/b0;->l:Ljava/nio/ByteBuffer;

    .line 10
    iput v0, p0, Ln3/y/b/a/n0/b0;->g:I

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/b0;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ln3/y/b/a/n0/b0;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Ln3/y/b/a/n0/b0;->e:F

    sub-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Ln3/y/b/a/n0/b0;->f:I

    iget v1, p0, Ln3/y/b/a/n0/b0;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/n0/b0;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/y/b/a/n0/b0;->i:Ln3/y/b/a/n0/a0;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Ln3/y/b/a/n0/a0;->m:I

    iget v0, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/b0;->i:Ln3/y/b/a/n0/a0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 6
    iget-wide v3, p0, Ln3/y/b/a/n0/b0;->m:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ln3/y/b/a/n0/b0;->m:J

    .line 7
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, v0, Ln3/y/b/a/n0/a0;->b:I

    div-int/2addr v3, v4

    mul-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 8
    iget-object v5, v0, Ln3/y/b/a/n0/a0;->j:[S

    iget v6, v0, Ln3/y/b/a/n0/a0;->k:I

    invoke-virtual {v0, v5, v6, v3}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v5

    iput-object v5, v0, Ln3/y/b/a/n0/a0;->j:[S

    .line 9
    iget v6, v0, Ln3/y/b/a/n0/a0;->k:I

    iget v7, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr v6, v7

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v5, v6, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 10
    iget v1, v0, Ln3/y/b/a/n0/a0;->k:I

    add-int/2addr v1, v3

    iput v1, v0, Ln3/y/b/a/n0/a0;->k:I

    .line 11
    invoke-virtual {v0}, Ln3/y/b/a/n0/a0;->f()V

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    :cond_0
    iget p1, v0, Ln3/y/b/a/n0/a0;->m:I

    iget v1, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 14
    iget-object v1, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Ln3/y/b/a/n0/b0;->k:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 18
    iget-object v1, p0, Ln3/y/b/a/n0/b0;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 19
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/n0/b0;->k:Ljava/nio/ShortBuffer;

    .line 20
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    iget v3, v0, Ln3/y/b/a/n0/a0;->b:I

    div-int/2addr v2, v3

    iget v3, v0, Ln3/y/b/a/n0/a0;->m:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 21
    iget-object v3, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v4, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 22
    iget v1, v0, Ln3/y/b/a/n0/a0;->m:I

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/y/b/a/n0/a0;->m:I

    .line 23
    iget-object v3, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v0, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr v2, v0

    mul-int/2addr v1, v0

    invoke-static {v3, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-wide v0, p0, Ln3/y/b/a/n0/b0;->n:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ln3/y/b/a/n0/b0;->n:J

    .line 25
    iget-object v0, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26
    iget-object p1, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Ln3/y/b/a/n0/b0;->l:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public e()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/b0;->i:Ln3/y/b/a/n0/a0;

    if-eqz v0, :cond_2

    .line 2
    iget v1, v0, Ln3/y/b/a/n0/a0;->k:I

    .line 3
    iget v2, v0, Ln3/y/b/a/n0/a0;->c:F

    iget v3, v0, Ln3/y/b/a/n0/a0;->d:F

    div-float/2addr v2, v3

    .line 4
    iget v4, v0, Ln3/y/b/a/n0/a0;->e:F

    mul-float/2addr v4, v3

    .line 5
    iget v3, v0, Ln3/y/b/a/n0/a0;->m:I

    int-to-float v5, v1

    div-float/2addr v5, v2

    iget v2, v0, Ln3/y/b/a/n0/a0;->o:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v3, v2

    .line 6
    iget-object v2, v0, Ln3/y/b/a/n0/a0;->j:[S

    iget v4, v0, Ln3/y/b/a/n0/a0;->h:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 7
    invoke-virtual {v0, v2, v1, v4}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v2

    iput-object v2, v0, Ln3/y/b/a/n0/a0;->j:[S

    const/4 v2, 0x0

    move v4, v2

    .line 8
    :goto_0
    iget v5, v0, Ln3/y/b/a/n0/a0;->h:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int v7, v5, v6

    if-ge v4, v7, :cond_0

    .line 9
    iget-object v5, v0, Ln3/y/b/a/n0/a0;->j:[S

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    aput-short v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget v1, v0, Ln3/y/b/a/n0/a0;->k:I

    add-int/2addr v5, v1

    iput v5, v0, Ln3/y/b/a/n0/a0;->k:I

    .line 11
    invoke-virtual {v0}, Ln3/y/b/a/n0/a0;->f()V

    .line 12
    iget v1, v0, Ln3/y/b/a/n0/a0;->m:I

    if-le v1, v3, :cond_1

    .line 13
    iput v3, v0, Ln3/y/b/a/n0/a0;->m:I

    .line 14
    :cond_1
    iput v2, v0, Ln3/y/b/a/n0/a0;->k:I

    .line 15
    iput v2, v0, Ln3/y/b/a/n0/a0;->r:I

    .line 16
    iput v2, v0, Ln3/y/b/a/n0/a0;->o:I

    :cond_2
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Ln3/y/b/a/n0/b0;->o:Z

    return-void
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/b0;->l:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ln3/y/b/a/n0/b0;->l:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public flush()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/b0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Ln3/y/b/a/n0/b0;->h:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ln3/y/b/a/n0/a0;

    iget v3, p0, Ln3/y/b/a/n0/b0;->c:I

    iget v4, p0, Ln3/y/b/a/n0/b0;->b:I

    iget v5, p0, Ln3/y/b/a/n0/b0;->d:F

    iget v6, p0, Ln3/y/b/a/n0/b0;->e:F

    iget v7, p0, Ln3/y/b/a/n0/b0;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ln3/y/b/a/n0/a0;-><init>(IIFFI)V

    iput-object v0, p0, Ln3/y/b/a/n0/b0;->i:Ln3/y/b/a/n0/a0;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/n0/b0;->i:Ln3/y/b/a/n0/a0;

    if-eqz v0, :cond_1

    .line 5
    iput v1, v0, Ln3/y/b/a/n0/a0;->k:I

    .line 6
    iput v1, v0, Ln3/y/b/a/n0/a0;->m:I

    .line 7
    iput v1, v0, Ln3/y/b/a/n0/a0;->o:I

    .line 8
    iput v1, v0, Ln3/y/b/a/n0/a0;->p:I

    .line 9
    iput v1, v0, Ln3/y/b/a/n0/a0;->q:I

    .line 10
    iput v1, v0, Ln3/y/b/a/n0/a0;->r:I

    .line 11
    iput v1, v0, Ln3/y/b/a/n0/a0;->s:I

    .line 12
    iput v1, v0, Ln3/y/b/a/n0/a0;->t:I

    .line 13
    iput v1, v0, Ln3/y/b/a/n0/a0;->u:I

    .line 14
    iput v1, v0, Ln3/y/b/a/n0/a0;->v:I

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ln3/y/b/a/n0/b0;->l:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    .line 16
    iput-wide v2, p0, Ln3/y/b/a/n0/b0;->m:J

    .line 17
    iput-wide v2, p0, Ln3/y/b/a/n0/b0;->n:J

    .line 18
    iput-boolean v1, p0, Ln3/y/b/a/n0/b0;->o:Z

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/b0;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/b0;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public j(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/n0/g$a;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 1
    iget p3, p0, Ln3/y/b/a/n0/b0;->g:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    .line 2
    :cond_0
    iget v0, p0, Ln3/y/b/a/n0/b0;->c:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Ln3/y/b/a/n0/b0;->b:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Ln3/y/b/a/n0/b0;->f:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iput p1, p0, Ln3/y/b/a/n0/b0;->c:I

    .line 4
    iput p2, p0, Ln3/y/b/a/n0/b0;->b:I

    .line 5
    iput p3, p0, Ln3/y/b/a/n0/b0;->f:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ln3/y/b/a/n0/b0;->h:Z

    return p1

    .line 7
    :cond_2
    new-instance v0, Ln3/y/b/a/n0/g$a;

    invoke-direct {v0, p1, p2, p3}, Ln3/y/b/a/n0/g$a;-><init>(III)V

    throw v0
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Ln3/y/b/a/n0/b0;->d:F

    .line 2
    iput v0, p0, Ln3/y/b/a/n0/b0;->e:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ln3/y/b/a/n0/b0;->b:I

    .line 4
    iput v0, p0, Ln3/y/b/a/n0/b0;->c:I

    .line 5
    iput v0, p0, Ln3/y/b/a/n0/b0;->f:I

    .line 6
    sget-object v1, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ln3/y/b/a/n0/b0;->j:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Ln3/y/b/a/n0/b0;->k:Ljava/nio/ShortBuffer;

    .line 8
    iput-object v1, p0, Ln3/y/b/a/n0/b0;->l:Ljava/nio/ByteBuffer;

    .line 9
    iput v0, p0, Ln3/y/b/a/n0/b0;->g:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Ln3/y/b/a/n0/b0;->h:Z

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Ln3/y/b/a/n0/b0;->i:Ln3/y/b/a/n0/a0;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Ln3/y/b/a/n0/b0;->m:J

    .line 13
    iput-wide v1, p0, Ln3/y/b/a/n0/b0;->n:J

    .line 14
    iput-boolean v0, p0, Ln3/y/b/a/n0/b0;->o:Z

    return-void
.end method
