.class public final Ln3/y/b/a/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/y/b/a/l0$b;

.field public final b:Ln3/y/b/a/l0$c;

.field public c:J

.field public d:Ln3/y/b/a/l0;

.field public e:I

.field public f:Z

.field public g:Ln3/y/b/a/z;

.field public h:Ln3/y/b/a/z;

.field public i:Ln3/y/b/a/z;

.field public j:I

.field public k:Ljava/lang/Object;

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/l0$b;

    invoke-direct {v0}, Ln3/y/b/a/l0$b;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    .line 3
    new-instance v0, Ln3/y/b/a/l0$c;

    invoke-direct {v0}, Ln3/y/b/a/l0$c;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    .line 4
    sget-object v0, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    iput-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/z;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v2, v0, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    .line 4
    iput-object v2, p0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    .line 5
    :cond_1
    invoke-virtual {v0}, Ln3/y/b/a/z;->g()V

    .line 6
    iget v0, p0, Ln3/y/b/a/b0;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln3/y/b/a/b0;->j:I

    if-nez v0, :cond_2

    .line 7
    iput-object v1, p0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 8
    iget-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    iget-object v1, v0, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    iput-object v1, p0, Ln3/y/b/a/b0;->k:Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v0, v0, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v0, v0, Ln3/y/b/a/t0/t$a;->d:J

    iput-wide v0, p0, Ln3/y/b/a/b0;->l:J

    .line 10
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 11
    iget-object v0, v0, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    .line 12
    iput-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, v0, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Ln3/y/b/a/b0;->k:Ljava/lang/Object;

    .line 3
    iget-object p1, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object p1, p1, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v2, p1, Ln3/y/b/a/t0/t$a;->d:J

    iput-wide v2, p0, Ln3/y/b/a/b0;->l:J

    .line 4
    invoke-virtual {p0, v0}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/z;->g()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 6
    iput-object v1, p0, Ln3/y/b/a/b0;->k:Ljava/lang/Object;

    .line 7
    :cond_2
    :goto_1
    iput-object v1, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    .line 8
    iput-object v1, p0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 9
    iput-object v1, p0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Ln3/y/b/a/b0;->j:I

    return-void
.end method

