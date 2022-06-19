.class public final Ln3/y/b/a/q0/w/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# instance fields
.field public final a:I

.field public final b:Ln3/y/b/a/q0/w/f;

.field public final c:Ln3/y/b/a/x0/m;

.field public final d:Ln3/y/b/a/x0/m;

.field public final e:Ln3/y/b/a/x0/l;

.field public f:Ln3/y/b/a/q0/h;

.field public g:J

.field public h:J

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/w/e;->a:I

    .line 3
    new-instance p1, Ln3/y/b/a/q0/w/f;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p1, v1, v0}, Ln3/y/b/a/q0/w/f;-><init>(ZLjava/lang/String;)V

    .line 5
    iput-object p1, p0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    .line 6
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/e;->c:Ln3/y/b/a/x0/m;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Ln3/y/b/a/q0/w/e;->i:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Ln3/y/b/a/q0/w/e;->h:J

    .line 9
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    .line 10
    new-instance v0, Ln3/y/b/a/x0/l;

    iget-object p1, p1, Ln3/y/b/a/x0/m;->a:[B

    invoke-direct {v0, p1}, Ln3/y/b/a/x0/l;-><init>([B)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/e;->e:Ln3/y/b/a/x0/l;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Ln3/y/b/a/q0/w/e;->k:Z

    .line 2
    iget-object p1, p0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    invoke-virtual {p1}, Ln3/y/b/a/q0/w/f;->a()V

    .line 3
    iput-wide p3, p0, Ln3/y/b/a/q0/w/e;->g:J

    return-void
.end method

.method public final b(Ln3/y/b/a/q0/d;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/16 v3, 0xa

    .line 2
    invoke-virtual {p1, v2, v0, v3, v0}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 3
    iget-object v2, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v0}, Ln3/y/b/a/x0/m;->z(I)V

    .line 4
    iget-object v2, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->q()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    .line 5
    iput v0, p1, Ln3/y/b/a/q0/d;->f:I

    .line 6
    invoke-virtual {p1, v1, v0}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 7
    iget-wide v2, p0, Ln3/y/b/a/q0/w/e;->h:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 8
    iput-wide v2, p0, Ln3/y/b/a/q0/w/e;->h:J

    :cond_0
    return v1

    .line 9
    :cond_1
    iget-object v2, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->A(I)V

    .line 10
    iget-object v2, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->n()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 11
    invoke-virtual {p1, v2, v0}, Ln3/y/b/a/q0/d;->a(IZ)Z

    goto :goto_0
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 5

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/w/e;->f:Ln3/y/b/a/q0/h;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    new-instance v1, Ln3/y/b/a/q0/w/c0$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    invoke-direct {v1, v2, v3, v4}, Ln3/y/b/a/q0/w/c0$d;-><init>(III)V

    .line 4
    invoke-virtual {v0, p1, v1}, Ln3/y/b/a/q0/w/f;->e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V

    .line 5
    invoke-interface {p1}, Ln3/y/b/a/q0/h;->g()V

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/q0/w/e;->b(Ln3/y/b/a/q0/d;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    move v2, v1

    move v4, v2

    .line 2
    :goto_1
    iget-object v5, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    const/4 v6, 0x2

    .line 3
    invoke-virtual {p1, v5, v1, v6, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 4
    iget-object v5, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v5, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 5
    iget-object v5, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->t()I

    move-result v5

    .line 6
    invoke-static {v5}, Ln3/y/b/a/q0/w/f;->g(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    iput v1, p1, Ln3/y/b/a/q0/d;->f:I

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p1, v3, v1}, Ln3/y/b/a/q0/d;->a(IZ)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 9
    :cond_2
    iget-object v5, p0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    .line 10
    invoke-virtual {p1, v5, v1, v6, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 11
    iget-object v5, p0, Ln3/y/b/a/q0/w/e;->e:Ln3/y/b/a/x0/l;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Ln3/y/b/a/x0/l;->h(I)V

    .line 12
    iget-object v5, p0, Ln3/y/b/a/q0/w/e;->e:Ln3/y/b/a/x0/l;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 13
    invoke-virtual {p1, v6, v1}, Ln3/y/b/a/q0/d;->a(IZ)Z

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Ln3/y/b/a/q0/d;->c:J

    .line 2
    iget v4, v0, Ln3/y/b/a/q0/w/e;->a:I

    const/4 v8, 0x1

    and-int/2addr v4, v8

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v10, -0x1

    if-eqz v4, :cond_a

    .line 3
    iget-boolean v7, v0, Ln3/y/b/a/q0/w/e;->j:Z

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iput v10, v0, Ln3/y/b/a/q0/w/e;->i:I

    .line 5
    iput v9, v1, Ln3/y/b/a/q0/d;->f:I

    .line 6
    iget-wide v11, v1, Ln3/y/b/a/q0/d;->d:J

    cmp-long v7, v11, v5

    if-nez v7, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/q0/w/e;->b(Ln3/y/b/a/q0/d;)I

    :cond_2
    move-wide v11, v5

    move v7, v9

    .line 8
    :cond_3
    iget-object v13, v0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    iget-object v13, v13, Ln3/y/b/a/x0/m;->a:[B

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v9, v14, v8}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 9
    iget-object v13, v0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v13, v9}, Ln3/y/b/a/x0/m;->z(I)V

    .line 10
    iget-object v13, v0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->t()I

    move-result v13

    .line 11
    invoke-static {v13}, Ln3/y/b/a/q0/w/f;->g(I)Z

    move-result v13

    if-nez v13, :cond_4

    move v7, v9

    goto :goto_1

    .line 12
    :cond_4
    iget-object v13, v0, Ln3/y/b/a/q0/w/e;->d:Ln3/y/b/a/x0/m;

    iget-object v13, v13, Ln3/y/b/a/x0/m;->a:[B

    const/4 v14, 0x4

    invoke-virtual {v1, v13, v9, v14, v8}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v13, v0, Ln3/y/b/a/q0/w/e;->e:Ln3/y/b/a/x0/l;

    const/16 v14, 0xe

    invoke-virtual {v13, v14}, Ln3/y/b/a/x0/l;->h(I)V

    .line 14
    iget-object v13, v0, Ln3/y/b/a/q0/w/e;->e:Ln3/y/b/a/x0/l;

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_7

    int-to-long v14, v13

    add-long/2addr v11, v14

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x3e8

    if-ne v7, v14, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v13, v13, -0x6

    .line 15
    invoke-virtual {v1, v13, v8}, Ln3/y/b/a/q0/d;->a(IZ)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_1

    .line 16
    :cond_7
    iput-boolean v8, v0, Ln3/y/b/a/q0/w/e;->j:Z

    .line 17
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Malformed ADTS stream"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_8
    :goto_1
    iput v9, v1, Ln3/y/b/a/q0/d;->f:I

    if-lez v7, :cond_9

    int-to-long v13, v7

    .line 19
    div-long/2addr v11, v13

    long-to-int v7, v11

    iput v7, v0, Ln3/y/b/a/q0/w/e;->i:I

    goto :goto_2

    .line 20
    :cond_9
    iput v10, v0, Ln3/y/b/a/q0/w/e;->i:I

    .line 21
    :goto_2
    iput-boolean v8, v0, Ln3/y/b/a/q0/w/e;->j:Z

    .line 22
    :cond_a
    :goto_3
    iget-object v7, v0, Ln3/y/b/a/q0/w/e;->c:Ln3/y/b/a/x0/m;

    iget-object v7, v7, Ln3/y/b/a/x0/m;->a:[B

    const/16 v11, 0x800

    invoke-virtual {v1, v7, v9, v11}, Ln3/y/b/a/q0/d;->e([BII)I

    move-result v11

    if-ne v11, v10, :cond_b

    move v12, v8

    goto :goto_4

    :cond_b
    move v12, v9

    .line 23
    :goto_4
    iget-boolean v1, v0, Ln3/y/b/a/q0/w/e;->l:Z

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_d

    .line 24
    iget v1, v0, Ln3/y/b/a/q0/w/e;->i:I

    if-lez v1, :cond_d

    move v1, v8

    goto :goto_5

    :cond_d
    move v1, v9

    :goto_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_e

    .line 25
    iget-object v4, v0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    .line 26
    iget-wide v9, v4, Ln3/y/b/a/q0/w/f;->q:J

    cmp-long v4, v9, v13

    if-nez v4, :cond_e

    if-nez v12, :cond_e

    goto :goto_7

    .line 27
    :cond_e
    iget-object v9, v0, Ln3/y/b/a/q0/w/e;->f:Ln3/y/b/a/q0/h;

    .line 28
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 29
    iget-object v1, v0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    .line 30
    iget-wide v5, v1, Ln3/y/b/a/q0/w/f;->q:J

    cmp-long v1, v5, v13

    if-eqz v1, :cond_f

    .line 31
    iget v7, v0, Ln3/y/b/a/q0/w/e;->i:I

    mul-int/lit8 v1, v7, 0x8

    int-to-long v13, v1

    const-wide/32 v16, 0xf4240

    mul-long v13, v13, v16

    .line 32
    div-long/2addr v13, v5

    long-to-int v6, v13

    .line 33
    new-instance v10, Ln3/y/b/a/q0/c;

    iget-wide v4, v0, Ln3/y/b/a/q0/w/e;->h:J

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Ln3/y/b/a/q0/c;-><init>(JJII)V

    .line 34
    invoke-interface {v9, v10}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    goto :goto_6

    .line 35
    :cond_f
    new-instance v1, Ln3/y/b/a/q0/n$b;

    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {v1, v13, v14, v2, v3}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 37
    invoke-interface {v9, v1}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    .line 38
    :goto_6
    iput-boolean v8, v0, Ln3/y/b/a/q0/w/e;->l:Z

    :goto_7
    if-eqz v12, :cond_10

    const/4 v1, -0x1

    return v1

    .line 39
    :cond_10
    iget-object v1, v0, Ln3/y/b/a/q0/w/e;->c:Ln3/y/b/a/x0/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 40
    iget-object v1, v0, Ln3/y/b/a/q0/w/e;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v11}, Ln3/y/b/a/x0/m;->y(I)V

    .line 41
    iget-boolean v1, v0, Ln3/y/b/a/q0/w/e;->k:Z

    if-nez v1, :cond_11

    .line 42
    iget-object v1, v0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    iget-wide v2, v0, Ln3/y/b/a/q0/w/e;->g:J

    .line 43
    iput-wide v2, v1, Ln3/y/b/a/q0/w/f;->s:J

    .line 44
    iput-boolean v8, v0, Ln3/y/b/a/q0/w/e;->k:Z

    .line 45
    :cond_11
    iget-object v1, v0, Ln3/y/b/a/q0/w/e;->b:Ln3/y/b/a/q0/w/f;

    iget-object v2, v0, Ln3/y/b/a/q0/w/e;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/w/f;->d(Ln3/y/b/a/x0/m;)V

    const/4 v1, 0x0

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method
