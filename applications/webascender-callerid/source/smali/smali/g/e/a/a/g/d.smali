.class public Lg/e/a/a/g/d;
.super Lg/e/a/a/g/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lg/e/a/a/h/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/g/a;-><init>(Lg/e/a/a/h/a/a;)V

    return-void
.end method


# virtual methods
.method public a(FF)Lg/e/a/a/g/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/g/b;->a:Lg/e/a/a/h/a/b;

    check-cast v0, Lg/e/a/a/h/a/a;

    invoke-interface {v0}, Lg/e/a/a/h/a/a;->getBarData()Lg/e/a/a/e/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2, p1}, Lg/e/a/a/g/b;->j(FF)Lg/e/a/a/l/d;

    move-result-object v1

    .line 3
    iget-wide v2, v1, Lg/e/a/a/l/d;->d:D

    double-to-float v2, v2

    invoke-virtual {p0, v2, p2, p1}, Lg/e/a/a/g/b;->f(FFF)Lg/e/a/a/g/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg/e/a/a/g/c;->c()I

    move-result p2

    invoke-virtual {v0, p2}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object p2

    check-cast p2, Lg/e/a/a/h/b/a;

    .line 5
    invoke-interface {p2}, Lg/e/a/a/h/b/a;->n0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, v1, Lg/e/a/a/l/d;->d:D

    double-to-float v0, v2

    iget-wide v1, v1, Lg/e/a/a/l/d;->c:D

    double-to-float v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lg/e/a/a/g/a;->l(Lg/e/a/a/g/c;Lg/e/a/a/h/b/a;FF)Lg/e/a/a/g/c;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {v1}, Lg/e/a/a/l/d;->c(Lg/e/a/a/l/d;)V

    return-object p1
.end method

.method protected b(Lg/e/a/a/h/b/d;IFLg/e/a/a/e/h$a;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/e/a/a/h/b/d;",
            "IF",
            "Lg/e/a/a/e/h$a;",
            ")",
            "Ljava/util/List<",
            "Lg/e/a/a/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1, p3}, Lg/e/a/a/h/b/d;->g0(F)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 4
    invoke-interface {p1, p3, v2, p4}, Lg/e/a/a/h/b/d;->X(FFLg/e/a/a/e/h$a;)Lg/e/a/a/e/i;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lg/e/a/a/e/i;->f()F

    move-result p3

    invoke-interface {p1, p3}, Lg/e/a/a/h/b/d;->g0(F)Ljava/util/List;

    move-result-object v1

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/e/a/a/e/i;

    .line 8
    iget-object v1, p0, Lg/e/a/a/g/b;->a:Lg/e/a/a/h/a/b;

    check-cast v1, Lg/e/a/a/h/a/a;

    .line 9
    invoke-interface {p1}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Lg/e/a/a/h/a/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v1

    .line 11
    invoke-virtual {p4}, Lg/e/a/a/e/f;->c()F

    move-result v2

    invoke-virtual {p4}, Lg/e/a/a/e/i;->f()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lg/e/a/a/l/g;->b(FF)Lg/e/a/a/l/d;

    move-result-object v1

    .line 12
    new-instance v9, Lg/e/a/a/g/c;

    .line 13
    invoke-virtual {p4}, Lg/e/a/a/e/i;->f()F

    move-result v3

    invoke-virtual {p4}, Lg/e/a/a/e/f;->c()F

    move-result v4

    iget-wide v5, v1, Lg/e/a/a/l/d;->c:D

    double-to-float v5, v5

    iget-wide v1, v1, Lg/e/a/a/l/d;->d:D

    double-to-float v6, v1

    .line 14
    invoke-interface {p1}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v8

    move-object v2, v9

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lg/e/a/a/g/c;-><init>(FFFFILg/e/a/a/d/i$a;)V

    .line 15
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected e(FFFF)F
    .locals 0

    sub-float/2addr p2, p4

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
