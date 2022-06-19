.class public Ln3/y/b/a/q0/v/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# instance fields
.field public a:Ln3/y/b/a/q0/h;

.field public b:Ln3/y/b/a/q0/v/h;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    .line 3
    iget-object v2, v1, Ln3/y/b/a/q0/v/d;->a:Ln3/y/b/a/q0/v/e;

    invoke-virtual {v2}, Ln3/y/b/a/q0/v/e;->b()V

    .line 4
    iget-object v2, v1, Ln3/y/b/a/q0/v/d;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->u()V

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Ln3/y/b/a/q0/v/d;->c:I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Ln3/y/b/a/q0/v/d;->e:Z

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    .line 7
    iget-boolean p1, v0, Ln3/y/b/a/q0/v/h;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ln3/y/b/a/q0/v/h;->f(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Ln3/y/b/a/q0/v/h;->h:I

    if-eqz p1, :cond_1

    .line 9
    iget p1, v0, Ln3/y/b/a/q0/v/h;->i:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    .line 10
    iput-wide p1, v0, Ln3/y/b/a/q0/v/h;->e:J

    .line 11
    iget-object p3, v0, Ln3/y/b/a/q0/v/h;->d:Ln3/y/b/a/q0/v/f;

    invoke-interface {p3, p1, p2}, Ln3/y/b/a/q0/v/f;->d(J)V

    const/4 p1, 0x2

    .line 12
    iput p1, v0, Ln3/y/b/a/q0/v/h;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ln3/y/b/a/q0/d;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/y/b/a/q0/v/e;

    invoke-direct {v0}, Ln3/y/b/a/q0/v/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/q0/v/e;->a(Ln3/y/b/a/q0/d;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, v0, Ln3/y/b/a/q0/v/e;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, v0, Ln3/y/b/a/q0/v/e;->f:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Ln3/y/b/a/x0/m;

    invoke-direct {v2, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    .line 5
    iget-object v4, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 6
    invoke-virtual {p1, v4, v3, v0, v3}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 7
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 8
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Ln3/y/b/a/q0/v/b;

    invoke-direct {p1}, Ln3/y/b/a/q0/v/b;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 12
    :try_start_0
    invoke-static {v1, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->L1(ILn3/y/b/a/x0/m;Z)Z

    move-result p1
    :try_end_0
    .catch Ln3/y/b/a/c0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Ln3/y/b/a/q0/v/j;

    invoke-direct {p1}, Ln3/y/b/a/q0/v/j;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 15
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    sget-object v0, Ln3/y/b/a/q0/v/g;->o:[B

    array-length v4, v0

    if-ge p1, v4, :cond_4

    move p1, v3

    goto :goto_2

    .line 16
    :cond_4
    array-length p1, v0

    new-array p1, p1, [B

    .line 17
    array-length v4, v0

    .line 18
    iget-object v5, v2, Ln3/y/b/a/x0/m;->a:[B

    iget v6, v2, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v5, v2, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v5, v4

    iput v5, v2, Ln3/y/b/a/x0/m;->b:I

    .line 20
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_5

    .line 21
    new-instance p1, Ln3/y/b/a/q0/v/g;

    invoke-direct {p1}, Ln3/y/b/a/q0/v/g;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    :goto_3
    return v1

    :cond_5
    :goto_4
    return v3
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/v/c;->a:Ln3/y/b/a/q0/h;

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ln3/y/b/a/q0/v/c;->b(Ln3/y/b/a/q0/d;)Z

    move-result p1
    :try_end_0
    .catch Ln3/y/b/a/c0; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/q0/v/c;->b(Ln3/y/b/a/q0/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput v3, v1, Ln3/y/b/a/q0/d;->f:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Failed to determine bitstream type"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v2, v0, Ln3/y/b/a/q0/v/c;->c:Z

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 6
    iget-object v2, v0, Ln3/y/b/a/q0/v/c;->a:Ln3/y/b/a/q0/h;

    invoke-interface {v2, v3, v4}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v2

    .line 7
    iget-object v5, v0, Ln3/y/b/a/q0/v/c;->a:Ln3/y/b/a/q0/h;

    invoke-interface {v5}, Ln3/y/b/a/q0/h;->g()V

    .line 8
    iget-object v5, v0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    iget-object v6, v0, Ln3/y/b/a/q0/v/c;->a:Ln3/y/b/a/q0/h;

    .line 9
    iput-object v6, v5, Ln3/y/b/a/q0/v/h;->c:Ln3/y/b/a/q0/h;

    .line 10
    iput-object v2, v5, Ln3/y/b/a/q0/v/h;->b:Ln3/y/b/a/q0/p;

    .line 11
    invoke-virtual {v5, v4}, Ln3/y/b/a/q0/v/h;->f(Z)V

    .line 12
    iput-boolean v4, v0, Ln3/y/b/a/q0/v/c;->c:Z

    .line 13
    :cond_2
    iget-object v2, v0, Ln3/y/b/a/q0/v/c;->b:Ln3/y/b/a/q0/v/h;

    .line 14
    iget v5, v2, Ln3/y/b/a/q0/v/h;->h:I

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v15, 0x2

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_a

    if-ne v5, v15, :cond_9

    .line 15
    iget-object v5, v2, Ln3/y/b/a/q0/v/h;->d:Ln3/y/b/a/q0/v/f;

    invoke-interface {v5, v1}, Ln3/y/b/a/q0/v/f;->h(Ln3/y/b/a/q0/d;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-ltz v5, :cond_3

    move-object/from16 v5, p2

    .line 16
    iput-wide v10, v5, Ln3/y/b/a/q0/m;->a:J

    move v3, v4

    goto/16 :goto_7

    :cond_3
    cmp-long v5, v10, v6

    if-gez v5, :cond_4

    const-wide/16 v14, 0x2

    add-long/2addr v10, v14

    neg-long v10, v10

    .line 17
    invoke-virtual {v2, v10, v11}, Ln3/y/b/a/q0/v/h;->c(J)V

    .line 18
    :cond_4
    iget-boolean v5, v2, Ln3/y/b/a/q0/v/h;->l:Z

    if-nez v5, :cond_5

    .line 19
    iget-object v5, v2, Ln3/y/b/a/q0/v/h;->d:Ln3/y/b/a/q0/v/f;

    invoke-interface {v5}, Ln3/y/b/a/q0/v/f;->a()Ln3/y/b/a/q0/n;

    move-result-object v5

    .line 20
    iget-object v10, v2, Ln3/y/b/a/q0/v/h;->c:Ln3/y/b/a/q0/h;

    invoke-interface {v10, v5}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    .line 21
    iput-boolean v4, v2, Ln3/y/b/a/q0/v/h;->l:Z

    .line 22
    :cond_5
    iget-wide v4, v2, Ln3/y/b/a/q0/v/h;->k:J

    cmp-long v4, v4, v12

    if-gtz v4, :cond_7

    iget-object v4, v2, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    invoke-virtual {v4, v1}, Ln3/y/b/a/q0/v/d;->b(Ln3/y/b/a/q0/d;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iput v9, v2, Ln3/y/b/a/q0/v/h;->h:I

    :goto_1
    move v3, v8

    goto/16 :goto_7

    .line 24
    :cond_7
    :goto_2
    iput-wide v12, v2, Ln3/y/b/a/q0/v/h;->k:J

    .line 25
    iget-object v1, v2, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    .line 26
    iget-object v1, v1, Ln3/y/b/a/q0/v/d;->b:Ln3/y/b/a/x0/m;

    .line 27
    invoke-virtual {v2, v1}, Ln3/y/b/a/q0/v/h;->d(Ln3/y/b/a/x0/m;)J

    move-result-wide v4

    cmp-long v8, v4, v12

    if-ltz v8, :cond_8

    .line 28
    iget-wide v8, v2, Ln3/y/b/a/q0/v/h;->g:J

    add-long v10, v8, v4

    iget-wide v12, v2, Ln3/y/b/a/q0/v/h;->e:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_8

    .line 29
    invoke-virtual {v2, v8, v9}, Ln3/y/b/a/q0/v/h;->a(J)J

    move-result-wide v12

    .line 30
    iget-object v8, v2, Ln3/y/b/a/q0/v/h;->b:Ln3/y/b/a/q0/p;

    .line 31
    iget v9, v1, Ln3/y/b/a/x0/m;->c:I

    .line 32
    invoke-interface {v8, v1, v9}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 33
    iget-object v11, v2, Ln3/y/b/a/q0/v/h;->b:Ln3/y/b/a/q0/p;

    const/4 v14, 0x1

    .line 34
    iget v15, v1, Ln3/y/b/a/x0/m;->c:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 35
    invoke-interface/range {v11 .. v17}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 36
    iput-wide v6, v2, Ln3/y/b/a/q0/v/h;->e:J

    .line 37
    :cond_8
    iget-wide v6, v2, Ln3/y/b/a/q0/v/h;->g:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Ln3/y/b/a/q0/v/h;->g:J

    goto/16 :goto_7

    .line 38
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 39
    :cond_a
    iget-wide v4, v2, Ln3/y/b/a/q0/v/h;->f:J

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Ln3/y/b/a/q0/d;->h(I)V

    .line 40
    iput v15, v2, Ln3/y/b/a/q0/v/h;->h:I

    goto/16 :goto_7

    :cond_b
    move v5, v4

    :cond_c
    :goto_3
    if-eqz v5, :cond_e

    .line 41
    iget-object v5, v2, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    invoke-virtual {v5, v1}, Ln3/y/b/a/q0/v/d;->b(Ln3/y/b/a/q0/d;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 42
    iput v9, v2, Ln3/y/b/a/q0/v/h;->h:I

    goto :goto_1

    .line 43
    :cond_d
    iget-wide v10, v1, Ln3/y/b/a/q0/d;->d:J

    .line 44
    iget-wide v12, v2, Ln3/y/b/a/q0/v/h;->f:J

    sub-long/2addr v10, v12

    iput-wide v10, v2, Ln3/y/b/a/q0/v/h;->k:J

    .line 45
    iget-object v5, v2, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    .line 46
    iget-object v5, v5, Ln3/y/b/a/q0/v/d;->b:Ln3/y/b/a/x0/m;

    .line 47
    iget-object v10, v2, Ln3/y/b/a/q0/v/h;->j:Ln3/y/b/a/q0/v/h$b;

    invoke-virtual {v2, v5, v12, v13, v10}, Ln3/y/b/a/q0/v/h;->e(Ln3/y/b/a/x0/m;JLn3/y/b/a/q0/v/h$b;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 48
    iget-wide v10, v1, Ln3/y/b/a/q0/d;->d:J

    .line 49
    iput-wide v10, v2, Ln3/y/b/a/q0/v/h;->f:J

    goto :goto_3

    .line 50
    :cond_e
    iget-object v5, v2, Ln3/y/b/a/q0/v/h;->j:Ln3/y/b/a/q0/v/h$b;

    iget-object v5, v5, Ln3/y/b/a/q0/v/h$b;->a:Landroidx/media2/exoplayer/external/Format;

    iget v8, v5, Landroidx/media2/exoplayer/external/Format;->w:I

    iput v8, v2, Ln3/y/b/a/q0/v/h;->i:I

    .line 51
    iget-boolean v8, v2, Ln3/y/b/a/q0/v/h;->m:Z

    if-nez v8, :cond_f

    .line 52
    iget-object v8, v2, Ln3/y/b/a/q0/v/h;->b:Ln3/y/b/a/q0/p;

    invoke-interface {v8, v5}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 53
    iput-boolean v4, v2, Ln3/y/b/a/q0/v/h;->m:Z

    .line 54
    :cond_f
    iget-object v5, v2, Ln3/y/b/a/q0/v/h;->j:Ln3/y/b/a/q0/v/h$b;

    iget-object v5, v5, Ln3/y/b/a/q0/v/h$b;->b:Ln3/y/b/a/q0/v/f;

    const/4 v13, 0x0

    if-eqz v5, :cond_10

    .line 55
    iput-object v5, v2, Ln3/y/b/a/q0/v/h;->d:Ln3/y/b/a/q0/v/f;

    :goto_4
    move-object v1, v13

    move v5, v15

    goto :goto_6

    .line 56
    :cond_10
    iget-wide v11, v1, Ln3/y/b/a/q0/d;->c:J

    cmp-long v1, v11, v6

    if-nez v1, :cond_11

    .line 57
    new-instance v1, Ln3/y/b/a/q0/v/h$c;

    invoke-direct {v1, v13}, Ln3/y/b/a/q0/v/h$c;-><init>(Ln3/y/b/a/q0/v/h$a;)V

    iput-object v1, v2, Ln3/y/b/a/q0/v/h;->d:Ln3/y/b/a/q0/v/f;

    goto :goto_4

    .line 58
    :cond_11
    iget-object v1, v2, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    .line 59
    iget-object v1, v1, Ln3/y/b/a/q0/v/d;->a:Ln3/y/b/a/q0/v/e;

    .line 60
    iget v5, v1, Ln3/y/b/a/q0/v/e;->b:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_12

    move/from16 v17, v4

    goto :goto_5

    :cond_12
    move/from16 v17, v3

    .line 61
    :goto_5
    new-instance v4, Ln3/y/b/a/q0/v/a;

    iget-wide v9, v2, Ln3/y/b/a/q0/v/h;->f:J

    .line 62
    iget v5, v1, Ln3/y/b/a/q0/v/e;->e:I

    iget v6, v1, Ln3/y/b/a/q0/v/e;->f:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    iget-wide v7, v1, Ln3/y/b/a/q0/v/e;->c:J

    move-wide/from16 v18, v7

    move-object v7, v4

    move-object v8, v2

    move-object v1, v13

    move-wide v13, v5

    move v5, v15

    move-wide/from16 v15, v18

    invoke-direct/range {v7 .. v17}, Ln3/y/b/a/q0/v/a;-><init>(Ln3/y/b/a/q0/v/h;JJJJZ)V

    iput-object v4, v2, Ln3/y/b/a/q0/v/h;->d:Ln3/y/b/a/q0/v/f;

    .line 63
    :goto_6
    iput-object v1, v2, Ln3/y/b/a/q0/v/h;->j:Ln3/y/b/a/q0/v/h$b;

    .line 64
    iput v5, v2, Ln3/y/b/a/q0/v/h;->h:I

    .line 65
    iget-object v1, v2, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    .line 66
    iget-object v1, v1, Ln3/y/b/a/q0/v/d;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    array-length v4, v2

    const v5, 0xfe01

    if-ne v4, v5, :cond_13

    goto :goto_7

    .line 67
    :cond_13
    iget v4, v1, Ln3/y/b/a/x0/m;->c:I

    .line 68
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    :goto_7
    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method
