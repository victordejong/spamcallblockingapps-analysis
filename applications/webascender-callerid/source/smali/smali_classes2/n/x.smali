.class public final Ln/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/h;


# instance fields
.field public final f:Ln/f;

.field public g:Z

.field public final h:Ln/d0;


# direct methods
.method public constructor <init>(Ln/d0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/x;->h:Ln/d0;

    .line 2
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    iput-object p1, p0, Ln/x;->f:Ln/f;

    return-void
.end method


# virtual methods
.method public E0()Ln/i;
    .locals 2

    .line 1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 2
    iget-object v1, p0, Ln/x;->h:Ln/d0;

    invoke-virtual {v0, v1}, Ln/f;->C0(Ln/d0;)J

    .line 3
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 4
    invoke-virtual {v0}, Ln/f;->E0()Ln/i;

    move-result-object v0

    return-object v0
.end method

.method public H0(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v2}, Ln/f;->p0()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 3
    iget-object v0, p0, Ln/x;->h:Ln/d0;

    .line 4
    iget-object v1, p0, Ln/x;->f:Ln/f;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 5
    invoke-interface {v0, v1, v2, v3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Ln/x;->f:Ln/f;

    .line 10
    invoke-virtual {v2, v0, v1}, Ln/f;->H0(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P()[B
    .locals 2

    .line 1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 2
    iget-object v1, p0, Ln/x;->h:Ln/d0;

    invoke-virtual {v0, v1}, Ln/f;->C0(Ln/d0;)J

    .line 3
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 4
    invoke-virtual {v0}, Ln/f;->P()[B

    move-result-object v0

    return-object v0
.end method

.method public P0()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->f0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q0(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln/f;->Q0(J)[B

    move-result-object p1

    return-object p1
.end method

.method public S()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/x;->h:Ln/d0;

    .line 4
    iget-object v2, p0, Ln/x;->f:Ln/f;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 5
    invoke-interface {v0, v2, v3, v4}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 2
    iget-object v1, p0, Ln/x;->h:Ln/d0;

    invoke-virtual {v0, v1}, Ln/f;->C0(Ln/d0;)J

    .line 3
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 4
    invoke-virtual {v0}, Ln/f;->S0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ln/x;->b(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(BJJ)J
    .locals 8

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    .line 2
    iget-object v2, p0, Ln/x;->f:Ln/f;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Ln/f;->r(BJJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    move-wide v0, v2

    goto :goto_3

    .line 4
    :cond_2
    iget-object v2, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v2}, Ln/f;->p0()J

    move-result-wide v2

    cmp-long v4, v2, p4

    if-gez v4, :cond_4

    .line 5
    iget-object v4, p0, Ln/x;->h:Ln/d0;

    .line 6
    iget-object v5, p0, Ln/x;->f:Ln/f;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 7
    invoke-interface {v4, v5, v6, v7}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_4
    :goto_3
    return-wide v0

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(JLn/i;II)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 2
    invoke-virtual {p3}, Ln/i;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p5, :cond_4

    int-to-long v3, v2

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    .line 3
    invoke-virtual {p0, v5, v6}, Ln/x;->request(J)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v5, p0, Ln/x;->f:Ln/f;

    .line 5
    invoke-virtual {v5, v3, v4}, Ln/f;->l(J)B

    move-result v3

    add-int v4, p4, v2

    invoke-virtual {p3, v4}, Ln/i;->k(I)B

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :cond_4
    return v1

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c0()Ljava/lang/String;
    .locals 5

    const/16 v0, 0xa

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Ln/x;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v0, v1}, Ln/x;->g(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Ln/x;->f:Ln/f;

    .line 6
    invoke-static {v2, v0, v1}, Ln/f0/a;->b(Ln/f;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln/x;->g:Z

    .line 3
    iget-object v0, p0, Ln/x;->h:Ln/d0;

    invoke-interface {v0}, Ln/d0;->close()V

    .line 4
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 5
    invoke-virtual {v0}, Ln/f;->a()V

    :goto_0
    return-void
.end method

.method public d1(Ln/b0;)J
    .locals 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v4, p0, Ln/x;->h:Ln/d0;

    .line 2
    iget-object v5, p0, Ln/x;->f:Ln/f;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 3
    invoke-interface {v4, v5, v6, v7}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 4
    iget-object v4, p0, Ln/x;->f:Ln/f;

    .line 5
    invoke-virtual {v4}, Ln/f;->e()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 6
    iget-object v6, p0, Ln/x;->f:Ln/f;

    .line 7
    invoke-interface {p1, v6, v4, v5}, Ln/b0;->B0(Ln/f;J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v4}, Ln/f;->p0()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 9
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 10
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 11
    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v4

    .line 12
    invoke-interface {p1, v0, v4, v5}, Ln/b0;->B0(Ln/f;J)V

    :cond_2
    return-wide v2
.end method

.method public e()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->L()I

    move-result v0

    return v0
.end method

.method public e0()J
    .locals 10

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    .line 2
    invoke-virtual {p0, v6, v7}, Ln/x;->request(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3
    iget-object v8, p0, Ln/x;->f:Ln/f;

    .line 4
    invoke-virtual {v8, v4, v5}, Ln/f;->l(J)B

    move-result v8

    const/16 v9, 0x30

    int-to-byte v9, v9

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    int-to-byte v9, v9

    if-le v8, v9, :cond_1

    :cond_0
    cmp-long v9, v4, v2

    if-nez v9, :cond_2

    const/16 v4, 0x2d

    int-to-byte v4, v4

    if-eq v8, v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/c0/a;->a(I)I

    invoke-static {v1}, Lkotlin/c0/a;->a(I)I

    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_4
    :goto_2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 7
    invoke-virtual {v0}, Ln/f;->e0()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->N()S

    move-result v0

    return v0
.end method

.method public f0(J)Ljava/lang/String;
    .locals 13

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

    move-wide v4, v2

    goto :goto_1

    :cond_1
    add-long v4, p1, v0

    :goto_1
    const/16 v6, 0xa

    int-to-byte v12, v6

    const-wide/16 v8, 0x0

    move-object v6, p0

    move v7, v12

    move-wide v10, v4

    .line 1
    invoke-virtual/range {v6 .. v11}, Ln/x;->b(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 2
    iget-object p1, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-static {p1, v6, v7}, Ln/f0/a;->b(Ln/f;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 4
    invoke-virtual {p0, v4, v5}, Ln/x;->request(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Ln/x;->f:Ln/f;

    sub-long v6, v4, v0

    .line 6
    invoke-virtual {v2, v6, v7}, Ln/f;->l(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-long/2addr v0, v4

    .line 7
    invoke-virtual {p0, v0, v1}, Ln/x;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 9
    invoke-virtual {v0, v4, v5}, Ln/f;->l(J)B

    move-result v0

    if-ne v0, v12, :cond_3

    .line 10
    iget-object p1, p0, Ln/x;->f:Ln/f;

    .line 11
    invoke-static {p1, v4, v5}, Ln/f0/a;->b(Ln/f;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 12
    :cond_3
    new-instance v6, Ln/f;

    invoke-direct {v6}, Ln/f;-><init>()V

    .line 13
    iget-object v0, p0, Ln/x;->f:Ln/f;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 14
    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v4

    int-to-long v7, v1

    .line 15
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 16
    invoke-virtual/range {v0 .. v5}, Ln/f;->g(Ln/f;JJ)Ln/f;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\n not found: limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide v1

    .line 19
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v6}, Ln/f;->E0()Ln/i;

    move-result-object p1

    invoke-virtual {p1}, Ln/i;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
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

.method public g(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln/f;->Y(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m()Ln/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    return-object v0
.end method

.method public o1(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln/x;->request(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 13
    iget-object v0, p0, Ln/x;->h:Ln/d0;

    .line 14
    iget-object v1, p0, Ln/x;->f:Ln/f;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 15
    invoke-interface {v0, v1, v2, v3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 17
    invoke-virtual {v0, p1}, Ln/f;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Ln/f;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 1
    iget-boolean v3, p0, Ln/x;->g:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ln/x;->h:Ln/d0;

    .line 4
    iget-object v1, p0, Ln/x;->f:Ln/f;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 5
    invoke-interface {v0, v1, v2, v3}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    .line 7
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 8
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ln/f;->read(Ln/f;J)J

    move-result-wide v5

    :goto_1
    return-wide v5

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
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
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->readShort()S

    move-result v0

    return v0
.end method

.method public request(J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1
    iget-boolean v2, p0, Ln/x;->g:Z

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 2
    :cond_1
    iget-object v2, p0, Ln/x;->f:Ln/f;

    invoke-virtual {v2}, Ln/f;->p0()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    .line 3
    iget-object v2, p0, Ln/x;->h:Ln/d0;

    .line 4
    iget-object v3, p0, Ln/x;->f:Ln/f;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 5
    invoke-interface {v2, v3, v4, v5}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

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

    .line 2
    invoke-virtual/range {v1 .. v6}, Ln/x;->c(JLn/i;II)Z

    move-result p1

    return p1
.end method

.method public t1()J
    .locals 5

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ln/x;->o1(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 2
    invoke-virtual {p0, v2, v3}, Ln/x;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Ln/x;->f:Ln/f;

    int-to-long v3, v0

    .line 4
    invoke-virtual {v2, v3, v4}, Ln/f;->l(J)B

    move-result v2

    const/16 v3, 0x30

    int-to-byte v3, v3

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    int-to-byte v3, v3

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/c0/a;->a(I)I

    invoke-static {v1}, Lkotlin/c0/a;->a(I)I

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_5
    :goto_2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 7
    invoke-virtual {v0}, Ln/f;->t1()J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/x;->h:Ln/d0;

    invoke-interface {v0}, Ln/d0;->timeout()Ln/e0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/x;->h:Ln/d0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ln/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    return-object v0
.end method

.method public v(J)Ln/i;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln/f;->v(J)Ln/i;

    move-result-object p1

    return-object p1
.end method

.method public v0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 2
    iget-object v1, p0, Ln/x;->h:Ln/d0;

    invoke-virtual {v0, v1}, Ln/f;->C0(Ln/d0;)J

    .line 3
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 4
    invoke-virtual {v0, p1}, Ln/f;->v0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v1()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Ln/x$a;

    invoke-direct {v0, p0}, Ln/x$a;-><init>(Ln/x;)V

    return-object v0
.end method

.method public x1(Ln/u;)I
    .locals 8

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/x;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Ln/x;->f:Ln/f;

    .line 3
    invoke-static {v0, p1, v1}, Ln/f0/a;->c(Ln/f;Ln/u;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    .line 4
    invoke-virtual {p1}, Ln/u;->i()[Ln/i;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ln/i;->size()I

    move-result p1

    .line 5
    iget-object v1, p0, Ln/x;->f:Ln/f;

    int-to-long v2, p1

    .line 6
    invoke-virtual {v1, v2, v3}, Ln/f;->H0(J)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Ln/x;->h:Ln/d0;

    .line 8
    iget-object v2, p0, Ln/x;->f:Ln/f;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 9
    invoke-interface {v0, v2, v4, v5}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
