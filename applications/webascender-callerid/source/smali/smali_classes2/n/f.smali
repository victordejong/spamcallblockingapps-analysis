.class public final Ln/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/h;
.implements Ln/g;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public f:Ln/y;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(JLn/i;II)Z
    .locals 6

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 2
    invoke-virtual {p3}, Ln/i;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 3
    invoke-virtual {p0, v2, v3}, Ln/f;->l(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Ln/i;->k(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public bridge synthetic B(I)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->b1(I)Ln/f;

    return-object p0
.end method

.method public B0(Ln/f;J)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_f

    .line 1
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Ln/c;->b(JJJ)V

    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_e

    .line 2
    iget-object v1, p1, Ln/f;->f:Ln/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget v3, v1, Ln/y;->c:I

    if-eqz v1, :cond_c

    iget v4, v1, Ln/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_7

    .line 3
    iget-object v3, p0, Ln/f;->f:Ln/y;

    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    iget-object v3, v3, Ln/y;->g:Ln/y;

    goto :goto_2

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_2
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 4
    iget-boolean v4, v3, Ln/y;->e:Z

    if-eqz v4, :cond_5

    iget v4, v3, Ln/y;->c:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget-boolean v6, v3, Ln/y;->d:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    iget v6, v3, Ln/y;->b:I

    :goto_3
    int-to-long v6, v6

    sub-long/2addr v4, v6

    const/16 v6, 0x2000

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_5

    if-eqz v1, :cond_4

    long-to-int v0, p2

    .line 5
    invoke-virtual {v1, v3, v0}, Ln/y;->f(Ln/y;I)V

    .line 6
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ln/f;->l0(J)V

    .line 7
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    goto :goto_6

    .line 8
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_5
    if-eqz v1, :cond_6

    long-to-int v3, p2

    .line 9
    invoke-virtual {v1, v3}, Ln/y;->e(I)Ln/y;

    move-result-object v1

    iput-object v1, p1, Ln/f;->f:Ln/y;

    goto :goto_4

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 10
    :cond_7
    :goto_4
    iget-object v1, p1, Ln/f;->f:Ln/y;

    if-eqz v1, :cond_b

    .line 11
    iget v3, v1, Ln/y;->c:I

    iget v4, v1, Ln/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 12
    invoke-virtual {v1}, Ln/y;->b()Ln/y;

    move-result-object v5

    iput-object v5, p1, Ln/f;->f:Ln/y;

    .line 13
    iget-object v5, p0, Ln/f;->f:Ln/y;

    if-nez v5, :cond_8

    .line 14
    iput-object v1, p0, Ln/f;->f:Ln/y;

    .line 15
    iput-object v1, v1, Ln/y;->g:Ln/y;

    .line 16
    iput-object v1, v1, Ln/y;->f:Ln/y;

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_a

    .line 17
    iget-object v5, v5, Ln/y;->g:Ln/y;

    if-eqz v5, :cond_9

    .line 18
    invoke-virtual {v5, v1}, Ln/y;->c(Ln/y;)Ln/y;

    .line 19
    invoke-virtual {v1}, Ln/y;->a()V

    .line 20
    :goto_5
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ln/f;->l0(J)V

    .line 21
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ln/f;->l0(J)V

    sub-long/2addr p2, v3

    goto/16 :goto_1

    .line 22
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 23
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 24
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 25
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_d
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_e
    :goto_6
    return-void

    .line 26
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ln/c;->b(JJJ)V

    .line 2
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Ln/y;->c:I

    iget v2, v0, Ln/y;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v1, v0, Ln/y;->a:[B

    .line 5
    iget v2, v0, Ln/y;->b:I

    add-int v3, v2, p3

    .line 6
    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/s/e;->c([B[BIII)[B

    .line 7
    iget p1, v0, Ln/y;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Ln/y;->b:I

    .line 8
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ln/f;->l0(J)V

    .line 9
    iget p1, v0, Ln/y;->b:I

    iget p2, v0, Ln/y;->c:I

    if-ne p1, p2, :cond_1

    .line 10
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object p1

    iput-object p1, p0, Ln/f;->f:Ln/y;

    .line 11
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public C0(Ln/d0;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 1
    invoke-interface {p1, p0, v2, v3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public D([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ln/f;->C([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public bridge synthetic D0(J)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln/f;->U0(J)Ln/f;

    return-object p0
.end method

.method public E0()Ln/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln/f;->v(J)Ln/i;

    move-result-object v0

    return-object v0
.end method

.method public G0(Ln/i;)Ln/f;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln/i;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v1, v0}, Ln/i;->K(Ln/f;II)V

    return-object p0
.end method

.method public bridge synthetic H(I)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->X0(I)Ln/f;

    return-object p0
.end method

.method public H0(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Ln/y;->c:I

    iget v2, v0, Ln/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ln/f;->l0(J)V

    sub-long/2addr p1, v5

    .line 5
    iget v1, v0, Ln/y;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Ln/y;->b:I

    .line 6
    iget v2, v0, Ln/y;->c:I

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object v1

    iput-object v1, p0, Ln/f;->f:Ln/y;

    .line 8
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public J0([B)Ln/f;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ln/f;->K0([BII)Ln/f;

    return-object p0
.end method

.method public K0([BII)Ln/f;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ln/c;->b(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ln/f;->y0(I)Ln/y;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Ln/y;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Ln/y;->a:[B

    .line 5
    iget v3, v0, Ln/y;->c:I

    add-int v4, p2, v1

    .line 6
    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/s/e;->c([B[BIII)[B

    .line 7
    iget p2, v0, Ln/y;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Ln/y;->c:I

    move p2, v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Ln/f;->l0(J)V

    return-object p0
.end method

.method public L()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->readInt()I

    move-result v0

    invoke-static {v0}, Ln/c;->c(I)I

    move-result v0

    return v0
.end method

.method public N()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->readShort()S

    move-result v0

    invoke-static {v0}, Ln/c;->d(S)S

    move-result v0

    return v0
.end method

.method public O0(I)Ln/f;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ln/f;->y0(I)Ln/y;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ln/y;->a:[B

    iget v2, v0, Ln/y;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ln/y;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    return-object p0
.end method

.method public P()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln/f;->Q0(J)[B

    move-result-object v0

    return-object v0
.end method

.method public P0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/f;->f0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q0(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    long-to-int p2, p1

    .line 2
    new-array p1, p2, [B

    .line 3
    invoke-virtual {p0, p1}, Ln/f;->D([B)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public S()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    sget-object v2, Lkotlin/c0/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Ln/f;->X(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic T(I)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->O0(I)Ln/f;

    return-object p0
.end method

.method public T0(J)Ln/f;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->O0(I)Ln/f;

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Ln/f;->s1(Ljava/lang/String;)Ln/f;

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_a

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_6

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_4

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_8

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_11

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_13

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 3
    :cond_15
    invoke-virtual {p0, v4}, Ln/f;->y0(I)Ln/y;

    move-result-object v5

    .line 4
    iget-object v6, v5, Ln/y;->a:[B

    .line 5
    iget v7, v5, Ln/y;->c:I

    add-int/2addr v7, v4

    :goto_1
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v2

    .line 6
    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    .line 7
    invoke-static {}, Ln/f0/a;->a()[B

    move-result-object v10

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 8
    div-long/2addr p1, v8

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v6, v7

    .line 10
    :cond_17
    iget p1, v5, Ln/y;->c:I

    add-int/2addr p1, v4

    iput p1, v5, Ln/y;->c:I

    .line 11
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide p1

    int-to-long v0, v4

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ln/f;->l0(J)V

    :goto_2
    return-object p0
.end method

.method public U0(J)Ln/f;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->O0(I)Ln/f;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    .line 2
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 3
    invoke-virtual {p0, v1}, Ln/f;->y0(I)Ln/y;

    move-result-object v2

    .line 4
    iget-object v3, v2, Ln/y;->a:[B

    .line 5
    iget v5, v2, Ln/y;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 6
    invoke-static {}, Ln/f0/a;->a()[B

    move-result-object v0

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v0, v0, v8

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, v2, Ln/y;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Ln/y;->c:I

    .line 8
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide p1

    int-to-long v0, v1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ln/f;->l0(J)V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic W0([B)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->J0([B)Ln/f;

    return-object p0
.end method

.method public X(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_5

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_4

    .line 3
    iget v1, v0, Ln/y;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Ln/y;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Ln/f;->Q0(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 5
    :cond_2
    iget-object v2, v0, Ln/y;->a:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v0, Ln/y;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Ln/y;->b:I

    .line 7
    iget-wide v1, p0, Ln/f;->g:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Ln/f;->g:J

    .line 8
    iget p1, v0, Ln/y;->c:I

    if-ne p3, p1, :cond_3

    .line 9
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object p1

    iput-object p1, p0, Ln/f;->f:Ln/y;

    .line 10
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    :cond_3
    return-object v4

    .line 11
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 13
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public X0(I)Ln/f;
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Ln/f;->y0(I)Ln/y;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ln/y;->a:[B

    .line 3
    iget v2, v0, Ln/y;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Ln/y;->c:I

    .line 9
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    return-object p0
.end method

.method public Y(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/c0/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Ln/f;->X(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Ln/i;)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->G0(Ln/i;)Ln/f;

    return-object p0
.end method

.method public Z0(I)Ln/f;
    .locals 0

    .line 1
    invoke-static {p1}, Ln/c;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ln/f;->X0(I)Ln/f;

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln/f;->H0(J)V

    return-void
.end method

.method public b()Ln/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln/f;->f()Ln/f;

    move-result-object v0

    return-object v0
.end method

.method public b1(I)Ln/f;
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Ln/f;->y0(I)Ln/y;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ln/y;->a:[B

    .line 3
    iget v2, v0, Ln/y;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Ln/y;->c:I

    .line 7
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    return-object p0
.end method

.method public c0()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Ln/f;->o(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {p0, v0, v1}, Ln/f0/a;->b(Ln/f;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln/f;->Y(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln/f;->b()Ln/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public bridge synthetic d0()Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln/f;->i()Ln/f;

    return-object p0
.end method

.method public d1(Ln/b0;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-interface {p1, p0, v0, v1}, Ln/b0;->B0(Ln/f;J)V

    :cond_0
    return-wide v0
.end method

.method public final e()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Ln/f;->f:Ln/y;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Ln/y;->g:Ln/y;

    if-eqz v2, :cond_2

    .line 3
    iget v3, v2, Ln/y;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Ln/y;->e:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Ln/y;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2

    .line 5
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3
.end method

.method public e0()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    :cond_0
    iget-object v8, v0, Ln/f;->f:Ln/y;

    if-eqz v8, :cond_b

    .line 3
    iget-object v9, v8, Ln/y;->a:[B

    .line 4
    iget v10, v8, Ln/y;->b:I

    .line 5
    iget v11, v8, Ln/y;->c:I

    :goto_0
    const/4 v12, 0x1

    if-ge v10, v11, :cond_7

    .line 6
    aget-byte v13, v9, v10

    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v13, v14, :cond_4

    const/16 v15, 0x39

    int-to-byte v15, v15

    if-gt v13, v15, :cond_4

    sub-int/2addr v14, v13

    const-wide v15, -0xcccccccccccccccL

    cmp-long v12, v3, v15

    if-ltz v12, :cond_2

    move v15, v7

    move-object/from16 v16, v8

    if-nez v12, :cond_1

    int-to-long v7, v14

    cmp-long v12, v7, v1

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0xa

    mul-long v3, v3, v7

    int-to-long v7, v14

    add-long/2addr v3, v7

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Ln/f;

    invoke-direct {v1}, Ln/f;-><init>()V

    invoke-virtual {v1, v3, v4}, Ln/f;->T0(J)Ln/f;

    invoke-virtual {v1, v13}, Ln/f;->O0(I)Ln/f;

    if-nez v6, :cond_3

    .line 8
    invoke-virtual {v1}, Ln/f;->readByte()B

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ln/f;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move v15, v7

    move-object/from16 v16, v8

    const/16 v7, 0x2d

    int-to-byte v7, v7

    if-ne v13, v7, :cond_5

    if-nez v5, :cond_5

    const-wide/16 v6, 0x1

    sub-long/2addr v1, v6

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    move v7, v15

    move-object/from16 v8, v16

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ln/c;->e(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v15, v7

    move-object/from16 v16, v8

    :goto_3
    if-ne v10, v11, :cond_8

    .line 13
    invoke-virtual/range {v16 .. v16}, Ln/y;->b()Ln/y;

    move-result-object v8

    iput-object v8, v0, Ln/f;->f:Ln/y;

    .line 14
    invoke-static/range {v16 .. v16}, Ln/z;->b(Ln/y;)V

    goto :goto_4

    :cond_8
    move-object/from16 v8, v16

    .line 15
    iput v10, v8, Ln/y;->b:I

    :goto_4
    if-nez v7, :cond_9

    .line 16
    iget-object v8, v0, Ln/f;->f:Ln/y;

    if-nez v8, :cond_0

    .line 17
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v1

    int-to-long v7, v5

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ln/f;->l0(J)V

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    .line 18
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v1, 0x0

    throw v1

    .line 19
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 1
    :cond_1
    instance-of v4, v1, Ln/f;

    if-nez v4, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v4

    check-cast v1, Ln/f;

    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    goto :goto_0

    .line 4
    :cond_4
    iget-object v4, v0, Ln/f;->f:Ln/y;

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    .line 5
    iget-object v1, v1, Ln/f;->f:Ln/y;

    if-eqz v1, :cond_b

    .line 6
    iget v8, v4, Ln/y;->b:I

    .line 7
    iget v9, v1, Ln/y;->b:I

    move-wide v10, v6

    .line 8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_0

    .line 9
    iget v12, v4, Ln/y;->c:I

    sub-int/2addr v12, v8

    iget v13, v1, Ln/y;->c:I

    sub-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v6

    :goto_3
    cmp-long v16, v14, v12

    if-gez v16, :cond_6

    .line 10
    iget-object v2, v4, Ln/y;->a:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v2, v2, v8

    iget-object v8, v1, Ln/y;->a:[B

    add-int/lit8 v18, v9, 0x1

    aget-byte v8, v8, v9

    if-eq v2, v8, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v8, 0x1

    add-long/2addr v14, v8

    move/from16 v8, v17

    move/from16 v9, v18

    goto :goto_3

    .line 11
    :cond_6
    iget v2, v4, Ln/y;->c:I

    if-ne v8, v2, :cond_8

    .line 12
    iget-object v2, v4, Ln/y;->f:Ln/y;

    if-eqz v2, :cond_7

    .line 13
    iget v4, v2, Ln/y;->b:I

    move v8, v4

    move-object v4, v2

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v5

    .line 15
    :cond_8
    :goto_4
    iget v2, v1, Ln/y;->c:I

    if-ne v9, v2, :cond_a

    .line 16
    iget-object v1, v1, Ln/y;->f:Ln/y;

    if-eqz v1, :cond_9

    .line 17
    iget v2, v1, Ln/y;->b:I

    move v9, v2

    goto :goto_5

    .line 18
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v5

    :cond_a
    :goto_5
    add-long/2addr v10, v12

    goto :goto_2

    :goto_6
    return v2

    .line 19
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v5

    .line 20
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v5
.end method

.method public final f()Ln/f;
    .locals 7

    .line 1
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    .line 2
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Ln/f;->f:Ln/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Ln/y;->d()Ln/y;

    move-result-object v3

    .line 5
    iput-object v3, v0, Ln/f;->f:Ln/y;

    .line 6
    iput-object v3, v3, Ln/y;->g:Ln/y;

    .line 7
    iput-object v3, v3, Ln/y;->f:Ln/y;

    .line 8
    iget-object v4, v1, Ln/y;->f:Ln/y;

    :goto_0
    if-eq v4, v1, :cond_3

    .line 9
    iget-object v5, v3, Ln/y;->g:Ln/y;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ln/y;->d()Ln/y;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln/y;->c(Ln/y;)Ln/y;

    .line 10
    iget-object v4, v4, Ln/y;->f:Ln/y;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 12
    :cond_3
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ln/f;->l0(J)V

    :goto_1
    return-object v0

    .line 13
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method

.method public f0(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, p1, v0

    :goto_1
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    .line 1
    invoke-virtual/range {v4 .. v9}, Ln/f;->r(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 2
    invoke-static {p0, v4, v5}, Ln/f0/a;->b(Ln/f;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    sub-long v0, v2, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Ln/f;->l(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Ln/f;->l(J)B

    move-result v0

    if-ne v0, v10, :cond_3

    .line 6
    invoke-static {p0, v2, v3}, Ln/f0/a;->b(Ln/f;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 7
    :cond_3
    new-instance v6, Ln/f;

    invoke-direct {v6}, Ln/f;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 8
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v4

    int-to-long v0, v0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Ln/f;->g(Ln/f;JJ)Ln/f;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\n not found: limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Ln/f;->E0()Ln/i;

    move-result-object p1

    invoke-virtual {p1}, Ln/i;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public final g(Ln/f;JJ)Ln/f;
    .locals 9

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Ln/c;->b(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Ln/f;->l0(J)V

    .line 3
    iget-object v2, p0, Ln/f;->f:Ln/y;

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 4
    iget v4, v2, Ln/y;->c:I

    iget v5, v2, Ln/y;->b:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v8, p2, v6

    if-ltz v8, :cond_1

    sub-int/2addr v4, v5

    int-to-long v3, v4

    sub-long/2addr p2, v3

    .line 5
    iget-object v2, v2, Ln/y;->f:Ln/y;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, p4, v0

    if-lez v4, :cond_6

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v2}, Ln/y;->d()Ln/y;

    move-result-object v4

    .line 7
    iget v5, v4, Ln/y;->b:I

    long-to-int p3, p2

    add-int/2addr v5, p3

    iput v5, v4, Ln/y;->b:I

    long-to-int p2, p4

    add-int/2addr v5, p2

    .line 8
    iget p2, v4, Ln/y;->c:I

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v4, Ln/y;->c:I

    .line 9
    iget-object p2, p1, Ln/f;->f:Ln/y;

    if-nez p2, :cond_2

    .line 10
    iput-object v4, v4, Ln/y;->g:Ln/y;

    .line 11
    iput-object v4, v4, Ln/y;->f:Ln/y;

    .line 12
    iput-object v4, p1, Ln/f;->f:Ln/y;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 13
    iget-object p2, p2, Ln/y;->g:Ln/y;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Ln/y;->c(Ln/y;)Ln/y;

    .line 14
    :goto_2
    iget p2, v4, Ln/y;->c:I

    iget p3, v4, Ln/y;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 15
    iget-object v2, v2, Ln/y;->f:Ln/y;

    move-wide p2, v0

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 17
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_6
    :goto_3
    return-object p0

    .line 18
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3
.end method

.method public g1(Ljava/lang/String;IILjava/nio/charset/Charset;)Ln/f;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lkotlin/c0/d;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Ln/f;->y1(Ljava/lang/String;II)Ln/f;

    return-object p0

    .line 3
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Ln/f;->K0([BII)Ln/f;

    return-object p0

    .line 5
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget v2, v0, Ln/y;->b:I

    .line 3
    iget v3, v0, Ln/y;->c:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Ln/y;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Ln/y;->f:Ln/y;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Ln/f;->f:Ln/y;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public i()Ln/f;
    .locals 0

    return-object p0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k0()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 2
    invoke-virtual {p0, v2, v3}, Ln/f;->l(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 3
    :goto_0
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v7

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_9

    :goto_1
    if-ge v2, v5, :cond_4

    int-to-long v7, v2

    .line 4
    invoke-virtual {p0, v7, v8}, Ln/f;->l(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, v7, v8}, Ln/f;->H0(J)V

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p0, v9, v10}, Ln/f;->H0(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0xdfff

    const v2, 0xd800

    if-le v2, v1, :cond_6

    goto :goto_2

    :cond_6
    if-lt v0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v1, v6, :cond_8

    goto :goto_3

    :cond_8
    move v4, v1

    goto :goto_3

    .line 7
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ln/c;->e(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-wide/16 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Ln/f;->H0(J)V

    :goto_3
    return v4

    .line 9
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final l(J)B
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Ln/c;->b(JJJ)V

    .line 2
    iget-object v0, p0, Ln/f;->f:Ln/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_3

    .line 4
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 5
    iget-object v0, v0, Ln/y;->g:Ln/y;

    if-eqz v0, :cond_0

    .line 6
    iget v4, v0, Ln/y;->c:I

    iget v5, v0, Ln/y;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v0, Ln/y;->a:[B

    iget v0, v0, Ln/y;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v1, p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    const-wide/16 v2, 0x0

    .line 9
    :goto_1
    iget v4, v0, Ln/y;->c:I

    iget v5, v0, Ln/y;->b:I

    sub-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v6, v2

    cmp-long v4, v6, p1

    if-lez v4, :cond_5

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v0, Ln/y;->a:[B

    int-to-long v4, v5

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v0, p1

    :goto_2
    return p1

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 11
    :cond_5
    iget-object v0, v0, Ln/y;->f:Ln/y;

    if-eqz v0, :cond_6

    move-wide v2, v6

    goto :goto_1

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 12
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public final l0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln/f;->g:J

    return-void
.end method

.method public m()Ln/f;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic n([BII)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ln/f;->K0([BII)Ln/f;

    return-object p0
.end method

.method public bridge synthetic n0(Ljava/lang/String;)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->s1(Ljava/lang/String;)Ln/f;

    return-object p0
.end method

.method public n1(Ljava/lang/String;Ljava/nio/charset/Charset;)Ln/f;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Ln/f;->g1(Ljava/lang/String;IILjava/nio/charset/Charset;)Ln/f;

    return-object p0
.end method

.method public o(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ln/f;->r(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public o1(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final p0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    return-wide v0
.end method

.method public bridge synthetic p1(J)Ln/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln/f;->T0(J)Ln/f;

    return-object p0
.end method

.method public final q0()Ln/i;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Ln/f;->u0(I)Ln/i;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public r(BJJ)J
    .locals 16

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const-wide/16 v5, 0x0

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v7, v3, v1

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_10

    .line 1
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v3

    :cond_2
    cmp-long v9, v1, v3

    if-nez v9, :cond_3

    const-wide/16 v7, -0x1

    move-object/from16 v9, p0

    goto/16 :goto_9

    :cond_3
    move-object/from16 v9, p0

    .line 2
    iget-object v10, v9, Ln/f;->f:Ln/y;

    if-eqz v10, :cond_f

    .line 3
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v11

    sub-long/2addr v11, v1

    const/4 v13, 0x0

    cmp-long v14, v11, v1

    if-gez v14, :cond_9

    .line 4
    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v5

    :goto_2
    cmp-long v11, v5, v1

    if-lez v11, :cond_5

    .line 5
    iget-object v10, v10, Ln/y;->g:Ln/y;

    if-eqz v10, :cond_4

    .line 6
    iget v11, v10, Ln/y;->c:I

    iget v12, v10, Ln/y;->b:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v5, v11

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v13

    :cond_5
    if-eqz v10, :cond_f

    :goto_3
    cmp-long v11, v5, v3

    if-gez v11, :cond_f

    .line 8
    iget-object v11, v10, Ln/y;->a:[B

    .line 9
    iget v12, v10, Ln/y;->c:I

    int-to-long v14, v12

    iget v12, v10, Ln/y;->b:I

    int-to-long v7, v12

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 10
    iget v7, v10, Ln/y;->b:I

    int-to-long v14, v7

    add-long/2addr v14, v1

    sub-long/2addr v14, v5

    long-to-int v1, v14

    :goto_4
    if-ge v1, v8, :cond_7

    .line 11
    aget-byte v2, v11, v1

    if-ne v2, v0, :cond_6

    .line 12
    :goto_5
    iget v0, v10, Ln/y;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long v7, v0, v5

    goto :goto_9

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 13
    :cond_7
    iget v1, v10, Ln/y;->c:I

    iget v2, v10, Ln/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v5, v1

    .line 14
    iget-object v10, v10, Ln/y;->f:Ln/y;

    if-eqz v10, :cond_8

    move-wide v1, v5

    goto :goto_3

    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v13

    .line 15
    :cond_9
    :goto_6
    iget v7, v10, Ln/y;->c:I

    iget v8, v10, Ln/y;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v5

    cmp-long v11, v7, v1

    if-lez v11, :cond_d

    if-eqz v10, :cond_f

    :goto_7
    cmp-long v7, v5, v3

    if-gez v7, :cond_f

    .line 16
    iget-object v7, v10, Ln/y;->a:[B

    .line 17
    iget v8, v10, Ln/y;->c:I

    int-to-long v11, v8

    iget v8, v10, Ln/y;->b:I

    int-to-long v14, v8

    add-long/2addr v14, v3

    sub-long/2addr v14, v5

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v8, v11

    .line 18
    iget v11, v10, Ln/y;->b:I

    int-to-long v11, v11

    add-long/2addr v11, v1

    sub-long/2addr v11, v5

    long-to-int v1, v11

    :goto_8
    if-ge v1, v8, :cond_b

    .line 19
    aget-byte v2, v7, v1

    if-ne v2, v0, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 20
    :cond_b
    iget v1, v10, Ln/y;->c:I

    iget v2, v10, Ln/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v5, v1

    .line 21
    iget-object v10, v10, Ln/y;->f:Ln/y;

    if-eqz v10, :cond_c

    move-wide v1, v5

    goto :goto_7

    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v13

    .line 22
    :cond_d
    iget-object v10, v10, Ln/y;->f:Ln/y;

    if-eqz v10, :cond_e

    move-wide v5, v7

    goto :goto_6

    :cond_e
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v13

    :cond_f
    const-wide/16 v7, -0x1

    :goto_9
    return-wide v7

    :cond_10
    move-object/from16 v9, p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ln/f;->p0()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " fromIndex="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " toIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public r1()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Ln/f$b;

    invoke-direct {v0, p0}, Ln/f$b;-><init>(Ln/f;)V

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Ln/y;->c:I

    iget v3, v0, Ln/y;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Ln/y;->a:[B

    iget v3, v0, Ln/y;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Ln/y;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Ln/y;->b:I

    .line 5
    iget-wide v2, p0, Ln/f;->g:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ln/f;->g:J

    .line 6
    iget v2, v0, Ln/y;->c:I

    if-ne p1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object p1

    iput-object p1, p0, Ln/f;->f:Ln/y;

    .line 8
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read(Ln/f;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide p2

    .line 11
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Ln/f;->B0(Ln/f;J)V

    move-wide p1, p2

    :goto_1
    return-wide p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 2
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Ln/y;->b:I

    .line 4
    iget v2, v0, Ln/y;->c:I

    .line 5
    iget-object v3, v0, Ln/y;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 6
    aget-byte v1, v3, v1

    .line 7
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Ln/f;->l0(J)V

    if-ne v4, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object v2

    iput-object v2, p0, Ln/f;->f:Ln/y;

    .line 9
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v4, v0, Ln/y;->b:I

    :goto_0
    return v1

    .line 11
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_2

    .line 3
    iget v1, v0, Ln/y;->b:I

    .line 4
    iget v4, v0, Ln/y;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 5
    invoke-virtual {p0}, Ln/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Ln/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Ln/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Ln/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, v0, Ln/y;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 10
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 11
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 12
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 13
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 14
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Ln/f;->l0(J)V

    if-ne v7, v4, :cond_1

    .line 15
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object v2

    iput-object v2, p0, Ln/f;->f:Ln/y;

    .line 16
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    goto :goto_0

    .line 17
    :cond_1
    iput v7, v0, Ln/y;->b:I

    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 18
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v0, p0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_2

    .line 3
    iget v1, v0, Ln/y;->b:I

    .line 4
    iget v4, v0, Ln/y;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 5
    invoke-virtual {p0}, Ln/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ln/f;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v5, v0, Ln/y;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 7
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 8
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Ln/f;->l0(J)V

    if-ne v7, v4, :cond_1

    .line 9
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object v2

    iput-object v2, p0, Ln/f;->f:Ln/y;

    .line 10
    invoke-static {v0}, Ln/z;->b(Ln/y;)V

    goto :goto_0

    .line 11
    :cond_1
    iput v7, v0, Ln/y;->b:I

    :goto_0
    int-to-short v0, v1

    :goto_1
    return v0

    .line 12
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public request(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s1(Ljava/lang/String;)Ln/f;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ln/f;->y1(Ljava/lang/String;II)Ln/f;

    return-object p0
.end method

.method public t0(JLn/i;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Ln/i;->size()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Ln/f;->A(JLn/i;II)Z

    move-result p1

    return p1
.end method

.method public t1()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 2
    :cond_0
    iget-object v6, p0, Ln/f;->f:Ln/y;

    if-eqz v6, :cond_9

    .line 3
    iget-object v7, v6, Ln/y;->a:[B

    .line 4
    iget v8, v6, Ln/y;->b:I

    .line 5
    iget v9, v6, Ln/y;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    invoke-virtual {v0, v4, v5}, Ln/f;->U0(J)Ln/f;

    invoke-virtual {v0, v10}, Ln/f;->O0(I)Ln/f;

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ln/f;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ln/c;->e(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 12
    invoke-virtual {v6}, Ln/y;->b()Ln/y;

    move-result-object v7

    iput-object v7, p0, Ln/f;->f:Ln/y;

    .line 13
    invoke-static {v6}, Ln/z;->b(Ln/y;)V

    goto :goto_4

    .line 14
    :cond_7
    iput v8, v6, Ln/y;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 15
    iget-object v6, p0, Ln/f;->f:Ln/y;

    if-nez v6, :cond_0

    .line 16
    :cond_8
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v1

    int-to-long v6, v0

    sub-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Ln/f;->l0(J)V

    return-wide v4

    .line 17
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    .line 18
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    sget-object v0, Ln/e0;->d:Ln/e0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln/f;->q0()Ln/i;

    move-result-object v0

    invoke-virtual {v0}, Ln/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ln/f;
    .locals 0

    return-object p0
.end method

.method public final u0(I)Ln/i;
    .locals 9

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ln/i;->i:Ln/i;

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Ln/c;->b(JJJ)V

    .line 3
    iget-object v0, p0, Ln/f;->f:Ln/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v2, p1, :cond_3

    if-eqz v0, :cond_2

    .line 4
    iget v4, v0, Ln/y;->c:I

    iget v5, v0, Ln/y;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v0, v0, Ln/y;->f:Ln/y;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 8
    :cond_3
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 9
    new-array v2, v2, [I

    .line 10
    iget-object v5, p0, Ln/f;->f:Ln/y;

    move-object v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v1, p1, :cond_5

    if-eqz v6, :cond_4

    .line 11
    iget-object v7, v6, Ln/y;->a:[B

    aput-object v7, v0, v5

    .line 12
    iget v7, v6, Ln/y;->c:I

    iget v8, v6, Ln/y;->b:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 13
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v2, v5

    add-int v7, v5, v3

    .line 14
    iget v8, v6, Ln/y;->b:I

    aput v8, v2, v7

    const/4 v7, 0x1

    .line 15
    iput-boolean v7, v6, Ln/y;->d:Z

    add-int/2addr v5, v7

    .line 16
    iget-object v6, v6, Ln/y;->f:Ln/y;

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 18
    :cond_5
    new-instance p1, Ln/a0;

    invoke-direct {p1, v0, v2}, Ln/a0;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public v(J)Ln/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    const/16 v0, 0x1000

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    long-to-int v0, p1

    .line 2
    invoke-virtual {p0, v0}, Ln/f;->u0(I)Ln/i;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Ln/f;->H0(J)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ln/i;

    invoke-virtual {p0, p1, p2}, Ln/f;->Q0(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ln/i;-><init>([B)V

    :goto_1
    return-object v0

    .line 4
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public v0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Ln/f;->g:J

    invoke-virtual {p0, v0, v1, p1}, Ln/f;->X(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v1()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Ln/f$a;

    invoke-direct {v0, p0}, Ln/f$a;-><init>(Ln/f;)V

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Ln/f;->y0(I)Ln/y;

    move-result-object v2

    .line 3
    iget v3, v2, Ln/y;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Ln/y;->a:[B

    iget v5, v2, Ln/y;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Ln/y;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Ln/y;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Ln/f;->g:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ln/f;->g:J

    return v0
.end method

.method public x1(Ln/u;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Ln/f0/a;->d(Ln/f;Ln/u;ZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln/u;->i()[Ln/i;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ln/i;->size()I

    move-result p1

    int-to-long v1, p1

    .line 3
    invoke-virtual {p0, v1, v2}, Ln/f;->H0(J)V

    :goto_0
    return v0
.end method

.method public y(Ln/i;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ln/f;->z(Ln/i;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y0(I)Ln/y;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1
    iget-object v1, p0, Ln/f;->f:Ln/y;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Ln/z;->c()Ln/y;

    move-result-object p1

    .line 3
    iput-object p1, p0, Ln/f;->f:Ln/y;

    .line 4
    iput-object p1, p1, Ln/y;->g:Ln/y;

    .line 5
    iput-object p1, p1, Ln/y;->f:Ln/y;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, v1, Ln/y;->g:Ln/y;

    if-eqz v1, :cond_4

    .line 7
    iget v2, v1, Ln/y;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Ln/y;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Ln/z;->c()Ln/y;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln/y;->c(Ln/y;)Ln/y;

    :goto_2
    return-object p1

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 10
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y1(Ljava/lang/String;II)Ln/f;
    .locals 11

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5

    .line 3
    invoke-virtual {p0, v1}, Ln/f;->y0(I)Ln/y;

    move-result-object v4

    .line 4
    iget-object v5, v4, Ln/y;->a:[B

    .line 5
    iget v6, v4, Ln/y;->c:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 6
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 7
    aput-byte v2, v5, p2

    :goto_4
    if-ge v8, v7, :cond_4

    .line 8
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v8, 0x1

    add-int/2addr v8, v6

    int-to-byte p2, p2

    .line 9
    aput-byte p2, v5, v8

    move v8, v2

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v6, v8

    .line 10
    iget p2, v4, Ln/y;->c:I

    sub-int/2addr v6, p2

    add-int/2addr p2, v6

    .line 11
    iput p2, v4, Ln/y;->c:I

    .line 12
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    int-to-long v4, v6

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ln/f;->l0(J)V

    move p2, v8

    goto :goto_3

    :cond_5
    const/16 v4, 0x800

    if-ge v2, v4, :cond_6

    const/4 v4, 0x2

    .line 13
    invoke-virtual {p0, v4}, Ln/f;->y0(I)Ln/y;

    move-result-object v5

    .line 14
    iget-object v6, v5, Ln/y;->a:[B

    iget v7, v5, Ln/y;->c:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 15
    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    .line 16
    iput v7, v5, Ln/y;->c:I

    .line 17
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ln/f;->l0(J)V

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_8

    .line 18
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    const v8, 0xdbff

    if-gt v2, v8, :cond_a

    const v8, 0xdc00

    if-gt v8, v7, :cond_a

    if-ge v4, v7, :cond_9

    goto :goto_8

    :cond_9
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v7, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 19
    invoke-virtual {p0, v4}, Ln/f;->y0(I)Ln/y;

    move-result-object v6

    .line 20
    iget-object v7, v6, Ln/y;->a:[B

    iget v8, v6, Ln/y;->c:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 21
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 22
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 23
    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    .line 24
    iput v8, v6, Ln/y;->c:I

    .line 25
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ln/f;->l0(J)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 26
    :cond_a
    :goto_8
    invoke-virtual {p0, v5}, Ln/f;->O0(I)Ln/f;

    move p2, v6

    goto/16 :goto_3

    :cond_b
    :goto_9
    const/4 v4, 0x3

    .line 27
    invoke-virtual {p0, v4}, Ln/f;->y0(I)Ln/y;

    move-result-object v6

    .line 28
    iget-object v7, v6, Ln/y;->a:[B

    iget v8, v6, Ln/y;->c:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 29
    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 30
    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    .line 31
    iput v8, v6, Ln/y;->c:I

    .line 32
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ln/f;->l0(J)V

    goto/16 :goto_6

    :cond_c
    return-object p0

    .line 33
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public z(Ln/i;J)J
    .locals 12

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_18

    .line 1
    iget-object v4, p0, Ln/f;->f:Ln/y;

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_17

    .line 2
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmp-long v11, v7, p2

    if-gez v11, :cond_c

    .line 3
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    :goto_1
    cmp-long v7, v0, p2

    if-lez v7, :cond_2

    .line 4
    iget-object v4, v4, Ln/y;->g:Ln/y;

    if-eqz v4, :cond_1

    .line 5
    iget v7, v4, Ln/y;->c:I

    iget v8, v4, Ln/y;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v0, v7

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v10

    :cond_2
    if-eqz v4, :cond_17

    .line 7
    invoke-virtual {p1}, Ln/i;->size()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 8
    invoke-virtual {p1, v2}, Ln/i;->k(I)B

    move-result v2

    .line 9
    invoke-virtual {p1, v3}, Ln/i;->k(I)B

    move-result p1

    .line 10
    :goto_2
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_17

    .line 11
    iget-object v3, v4, Ln/y;->a:[B

    .line 12
    iget v7, v4, Ln/y;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 13
    iget p3, v4, Ln/y;->c:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 14
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_4

    if-ne v7, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 15
    :cond_4
    :goto_4
    iget p1, v4, Ln/y;->b:I

    :goto_5
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v5, p1, v0

    goto/16 :goto_10

    .line 16
    :cond_5
    iget p2, v4, Ln/y;->c:I

    iget p3, v4, Ln/y;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 17
    iget-object v4, v4, Ln/y;->f:Ln/y;

    if-eqz v4, :cond_6

    move-wide p2, v0

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v10

    .line 18
    :cond_7
    invoke-virtual {p1}, Ln/i;->t()[B

    move-result-object p1

    .line 19
    :goto_6
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_17

    .line 20
    iget-object v3, v4, Ln/y;->a:[B

    .line 21
    iget v7, v4, Ln/y;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 22
    iget p3, v4, Ln/y;->c:I

    :goto_7
    if-ge p2, p3, :cond_a

    .line 23
    aget-byte v7, v3, p2

    .line 24
    array-length v8, p1

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_9

    aget-byte v11, p1, v9

    if-ne v7, v11, :cond_8

    .line 25
    :goto_9
    iget p1, v4, Ln/y;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 26
    :cond_a
    iget p2, v4, Ln/y;->c:I

    iget p3, v4, Ln/y;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 27
    iget-object v4, v4, Ln/y;->f:Ln/y;

    if-eqz v4, :cond_b

    move-wide p2, v0

    goto :goto_6

    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v10

    .line 28
    :cond_c
    :goto_a
    iget v7, v4, Ln/y;->c:I

    iget v8, v4, Ln/y;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v11, v7, p2

    if-lez v11, :cond_15

    if-eqz v4, :cond_17

    .line 29
    invoke-virtual {p1}, Ln/i;->size()I

    move-result v7

    if-ne v7, v9, :cond_10

    .line 30
    invoke-virtual {p1, v2}, Ln/i;->k(I)B

    move-result v2

    .line 31
    invoke-virtual {p1, v3}, Ln/i;->k(I)B

    move-result p1

    .line 32
    :goto_b
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_17

    .line 33
    iget-object v3, v4, Ln/y;->a:[B

    .line 34
    iget v7, v4, Ln/y;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 35
    iget p3, v4, Ln/y;->c:I

    :goto_c
    if-ge p2, p3, :cond_e

    .line 36
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_4

    if-ne v7, p1, :cond_d

    goto/16 :goto_4

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 37
    :cond_e
    iget p2, v4, Ln/y;->c:I

    iget p3, v4, Ln/y;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 38
    iget-object v4, v4, Ln/y;->f:Ln/y;

    if-eqz v4, :cond_f

    move-wide p2, v0

    goto :goto_b

    :cond_f
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v10

    .line 39
    :cond_10
    invoke-virtual {p1}, Ln/i;->t()[B

    move-result-object p1

    .line 40
    :goto_d
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_17

    .line 41
    iget-object v3, v4, Ln/y;->a:[B

    .line 42
    iget v7, v4, Ln/y;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 43
    iget p3, v4, Ln/y;->c:I

    :goto_e
    if-ge p2, p3, :cond_13

    .line 44
    aget-byte v7, v3, p2

    .line 45
    array-length v8, p1

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_12

    aget-byte v11, p1, v9

    if-ne v7, v11, :cond_11

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 46
    :cond_13
    iget p2, v4, Ln/y;->c:I

    iget p3, v4, Ln/y;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 47
    iget-object v4, v4, Ln/y;->f:Ln/y;

    if-eqz v4, :cond_14

    move-wide p2, v0

    goto :goto_d

    :cond_14
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v10

    .line 48
    :cond_15
    iget-object v4, v4, Ln/y;->f:Ln/y;

    if-eqz v4, :cond_16

    move-wide v0, v7

    goto/16 :goto_a

    :cond_16
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v10

    :cond_17
    :goto_10
    return-wide v5

    .line 49
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public z1(I)Ln/f;
    .locals 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ln/f;->O0(I)Ln/f;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Ln/f;->y0(I)Ln/y;

    move-result-object v3

    .line 3
    iget-object v4, v3, Ln/y;->a:[B

    iget v5, v3, Ln/y;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 5
    iput v5, v3, Ln/y;->c:I

    .line 6
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    goto/16 :goto_1

    :cond_1
    const v1, 0xdfff

    const v3, 0xd800

    if-le v3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Ln/f;->O0(I)Ln/f;

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0, v1}, Ln/f;->y0(I)Ln/y;

    move-result-object v3

    .line 9
    iget-object v4, v3, Ln/y;->a:[B

    iget v5, v3, Ln/y;->c:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 10
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 11
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 12
    iput v5, v3, Ln/y;->c:I

    .line 13
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    const/4 v1, 0x4

    .line 14
    invoke-virtual {p0, v1}, Ln/f;->y0(I)Ln/y;

    move-result-object v3

    .line 15
    iget-object v4, v3, Ln/y;->a:[B

    iget v5, v3, Ln/y;->c:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 16
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 18
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 19
    iput v5, v3, Ln/y;->c:I

    .line 20
    invoke-virtual {p0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ln/f;->l0(J)V

    :goto_1
    return-object p0

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ln/c;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
