.class public final Lw3/b/a/f0/q;
.super Lw3/b/a/h0/h;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/f0/c;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;)V
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-virtual {p1}, Lw3/b/a/f0/c;->a0()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/h0/h;-><init>(Lw3/b/a/d;J)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    const/16 p1, 0xc

    .line 3
    iput p1, p0, Lw3/b/a/f0/q;->e:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lw3/b/a/f0/q;->f:I

    return-void
.end method


# virtual methods
.method public B(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, p1, p2, v0}, Lw3/b/a/f0/c;->q0(JI)I

    move-result p1

    .line 3
    iget-object p2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, v0, p1}, Lw3/b/a/f0/c;->A0(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 3

    .line 1
    iget v0, p0, Lw3/b/a/f0/q;->e:I

    const/4 v1, 0x1

    invoke-static {p0, p3, v1, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    .line 4
    invoke-virtual {v1, p1, p2, v0}, Lw3/b/a/f0/c;->q0(JI)I

    move-result v2

    .line 5
    invoke-virtual {v1, p1, p2, v0, v2}, Lw3/b/a/f0/c;->f0(JII)I

    move-result v1

    .line 6
    iget-object v2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, v0, p3}, Lw3/b/a/f0/c;->k0(II)I

    move-result v2

    if-le v1, v2, :cond_0

    move v1, v2

    .line 7
    :cond_0
    iget-object v2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, v0, p3, v1}, Lw3/b/a/f0/c;->z0(III)J

    move-result-wide v0

    iget-object p3, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {p3, p1, p2}, Lw3/b/a/f0/c;->o0(J)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public F(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->i:Ljava/util/TreeMap;

    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p2, Lw3/b/a/l;

    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-direct {p2, v0, p1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/String;)V

    throw p2
.end method

.method public a(JI)J
    .locals 9

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->o0(J)I

    move-result v0

    int-to-long v0, v0

    .line 2
    iget-object v2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v2

    .line 3
    iget-object v3, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v3, p1, p2, v2}, Lw3/b/a/f0/c;->q0(JI)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    add-int v5, v4, p3

    if-lez v3, :cond_2

    if-gez v5, :cond_2

    .line 4
    iget v5, p0, Lw3/b/a/f0/q;->e:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    int-to-float v6, p3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    add-int/lit8 v5, v2, -0x1

    .line 5
    iget v6, p0, Lw3/b/a/f0/q;->e:I

    add-int/2addr p3, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 6
    iget v6, p0, Lw3/b/a/f0/q;->e:I

    sub-int/2addr p3, v6

    :goto_0
    add-int/2addr p3, v4

    move v8, v5

    move v5, p3

    move p3, v8

    goto :goto_1

    :cond_2
    move p3, v2

    :goto_1
    const/4 v4, 0x1

    if-ltz v5, :cond_3

    .line 7
    iget v6, p0, Lw3/b/a/f0/q;->e:I

    div-int v7, v5, v6

    add-int/2addr v7, p3

    .line 8
    rem-int/2addr v5, v6

    add-int/2addr v5, v4

    goto :goto_2

    .line 9
    :cond_3
    iget v6, p0, Lw3/b/a/f0/q;->e:I

    div-int v6, v5, v6

    add-int/2addr v6, p3

    add-int/lit8 v7, v6, -0x1

    .line 10
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 11
    iget v5, p0, Lw3/b/a/f0/q;->e:I

    rem-int/2addr p3, v5

    if-nez p3, :cond_4

    move p3, v5

    :cond_4
    sub-int/2addr v5, p3

    add-int/2addr v5, v4

    if-ne v5, v4, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 12
    :cond_5
    :goto_2
    iget-object p3, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {p3, p1, p2, v2, v3}, Lw3/b/a/f0/c;->f0(JII)I

    move-result p1

    .line 13
    iget-object p2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, v7, v5}, Lw3/b/a/f0/c;->k0(II)I

    move-result p2

    if-le p1, p2, :cond_6

    move p1, p2

    .line 14
    :cond_6
    iget-object p2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {p2, v7, v5, p1}, Lw3/b/a/f0/c;->z0(III)J

    move-result-wide p1

    add-long/2addr p1, v0

    :goto_3
    return-wide p1
.end method

