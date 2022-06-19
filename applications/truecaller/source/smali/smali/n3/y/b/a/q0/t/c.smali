.class public final Ln3/y/b/a/q0/t/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/t/c$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ln3/y/b/a/x0/m;

.field public final c:Ln3/y/b/a/q0/l;

.field public final d:Ln3/y/b/a/q0/j;

.field public final e:Ln3/y/b/a/q0/k;

.field public f:Ln3/y/b/a/q0/h;

.field public g:Ln3/y/b/a/q0/p;

.field public h:I

.field public i:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field public j:Ln3/y/b/a/q0/t/c$a;

.field public k:J

.field public l:J

.field public m:J

.field public n:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Ln3/y/b/a/q0/t/c;->a:J

    .line 3
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    .line 4
    new-instance p1, Ln3/y/b/a/q0/l;

    invoke-direct {p1}, Ln3/y/b/a/q0/l;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    .line 5
    new-instance p1, Ln3/y/b/a/q0/j;

    invoke-direct {p1}, Ln3/y/b/a/q0/j;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/t/c;->d:Ln3/y/b/a/q0/j;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide p1, p0, Ln3/y/b/a/q0/t/c;->k:J

    .line 7
    new-instance p1, Ln3/y/b/a/q0/k;

    invoke-direct {p1}, Ln3/y/b/a/q0/k;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/t/c;->e:Ln3/y/b/a/q0/k;

    return-void
.end method

