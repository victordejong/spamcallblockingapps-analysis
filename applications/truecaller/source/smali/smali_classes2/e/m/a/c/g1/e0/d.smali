.class public final Le/m/a/c/g1/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/j;


# instance fields
.field public final a:Le/m/a/c/q1/s;

.field public final b:Le/m/a/c/q1/t;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Le/m/a/c/g1/s;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Lcom/google/android/exoplayer2/Format;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/s;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/e0/d;->a:Le/m/a/c/q1/s;

    .line 3
    new-instance v1, Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/s;->a:[B

    invoke-direct {v1, v0}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object v1, p0, Le/m/a/c/g1/e0/d;->b:Le/m/a/c/q1/t;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/m/a/c/g1/e0/d;->f:I

    .line 5
    iput v0, p0, Le/m/a/c/g1/e0/d;->g:I

    .line 6
    iput-boolean v0, p0, Le/m/a/c/g1/e0/d;->h:Z

    .line 7
    iput-boolean v0, p0, Le/m/a/c/g1/e0/d;->i:Z

    .line 8
    iput-object p1, p0, Le/m/a/c/g1/e0/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/e0/d;->f:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/e0/d;->g:I

    .line 3
    iput-boolean v0, p0, Le/m/a/c/g1/e0/d;->h:Z

    .line 4
    iput-boolean v0, p0, Le/m/a/c/g1/e0/d;->i:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/e0/d;->m:J

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    if-lez v2, :cond_e

    .line 2
    iget v2, v0, Le/m/a/c/g1/e0/d;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    iget v3, v0, Le/m/a/c/g1/e0/d;->l:I

    iget v4, v0, Le/m/a/c/g1/e0/d;->g:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Le/m/a/c/g1/e0/d;->e:Le/m/a/c/g1/s;

    invoke-interface {v3, v1, v2}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 5
    iget v3, v0, Le/m/a/c/g1/e0/d;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Le/m/a/c/g1/e0/d;->g:I

    .line 6
    iget v10, v0, Le/m/a/c/g1/e0/d;->l:I

    if-ne v3, v10, :cond_0

    .line 7
    iget-object v6, v0, Le/m/a/c/g1/e0/d;->e:Le/m/a/c/g1/s;

    iget-wide v7, v0, Le/m/a/c/g1/e0/d;->m:J

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 8
    iget-wide v2, v0, Le/m/a/c/g1/e0/d;->m:J

    iget-wide v6, v0, Le/m/a/c/g1/e0/d;->j:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Le/m/a/c/g1/e0/d;->m:J

    .line 9
    iput v5, v0, Le/m/a/c/g1/e0/d;->f:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, v0, Le/m/a/c/g1/e0/d;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 11
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v6

    iget v7, v0, Le/m/a/c/g1/e0/d;->g:I

    const/16 v8, 0x10

    rsub-int/lit8 v7, v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 12
    iget v7, v0, Le/m/a/c/g1/e0/d;->g:I

    .line 13
    iget-object v9, v1, Le/m/a/c/q1/t;->a:[B

    iget v10, v1, Le/m/a/c/q1/t;->b:I

    invoke-static {v9, v10, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    add-int/2addr v2, v6

    iput v2, v1, Le/m/a/c/q1/t;->b:I

    .line 15
    iget v2, v0, Le/m/a/c/g1/e0/d;->g:I

    add-int/2addr v2, v6

    iput v2, v0, Le/m/a/c/g1/e0/d;->g:I

    if-ne v2, v8, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 16
    iget-object v2, v0, Le/m/a/c/g1/e0/d;->a:Le/m/a/c/q1/s;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->j(I)V

    .line 17
    iget-object v2, v0, Le/m/a/c/g1/e0/d;->a:Le/m/a/c/q1/s;

    invoke-static {v2}, Le/m/a/c/c1/h;->b(Le/m/a/c/q1/s;)Le/m/a/c/c1/h$b;

    move-result-object v2

    .line 18
    iget-object v4, v0, Le/m/a/c/g1/e0/d;->k:Lcom/google/android/exoplayer2/Format;

    if-eqz v4, :cond_4

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne v3, v6, :cond_4

    iget v6, v2, Le/m/a/c/c1/h$b;->a:I

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->w:I

    if-ne v6, v7, :cond_4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v6, "audio/ac4"

    .line 19
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    :cond_4
    iget-object v9, v0, Le/m/a/c/g1/e0/d;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x2

    iget v15, v2, Le/m/a/c/c1/h$b;->a:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v4, v0, Le/m/a/c/g1/e0/d;->c:Ljava/lang/String;

    const-string v10, "audio/ac4"

    move-object/from16 v19, v4

    .line 21
    invoke-static/range {v9 .. v19}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, v0, Le/m/a/c/g1/e0/d;->k:Lcom/google/android/exoplayer2/Format;

    .line 22
    iget-object v6, v0, Le/m/a/c/g1/e0/d;->e:Le/m/a/c/g1/s;

    invoke-interface {v6, v4}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 23
    :cond_5
    iget v4, v2, Le/m/a/c/c1/h$b;->b:I

    iput v4, v0, Le/m/a/c/g1/e0/d;->l:I

    const-wide/32 v6, 0xf4240

    .line 24
    iget v2, v2, Le/m/a/c/c1/h$b;->c:I

    int-to-long v9, v2

    mul-long/2addr v9, v6

    iget-object v2, v0, Le/m/a/c/g1/e0/d;->k:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v6, v2

    div-long/2addr v9, v6

    iput-wide v9, v0, Le/m/a/c/g1/e0/d;->j:J

    .line 25
    iget-object v2, v0, Le/m/a/c/g1/e0/d;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 26
    iget-object v2, v0, Le/m/a/c/g1/e0/d;->e:Le/m/a/c/g1/s;

    iget-object v4, v0, Le/m/a/c/g1/e0/d;->b:Le/m/a/c/q1/t;

    invoke-interface {v2, v4, v8}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 27
    iput v3, v0, Le/m/a/c/g1/e0/d;->f:I

    goto/16 :goto_0

    .line 28
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    const/16 v6, 0x41

    const/16 v7, 0x40

    if-lez v2, :cond_c

    .line 29
    iget-boolean v2, v0, Le/m/a/c/g1/e0/d;->h:Z

    const/16 v8, 0xac

    if-nez v2, :cond_8

    .line 30
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    if-ne v2, v8, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v5

    :goto_3
    iput-boolean v2, v0, Le/m/a/c/g1/e0/d;->h:Z

    goto :goto_2

    .line 31
    :cond_8
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    if-ne v2, v8, :cond_9

    move v8, v4

    goto :goto_4

    :cond_9
    move v8, v5

    .line 32
    :goto_4
    iput-boolean v8, v0, Le/m/a/c/g1/e0/d;->h:Z

    if-eq v2, v7, :cond_a

    if-ne v2, v6, :cond_6

    :cond_a
    if-ne v2, v6, :cond_b

    move v2, v4

    goto :goto_5

    :cond_b
    move v2, v5

    .line 33
    :goto_5
    iput-boolean v2, v0, Le/m/a/c/g1/e0/d;->i:Z

    move v2, v4

    goto :goto_6

    :cond_c
    move v2, v5

    :goto_6
    if-eqz v2, :cond_0

    .line 34
    iput v4, v0, Le/m/a/c/g1/e0/d;->f:I

    .line 35
    iget-object v2, v0, Le/m/a/c/g1/e0/d;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/16 v8, -0x54

    aput-byte v8, v2, v5

    .line 36
    iget-boolean v5, v0, Le/m/a/c/g1/e0/d;->i:Z

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    move v6, v7

    :goto_7
    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 37
    iput v3, v0, Le/m/a/c/g1/e0/d;->g:I

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/e0/d;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/d;->e:Le/m/a/c/g1/s;

    return-void
.end method
