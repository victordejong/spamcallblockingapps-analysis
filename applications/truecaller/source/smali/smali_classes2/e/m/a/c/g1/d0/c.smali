.class public Le/m/a/c/g1/d0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# instance fields
.field public a:Le/m/a/c/g1/i;

.field public b:Le/m/a/c/g1/d0/h;

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
    iget-object v0, p0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    .line 3
    iget-object v2, v1, Le/m/a/c/g1/d0/d;->a:Le/m/a/c/g1/d0/e;

    invoke-virtual {v2}, Le/m/a/c/g1/d0/e;->b()V

    .line 4
    iget-object v2, v1, Le/m/a/c/g1/d0/d;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->x()V

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Le/m/a/c/g1/d0/d;->c:I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Le/m/a/c/g1/d0/d;->e:Z

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    .line 7
    iget-boolean p1, v0, Le/m/a/c/g1/d0/h;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Le/m/a/c/g1/d0/h;->e(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Le/m/a/c/g1/d0/h;->h:I

    if-eqz p1, :cond_1

    .line 9
    iget p1, v0, Le/m/a/c/g1/d0/h;->i:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    .line 10
    iput-wide p1, v0, Le/m/a/c/g1/d0/h;->e:J

    .line 11
    iget-object p3, v0, Le/m/a/c/g1/d0/h;->d:Le/m/a/c/g1/d0/f;

    invoke-interface {p3, p1, p2}, Le/m/a/c/g1/d0/f;->d(J)V

    const/4 p1, 0x2

    .line 12
    iput p1, v0, Le/m/a/c/g1/d0/h;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Le/m/a/c/g1/e;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/c/g1/d0/e;

    invoke-direct {v0}, Le/m/a/c/g1/d0/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Le/m/a/c/g1/d0/e;->a(Le/m/a/c/g1/e;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, v0, Le/m/a/c/g1/d0/e;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, v0, Le/m/a/c/g1/d0/e;->f:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Le/m/a/c/q1/t;

    invoke-direct {v2, v0}, Le/m/a/c/q1/t;-><init>(I)V

    .line 5
    iget-object v4, v2, Le/m/a/c/q1/t;->a:[B

    .line 6
    invoke-virtual {p1, v4, v3, v0, v3}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 7
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 8
    invoke-virtual {v2}, Le/m/a/c/q1/t;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

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
    new-instance p1, Le/m/a/c/g1/d0/b;

    invoke-direct {p1}, Le/m/a/c/g1/d0/b;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 12
    :try_start_0
    invoke-static {v1, v2, v1}, Ln3/g0/y;->f2(ILe/m/a/c/q1/t;Z)Z

    move-result p1
    :try_end_0
    .catch Le/m/a/c/m0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Le/m/a/c/g1/d0/i;

    invoke-direct {p1}, Le/m/a/c/g1/d0/i;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 15
    invoke-virtual {v2}, Le/m/a/c/q1/t;->a()I

    move-result p1

    sget-object v0, Le/m/a/c/g1/d0/g;->o:[B

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
    iget-object v5, v2, Le/m/a/c/q1/t;->a:[B

    iget v6, v2, Le/m/a/c/q1/t;->b:I

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v5, v2, Le/m/a/c/q1/t;->b:I

    add-int/2addr v5, v4

    iput v5, v2, Le/m/a/c/q1/t;->b:I

    .line 20
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_5

    .line 21
    new-instance p1, Le/m/a/c/g1/d0/g;

    invoke-direct {p1}, Le/m/a/c/g1/d0/g;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    :goto_3
    return v1

    :cond_5
    :goto_4
    return v3
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
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
    iget-object v2, v0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/d0/c;->b(Le/m/a/c/g1/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput v3, v1, Le/m/a/c/g1/e;->f:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Failed to determine bitstream type"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v2, v0, Le/m/a/c/g1/d0/c;->c:Z

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 6
    iget-object v2, v0, Le/m/a/c/g1/d0/c;->a:Le/m/a/c/g1/i;

    invoke-interface {v2, v3, v4}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v2

    .line 7
    iget-object v5, v0, Le/m/a/c/g1/d0/c;->a:Le/m/a/c/g1/i;

    invoke-interface {v5}, Le/m/a/c/g1/i;->g()V

    .line 8
    iget-object v5, v0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    iget-object v6, v0, Le/m/a/c/g1/d0/c;->a:Le/m/a/c/g1/i;

    .line 9
    iput-object v6, v5, Le/m/a/c/g1/d0/h;->c:Le/m/a/c/g1/i;

    .line 10
    iput-object v2, v5, Le/m/a/c/g1/d0/h;->b:Le/m/a/c/g1/s;

    .line 11
    invoke-virtual {v5, v4}, Le/m/a/c/g1/d0/h;->e(Z)V

    .line 12
    iput-boolean v4, v0, Le/m/a/c/g1/d0/c;->c:Z

    .line 13
    :cond_2
    iget-object v2, v0, Le/m/a/c/g1/d0/c;->b:Le/m/a/c/g1/d0/h;

    .line 14
    iget v5, v2, Le/m/a/c/g1/d0/h;->h:I

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v15, 0x2

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_a

    if-ne v5, v15, :cond_9

    .line 15
    iget-object v5, v2, Le/m/a/c/g1/d0/h;->d:Le/m/a/c/g1/d0/f;

    invoke-interface {v5, v1}, Le/m/a/c/g1/d0/f;->b(Le/m/a/c/g1/e;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-ltz v5, :cond_3

    move-object/from16 v5, p2

    .line 16
    iput-wide v10, v5, Le/m/a/c/g1/p;->a:J

    move v3, v4

    goto/16 :goto_7

    :cond_3
    cmp-long v5, v10, v6

    if-gez v5, :cond_4

    const-wide/16 v14, 0x2

    add-long/2addr v10, v14

    neg-long v10, v10

    .line 17
    invoke-virtual {v2, v10, v11}, Le/m/a/c/g1/d0/h;->b(J)V

    .line 18
    :cond_4
    iget-boolean v5, v2, Le/m/a/c/g1/d0/h;->l:Z

    if-nez v5, :cond_5

    .line 19
    iget-object v5, v2, Le/m/a/c/g1/d0/h;->d:Le/m/a/c/g1/d0/f;

    invoke-interface {v5}, Le/m/a/c/g1/d0/f;->a()Le/m/a/c/g1/q;

    move-result-object v5

    .line 20
    iget-object v10, v2, Le/m/a/c/g1/d0/h;->c:Le/m/a/c/g1/i;

    invoke-interface {v10, v5}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 21
    iput-boolean v4, v2, Le/m/a/c/g1/d0/h;->l:Z

    .line 22
    :cond_5
    iget-wide v4, v2, Le/m/a/c/g1/d0/h;->k:J

    cmp-long v4, v4, v12

    if-gtz v4, :cond_7

    iget-object v4, v2, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    invoke-virtual {v4, v1}, Le/m/a/c/g1/d0/d;->b(Le/m/a/c/g1/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iput v9, v2, Le/m/a/c/g1/d0/h;->h:I

    :goto_1
    move v3, v8

    goto/16 :goto_7

    .line 24
    :cond_7
    :goto_2
    iput-wide v12, v2, Le/m/a/c/g1/d0/h;->k:J

    .line 25
    iget-object v1, v2, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    .line 26
    iget-object v1, v1, Le/m/a/c/g1/d0/d;->b:Le/m/a/c/q1/t;

    .line 27
    invoke-virtual {v2, v1}, Le/m/a/c/g1/d0/h;->c(Le/m/a/c/q1/t;)J

    move-result-wide v4

    cmp-long v8, v4, v12

    if-ltz v8, :cond_8

    .line 28
    iget-wide v8, v2, Le/m/a/c/g1/d0/h;->g:J

    add-long v10, v8, v4

    iget-wide v12, v2, Le/m/a/c/g1/d0/h;->e:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_8

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    .line 29
    iget v10, v2, Le/m/a/c/g1/d0/h;->i:I

    int-to-long v10, v10

    div-long v13, v8, v10

    .line 30
    iget-object v8, v2, Le/m/a/c/g1/d0/h;->b:Le/m/a/c/g1/s;

    .line 31
    iget v9, v1, Le/m/a/c/q1/t;->c:I

    .line 32
    invoke-interface {v8, v1, v9}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 33
    iget-object v12, v2, Le/m/a/c/g1/d0/h;->b:Le/m/a/c/g1/s;

    const/4 v15, 0x1

    .line 34
    iget v1, v1, Le/m/a/c/q1/t;->c:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    .line 35
    invoke-interface/range {v12 .. v18}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 36
    iput-wide v6, v2, Le/m/a/c/g1/d0/h;->e:J

    .line 37
    :cond_8
    iget-wide v6, v2, Le/m/a/c/g1/d0/h;->g:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Le/m/a/c/g1/d0/h;->g:J

    goto/16 :goto_7

    .line 38
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 39
    :cond_a
    iget-wide v4, v2, Le/m/a/c/g1/d0/h;->f:J

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Le/m/a/c/g1/e;->i(I)V

    .line 40
    iput v15, v2, Le/m/a/c/g1/d0/h;->h:I

    goto/16 :goto_7

    :cond_b
    move v5, v4

    :cond_c
    :goto_3
    if-eqz v5, :cond_e

    .line 41
    iget-object v5, v2, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    invoke-virtual {v5, v1}, Le/m/a/c/g1/d0/d;->b(Le/m/a/c/g1/e;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 42
    iput v9, v2, Le/m/a/c/g1/d0/h;->h:I

    goto :goto_1

    .line 43
    :cond_d
    iget-wide v10, v1, Le/m/a/c/g1/e;->d:J

    .line 44
    iget-wide v12, v2, Le/m/a/c/g1/d0/h;->f:J

    sub-long/2addr v10, v12

    iput-wide v10, v2, Le/m/a/c/g1/d0/h;->k:J

    .line 45
    iget-object v5, v2, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    .line 46
    iget-object v5, v5, Le/m/a/c/g1/d0/d;->b:Le/m/a/c/q1/t;

    .line 47
    iget-object v10, v2, Le/m/a/c/g1/d0/h;->j:Le/m/a/c/g1/d0/h$b;

    invoke-virtual {v2, v5, v12, v13, v10}, Le/m/a/c/g1/d0/h;->d(Le/m/a/c/q1/t;JLe/m/a/c/g1/d0/h$b;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 48
    iget-wide v10, v1, Le/m/a/c/g1/e;->d:J

    .line 49
    iput-wide v10, v2, Le/m/a/c/g1/d0/h;->f:J

    goto :goto_3

    .line 50
    :cond_e
    iget-object v5, v2, Le/m/a/c/g1/d0/h;->j:Le/m/a/c/g1/d0/h$b;

    iget-object v5, v5, Le/m/a/c/g1/d0/h$b;->a:Lcom/google/android/exoplayer2/Format;

    iget v8, v5, Lcom/google/android/exoplayer2/Format;->w:I

    iput v8, v2, Le/m/a/c/g1/d0/h;->i:I

    .line 51
    iget-boolean v8, v2, Le/m/a/c/g1/d0/h;->m:Z

    if-nez v8, :cond_f

    .line 52
    iget-object v8, v2, Le/m/a/c/g1/d0/h;->b:Le/m/a/c/g1/s;

    invoke-interface {v8, v5}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 53
    iput-boolean v4, v2, Le/m/a/c/g1/d0/h;->m:Z

    .line 54
    :cond_f
    iget-object v5, v2, Le/m/a/c/g1/d0/h;->j:Le/m/a/c/g1/d0/h$b;

    iget-object v5, v5, Le/m/a/c/g1/d0/h$b;->b:Le/m/a/c/g1/d0/f;

    const/4 v13, 0x0

    if-eqz v5, :cond_10

    .line 55
    iput-object v5, v2, Le/m/a/c/g1/d0/h;->d:Le/m/a/c/g1/d0/f;

    :goto_4
    move-object v1, v13

    move v5, v15

    goto :goto_6

    .line 56
    :cond_10
    iget-wide v11, v1, Le/m/a/c/g1/e;->c:J

    cmp-long v1, v11, v6

    if-nez v1, :cond_11

    .line 57
    new-instance v1, Le/m/a/c/g1/d0/h$c;

    invoke-direct {v1, v13}, Le/m/a/c/g1/d0/h$c;-><init>(Le/m/a/c/g1/d0/h$a;)V

    iput-object v1, v2, Le/m/a/c/g1/d0/h;->d:Le/m/a/c/g1/d0/f;

    goto :goto_4

    .line 58
    :cond_11
    iget-object v1, v2, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    .line 59
    iget-object v1, v1, Le/m/a/c/g1/d0/d;->a:Le/m/a/c/g1/d0/e;

    .line 60
    iget v5, v1, Le/m/a/c/g1/d0/e;->b:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_12

    move/from16 v17, v4

    goto :goto_5

    :cond_12
    move/from16 v17, v3

    .line 61
    :goto_5
    new-instance v4, Le/m/a/c/g1/d0/a;

    iget-wide v9, v2, Le/m/a/c/g1/d0/h;->f:J

    .line 62
    iget v5, v1, Le/m/a/c/g1/d0/e;->e:I

    iget v6, v1, Le/m/a/c/g1/d0/e;->f:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    iget-wide v7, v1, Le/m/a/c/g1/d0/e;->c:J

    move-wide/from16 v18, v7

    move-object v7, v4

    move-object v8, v2

    move-object v1, v13

    move-wide v13, v5

    move v5, v15

    move-wide/from16 v15, v18

    invoke-direct/range {v7 .. v17}, Le/m/a/c/g1/d0/a;-><init>(Le/m/a/c/g1/d0/h;JJJJZ)V

    iput-object v4, v2, Le/m/a/c/g1/d0/h;->d:Le/m/a/c/g1/d0/f;

    .line 63
    :goto_6
    iput-object v1, v2, Le/m/a/c/g1/d0/h;->j:Le/m/a/c/g1/d0/h$b;

    .line 64
    iput v5, v2, Le/m/a/c/g1/d0/h;->h:I

    .line 65
    iget-object v1, v2, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    .line 66
    iget-object v1, v1, Le/m/a/c/g1/d0/d;->b:Le/m/a/c/q1/t;

    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    array-length v4, v2

    const v5, 0xfe01

    if-ne v4, v5, :cond_13

    goto :goto_7

    .line 67
    :cond_13
    iget v4, v1, Le/m/a/c/q1/t;->c:I

    .line 68
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Le/m/a/c/q1/t;->a:[B

    :goto_7
    return v3
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/d0/c;->a:Le/m/a/c/g1/i;

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/m/a/c/g1/d0/c;->b(Le/m/a/c/g1/e;)Z

    move-result p1
    :try_end_0
    .catch Le/m/a/c/m0; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