.method public b(JJ)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    long-to-int v5, v3

    int-to-long v6, v5

    cmp-long v6, v6, v3

    if-nez v6, :cond_0

    .line 1
    invoke-virtual {v0, v1, v2, v5}, Lw3/b/a/f0/q;->a(JI)J

    move-result-wide v1

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v5, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v5, v1, v2}, Lw3/b/a/f0/c;->o0(J)I

    move-result v5

    int-to-long v5, v5

    .line 3
    iget-object v7, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v7, v1, v2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v7

    .line 4
    iget-object v8, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v8, v1, v2, v7}, Lw3/b/a/f0/c;->q0(JI)I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    int-to-long v9, v9

    add-long/2addr v9, v3

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-ltz v11, :cond_2

    int-to-long v11, v7

    .line 5
    iget v13, v0, Lw3/b/a/f0/q;->e:I

    int-to-long v13, v13

    div-long v15, v9, v13

    add-long/2addr v15, v11

    .line 6
    rem-long/2addr v9, v13

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    :cond_1
    :goto_0
    move-wide v11, v15

    goto :goto_1

    :cond_2
    int-to-long v11, v7

    .line 7
    iget v13, v0, Lw3/b/a/f0/q;->e:I

    int-to-long v13, v13

    div-long v13, v9, v13

    add-long/2addr v13, v11

    const-wide/16 v11, 0x1

    sub-long v15, v13, v11

    .line 8
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 9
    iget v11, v0, Lw3/b/a/f0/q;->e:I

    int-to-long v12, v11

    rem-long/2addr v9, v12

    long-to-int v9, v9

    if-nez v9, :cond_3

    move v9, v11

    :cond_3
    sub-int/2addr v11, v9

    add-int/lit8 v11, v11, 0x1

    int-to-long v9, v11

    const-wide/16 v11, 0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_1

    add-long/2addr v15, v11

    goto :goto_0

    .line 10
    :goto_1
    iget-object v13, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v13}, Lw3/b/a/f0/c;->p0()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_5

    iget-object v13, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v13}, Lw3/b/a/f0/c;->n0()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v11, v13

    if-gtz v13, :cond_5

    long-to-int v3, v11

    long-to-int v4, v9

    .line 11
    iget-object v9, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v9, v1, v2, v7, v8}, Lw3/b/a/f0/c;->f0(JII)I

    move-result v1

    .line 12
    iget-object v2, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, v3, v4}, Lw3/b/a/f0/c;->k0(II)I

    move-result v2

    if-le v1, v2, :cond_4

    move v1, v2

    .line 13
    :cond_4
    iget-object v2, v0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, v3, v4, v1}, Lw3/b/a/f0/c;->z0(III)J

    move-result-wide v1

    add-long/2addr v1, v5

    :goto_2
    return-wide v1

    .line 14
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Magnitude of add amount is too large: "

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/c;->q0(JI)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->e:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->d:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public k(JJ)J
    .locals 8

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 1
    invoke-virtual {p0, p3, p4, p1, p2}, Lw3/b/a/h0/h;->j(JJ)I

    move-result p1

    neg-int p1, p1

    int-to-long p1, p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, p1, p2, v0}, Lw3/b/a/f0/c;->q0(JI)I

    move-result v1

    .line 4
    iget-object v2, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v2, p3, p4}, Lw3/b/a/f0/c;->w0(J)I

    move-result v2

    .line 5
    iget-object v3, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v3, p3, p4, v2}, Lw3/b/a/f0/c;->q0(JI)I

    move-result v3

    sub-int v4, v0, v2

    int-to-long v4, v4

    .line 6
    iget v6, p0, Lw3/b/a/f0/q;->e:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    int-to-long v6, v3

    sub-long/2addr v4, v6

    .line 7
    iget-object v6, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v6, p1, p2, v0, v1}, Lw3/b/a/f0/c;->f0(JII)I

    move-result v6

    .line 8
    iget-object v7, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v7, v0, v1}, Lw3/b/a/f0/c;->k0(II)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 9
    iget-object v7, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v7, p3, p4, v2, v3}, Lw3/b/a/f0/c;->f0(JII)I

    move-result v7

    if-le v7, v6, :cond_1

    .line 10
    iget-object v7, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    .line 11
    iget-object v7, v7, Lw3/b/a/f0/a;->A:Lw3/b/a/c;

    .line 12
    invoke-virtual {v7, p3, p4, v6}, Lw3/b/a/c;->C(JI)J

    move-result-wide p3

    .line 13
    :cond_1
    iget-object v6, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v6, v0, v1}, Lw3/b/a/f0/c;->A0(II)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 14
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, v2, v3}, Lw3/b/a/f0/c;->A0(II)J

    move-result-wide v0

    sub-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    const-wide/16 p1, 0x1

    sub-long/2addr v4, p1

    :cond_2
    move-wide p1, v4

    :goto_0
    return-wide p1
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->h:Lw3/b/a/j;

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p1

    .line 2
    iget p1, p1, Lw3/b/a/f0/p;->l:I

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/f0/q;->e:I

    return v0
.end method

.method public bridge synthetic s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->l:Lw3/b/a/j;

    return-object v0
.end method

.method public x(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, v0}, Lw3/b/a/f0/c;->C0(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/q;->d:Lw3/b/a/f0/c;

    invoke-virtual {v1, p1, p2, v0}, Lw3/b/a/f0/c;->q0(JI)I

    move-result p1

    iget p2, p0, Lw3/b/a/f0/q;->f:I

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public z(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/q;->B(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method