.method public final c(Ln3/y/b/a/z;J)Ln3/y/b/a/a0;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    .line 2
    iget-wide v2, v0, Ln3/y/b/a/z;->n:J

    .line 3
    iget-wide v4, v1, Ln3/y/b/a/a0;->e:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 4
    iget-boolean v4, v1, Ln3/y/b/a/a0;->f:Z

    const/4 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    .line 5
    iget-object v4, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v12, v1, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-object v12, v12, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v14

    .line 6
    iget-object v13, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v15, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget-object v4, v8, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    iget v12, v8, Ln3/y/b/a/b0;->e:I

    iget-boolean v5, v8, Ln3/y/b/a/b0;->f:Z

    move-object/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v5

    .line 7
    invoke-virtual/range {v13 .. v18}, Ln3/y/b/a/l0;->d(ILn3/y/b/a/l0$b;Ln3/y/b/a/l0$c;IZ)I

    move-result v4

    if-ne v4, v7, :cond_0

    return-object v11

    .line 8
    :cond_0
    iget-object v5, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v6, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    const/4 v7, 0x1

    .line 9
    invoke-virtual {v5, v4, v6, v7}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    move-result-object v5

    iget v15, v5, Ln3/y/b/a/l0$b;->c:I

    .line 10
    iget-object v5, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget-object v5, v5, Ln3/y/b/a/l0$b;->b:Ljava/lang/Object;

    .line 11
    iget-object v1, v1, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v6, v1, Ln3/y/b/a/t0/t$a;->d:J

    .line 12
    iget-object v1, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v12, v8, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    invoke-virtual {v1, v15, v12}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object v1

    iget v1, v1, Ln3/y/b/a/l0$c;->g:I

    if-ne v1, v4, :cond_3

    .line 13
    iget-object v12, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v13, v8, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    iget-object v14, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 15
    invoke-virtual/range {v12 .. v19}, Ln3/y/b/a/l0;->k(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v11

    .line 16
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 18
    iget-object v0, v0, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-eqz v0, :cond_2

    .line 19
    iget-object v1, v0, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v0, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v0, v0, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v0, v0, Ln3/y/b/a/t0/t$a;->d:J

    goto :goto_0

    .line 21
    :cond_2
    iget-wide v0, v8, Ln3/y/b/a/b0;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Ln3/y/b/a/b0;->c:J

    :goto_0
    move-wide v6, v3

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v5

    move-wide v4, v6

    move-wide v6, v9

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v6

    .line 22
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/b0;->l(Ljava/lang/Object;JJ)Ln3/y/b/a/t0/t$a;

    move-result-object v1

    move-wide v2, v9

    move-wide v4, v6

    .line 23
    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/b0;->d(Ln3/y/b/a/t0/t$a;JJ)Ln3/y/b/a/a0;

    move-result-object v0

    return-object v0

    .line 24
    :cond_4
    iget-object v0, v1, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    .line 25
    iget-object v4, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v5, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v6, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v4, v5, v6}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 26
    invoke-virtual {v0}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 27
    iget v4, v0, Ln3/y/b/a/t0/t$a;->b:I

    .line 28
    iget-object v5, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    .line 29
    iget-object v5, v5, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v5, v5, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object v6, v5, v4

    iget v6, v6, Ln3/y/b/a/t0/o0/a$a;->a:I

    if-ne v6, v7, :cond_5

    return-object v11

    .line 30
    :cond_5
    iget v7, v0, Ln3/y/b/a/t0/t$a;->c:I

    .line 31
    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Ln3/y/b/a/t0/o0/a$a;->a(I)I

    move-result v5

    if-ge v5, v6, :cond_7

    .line 32
    iget-object v2, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v2, v4, v5}, Ln3/y/b/a/l0$b;->e(II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    iget-object v2, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-wide v6, v1, Ln3/y/b/a/a0;->c:J

    iget-wide v9, v0, Ln3/y/b/a/t0/t$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v5

    move-wide v4, v6

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/b0;->e(Ljava/lang/Object;IIJJ)Ln3/y/b/a/a0;

    move-result-object v11

    :goto_2
    return-object v11

    .line 34
    :cond_7
    iget-wide v4, v1, Ln3/y/b/a/a0;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    .line 35
    iget-object v12, v8, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v13, v8, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    iget-object v14, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget v15, v14, Ln3/y/b/a/l0$b;->c:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 37
    invoke-virtual/range {v12 .. v19}, Ln3/y/b/a/l0;->k(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v11

    .line 38
    :cond_8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_3

    :cond_9
    move-wide v2, v4

    .line 39
    :goto_3
    iget-object v1, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-wide v4, v0, Ln3/y/b/a/t0/t$a;->d:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/b0;->f(Ljava/lang/Object;JJ)Ln3/y/b/a/a0;

    move-result-object v0

    return-object v0

    .line 40
    :cond_a
    iget-object v2, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget-wide v3, v1, Ln3/y/b/a/a0;->d:J

    invoke-virtual {v2, v3, v4}, Ln3/y/b/a/l0$b;->c(J)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 41
    iget-object v2, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-wide v3, v1, Ln3/y/b/a/a0;->e:J

    iget-wide v5, v0, Ln3/y/b/a/t0/t$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/b0;->f(Ljava/lang/Object;JJ)Ln3/y/b/a/a0;

    move-result-object v0

    return-object v0

    .line 42
    :cond_b
    iget-object v3, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v3, v2}, Ln3/y/b/a/l0$b;->d(I)I

    move-result v3

    .line 43
    iget-object v4, v8, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v4, v2, v3}, Ln3/y/b/a/l0$b;->e(II)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 44
    :cond_c
    iget-object v4, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Ln3/y/b/a/a0;->e:J

    iget-wide v9, v0, Ln3/y/b/a/t0/t$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/b0;->e(Ljava/lang/Object;IIJJ)Ln3/y/b/a/a0;

    move-result-object v11

    :goto_4
    return-object v11
