.class public Ln3/b0/a/o;
.super Ln3/b0/a/y;
.source "SourceFile"


# instance fields
.field public d:Ln3/b0/a/u;

.field public e:Ln3/b0/a/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b0/a/y;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$o;II)I
    .locals 8

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$y$b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ln3/b0/a/o;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 5
    :cond_3
    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$y$b;

    add-int/lit8 v4, v0, -0x1

    .line 6
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$y$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_4

    return v1

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 8
    iget-object v5, p0, Ln3/b0/a/o;->e:Ln3/b0/a/u;

    if-eqz v5, :cond_5

    iget-object v5, v5, Ln3/b0/a/u;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v5, p1, :cond_6

    .line 9
    :cond_5
    new-instance v5, Ln3/b0/a/s;

    invoke-direct {v5, p1}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 10
    iput-object v5, p0, Ln3/b0/a/o;->e:Ln3/b0/a/u;

    .line 11
    :cond_6
    iget-object v5, p0, Ln3/b0/a/o;->e:Ln3/b0/a/u;

    .line 12
    invoke-virtual {p0, p1, v5, p2, v7}, Ln3/b0/a/o;->g(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;II)I

    move-result p2

    .line 13
    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    neg-int p2, p2

    goto :goto_0

    :cond_7
    move p2, v7

    .line 14
    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 15
    iget-object v5, p0, Ln3/b0/a/o;->d:Ln3/b0/a/u;

    if-eqz v5, :cond_9

    iget-object v5, v5, Ln3/b0/a/u;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v5, p1, :cond_a

    .line 16
    :cond_9
    new-instance v5, Ln3/b0/a/t;

    invoke-direct {v5, p1}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 17
    iput-object v5, p0, Ln3/b0/a/o;->d:Ln3/b0/a/u;

    .line 18
    :cond_a
    iget-object v5, p0, Ln3/b0/a/o;->d:Ln3/b0/a/u;

    .line 19
    invoke-virtual {p0, p1, v5, v7, p3}, Ln3/b0/a/o;->g(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;II)I

    move-result p3

    .line 20
    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_c

    neg-int p3, p3

    goto :goto_1

    :cond_b
    move p3, v7

    .line 21
    :cond_c
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_d

    move p2, p3

    :cond_d
    if-nez p2, :cond_e

    return v1

    :cond_e
    add-int/2addr v2, p2

    if-gez v2, :cond_f

    goto :goto_2

    :cond_f
    move v7, v2

    :goto_2
    if-lt v7, v0, :cond_10

    goto :goto_3

    :cond_10
    move v4, v7

    :goto_3
    return v4
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;II)I
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Ln3/b0/a/y;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2
    iget-object p3, p0, Ln3/b0/a/y;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    const/4 p4, 0x0

    aput p3, v0, p4

    .line 3
    iget-object p3, p0, Ln3/b0/a/y;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalY()I

    move-result p3

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result p3

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move v7, p4

    move v6, v5

    move v5, v4

    move-object v4, v3

    :goto_0
    if-ge v7, p3, :cond_4

    .line 5
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ge v9, v5, :cond_2

    move-object v3, v8

    move v5, v9

    :cond_2
    if-le v9, v6, :cond_3

    move-object v4, v8

    move v6, v9

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p2, v3}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p1

    .line 8
    invoke-virtual {p2, v4}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p3

    .line 9
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    invoke-virtual {p2, v3}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p3

    .line 11
    invoke-virtual {p2, v4}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p2

    .line 12
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    mul-float/2addr p1, v2

    sub-int/2addr v6, v5

    add-int/2addr v6, v1

    int-to-float p2, v6

    div-float v2, p1, p2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_8

    return p4

    .line 13
    :cond_8
    aget p1, v0, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_9

    aget p1, v0, p4

    goto :goto_3

    :cond_9
    aget p1, v0, v1

    :goto_3
    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ln3/b0/a/u;->k()I

    move-result v2

    invoke-virtual {p2}, Ln3/b0/a/u;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {p2, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    .line 5
    invoke-virtual {p2, v5}, Ln3/b0/a/u;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    .line 6
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