.method public static c(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Ln3/y/b/a/q0/t/c;->h:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide p2, p0, Ln3/y/b/a/q0/t/c;->k:J

    const-wide/16 p2, 0x0

    .line 3
    iput-wide p2, p0, Ln3/y/b/a/q0/t/c;->l:J

    .line 4
    iput p1, p0, Ln3/y/b/a/q0/t/c;->n:I

    return-void
.end method

.method public final b(Ln3/y/b/a/q0/d;)Ln3/y/b/a/q0/t/c$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 3
    iget-object v0, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 4
    iget-object v0, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    move-result v0

    iget-object v1, p0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    invoke-static {v0, v1}, Ln3/y/b/a/q0/l;->b(ILn3/y/b/a/q0/l;)Z

    .line 5
    new-instance v0, Ln3/y/b/a/q0/t/a;

    .line 6
    iget-wide v3, p1, Ln3/y/b/a/q0/d;->c:J

    .line 7
    iget-wide v5, p1, Ln3/y/b/a/q0/d;->d:J

    .line 8
    iget-object v7, p0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ln3/y/b/a/q0/t/a;-><init>(JJLn3/y/b/a/q0/l;)V

    return-object v0
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/t/c;->f:Ln3/y/b/a/q0/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/t/c;->g:Ln3/y/b/a/q0/p;

    .line 3
    iget-object p1, p0, Ln3/y/b/a/q0/t/c;->f:Ln3/y/b/a/q0/h;

    invoke-interface {p1}, Ln3/y/b/a/q0/h;->g()V

    return-void
.end method

.method public final e(Ln3/y/b/a/q0/d;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/y/b/a/q0/t/c$a;->e()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/y/b/a/q0/d;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v2, v3, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method public final f(Ln3/y/b/a/q0/d;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    const/4 v1, 0x0

    .line 1
    iput v1, p1, Ln3/y/b/a/q0/d;->f:I

    .line 2
    iget-wide v2, p1, Ln3/y/b/a/q0/d;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 3
    iget-object v2, p0, Ln3/y/b/a/q0/t/c;->e:Ln3/y/b/a/q0/k;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    move v5, v1

    move-object v4, v3

    .line 5
    :goto_1
    :try_start_0
    iget-object v6, v2, Ln3/y/b/a/q0/k;->a:Ln3/y/b/a/x0/m;

    iget-object v6, v6, Ln3/y/b/a/x0/m;->a:[B

    const/16 v7, 0xa

    .line 6
    invoke-virtual {p1, v6, v1, v7, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v6, v2, Ln3/y/b/a/q0/k;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 8
    iget-object v6, v2, Ln3/y/b/a/q0/k;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->q()I

    move-result v6

    const v8, 0x494433

    if-eq v6, v8, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget-object v6, v2, Ln3/y/b/a/q0/k;->a:Ln3/y/b/a/x0/m;

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ln3/y/b/a/x0/m;->A(I)V

    .line 10
    iget-object v6, v2, Ln3/y/b/a/q0/k;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->n()I

    move-result v6

    add-int/lit8 v8, v6, 0xa

    if-nez v4, :cond_2

    .line 11
    new-array v4, v8, [B

    .line 12
    iget-object v9, v2, Ln3/y/b/a/q0/k;->a:Ln3/y/b/a/x0/m;

    iget-object v9, v9, Ln3/y/b/a/x0/m;->a:[B

    invoke-static {v9, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-virtual {p1, v4, v7, v6, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 14
    new-instance v6, Ln3/y/b/a/s0/g/a;

    invoke-direct {v6, v3}, Ln3/y/b/a/s0/g/a;-><init>(Ln3/y/b/a/s0/g/a$a;)V

    invoke-virtual {v6, v4, v8}, Ln3/y/b/a/s0/g/a;->c([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v4

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1, v6, v1}, Ln3/y/b/a/q0/d;->a(IZ)Z

    :goto_2
    add-int/2addr v5, v8

    goto :goto_1

    .line 16
    :catch_0
    :goto_3
    iput v1, p1, Ln3/y/b/a/q0/d;->f:I

    .line 17
    invoke-virtual {p1, v5, v1}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 18
    iput-object v4, p0, Ln3/y/b/a/q0/t/c;->i:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz v4, :cond_3

    .line 19
    iget-object v2, p0, Ln3/y/b/a/q0/t/c;->d:Ln3/y/b/a/q0/j;

    invoke-virtual {v2, v4}, Ln3/y/b/a/q0/j;->c(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    .line 20
    :cond_3
    invoke-virtual {p1}, Ln3/y/b/a/q0/d;->c()J

    move-result-wide v2

    long-to-int v2, v2

    if-nez p2, :cond_5

    .line 21
    invoke-virtual {p1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    goto :goto_4

    :cond_4
    move v2, v1

    :cond_5
    :goto_4
    move v3, v1

    move v4, v3

    move v5, v4

    .line 22
    :goto_5
    invoke-virtual {p0, p1}, Ln3/y/b/a/q0/t/c;->e(Ln3/y/b/a/q0/d;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    if-lez v4, :cond_6

    goto :goto_7

    .line 23
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 24
    :cond_7
    iget-object v6, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 25
    iget-object v6, p0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v6

    if-eqz v3, :cond_8

    int-to-long v8, v3

    .line 26
    invoke-static {v6, v8, v9}, Ln3/y/b/a/q0/t/c;->c(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 27
    :cond_8
    invoke-static {v6}, Ln3/y/b/a/q0/l;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    :cond_9
    add-int/lit8 v3, v5, 0x1

    if-ne v5, v0, :cond_b

    if-eqz p2, :cond_a

    return v1

    .line 28
    :cond_a
    new-instance p1, Ln3/y/b/a/c0;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 29
    iput v1, p1, Ln3/y/b/a/q0/d;->f:I

    add-int v4, v2, v3

    .line 30
    invoke-virtual {p1, v4, v1}, Ln3/y/b/a/q0/d;->a(IZ)Z

    goto :goto_6

    .line 31
    :cond_c
    invoke-virtual {p1, v7}, Ln3/y/b/a/q0/d;->h(I)V

    :goto_6
    move v4, v1

    move v5, v3

    move v3, v4

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_e

    .line 32
    iget-object v3, p0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    invoke-static {v6, v3}, Ln3/y/b/a/q0/l;->b(ILn3/y/b/a/q0/l;)Z

    move v3, v6

    goto :goto_9

    :cond_e
    const/4 v6, 0x4

    if-ne v4, v6, :cond_10

    :goto_7
    if-eqz p2, :cond_f

    add-int/2addr v2, v5

    .line 33
    invoke-virtual {p1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    goto :goto_8

    .line 34
    :cond_f
    iput v1, p1, Ln3/y/b/a/q0/d;->f:I

    .line 35
    :goto_8
    iput v3, p0, Ln3/y/b/a/q0/t/c;->h:I

    return v7

    :cond_10
    :goto_9
    add-int/lit8 v8, v8, -0x4

    .line 36
    invoke-virtual {p1, v8, v1}, Ln3/y/b/a/q0/d;->a(IZ)Z

    goto :goto_5
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Ln3/y/b/a/q0/t/c;->f(Ln3/y/b/a/q0/d;Z)Z

    move-result p1

    return p1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Ln3/y/b/a/q0/t/c;->h:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v4}, Ln3/y/b/a/q0/t/c;->f(Ln3/y/b/a/q0/d;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    .line 3
    :cond_0
    :goto_0
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    const-wide/32 v5, 0xf4240

    const/4 v9, 0x1

    if-nez v2, :cond_1e

    .line 4
    new-instance v2, Ln3/y/b/a/x0/m;

    iget-object v10, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v10, v10, Ln3/y/b/a/q0/l;->c:I

    invoke-direct {v2, v10}, Ln3/y/b/a/x0/m;-><init>(I)V

    .line 5
    iget-object v10, v2, Ln3/y/b/a/x0/m;->a:[B

    iget-object v11, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v11, v11, Ln3/y/b/a/q0/l;->c:I

    .line 6
    invoke-virtual {v1, v10, v4, v11, v4}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 7
    iget-object v10, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v11, v10, Ln3/y/b/a/q0/l;->a:I

    and-int/2addr v11, v9

    const/16 v12, 0x24

    const/16 v13, 0x15

    if-eqz v11, :cond_1

    .line 8
    iget v10, v10, Ln3/y/b/a/q0/l;->e:I

    if-eq v10, v9, :cond_3

    move v13, v12

    goto :goto_1

    .line 9
    :cond_1
    iget v10, v10, Ln3/y/b/a/q0/l;->e:I

    if-eq v10, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v13, 0xd

    .line 10
    :cond_3
    :goto_1
    iget v10, v2, Ln3/y/b/a/x0/m;->c:I

    add-int/lit8 v11, v13, 0x4

    const v14, 0x56425249

    const v15, 0x58696e67

    const v3, 0x496e666f

    if-lt v10, v11, :cond_4

    .line 11
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/m;->z(I)V

    .line 12
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    if-eq v10, v15, :cond_6

    if-ne v10, v3, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    iget v10, v2, Ln3/y/b/a/x0/m;->c:I

    const/16 v11, 0x28

    if-lt v10, v11, :cond_5

    .line 14
    invoke-virtual {v2, v12}, Ln3/y/b/a/x0/m;->z(I)V

    .line 15
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    if-ne v10, v14, :cond_5

    move v10, v14

    goto :goto_2

    :cond_5
    move v10, v4

    :cond_6
    :goto_2
    if-eq v10, v15, :cond_10

    if-ne v10, v3, :cond_7

    goto/16 :goto_8

    :cond_7
    if-ne v10, v14, :cond_f

    .line 16
    iget-wide v13, v1, Ln3/y/b/a/q0/d;->d:J

    .line 17
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    const/16 v10, 0xa

    .line 18
    invoke-virtual {v2, v10}, Ln3/y/b/a/x0/m;->A(I)V

    .line 19
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    if-gtz v10, :cond_8

    goto :goto_5

    .line 20
    :cond_8
    iget v15, v3, Ln3/y/b/a/q0/l;->d:I

    int-to-long v7, v10

    const/16 v10, 0x7d00

    if-lt v15, v10, :cond_9

    const/16 v10, 0x480

    goto :goto_3

    :cond_9
    const/16 v10, 0x240

    :goto_3
    int-to-long v11, v10

    mul-long v18, v11, v5

    int-to-long v10, v15

    move-wide/from16 v16, v7

    move-wide/from16 v20, v10

    .line 21
    invoke-static/range {v16 .. v21}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v27

    .line 22
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v7

    .line 23
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v8

    .line 24
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v10

    const/4 v11, 0x2

    .line 25
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/m;->A(I)V

    .line 26
    iget v3, v3, Ln3/y/b/a/q0/l;->c:I

    int-to-long v5, v3

    add-long/2addr v5, v13

    .line 27
    new-array v3, v7, [J

    .line 28
    new-array v12, v7, [J

    move v15, v4

    :goto_4
    if-ge v15, v7, :cond_e

    move/from16 v16, v10

    int-to-long v9, v15

    mul-long v9, v9, v27

    move-object/from16 v21, v12

    int-to-long v11, v7

    .line 29
    div-long/2addr v9, v11

    aput-wide v9, v3, v15

    .line 30
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    aput-wide v9, v21, v15

    move/from16 v9, v16

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c

    const/4 v11, 0x3

    if-eq v9, v11, :cond_b

    const/4 v11, 0x4

    if-eq v9, v11, :cond_a

    :goto_5
    const/4 v2, 0x0

    goto :goto_7

    .line 31
    :cond_a
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->r()I

    move-result v11

    goto :goto_6

    .line 32
    :cond_b
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->q()I

    move-result v11

    goto :goto_6

    .line 33
    :cond_c
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v11

    goto :goto_6

    :cond_d
    const/4 v10, 0x2

    .line 34
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v11

    :goto_6
    mul-int/2addr v11, v8

    int-to-long v11, v11

    add-long/2addr v13, v11

    add-int/lit8 v15, v15, 0x1

    move v11, v10

    move-object/from16 v12, v21

    move v10, v9

    const/4 v9, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v21, v12

    .line 35
    new-instance v2, Ln3/y/b/a/q0/t/d;

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v21

    move-wide/from16 v29, v13

    invoke-direct/range {v24 .. v30}, Ln3/y/b/a/q0/t/d;-><init>([J[JJJ)V

    .line 36
    :goto_7
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v3, v3, Ln3/y/b/a/q0/l;->c:I

    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/d;->h(I)V

    goto/16 :goto_c

    .line 37
    :cond_f
    iput v4, v1, Ln3/y/b/a/q0/d;->f:I

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 38
    :cond_10
    :goto_8
    iget-wide v5, v1, Ln3/y/b/a/q0/d;->d:J

    .line 39
    iget-object v7, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    .line 40
    iget v8, v7, Ln3/y/b/a/q0/l;->g:I

    .line 41
    iget v9, v7, Ln3/y/b/a/q0/l;->d:I

    .line 42
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v11

    and-int/lit8 v12, v11, 0x1

    const/4 v14, 0x1

    if-ne v12, v14, :cond_14

    .line 43
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->r()I

    move-result v12

    if-nez v12, :cond_11

    goto :goto_a

    :cond_11
    int-to-long v14, v12

    int-to-long v3, v8

    const-wide/32 v16, 0xf4240

    mul-long v26, v3, v16

    move-wide v3, v14

    int-to-long v8, v9

    move-wide/from16 v24, v3

    move-wide/from16 v28, v8

    .line 44
    invoke-static/range {v24 .. v29}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v28

    const/4 v3, 0x6

    and-int/lit8 v4, v11, 0x6

    if-eq v4, v3, :cond_12

    .line 45
    new-instance v2, Ln3/y/b/a/q0/t/e;

    iget v3, v7, Ln3/y/b/a/q0/l;->c:I

    const-wide/16 v30, -0x1

    const/16 v32, 0x0

    move-object/from16 v24, v2

    move-wide/from16 v25, v5

    move/from16 v27, v3

    .line 46
    invoke-direct/range {v24 .. v32}, Ln3/y/b/a/q0/t/e;-><init>(JIJJ[J)V

    move/from16 v17, v13

    goto :goto_b

    .line 47
    :cond_12
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->r()I

    move-result v3

    int-to-long v3, v3

    const/16 v8, 0x64

    new-array v9, v8, [J

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v8, :cond_13

    .line 48
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v14

    move/from16 v17, v13

    int-to-long v12, v14

    aput-wide v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v17

    goto :goto_9

    :cond_13
    move/from16 v17, v13

    .line 49
    new-instance v2, Ln3/y/b/a/q0/t/e;

    iget v7, v7, Ln3/y/b/a/q0/l;->c:I

    move-object/from16 v24, v2

    move-wide/from16 v25, v5

    move/from16 v27, v7

    move-wide/from16 v30, v3

    move-object/from16 v32, v9

    invoke-direct/range {v24 .. v32}, Ln3/y/b/a/q0/t/e;-><init>(JIJJ[J)V

    goto :goto_b

    :cond_14
    :goto_a
    move/from16 v17, v13

    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_16

    .line 50
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->d:Ln3/y/b/a/q0/j;

    invoke-virtual {v3}, Ln3/y/b/a/q0/j;->a()Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v3, 0x0

    .line 51
    iput v3, v1, Ln3/y/b/a/q0/d;->f:I

    move/from16 v13, v17

    add-int/lit16 v13, v13, 0x8d

    .line 52
    invoke-virtual {v1, v13, v3}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 53
    iget-object v4, v0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    iget-object v4, v4, Ln3/y/b/a/x0/m;->a:[B

    const/4 v5, 0x3

    .line 54
    invoke-virtual {v1, v4, v3, v5, v3}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 55
    iget-object v4, v0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v4, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 56
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->d:Ln3/y/b/a/q0/j;

    iget-object v4, v0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->q()I

    move-result v4

    .line 57
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v5, v4, 0xc

    and-int/lit16 v4, v4, 0xfff

    if-gtz v5, :cond_15

    if-lez v4, :cond_16

    .line 58
    :cond_15
    iput v5, v3, Ln3/y/b/a/q0/j;->a:I

    .line 59
    iput v4, v3, Ln3/y/b/a/q0/j;->b:I

    .line 60
    :cond_16
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v3, v3, Ln3/y/b/a/q0/l;->c:I

    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/d;->h(I)V

    if-eqz v2, :cond_17

    .line 61
    invoke-virtual {v2}, Ln3/y/b/a/q0/t/e;->c()Z

    move-result v3

    if-nez v3, :cond_17

    const v3, 0x496e666f

    if-ne v10, v3, :cond_17

    .line 62
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/q0/t/c;->b(Ln3/y/b/a/q0/d;)Ln3/y/b/a/q0/t/c$a;

    move-result-object v2

    .line 63
    :cond_17
    :goto_c
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->i:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 64
    iget-wide v4, v1, Ln3/y/b/a/q0/d;->d:J

    if-eqz v3, :cond_1a

    .line 65
    iget-object v6, v3, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v6, :cond_1a

    .line 66
    iget-object v8, v3, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v8, v8, v7

    .line 67
    instance-of v9, v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    if-eqz v9, :cond_19

    .line 68
    check-cast v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    .line 69
    iget-object v3, v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->e:[I

    array-length v3, v3

    add-int/lit8 v6, v3, 0x1

    .line 70
    new-array v7, v6, [J

    .line 71
    new-array v6, v6, [J

    const/4 v9, 0x0

    .line 72
    aput-wide v4, v7, v9

    const-wide/16 v10, 0x0

    .line 73
    aput-wide v10, v6, v9

    const/4 v10, 0x1

    const-wide/16 v13, 0x0

    :goto_e
    if-gt v10, v3, :cond_18

    .line 74
    iget v9, v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->c:I

    iget-object v11, v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->e:[I

    add-int/lit8 v17, v10, -0x1

    aget v11, v11, v17

    add-int/2addr v9, v11

    move-wide/from16 v20, v13

    int-to-long v12, v9

    add-long/2addr v4, v12

    .line 75
    iget v9, v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->d:I

    iget-object v11, v8, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->f:[I

    aget v11, v11, v17

    add-int/2addr v9, v11

    int-to-long v11, v9

    add-long v13, v20, v11

    .line 76
    aput-wide v4, v7, v10

    .line 77
    aput-wide v13, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 78
    :cond_18
    new-instance v11, Ln3/y/b/a/q0/t/b;

    invoke-direct {v11, v7, v6}, Ln3/y/b/a/q0/t/b;-><init>([J[J)V

    goto :goto_f

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1a
    const/4 v11, 0x0

    :goto_f
    if-eqz v11, :cond_1b

    .line 79
    iput-object v11, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    goto :goto_10

    :cond_1b
    if-eqz v2, :cond_1c

    .line 80
    iput-object v2, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    .line 81
    :cond_1c
    :goto_10
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    if-eqz v2, :cond_1d

    .line 82
    invoke-interface {v2}, Ln3/y/b/a/q0/n;->c()Z

    move-result v2

    goto :goto_11

    .line 83
    :cond_1d
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/q0/t/c;->b(Ln3/y/b/a/q0/d;)Ln3/y/b/a/q0/t/c$a;

    move-result-object v2

    iput-object v2, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    .line 84
    :goto_11
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->f:Ln3/y/b/a/q0/h;

    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    invoke-interface {v2, v3}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    .line 85
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->g:Ln3/y/b/a/q0/p;

    const/16 v22, 0x0

    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget-object v4, v3, Ln3/y/b/a/q0/l;->b:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x1000

    iget v5, v3, Ln3/y/b/a/q0/l;->e:I

    iget v3, v3, Ln3/y/b/a/q0/l;->d:I

    const/16 v29, -0x1

    iget-object v6, v0, Ln3/y/b/a/q0/t/c;->d:Ln3/y/b/a/q0/j;

    iget v7, v6, Ln3/y/b/a/q0/j;->a:I

    iget v6, v6, Ln3/y/b/a/q0/j;->b:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 86
    iget-object v8, v0, Ln3/y/b/a/q0/t/c;->i:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v23, v4

    move/from16 v27, v5

    move/from16 v28, v3

    move/from16 v30, v7

    move/from16 v31, v6

    move-object/from16 v36, v8

    .line 87
    invoke-static/range {v22 .. v36}, Landroidx/media2/exoplayer/external/Format;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 88
    invoke-interface {v2, v3}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 89
    iget-wide v2, v1, Ln3/y/b/a/q0/d;->d:J

    .line 90
    iput-wide v2, v0, Ln3/y/b/a/q0/t/c;->m:J

    goto :goto_12

    .line 91
    :cond_1e
    iget-wide v2, v0, Ln3/y/b/a/q0/t/c;->m:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1f

    .line 92
    iget-wide v4, v1, Ln3/y/b/a/q0/d;->d:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_1f

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 93
    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 94
    :cond_1f
    :goto_12
    iget v2, v0, Ln3/y/b/a/q0/t/c;->n:I

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 95
    iput v2, v1, Ln3/y/b/a/q0/d;->f:I

    .line 96
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/q0/t/c;->e(Ln3/y/b/a/q0/d;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, -0x1

    goto/16 :goto_16

    .line 97
    :cond_20
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v3, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 98
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    .line 99
    iget v3, v0, Ln3/y/b/a/q0/t/c;->h:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Ln3/y/b/a/q0/t/c;->c(IJ)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 100
    invoke-static {v2}, Ln3/y/b/a/q0/l;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_21

    goto :goto_13

    .line 101
    :cond_21
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    invoke-static {v2, v3}, Ln3/y/b/a/q0/l;->b(ILn3/y/b/a/q0/l;)Z

    .line 102
    iget-wide v2, v0, Ln3/y/b/a/q0/t/c;->k:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    .line 103
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    .line 104
    iget-wide v6, v1, Ln3/y/b/a/q0/d;->d:J

    .line 105
    invoke-interface {v2, v6, v7}, Ln3/y/b/a/q0/t/c$a;->f(J)J

    move-result-wide v2

    iput-wide v2, v0, Ln3/y/b/a/q0/t/c;->k:J

    .line 106
    iget-wide v2, v0, Ln3/y/b/a/q0/t/c;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 107
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->j:Ln3/y/b/a/q0/t/c$a;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Ln3/y/b/a/q0/t/c$a;->f(J)J

    move-result-wide v2

    .line 108
    iget-wide v4, v0, Ln3/y/b/a/q0/t/c;->k:J

    iget-wide v6, v0, Ln3/y/b/a/q0/t/c;->a:J

    sub-long/2addr v6, v2

    add-long/2addr v6, v4

    iput-wide v6, v0, Ln3/y/b/a/q0/t/c;->k:J

    .line 109
    :cond_22
    iget-object v2, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v2, v2, Ln3/y/b/a/q0/l;->c:I

    iput v2, v0, Ln3/y/b/a/q0/t/c;->n:I

    goto :goto_14

    :cond_23
    :goto_13
    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    const/4 v1, 0x0

    .line 111
    iput v1, v0, Ln3/y/b/a/q0/t/c;->h:I

    goto :goto_15

    :cond_24
    :goto_14
    const/4 v2, 0x1

    .line 112
    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->g:Ln3/y/b/a/q0/p;

    iget v4, v0, Ln3/y/b/a/q0/t/c;->n:I

    invoke-interface {v3, v1, v4, v2}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    move v3, v2

    goto :goto_16

    .line 113
    :cond_25
    iget v2, v0, Ln3/y/b/a/q0/t/c;->n:I

    sub-int/2addr v2, v1

    iput v2, v0, Ln3/y/b/a/q0/t/c;->n:I

    if-lez v2, :cond_26

    :goto_15
    const/4 v3, 0x0

    goto :goto_16

    .line 114
    :cond_26
    iget-wide v1, v0, Ln3/y/b/a/q0/t/c;->k:J

    iget-wide v3, v0, Ln3/y/b/a/q0/t/c;->l:J

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget-object v5, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v6, v5, Ln3/y/b/a/q0/l;->d:I

    int-to-long v6, v6

    div-long/2addr v3, v6

    add-long v14, v3, v1

    .line 115
    iget-object v13, v0, Ln3/y/b/a/q0/t/c;->g:Ln3/y/b/a/q0/p;

    const/16 v16, 0x1

    iget v1, v5, Ln3/y/b/a/q0/l;->c:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v1

    invoke-interface/range {v13 .. v19}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 116
    iget-wide v1, v0, Ln3/y/b/a/q0/t/c;->l:J

    iget-object v3, v0, Ln3/y/b/a/q0/t/c;->c:Ln3/y/b/a/q0/l;

    iget v3, v3, Ln3/y/b/a/q0/l;->g:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Ln3/y/b/a/q0/t/c;->l:J

    const/4 v1, 0x0

    .line 117
    iput v1, v0, Ln3/y/b/a/q0/t/c;->n:I

    move v3, v1

    :goto_16
    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method