.end method

.method public final d(Ln3/y/b/a/t0/t$a;JJ)Ln3/y/b/a/a0;
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v1, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 2
    invoke-virtual {p1}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p4, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget p5, p1, Ln3/y/b/a/t0/t$a;->b:I

    iget v0, p1, Ln3/y/b/a/t0/t$a;->c:I

    invoke-virtual {p4, p5, v0}, Ln3/y/b/a/l0$b;->e(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget v2, p1, Ln3/y/b/a/t0/t$a;->b:I

    iget v3, p1, Ln3/y/b/a/t0/t$a;->c:I

    iget-wide v6, p1, Ln3/y/b/a/t0/t$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/b0;->e(Ljava/lang/Object;IIJJ)Ln3/y/b/a/a0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v1, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-wide v4, p1, Ln3/y/b/a/t0/t$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-virtual/range {v0 .. v5}, Ln3/y/b/a/b0;->f(Ljava/lang/Object;JJ)Ln3/y/b/a/a0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;IIJJ)Ln3/y/b/a/a0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Ln3/y/b/a/t0/t$a;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Ln3/y/b/a/t0/t$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 2
    iget-object v1, v0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v2, v0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    move-object/from16 v3, p1

    .line 3
    invoke-virtual {v1, v3, v2}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v1

    iget v2, v7, Ln3/y/b/a/t0/t$a;->b:I

    iget v3, v7, Ln3/y/b/a/t0/t$a;->c:I

    .line 4
    invoke-virtual {v1, v2, v3}, Ln3/y/b/a/l0$b;->a(II)J

    move-result-wide v9

    .line 5
    iget-object v1, v0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    .line 6
    iget-object v1, v1, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v1, v1, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object v1, v1, p2

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v1, v2}, Ln3/y/b/a/t0/o0/a$a;->a(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    .line 8
    iget-object v1, v0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    .line 9
    iget-object v1, v1, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v3, 0x0

    .line 10
    new-instance v13, Ln3/y/b/a/a0;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Ln3/y/b/a/a0;-><init>(Ln3/y/b/a/t0/t$a;JJJJZZ)V

    return-object v13
.end method

.method public final f(Ljava/lang/Object;JJ)Ln3/y/b/a/a0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Ln3/y/b/a/l0$b;->b(J)I

    move-result v1

    .line 2
    new-instance v3, Ln3/y/b/a/t0/t$a;

    move-object/from16 v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, v2, v6, v7, v1}, Ln3/y/b/a/t0/t$a;-><init>(Ljava/lang/Object;JI)V

    .line 3
    invoke-virtual {v3}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v2

    const/4 v6, -0x1

    if-nez v2, :cond_0

    iget v2, v3, Ln3/y/b/a/t0/t$a;->e:I

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v12, v2

    .line 4
    invoke-virtual {v0, v3, v12}, Ln3/y/b/a/b0;->h(Ln3/y/b/a/t0/t$a;Z)Z

    move-result v13

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v6, :cond_1

    .line 5
    iget-object v2, v0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    .line 6
    iget-object v2, v2, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v2, v2, Ln3/y/b/a/t0/o0/a;->b:[J

    aget-wide v1, v2, v1

    move-wide v9, v1

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    cmp-long v1, v9, v7

    if-eqz v1, :cond_3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v14, v9

    goto :goto_3

    .line 7
    :cond_3
    :goto_2
    iget-object v1, v0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget-wide v1, v1, Ln3/y/b/a/l0$b;->d:J

    move-wide v14, v1

    .line 8
    :goto_3
    new-instance v1, Ln3/y/b/a/a0;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    move-wide v8, v9

    move-wide v10, v14

    invoke-direct/range {v2 .. v13}, Ln3/y/b/a/a0;-><init>(Ln3/y/b/a/t0/t$a;JJJJZZ)V

    return-object v1
.end method

.method public g(Ln3/y/b/a/a0;)Ln3/y/b/a/a0;
    .locals 13

    .line 1
    iget-object v1, p1, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    .line 2
    invoke-virtual {v1}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v1, Ln3/y/b/a/t0/t$a;->e:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 3
    invoke-virtual {p0, v1, v10}, Ln3/y/b/a/b0;->h(Ln3/y/b/a/t0/t$a;Z)Z

    move-result v11

    .line 4
    iget-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v2, p1, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-object v2, v2, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 5
    invoke-virtual {v1}, Ln3/y/b/a/t0/t$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget v2, v1, Ln3/y/b/a/t0/t$a;->b:I

    iget v3, v1, Ln3/y/b/a/t0/t$a;->c:I

    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/l0$b;->a(II)J

    move-result-wide v2

    :cond_1
    :goto_1
    move-wide v8, v2

    goto :goto_2

    .line 7
    :cond_2
    iget-wide v2, p1, Ln3/y/b/a/a0;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 8
    :cond_3
    iget-object v0, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    .line 9
    iget-wide v2, v0, Ln3/y/b/a/l0$b;->d:J

    goto :goto_1

    .line 10
    :goto_2
    new-instance v12, Ln3/y/b/a/a0;

    iget-wide v2, p1, Ln3/y/b/a/a0;->b:J

    iget-wide v4, p1, Ln3/y/b/a/a0;->c:J

    iget-wide v6, p1, Ln3/y/b/a/a0;->d:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Ln3/y/b/a/a0;-><init>(Ln3/y/b/a/t0/t$a;JJJJZZ)V

    return-object v12
.end method

.method public final h(Ln3/y/b/a/t0/t$a;Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object p1, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v2

    .line 2
    iget-object p1, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v0, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {p1, v2, v0}, Ln3/y/b/a/l0;->f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object p1

    iget p1, p1, Ln3/y/b/a/l0$b;->c:I

    .line 3
    iget-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v1, p0, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object p1

    iget-boolean p1, p1, Ln3/y/b/a/l0$c;->f:Z

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v3, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget-object v4, p0, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    iget v5, p0, Ln3/y/b/a/b0;->e:I

    iget-boolean v6, p0, Ln3/y/b/a/b0;->f:Z

    .line 4
    invoke-virtual/range {v1 .. v6}, Ln3/y/b/a/l0;->d(ILn3/y/b/a/l0$b;Ln3/y/b/a/l0$c;IZ)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v7

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    return v0
.end method

.method public i(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/z;->f()Z

    move-result v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 3
    iget-boolean v1, v0, Ln3/y/b/a/z;->d:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Ln3/y/b/a/z;->a:Ln3/y/b/a/t0/s;

    .line 5
    iget-wide v2, v0, Ln3/y/b/a/z;->n:J

    sub-long/2addr p1, v2

    .line 6
    invoke-interface {v1, p1, p2}, Ln3/y/b/a/t0/s;->c(J)V

    :cond_0
    return-void
.end method

.method public j(Ln3/y/b/a/z;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    .line 3
    :goto_1
    iget-object p1, p1, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-eqz p1, :cond_2

    .line 4
    iget-object v2, p0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    if-ne p1, v2, :cond_1

    .line 5
    iget-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    iput-object v0, p0, Ln3/y/b/a/b0;->h:Ln3/y/b/a/z;

    move v0, v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ln3/y/b/a/z;->g()V

    .line 7
    iget v2, p0, Ln3/y/b/a/b0;->j:I

    sub-int/2addr v2, v1

    iput v2, p0, Ln3/y/b/a/b0;->j:I

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/b0;->i:Ln3/y/b/a/z;

    const/4 v1, 0x0

    .line 9
    iget-object v2, p1, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-nez v2, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Ln3/y/b/a/z;->b()V

    .line 11
    iput-object v1, p1, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    .line 12
    invoke-virtual {p1}, Ln3/y/b/a/z;->c()V

    :goto_2
    return v0
.end method

.method public k(Ljava/lang/Object;J)Ln3/y/b/a/t0/t$a;
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v1, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v0

    iget v0, v0, Ln3/y/b/a/l0$b;->c:I

    .line 2
    iget-object v1, p0, Ln3/y/b/a/b0;->k:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    invoke-virtual {v3, v1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v3, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v4, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v3, v1, v4}, Ln3/y/b/a/l0;->f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v1

    iget v1, v1, Ln3/y/b/a/l0$b;->c:I

    if-ne v1, v0, :cond_0

    .line 5
    iget-wide v0, p0, Ln3/y/b/a/b0;->l:J

    :goto_0
    move-wide v8, v0

    goto :goto_3

    .line 6
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v1, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v0, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v0, v0, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v0, v0, Ln3/y/b/a/t0/t$a;->d:J

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, v1, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    :goto_2
    if-eqz v1, :cond_4

    .line 11
    iget-object v3, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v4, v1, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 12
    iget-object v4, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v5, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v4, v3, v5}, Ln3/y/b/a/l0;->f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v3

    iget v3, v3, Ln3/y/b/a/l0$b;->c:I

    if-ne v3, v0, :cond_3

    .line 13
    iget-object v0, v1, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-object v0, v0, Ln3/y/b/a/a0;->a:Ln3/y/b/a/t0/t$a;

    iget-wide v0, v0, Ln3/y/b/a/t0/t$a;->d:J

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, v1, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    goto :goto_2

    .line 15
    :cond_4
    iget-wide v0, p0, Ln3/y/b/a/b0;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ln3/y/b/a/b0;->c:J

    goto :goto_0

    :goto_3
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    .line 16
    invoke-virtual/range {v4 .. v9}, Ln3/y/b/a/b0;->l(Ljava/lang/Object;JJ)Ln3/y/b/a/t0/t$a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;JJ)Ln3/y/b/a/t0/t$a;
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v1, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/l0;->h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, p2, p3}, Ln3/y/b/a/l0$b;->c(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {v0, p2, p3}, Ln3/y/b/a/l0$b;->b(J)I

    move-result p2

    .line 4
    new-instance p3, Ln3/y/b/a/t0/t$a;

    invoke-direct {p3, p1, p4, p5, p2}, Ln3/y/b/a/t0/t$a;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 5
    :cond_0
    iget-object p2, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    invoke-virtual {p2, v3}, Ln3/y/b/a/l0$b;->d(I)I

    move-result v4

    .line 6
    new-instance p2, Ln3/y/b/a/t0/t$a;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Ln3/y/b/a/t0/t$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method public final m()Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b0;->g:Ln3/y/b/a/z;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v3, v0, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 3
    :goto_0
    iget-object v2, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v4, p0, Ln3/y/b/a/b0;->a:Ln3/y/b/a/l0$b;

    iget-object v5, p0, Ln3/y/b/a/b0;->b:Ln3/y/b/a/l0$c;

    iget v6, p0, Ln3/y/b/a/b0;->e:I

    iget-boolean v7, p0, Ln3/y/b/a/b0;->f:Z

    .line 4
    invoke-virtual/range {v2 .. v7}, Ln3/y/b/a/l0;->d(ILn3/y/b/a/l0$b;Ln3/y/b/a/l0$c;IZ)I

    move-result v3

    .line 5
    :goto_1
    iget-object v2, v0, Ln3/y/b/a/z;->k:Ln3/y/b/a/z;

    if-eqz v2, :cond_1

    .line 6
    iget-object v4, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    iget-boolean v4, v4, Ln3/y/b/a/a0;->f:Z

    if-nez v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, p0, Ln3/y/b/a/b0;->d:Ln3/y/b/a/l0;

    iget-object v5, v2, Ln3/y/b/a/z;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 8
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Ln3/y/b/a/b0;->j(Ln3/y/b/a/z;)Z

    move-result v2

    .line 9
    iget-object v3, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    invoke-virtual {p0, v3}, Ln3/y/b/a/b0;->g(Ln3/y/b/a/a0;)Ln3/y/b/a/a0;

    move-result-object v3

    iput-object v3, v0, Ln3/y/b/a/z;->f:Ln3/y/b/a/a0;

    xor-int/lit8 v0, v2, 0x1

    return v0
.end method
