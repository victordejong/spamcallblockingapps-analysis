.class public abstract Lg/e/a/a/e/h;
.super Lg/e/a/a/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/e/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/i;",
        ">",
        "Lg/e/a/a/e/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lg/e/a/a/e/e;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    const p2, -0x800001

    .line 3
    iput p2, p0, Lg/e/a/a/e/h;->r:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 4
    iput v0, p0, Lg/e/a/a/e/h;->s:F

    .line 5
    iput p2, p0, Lg/e/a/a/e/h;->t:F

    .line 6
    iput v0, p0, Lg/e/a/a/e/h;->u:F

    .line 7
    iput-object p1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/e/h;->K0()V

    return-void
.end method


# virtual methods
.method public J(I)Lg/e/a/a/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/e/a/a/e/i;

    return-object p1
.end method

.method public K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, -0x800001

    .line 2
    iput v0, p0, Lg/e/a/a/e/h;->r:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v1, p0, Lg/e/a/a/e/h;->s:F

    .line 4
    iput v0, p0, Lg/e/a/a/e/h;->t:F

    .line 5
    iput v1, p0, Lg/e/a/a/e/h;->u:F

    .line 6
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/e/a/a/e/i;

    .line 7
    invoke-virtual {p0, v1}, Lg/e/a/a/e/h;->L0(Lg/e/a/a/e/i;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected L0(Lg/e/a/a/e/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lg/e/a/a/e/h;->M0(Lg/e/a/a/e/i;)V

    .line 2
    invoke-virtual {p0, p1}, Lg/e/a/a/e/h;->N0(Lg/e/a/a/e/i;)V

    return-void
.end method

.method protected M0(Lg/e/a/a/e/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/e/a/a/e/i;->f()F

    move-result v0

    iget v1, p0, Lg/e/a/a/e/h;->u:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/e/a/a/e/i;->f()F

    move-result v0

    iput v0, p0, Lg/e/a/a/e/h;->u:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg/e/a/a/e/i;->f()F

    move-result v0

    iget v1, p0, Lg/e/a/a/e/h;->t:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lg/e/a/a/e/i;->f()F

    move-result p1

    iput p1, p0, Lg/e/a/a/e/h;->t:F

    :cond_1
    return-void
.end method

.method protected N0(Lg/e/a/a/e/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/e/a/a/e/f;->c()F

    move-result v0

    iget v1, p0, Lg/e/a/a/e/h;->s:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/e/a/a/e/f;->c()F

    move-result v0

    iput v0, p0, Lg/e/a/a/e/h;->s:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg/e/a/a/e/f;->c()F

    move-result v0

    iget v1, p0, Lg/e/a/a/e/h;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lg/e/a/a/e/f;->c()F

    move-result p1

    iput p1, p0, Lg/e/a/a/e/h;->r:F

    :cond_1
    return-void
.end method

.method public O0(FFLg/e/a/a/e/h$a;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_0
    if-ge v0, v2, :cond_5

    add-int v3, v0, v2

    .line 3
    div-int/lit8 v3, v3, 0x2

    .line 4
    iget-object v4, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/e/a/a/e/i;

    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v4

    sub-float/2addr v4, p1

    .line 5
    iget-object v5, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/e/a/a/e/i;

    invoke-virtual {v5}, Lg/e/a/a/e/i;->f()F

    move-result v5

    sub-float/2addr v5, p1

    .line 6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_2
    cmpg-float v5, v7, v5

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    float-to-double v4, v4

    const-wide/16 v7, 0x0

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_4

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_4
    cmpg-double v3, v4, v7

    if-gez v3, :cond_1

    goto :goto_1

    :cond_5
    if-eq v2, v1, :cond_c

    .line 7
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/i;

    invoke-virtual {v0}, Lg/e/a/a/e/i;->f()F

    move-result v0

    .line 8
    sget-object v1, Lg/e/a/a/e/h$a;->UP:Lg/e/a/a/e/h$a;

    if-ne p3, v1, :cond_6

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    .line 9
    iget-object p1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 10
    :cond_6
    sget-object v1, Lg/e/a/a/e/h$a;->DOWN:Lg/e/a/a/e/h$a;

    if-ne p3, v1, :cond_7

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    if-lez v2, :cond_7

    add-int/lit8 v2, v2, -0x1

    .line 11
    :cond_7
    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    if-lez v2, :cond_8

    .line 12
    iget-object p1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    add-int/lit8 p3, v2, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/e/a/a/e/i;

    invoke-virtual {p1}, Lg/e/a/a/e/i;->f()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 13
    :cond_8
    iget-object p1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/e/a/a/e/i;

    invoke-virtual {p1}, Lg/e/a/a/e/f;->c()F

    move-result p1

    :goto_5
    move p3, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 14
    iget-object v1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_a

    goto :goto_6

    .line 15
    :cond_a
    iget-object v1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/e/a/a/e/i;

    .line 16
    invoke-virtual {v1}, Lg/e/a/a/e/i;->f()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_b

    :goto_6
    move v2, p3

    goto :goto_7

    .line 17
    :cond_b
    invoke-virtual {v1}, Lg/e/a/a/e/f;->c()F

    move-result v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    move p1, p2

    goto :goto_5

    :cond_c
    :goto_7
    return v2

    :cond_d
    :goto_8
    return v1
.end method

.method public P0()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataSet, label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/e/a/a/e/e;->x()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/e/e;->x()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X(FFLg/e/a/a/e/h$a;)Lg/e/a/a/e/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lg/e/a/a/e/h$a;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg/e/a/a/e/h;->O0(FFLg/e/a/a/e/h$a;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/e/a/a/e/i;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f0(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, -0x800001

    .line 2
    iput v0, p0, Lg/e/a/a/e/h;->r:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lg/e/a/a/e/h;->s:F

    .line 4
    sget-object v0, Lg/e/a/a/e/h$a;->DOWN:Lg/e/a/a/e/h$a;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1, v1, v0}, Lg/e/a/a/e/h;->O0(FFLg/e/a/a/e/h$a;)I

    move-result p1

    .line 5
    sget-object v0, Lg/e/a/a/e/h$a;->UP:Lg/e/a/a/e/h$a;

    invoke-virtual {p0, p2, v1, v0}, Lg/e/a/a/e/h;->O0(FFLg/e/a/a/e/h$a;)I

    move-result p2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 6
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/i;

    invoke-virtual {p0, v0}, Lg/e/a/a/e/h;->N0(Lg/e/a/a/e/i;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public g0(F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v3, v1, v2

    .line 3
    div-int/lit8 v3, v3, 0x2

    .line 4
    iget-object v4, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/e/a/a/e/i;

    .line 5
    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v5

    cmpl-float v5, p1, v5

    if-nez v5, :cond_1

    :goto_1
    if-lez v3, :cond_0

    .line 6
    iget-object v1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/e/a/a/e/i;

    invoke-virtual {v1}, Lg/e/a/a/e/i;->f()F

    move-result v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_3

    .line 8
    iget-object v2, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/e/a/a/e/i;

    .line 9
    invoke-virtual {v2}, Lg/e/a/a/e/i;->f()F

    move-result v4

    cmpl-float v4, v4, p1

    if-nez v4, :cond_3

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v4}, Lg/e/a/a/e/i;->f()F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/h;->u:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/h;->r:F

    return v0
.end method

.method public l(Lg/e/a/a/e/i;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public l0()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/h;->t:F

    return v0
.end method

.method public q(FF)Lg/e/a/a/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/e/a/a/e/h$a;->CLOSEST:Lg/e/a/a/e/h$a;

    invoke-virtual {p0, p1, p2, v0}, Lg/e/a/a/e/h;->X(FFLg/e/a/a/e/h$a;)Lg/e/a/a/e/i;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/e/h;->P0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/e/a/a/e/i;

    invoke-virtual {v3}, Lg/e/a/a/e/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/h;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public z()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/h;->s:F

    return v0
.end method
