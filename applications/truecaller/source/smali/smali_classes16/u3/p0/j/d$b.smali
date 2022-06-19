.class public final Lu3/p0/j/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:[Lu3/p0/j/c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Z

.field public final j:Lv3/f;


# direct methods
.method public constructor <init>(IZLv3/f;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    const-string p4, "out"

    .line 1
    invoke-static {p3, p4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu3/p0/j/d$b;->h:I

    iput-boolean p2, p0, Lu3/p0/j/d$b;->i:Z

    iput-object p3, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    const p2, 0x7fffffff

    .line 3
    iput p2, p0, Lu3/p0/j/d$b;->a:I

    .line 4
    iput p1, p0, Lu3/p0/j/d$b;->c:I

    const/16 p1, 0x8

    new-array p1, p1, [Lu3/p0/j/c;

    .line 5
    iput-object p1, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    const/4 p1, 0x7

    .line 6
    iput p1, p0, Lu3/p0/j/d$b;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v2, v3}, Ls1/u/i;->w([Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lu3/p0/j/d$b;->e:I

    .line 3
    iput v2, p0, Lu3/p0/j/d$b;->f:I

    .line 4
    iput v2, p0, Lu3/p0/j/d$b;->g:I

    return-void
.end method

.method public final b(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 1
    iget-object v1, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Lu3/p0/j/d$b;->e:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    if-lez p1, :cond_2

    .line 3
    iget-object v2, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    iget v4, v4, Lu3/p0/j/c;->a:I

    sub-int/2addr p1, v4

    .line 4
    iget v4, p0, Lu3/p0/j/d$b;->g:I

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget v2, v2, Lu3/p0/j/c;->a:I

    sub-int/2addr v4, v2

    iput v4, p0, Lu3/p0/j/d$b;->g:I

    .line 5
    iget v2, p0, Lu3/p0/j/d$b;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lu3/p0/j/d$b;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 7
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 8
    :cond_2
    iget-object p1, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 9
    iget v4, p0, Lu3/p0/j/d$b;->f:I

    .line 10
    invoke-static {p1, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    iget v1, p0, Lu3/p0/j/d$b;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 12
    iget p1, p0, Lu3/p0/j/d$b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lu3/p0/j/d$b;->e:I

    :cond_3
    return v0
.end method

.method public final c(Lu3/p0/j/c;)V
    .locals 6

    .line 1
    iget v0, p1, Lu3/p0/j/c;->a:I

    .line 2
    iget v1, p0, Lu3/p0/j/d$b;->c:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lu3/p0/j/d$b;->a()V

    return-void

    .line 4
    :cond_0
    iget v2, p0, Lu3/p0/j/d$b;->g:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 5
    invoke-virtual {p0, v2}, Lu3/p0/j/d$b;->b(I)I

    .line 6
    iget v1, p0, Lu3/p0/j/d$b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 7
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lu3/p0/j/c;

    const/4 v3, 0x0

    .line 8
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lu3/p0/j/d$b;->e:I

    .line 10
    iput-object v1, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    .line 11
    :cond_1
    iget v1, p0, Lu3/p0/j/d$b;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lu3/p0/j/d$b;->e:I

    .line 12
    iget-object v2, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    aput-object p1, v2, v1

    .line 13
    iget p1, p0, Lu3/p0/j/d$b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu3/p0/j/d$b;->f:I

    .line 14
    iget p1, p0, Lu3/p0/j/d$b;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lu3/p0/j/d$b;->g:I

    return-void
.end method

.method public final d(Lv3/i;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lu3/p0/j/d$b;->i:Z

    const/16 v1, 0x7f

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lu3/p0/j/q;->d:Lu3/p0/j/q;

    const-string v0, "bytes"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v0

    const-wide/16 v3, 0x0

    move v5, v2

    move-wide v6, v3

    :goto_0
    if-ge v5, v0, :cond_0

    .line 4
    invoke-virtual {p1, v5}, Lv3/i;->i(I)B

    move-result v8

    .line 5
    sget-object v9, Lu3/p0/c;->a:[B

    and-int/lit16 v8, v8, 0xff

    .line 6
    sget-object v9, Lu3/p0/j/q;->b:[B

    aget-byte v8, v9, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    int-to-long v8, v0

    add-long/2addr v6, v8

    const/4 v0, 0x3

    shr-long v5, v6, v0

    long-to-int v0, v5

    .line 7
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 8
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    .line 9
    sget-object v5, Lu3/p0/j/q;->d:Lu3/p0/j/q;

    const-string v5, "source"

    .line 10
    invoke-static {p1, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "sink"

    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v5

    move-wide v6, v3

    move v3, v2

    :goto_1
    if-ge v2, v5, :cond_2

    .line 12
    invoke-virtual {p1, v2}, Lv3/i;->i(I)B

    move-result v4

    .line 13
    sget-object v8, Lu3/p0/c;->a:[B

    and-int/lit16 v4, v4, 0xff

    .line 14
    sget-object v8, Lu3/p0/j/q;->a:[I

    aget v8, v8, v4

    .line 15
    sget-object v9, Lu3/p0/j/q;->b:[B

    aget-byte v4, v9, v4

    shl-long/2addr v6, v4

    int-to-long v8, v8

    or-long/2addr v6, v8

    add-int/2addr v3, v4

    :goto_2
    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x8

    shr-long v8, v6, v3

    long-to-int v4, v8

    .line 16
    invoke-interface {v0, v4}, Lv3/g;->j0(I)Lv3/g;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    rsub-int/lit8 p1, v3, 0x8

    shl-long v4, v6, p1

    const-wide/16 v6, 0xff

    ushr-long v2, v6, v3

    or-long/2addr v2, v4

    long-to-int p1, v2

    .line 17
    invoke-interface {v0, p1}, Lv3/g;->j0(I)Lv3/g;

    .line 18
    :cond_3
    invoke-virtual {v0}, Lv3/f;->E()Lv3/i;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v0

    const/16 v2, 0x80

    .line 20
    invoke-virtual {p0, v0, v1, v2}, Lu3/p0/j/d$b;->f(III)V

    .line 21
    iget-object v0, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    invoke-virtual {v0, p1}, Lv3/f;->p0(Lv3/i;)Lv3/f;

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v0

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lu3/p0/j/d$b;->f(III)V

    .line 24
    iget-object v0, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    invoke-virtual {v0, p1}, Lv3/f;->p0(Lv3/i;)Lv3/f;

    :goto_3
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu3/p0/j/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lu3/p0/j/d$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lu3/p0/j/d$b;->a:I

    iget v2, p0, Lu3/p0/j/d$b;->c:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0, v4, v3}, Lu3/p0/j/d$b;->f(III)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lu3/p0/j/d$b;->b:Z

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lu3/p0/j/d$b;->a:I

    .line 6
    iget v0, p0, Lu3/p0/j/d$b;->c:I

    invoke-virtual {p0, v0, v4, v3}, Lu3/p0/j/d$b;->f(III)V

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_e

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/p0/j/c;

    .line 9
    iget-object v4, v3, Lu3/p0/j/c;->b:Lv3/i;

    invoke-virtual {v4}, Lv3/i;->p()Lv3/i;

    move-result-object v4

    .line 10
    iget-object v5, v3, Lu3/p0/j/c;->c:Lv3/i;

    .line 11
    sget-object v6, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    .line 12
    sget-object v6, Lu3/p0/j/d;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x2

    if-le v9, v6, :cond_2

    goto :goto_1

    :cond_2
    if-lt v8, v6, :cond_4

    .line 15
    sget-object v8, Lu3/p0/j/d;->a:[Lu3/p0/j/c;

    add-int/lit8 v9, v6, -0x1

    .line 16
    aget-object v9, v8, v9

    iget-object v9, v9, Lu3/p0/j/c;->c:Lv3/i;

    invoke-static {v9, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    aget-object v8, v8, v6

    iget-object v8, v8, Lu3/p0/j/c;->c:Lv3/i;

    invoke-static {v8, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    goto :goto_3

    :cond_4
    :goto_1
    move v8, v7

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_2
    move v8, v6

    :goto_3
    if-ne v8, v7, :cond_a

    .line 18
    iget v9, p0, Lu3/p0/j/d$b;->e:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    array-length v10, v10

    :goto_4
    if-ge v9, v10, :cond_a

    .line 19
    iget-object v11, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    aget-object v11, v11, v9

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    iget-object v11, v11, Lu3/p0/j/c;->b:Lv3/i;

    invoke-static {v11, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 20
    iget-object v11, p0, Lu3/p0/j/d$b;->d:[Lu3/p0/j/c;

    aget-object v11, v11, v9

    if-eqz v11, :cond_7

    iget-object v11, v11, Lu3/p0/j/c;->c:Lv3/i;

    invoke-static {v11, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 21
    iget v8, p0, Lu3/p0/j/d$b;->e:I

    sub-int/2addr v9, v8

    sget-object v8, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    .line 22
    sget-object v8, Lu3/p0/j/d;->a:[Lu3/p0/j/c;

    .line 23
    array-length v8, v8

    add-int/2addr v8, v9

    goto :goto_6

    :cond_6
    if-ne v6, v7, :cond_8

    .line 24
    iget v6, p0, Lu3/p0/j/d$b;->e:I

    sub-int v6, v9, v6

    sget-object v11, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    .line 25
    sget-object v11, Lu3/p0/j/d;->a:[Lu3/p0/j/c;

    .line 26
    array-length v11, v11

    add-int/2addr v6, v11

    goto :goto_5

    .line 27
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v12

    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 28
    :cond_9
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v12

    :cond_a
    :goto_6
    if-eq v8, v7, :cond_b

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 29
    invoke-virtual {p0, v8, v3, v4}, Lu3/p0/j/d$b;->f(III)V

    goto :goto_7

    :cond_b
    const/16 v8, 0x40

    if-ne v6, v7, :cond_c

    .line 30
    iget-object v6, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    invoke-virtual {v6, v8}, Lv3/f;->B0(I)Lv3/f;

    .line 31
    invoke-virtual {p0, v4}, Lu3/p0/j/d$b;->d(Lv3/i;)V

    .line 32
    invoke-virtual {p0, v5}, Lu3/p0/j/d$b;->d(Lv3/i;)V

    .line 33
    invoke-virtual {p0, v3}, Lu3/p0/j/d$b;->c(Lu3/p0/j/c;)V

    goto :goto_7

    .line 34
    :cond_c
    sget-object v7, Lu3/p0/j/c;->d:Lv3/i;

    invoke-virtual {v4, v7}, Lv3/i;->o(Lv3/i;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lu3/p0/j/c;->i:Lv3/i;

    invoke-static {v7, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    const/16 v3, 0xf

    .line 35
    invoke-virtual {p0, v6, v3, v1}, Lu3/p0/j/d$b;->f(III)V

    .line 36
    invoke-virtual {p0, v5}, Lu3/p0/j/d$b;->d(Lv3/i;)V

    goto :goto_7

    :cond_d
    const/16 v4, 0x3f

    .line 37
    invoke-virtual {p0, v6, v4, v8}, Lu3/p0/j/d$b;->f(III)V

    .line 38
    invoke-virtual {p0, v5}, Lu3/p0/j/d$b;->d(Lv3/i;)V

    .line 39
    invoke-virtual {p0, v3}, Lu3/p0/j/d$b;->c(Lu3/p0/j/c;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final f(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lv3/f;->B0(I)Lv3/f;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lv3/f;->B0(I)Lv3/f;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lv3/f;->B0(I)Lv3/f;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lu3/p0/j/d$b;->j:Lv3/f;

    invoke-virtual {p2, p1}, Lv3/f;->B0(I)Lv3/f;

    return-void
.end method
