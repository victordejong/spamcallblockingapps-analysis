.class public final Le/m/a/c/g1/z/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# instance fields
.field public final a:Le/m/a/c/q1/t;

.field public final b:Le/m/a/c/q1/t;

.field public final c:Le/m/a/c/q1/t;

.field public final d:Le/m/a/c/q1/t;

.field public final e:Le/m/a/c/g1/z/c;

.field public f:Le/m/a/c/g1/i;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Le/m/a/c/g1/z/a;

.field public p:Le/m/a/c/g1/z/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/t;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    .line 3
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/z/b;->b:Le/m/a/c/q1/t;

    .line 4
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    .line 5
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0}, Le/m/a/c/q1/t;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/z/b;->d:Le/m/a/c/q1/t;

    .line 6
    new-instance v0, Le/m/a/c/g1/z/c;

    invoke-direct {v0}, Le/m/a/c/g1/z/c;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/z/b;->e:Le/m/a/c/g1/z/c;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Le/m/a/c/g1/z/b;->g:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Le/m/a/c/g1/z/b;->g:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/m/a/c/g1/z/b;->h:Z

    .line 3
    iput p1, p0, Le/m/a/c/g1/z/b;->j:I

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Le/m/a/c/g1/z/b;->n:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/g1/z/b;->f:Le/m/a/c/g1/i;

    new-instance v1, Le/m/a/c/g1/q$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 4
    invoke-interface {v0, v1}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le/m/a/c/g1/z/b;->n:Z

    :cond_0
    return-void
.end method

