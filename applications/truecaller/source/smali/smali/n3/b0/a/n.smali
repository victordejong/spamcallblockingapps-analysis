.class public Ln3/b0/a/n;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "SourceFile"


# instance fields
.field public final i:Landroid/view/animation/LinearInterpolator;

.field public final j:Landroid/view/animation/DecelerateInterpolator;

.field public k:Landroid/graphics/PointF;

.field public final l:Landroid/util/DisplayMetrics;

.field public m:Z

.field public n:F

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Ln3/b0/a/n;->i:Landroid/view/animation/LinearInterpolator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Ln3/b0/a/n;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/b0/a/n;->m:Z

    .line 5
    iput v0, p0, Ln3/b0/a/n;->o:I

    iput v0, p0, Ln3/b0/a/n;->p:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Ln3/b0/a/n;->l:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public b(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
    .locals 1

    .line 1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$y;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->f()V

    return-void

    .line 3
    :cond_0
    iget p3, p0, Ln3/b0/a/n;->o:I

    sub-int p1, p3, p1

    mul-int/2addr p3, p1

    const/4 v0, 0x0

    if-gtz p3, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Ln3/b0/a/n;->o:I

    .line 4
    iget p3, p0, Ln3/b0/a/n;->p:I

    sub-int p2, p3, p2

    mul-int/2addr p3, p2

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    iput v0, p0, Ln3/b0/a/n;->p:I

    if-nez p1, :cond_6

    if-nez v0, :cond_6

    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    instance-of p3, p2, Landroidx/recyclerview/widget/RecyclerView$y$b;

    if-eqz p3, :cond_3

    .line 8
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$y$b;

    .line 9
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$y$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 10
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_4

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p3, v0, p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    mul-float/2addr p2, p2

    .line 11
    iget p3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p3, p3

    add-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 12
    iget p3, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/PointF;->x:F

    .line 13
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 14
    iput-object p1, p0, Ln3/b0/a/n;->k:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p3, p1

    float-to-int p2, p3

    .line 15
    iput p2, p0, Ln3/b0/a/n;->o:I

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 16
    iput p1, p0, Ln3/b0/a/n;->p:I

    const/16 p1, 0x2710

    .line 17
    invoke-virtual {p0, p1}, Ln3/b0/a/n;->j(I)I

    move-result p1

    .line 18
    iget p2, p0, Ln3/b0/a/n;->o:I

    int-to-float p2, p2

    const p3, 0x3f99999a    # 1.2f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget v0, p0, Ln3/b0/a/n;->p:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iget-object p3, p0, Ln3/b0/a/n;->i:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p4, p2, v0, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$y$a;->b(IIILandroid/view/animation/Interpolator;)V

    goto :goto_3

    .line 19
    :cond_5
    :goto_2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 20
    iput p1, p4, Landroidx/recyclerview/widget/RecyclerView$y$a;->d:I

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->f()V

    :cond_6
    :goto_3
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/b0/a/n;->p:I

    iput v0, p0, Ln3/b0/a/n;->o:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/b0/a/n;->k:Landroid/graphics/PointF;

    return-void
.end method

.method public e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
    .locals 7

    .line 1
    iget-object p2, p0, Ln3/b0/a/n;->k:Landroid/graphics/PointF;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    move v6, p2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v0

    .line 2
    :goto_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 5
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedRight(Landroid/view/View;)I

    move-result v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingLeft()I

    move-result v4

    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingRight()I

    move-result p2

    sub-int v5, v1, p2

    move-object v1, p0

    .line 9
    invoke-virtual/range {v1 .. v6}, Ln3/b0/a/n;->g(IIIII)I

    move-result p2

    goto :goto_4

    :cond_4
    :goto_3
    move p2, v0

    .line 10
    :goto_4
    invoke-virtual {p0}, Ln3/b0/a/n;->k()I

    move-result v6

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->c:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_5

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 14
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 15
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v3, p1, v0

    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingTop()I

    move-result v4

    .line 17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result p1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingBottom()I

    move-result v0

    sub-int v5, p1, v0

    move-object v1, p0

    .line 18
    invoke-virtual/range {v1 .. v6}, Ln3/b0/a/n;->g(IIIII)I

    move-result v0

    :cond_6
    :goto_5
    mul-int p1, p2, p2

    mul-int v1, v0, v0

    add-int/2addr v1, p1

    int-to-double v1, v1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 20
    invoke-virtual {p0, p1}, Ln3/b0/a/n;->i(I)I

    move-result p1

    if-lez p1, :cond_7

    neg-int p2, p2

    neg-int v0, v0

    .line 21
    iget-object v1, p0, Ln3/b0/a/n;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$y$a;->b(IIILandroid/view/animation/Interpolator;)V

    :cond_7
    return-void
.end method

.method public g(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    sub-int/2addr p4, p2

    return p4

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr p3, p1

    if-lez p3, :cond_2

    return p3

    :cond_2
    sub-int/2addr p4, p2

    if-gez p4, :cond_3

    return p4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    sub-int/2addr p3, p1

    return p3
.end method

.method public h(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public i(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ln3/b0/a/n;->j(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public j(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-boolean v0, p0, Ln3/b0/a/n;->m:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/b0/a/n;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Ln3/b0/a/n;->h(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Ln3/b0/a/n;->n:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ln3/b0/a/n;->m:Z

    .line 5
    :cond_0
    iget v0, p0, Ln3/b0/a/n;->n:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public k()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b0/a/n;->k:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
