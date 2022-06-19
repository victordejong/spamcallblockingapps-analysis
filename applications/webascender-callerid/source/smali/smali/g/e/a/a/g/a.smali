.class public Lg/e/a/a/g/a;
.super Lg/e/a/a/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/g/b<",
        "Lg/e/a/a/h/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/e/a/a/h/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/g/b;-><init>(Lg/e/a/a/h/a/b;)V

    return-void
.end method


# virtual methods
.method public a(FF)Lg/e/a/a/g/c;
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lg/e/a/a/g/b;->a(FF)Lg/e/a/a/g/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/e/a/a/g/b;->j(FF)Lg/e/a/a/l/d;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lg/e/a/a/g/b;->a:Lg/e/a/a/h/a/b;

    check-cast p2, Lg/e/a/a/h/a/a;

    invoke-interface {p2}, Lg/e/a/a/h/a/a;->getBarData()Lg/e/a/a/e/a;

    move-result-object p2

    .line 4
    invoke-virtual {v0}, Lg/e/a/a/g/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object p2

    check-cast p2, Lg/e/a/a/h/b/a;

    .line 5
    invoke-interface {p2}, Lg/e/a/a/h/b/a;->n0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-wide v1, p1, Lg/e/a/a/l/d;->c:D

    double-to-float v1, v1

    iget-wide v2, p1, Lg/e/a/a/l/d;->d:D

    double-to-float p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lg/e/a/a/g/a;->l(Lg/e/a/a/g/c;Lg/e/a/a/h/b/a;FF)Lg/e/a/a/g/c;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {p1}, Lg/e/a/a/l/d;->c(Lg/e/a/a/l/d;)V

    return-object v0
.end method

.method protected d()Lg/e/a/a/e/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/g/b;->a:Lg/e/a/a/h/a/b;

    check-cast v0, Lg/e/a/a/h/a/a;

    invoke-interface {v0}, Lg/e/a/a/h/a/a;->getBarData()Lg/e/a/a/e/a;

    move-result-object v0

    return-object v0
.end method

.method protected e(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method protected k([Lg/e/a/a/g/i;F)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    .line 3
    invoke-virtual {v4, p2}, Lg/e/a/a/g/i;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    aget-object p1, p1, v1

    iget p1, p1, Lg/e/a/a/g/i;->b:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public l(Lg/e/a/a/g/c;Lg/e/a/a/h/b/a;FF)Lg/e/a/a/g/c;
    .locals 11

    .line 1
    invoke-interface {p2, p3, p4}, Lg/e/a/a/h/b/d;->q(FF)Lg/e/a/a/e/i;

    move-result-object p3

    check-cast p3, Lg/e/a/a/e/b;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lg/e/a/a/e/b;->j()[F

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p3}, Lg/e/a/a/e/b;->i()[Lg/e/a/a/g/i;

    move-result-object v1

    .line 4
    array-length v2, v1

    if-lez v2, :cond_2

    .line 5
    invoke-virtual {p0, v1, p4}, Lg/e/a/a/g/a;->k([Lg/e/a/a/g/i;F)I

    move-result v9

    .line 6
    iget-object p4, p0, Lg/e/a/a/g/b;->a:Lg/e/a/a/h/a/b;

    check-cast p4, Lg/e/a/a/h/a/a;

    invoke-interface {p2}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object p2

    invoke-interface {p4, p2}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object p2

    invoke-virtual {p1}, Lg/e/a/a/g/c;->g()F

    move-result p4

    aget-object v0, v1, v9

    iget v0, v0, Lg/e/a/a/g/i;->b:F

    invoke-virtual {p2, p4, v0}, Lg/e/a/a/l/g;->b(FF)Lg/e/a/a/l/d;

    move-result-object p2

    .line 7
    new-instance p4, Lg/e/a/a/g/c;

    .line 8
    invoke-virtual {p3}, Lg/e/a/a/e/i;->f()F

    move-result v4

    .line 9
    invoke-virtual {p3}, Lg/e/a/a/e/b;->c()F

    move-result v5

    iget-wide v0, p2, Lg/e/a/a/l/d;->c:D

    double-to-float v6, v0

    iget-wide v0, p2, Lg/e/a/a/l/d;->d:D

    double-to-float v7, v0

    .line 10
    invoke-virtual {p1}, Lg/e/a/a/g/c;->c()I

    move-result v8

    .line 11
    invoke-virtual {p1}, Lg/e/a/a/g/c;->b()Lg/e/a/a/d/i$a;

    move-result-object v10

    move-object v3, p4

    invoke-direct/range {v3 .. v10}, Lg/e/a/a/g/c;-><init>(FFFFIILg/e/a/a/d/i$a;)V

    .line 12
    invoke-static {p2}, Lg/e/a/a/l/d;->c(Lg/e/a/a/l/d;)V

    return-object p4

    :cond_2
    return-object v0
.end method