.method public final c(Le/m/a/c/g1/e;)Le/m/a/c/q1/t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/a/c/g1/z/b;->l:I

    iget-object v1, p0, Le/m/a/c/g1/z/b;->d:Le/m/a/c/q1/t;

    .line 2
    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    .line 3
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 5
    iput-object v0, v1, Le/m/a/c/q1/t;->a:[B

    .line 6
    iput v4, v1, Le/m/a/c/q1/t;->c:I

    .line 7
    iput v4, v1, Le/m/a/c/q1/t;->b:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Le/m/a/c/g1/z/b;->d:Le/m/a/c/q1/t;

    iget v1, p0, Le/m/a/c/g1/z/b;->l:I

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->B(I)V

    .line 10
    iget-object v0, p0, Le/m/a/c/g1/z/b;->d:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/g1/z/b;->l:I

    .line 11
    invoke-virtual {p1, v0, v4, v1, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 12
    iget-object p1, p0, Le/m/a/c/g1/z/b;->d:Le/m/a/c/q1/t;

    return-object p1
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v0, Le/m/a/c/g1/z/b;->g:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-eq v2, v7, :cond_d

    const/4 v10, 0x3

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_a

    if-ne v2, v9, :cond_9

    .line 2
    iget-boolean v2, v0, Le/m/a/c/g1/z/b;->h:Z

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Le/m/a/c/g1/z/b;->i:J

    iget-wide v14, v0, Le/m/a/c/g1/z/b;->m:J

    add-long/2addr v2, v14

    goto :goto_1

    :cond_1
    iget-object v2, v0, Le/m/a/c/g1/z/b;->e:Le/m/a/c/g1/z/c;

    .line 3
    iget-wide v2, v2, Le/m/a/c/g1/z/c;->b:J

    cmp-long v2, v2, v12

    if-nez v2, :cond_2

    move-wide v2, v10

    goto :goto_1

    .line 4
    :cond_2
    iget-wide v2, v0, Le/m/a/c/g1/z/b;->m:J

    .line 5
    :goto_1
    iget v14, v0, Le/m/a/c/g1/z/b;->k:I

    if-ne v14, v4, :cond_3

    iget-object v4, v0, Le/m/a/c/g1/z/b;->o:Le/m/a/c/g1/z/a;

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/z/b;->b()V

    .line 7
    iget-object v4, v0, Le/m/a/c/g1/z/b;->o:Le/m/a/c/g1/z/a;

    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/z/b;->c(Le/m/a/c/g1/e;)Le/m/a/c/q1/t;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Le/m/a/c/g1/z/d;->a(Le/m/a/c/q1/t;J)Z

    move-result v2

    goto :goto_2

    :cond_3
    if-ne v14, v5, :cond_4

    .line 8
    iget-object v4, v0, Le/m/a/c/g1/z/b;->p:Le/m/a/c/g1/z/e;

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/z/b;->b()V

    .line 10
    iget-object v4, v0, Le/m/a/c/g1/z/b;->p:Le/m/a/c/g1/z/e;

    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/z/b;->c(Le/m/a/c/g1/e;)Le/m/a/c/q1/t;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Le/m/a/c/g1/z/d;->a(Le/m/a/c/q1/t;J)Z

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v4, 0x12

    if-ne v14, v4, :cond_6

    .line 11
    iget-boolean v4, v0, Le/m/a/c/g1/z/b;->n:Z

    if-nez v4, :cond_6

    .line 12
    iget-object v4, v0, Le/m/a/c/g1/z/b;->e:Le/m/a/c/g1/z/c;

    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/z/b;->c(Le/m/a/c/g1/e;)Le/m/a/c/q1/t;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Le/m/a/c/g1/z/d;->a(Le/m/a/c/q1/t;J)Z

    move-result v2

    .line 13
    iget-object v3, v0, Le/m/a/c/g1/z/b;->e:Le/m/a/c/g1/z/c;

    .line 14
    iget-wide v3, v3, Le/m/a/c/g1/z/c;->b:J

    cmp-long v5, v3, v12

    if-eqz v5, :cond_5

    .line 15
    iget-object v5, v0, Le/m/a/c/g1/z/b;->f:Le/m/a/c/g1/i;

    new-instance v14, Le/m/a/c/g1/q$b;

    .line 16
    invoke-direct {v14, v3, v4, v10, v11}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 17
    invoke-interface {v5, v14}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 18
    iput-boolean v7, v0, Le/m/a/c/g1/z/b;->n:Z

    :cond_5
    :goto_2
    move v3, v7

    goto :goto_3

    .line 19
    :cond_6
    iget v2, v0, Le/m/a/c/g1/z/b;->l:I

    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    move v2, v8

    move v3, v2

    .line 20
    :goto_3
    iget-boolean v4, v0, Le/m/a/c/g1/z/b;->h:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 21
    iput-boolean v7, v0, Le/m/a/c/g1/z/b;->h:Z

    .line 22
    iget-object v2, v0, Le/m/a/c/g1/z/b;->e:Le/m/a/c/g1/z/c;

    .line 23
    iget-wide v4, v2, Le/m/a/c/g1/z/c;->b:J

    cmp-long v2, v4, v12

    if-nez v2, :cond_7

    .line 24
    iget-wide v4, v0, Le/m/a/c/g1/z/b;->m:J

    neg-long v10, v4

    :cond_7
    iput-wide v10, v0, Le/m/a/c/g1/z/b;->i:J

    .line 25
    :cond_8
    iput v9, v0, Le/m/a/c/g1/z/b;->j:I

    .line 26
    iput v6, v0, Le/m/a/c/g1/z/b;->g:I

    if-eqz v3, :cond_0

    return v8

    .line 27
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 28
    :cond_a
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v8, v4, v7}, Le/m/a/c/g1/e;->h([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    move v7, v8

    goto :goto_4

    .line 29
    :cond_b
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 30
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v2

    iput v2, v0, Le/m/a/c/g1/z/b;->k:I

    .line 31
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->s()I

    move-result v2

    iput v2, v0, Le/m/a/c/g1/z/b;->l:I

    .line 32
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->s()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Le/m/a/c/g1/z/b;->m:J

    .line 33
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v4, v2

    iget-wide v11, v0, Le/m/a/c/g1/z/b;->m:J

    or-long/2addr v4, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v4, v11

    iput-wide v4, v0, Le/m/a/c/g1/z/b;->m:J

    .line 34
    iget-object v2, v0, Le/m/a/c/g1/z/b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v10}, Le/m/a/c/q1/t;->D(I)V

    .line 35
    iput v9, v0, Le/m/a/c/g1/z/b;->g:I

    :goto_4
    if-nez v7, :cond_0

    return v3

    .line 36
    :cond_c
    iget v2, v0, Le/m/a/c/g1/z/b;->j:I

    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 37
    iput v8, v0, Le/m/a/c/g1/z/b;->j:I

    .line 38
    iput v10, v0, Le/m/a/c/g1/z/b;->g:I

    goto/16 :goto_0

    .line 39
    :cond_d
    iget-object v2, v0, Le/m/a/c/g1/z/b;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v1, v2, v8, v5, v7}, Le/m/a/c/g1/e;->h([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    move v7, v8

    goto :goto_6

    .line 40
    :cond_e
    iget-object v2, v0, Le/m/a/c/g1/z/b;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 41
    iget-object v2, v0, Le/m/a/c/g1/z/b;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v9}, Le/m/a/c/q1/t;->D(I)V

    .line 42
    iget-object v2, v0, Le/m/a/c/g1/z/b;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v2

    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_f

    move v10, v7

    goto :goto_5

    :cond_f
    move v10, v8

    :goto_5
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    move v8, v7

    :cond_10
    if-eqz v10, :cond_11

    .line 43
    iget-object v2, v0, Le/m/a/c/g1/z/b;->o:Le/m/a/c/g1/z/a;

    if-nez v2, :cond_11

    .line 44
    new-instance v2, Le/m/a/c/g1/z/a;

    iget-object v10, v0, Le/m/a/c/g1/z/b;->f:Le/m/a/c/g1/i;

    .line 45
    invoke-interface {v10, v4, v7}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v4

    invoke-direct {v2, v4}, Le/m/a/c/g1/z/a;-><init>(Le/m/a/c/g1/s;)V

    iput-object v2, v0, Le/m/a/c/g1/z/b;->o:Le/m/a/c/g1/z/a;

    :cond_11
    if-eqz v8, :cond_12

    .line 46
    iget-object v2, v0, Le/m/a/c/g1/z/b;->p:Le/m/a/c/g1/z/e;

    if-nez v2, :cond_12

    .line 47
    new-instance v2, Le/m/a/c/g1/z/e;

    iget-object v4, v0, Le/m/a/c/g1/z/b;->f:Le/m/a/c/g1/i;

    .line 48
    invoke-interface {v4, v5, v6}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v4

    invoke-direct {v2, v4}, Le/m/a/c/g1/z/e;-><init>(Le/m/a/c/g1/s;)V

    iput-object v2, v0, Le/m/a/c/g1/z/b;->p:Le/m/a/c/g1/z/e;

    .line 49
    :cond_12
    iget-object v2, v0, Le/m/a/c/g1/z/b;->f:Le/m/a/c/g1/i;

    invoke-interface {v2}, Le/m/a/c/g1/i;->g()V

    .line 50
    iget-object v2, v0, Le/m/a/c/g1/z/b;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v2, v9

    iput v2, v0, Le/m/a/c/g1/z/b;->j:I

    .line 51
    iput v6, v0, Le/m/a/c/g1/z/b;->g:I

    :goto_6
    if-nez v7, :cond_0

    return v3
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/z/b;->f:Le/m/a/c/g1/i;

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 4
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->s()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v0, v1, v2, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 7
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 8
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->v()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 11
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 12
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v0

    .line 13
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 14
    invoke-virtual {p1, v0, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 15
    iget-object v0, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    .line 16
    invoke-virtual {p1, v0, v1, v2, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 17
    iget-object p1, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {p1, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 18
    iget-object p1, p0, Le/m/a/c/g1/z/b;->a:Le/m/a/c/q1/t;

    invoke-virtual {p1}, Le/m/a/c/q1/t;->e()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method
