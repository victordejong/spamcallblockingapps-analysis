.class public Lg/e/a/a/d/i;
.super Lg/e/a/a/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/d/i$a;,
        Lg/e/a/a/d/i$b;
    }
.end annotation


# instance fields
.field private J:Z

.field private K:Z

.field protected L:Z

.field protected M:Z

.field protected N:I

.field protected O:F

.field protected P:F

.field protected Q:F

.field private R:Lg/e/a/a/d/i$b;

.field private S:Lg/e/a/a/d/i$a;

.field protected T:F

.field protected U:F


# direct methods
.method public constructor <init>(Lg/e/a/a/d/i$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lg/e/a/a/d/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/e/a/a/d/i;->J:Z

    .line 3
    iput-boolean v0, p0, Lg/e/a/a/d/i;->K:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lg/e/a/a/d/i;->L:Z

    .line 5
    iput-boolean v0, p0, Lg/e/a/a/d/i;->M:Z

    const v0, -0x777778

    .line 6
    iput v0, p0, Lg/e/a/a/d/i;->N:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lg/e/a/a/d/i;->O:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 8
    iput v0, p0, Lg/e/a/a/d/i;->P:F

    .line 9
    iput v0, p0, Lg/e/a/a/d/i;->Q:F

    .line 10
    sget-object v0, Lg/e/a/a/d/i$b;->OUTSIDE_CHART:Lg/e/a/a/d/i$b;

    iput-object v0, p0, Lg/e/a/a/d/i;->R:Lg/e/a/a/d/i$b;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lg/e/a/a/d/i;->T:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 12
    iput v1, p0, Lg/e/a/a/d/i;->U:F

    .line 13
    iput-object p1, p0, Lg/e/a/a/d/i;->S:Lg/e/a/a/d/i$a;

    .line 14
    iput v0, p0, Lg/e/a/a/d/b;->c:F

    return-void
.end method


# virtual methods
.method public Q()Lg/e/a/a/d/i$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/d/i;->S:Lg/e/a/a/d/i$a;

    return-object v0
.end method

.method public R()Lg/e/a/a/d/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/d/i;->R:Lg/e/a/a/d/i$b;

    return-object v0
.end method

.method public S()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/i;->U:F

    return v0
.end method

.method public T()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/i;->T:F

    return v0
.end method

.method public U(Landroid/graphics/Paint;)F
    .locals 2

    .line 1
    iget v0, p0, Lg/e/a/a/d/b;->e:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lg/e/a/a/l/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lg/e/a/a/d/b;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method public V(Landroid/graphics/Paint;)F
    .locals 7

    .line 1
    iget v0, p0, Lg/e/a/a/d/b;->e:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lg/e/a/a/l/i;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lg/e/a/a/d/b;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Lg/e/a/a/d/i;->T()F

    move-result v0

    .line 5
    invoke-virtual {p0}, Lg/e/a/a/d/i;->S()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    .line 6
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    :cond_0
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v1}, Lg/e/a/a/l/i;->e(F)F

    move-result v1

    :cond_1
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 8
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public W()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/i;->Q:F

    return v0
.end method

.method public X()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/i;->P:F

    return v0
.end method

.method public Y()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/i;->N:I

    return v0
.end method

.method public Z()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/i;->O:F

    return v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/d/i;->J:Z

    return v0
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/d/i;->K:Z

    return v0
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/d/i;->M:Z

    return v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/d/i;->L:Z

    return v0
.end method

.method public e0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/e/a/a/d/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/e/a/a/d/i;->R()Lg/e/a/a/d/i$b;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/i$b;->OUTSIDE_CHART:Lg/e/a/a/d/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/d/i;->Q:F

    return-void
.end method

.method public g0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/d/i;->P:F

    return-void
.end method

.method public i(FF)V
    .locals 4

    sub-float v0, p2, p1

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_0
    sub-float v0, p2, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3
    iget-boolean v1, p0, Lg/e/a/a/d/a;->E:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    iget p1, p0, Lg/e/a/a/d/a;->H:F

    goto :goto_0

    :cond_1
    div-float v1, v0, v2

    invoke-virtual {p0}, Lg/e/a/a/d/i;->W()F

    move-result v3

    mul-float v1, v1, v3

    sub-float/2addr p1, v1

    :goto_0
    iput p1, p0, Lg/e/a/a/d/a;->H:F

    .line 4
    iget-boolean p1, p0, Lg/e/a/a/d/a;->F:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lg/e/a/a/d/a;->G:F

    goto :goto_1

    :cond_2
    div-float/2addr v0, v2

    invoke-virtual {p0}, Lg/e/a/a/d/i;->X()F

    move-result p1

    mul-float v0, v0, p1

    add-float p1, p2, v0

    :goto_1
    iput p1, p0, Lg/e/a/a/d/a;->G:F

    .line 5
    iget p2, p0, Lg/e/a/a/d/a;->H:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/d/a;->I:F

    return-void
.end method
