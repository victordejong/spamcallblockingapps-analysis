.class public Le/a/e/m1;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/m1$b;,
        Le/a/e/m1$c;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Le/a/e/m1$b;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:F

.field public k:F

.field public l:Landroid/view/View;

.field public m:I

.field public n:Le/a/e/m1$c;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;IILe/a/e/m1$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;II",
            "Le/a/e/m1$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/a/e/m1;->c:Ljava/util/Map;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Le/a/e/m1;->m:I

    .line 4
    sget-object v0, Le/a/e/m1$c;->a:Le/a/e/m1$c;

    iput-object v0, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    .line 5
    iput-object p6, p0, Le/a/e/m1;->g:Le/a/e/m1$b;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p6

    int-to-float p6, p6

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p6, v0

    iput p6, p0, Le/a/e/m1;->a:F

    const p6, 0x7f040592

    .line 7
    invoke-static {p1, p2, p6}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Le/a/e/m1;->b:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 10
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    invoke-static {p1, p4, p6}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Le/a/e/m1;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    neg-int p4, p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 13
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 14
    invoke-virtual {p2, p4, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p1, p4, p6}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 17
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 18
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 19
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 20
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 21
    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object v0, p0, Le/a/e/m1;->c:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Le/a/e/m1;->e:Landroid/graphics/Paint;

    .line 24
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p3, 0x7f0406de

    .line 25
    invoke-static {p1, p3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-static {p1, p5}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Le/a/e/m1;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Le/a/e/m1;->e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    sget-object v2, Le/a/e/m1$c;->d:Le/a/e/m1$c;

    if-eq v1, v2, :cond_7

    iget v1, p0, Le/a/e/m1;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v1, v4, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 p2, 0x3

    if-eq v1, p2, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Le/a/e/m1;->g:Le/a/e/m1$b;

    invoke-interface {p2}, Le/a/e/m1$b;->c()V

    .line 5
    invoke-virtual {p0, p1, v4}, Le/a/e/m1;->d(Landroidx/recyclerview/widget/RecyclerView;Z)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    sget-object v2, Le/a/e/m1$c;->c:Le/a/e/m1$c;

    if-ne v1, v2, :cond_7

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Le/a/e/m1;->j:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v2, p0, Le/a/e/m1;->j:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v5, p2

    :cond_3
    mul-float/2addr v1, v5

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v1, p0, Le/a/e/m1;->j:F

    sub-float/2addr p2, v1

    mul-float/2addr p2, v3

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Le/a/e/l1;

    invoke-direct {v2, p0, p1, v0, p2}, Le/a/e/l1;-><init>(Le/a/e/m1;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0, v1, p2, v0}, Le/a/e/m1;->f(IFLandroid/view/View;)V

    :goto_0
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p1, p2}, Le/a/e/m1;->d(Landroidx/recyclerview/widget/RecyclerView;Z)V

    goto :goto_1

    .line 18
    :cond_6
    iget-object p2, p0, Le/a/e/m1;->g:Le/a/e/m1$b;

    invoke-interface {p2}, Le/a/e/m1$b;->c()V

    .line 19
    invoke-virtual {p0, p1, v4}, Le/a/e/m1;->d(Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    sget-object v0, Le/a/e/m1$c;->a:Le/a/e/m1$c;

    sget-object v1, Le/a/e/m1$c;->b:Le/a/e/m1$c;

    sget-object v2, Le/a/e/m1$c;->c:Le/a/e/m1$c;

    iget-object v3, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    sget-object v4, Le/a/e/m1$c;->d:Le/a/e/m1$c;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    return v5

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 p1, 0x3

    if-eq v3, p1, :cond_5

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v3, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    if-ne v3, v1, :cond_4

    .line 4
    iget v1, p0, Le/a/e/m1;->j:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Le/a/e/m1;->a:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Le/a/e/m1;->e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 7
    iget-object v1, p0, Le/a/e/m1;->g:Le/a/e/m1$b;

    invoke-interface {v1, p1, p2}, Le/a/e/m1$b;->b(ILandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result p1

    iput-boolean p1, p0, Le/a/e/m1;->o:Z

    .line 9
    iput-object v2, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    if-eqz p2, :cond_4

    .line 10
    iget-object p1, p0, Le/a/e/m1;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Le/a/e/m1;->h:Landroid/graphics/drawable/Drawable;

    .line 12
    iget-object p1, p0, Le/a/e/m1;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iput-boolean v5, p0, Le/a/e/m1;->i:Z

    goto :goto_0

    .line 14
    :cond_2
    iput-object v0, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    goto :goto_0

    .line 15
    :cond_3
    iget p1, p0, Le/a/e/m1;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Le/a/e/m1;->a:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 16
    iput-object v0, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    if-ne p1, v2, :cond_8

    return v5

    .line 18
    :cond_5
    iget-object p1, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    if-ne p1, v2, :cond_6

    return v5

    :cond_6
    if-ne p1, v1, :cond_8

    .line 19
    iput-object v0, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Le/a/e/m1;->m:I

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Le/a/e/m1;->m:I

    .line 23
    instance-of p1, v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 24
    iput-object v1, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Le/a/e/m1;->j:F

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Le/a/e/m1;->k:F

    :cond_8
    :goto_1
    return v4
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 3

    .line 1
    iget v0, p0, Le/a/e/m1;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    sget-object v1, Le/a/e/m1$c;->c:Le/a/e/m1$c;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/e/m1;->e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3
    sget-object p2, Le/a/e/m1$c;->d:Le/a/e/m1$c;

    iput-object p2, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    aput v2, p2, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v1, Le/a/e/r;

    invoke-direct {v1, v0, p1}, Le/a/e/r;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    new-instance v0, Le/a/e/m1$a;

    invoke-direct {v0, p0, p1}, Le/a/e/m1$a;-><init>(Le/a/e/m1;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Le/a/e/q;

    invoke-direct {p2, p0, v0, p1}, Le/a/e/q;-><init>(Le/a/e/m1;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v0, 0x1f4

    .line 10
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Le/a/e/m1;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 3

    .line 1
    iget v0, p0, Le/a/e/m1;->m:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Le/a/e/m1;->l:Landroid/view/View;

    if-nez v1, :cond_1

    .line 4
    iput-object v0, p0, Le/a/e/m1;->l:Landroid/view/View;

    goto :goto_0

    :cond_1
    if-eq v1, v0, :cond_2

    .line 5
    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    iput-object v0, p0, Le/a/e/m1;->l:Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final f(IFLandroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/m1;->g:Le/a/e/m1$b;

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    iget-boolean v2, p0, Le/a/e/m1;->o:Z

    if-eqz v2, :cond_1

    :cond_0
    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    iget-boolean p2, p0, Le/a/e/m1;->o:Z

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Le/a/e/m1$b;->a(IZLandroid/view/View;)V

    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Le/a/e/m1;->e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Le/a/e/m1;->i:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/e/m1;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/a/e/m1;->i:Z

    .line 5
    :cond_0
    sget-object p1, Le/a/e/m1$c;->a:Le/a/e/m1$c;

    iput-object p1, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Le/a/e/m1;->m:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    iget-object p3, p0, Le/a/e/m1;->n:Le/a/e/m1$c;

    sget-object v0, Le/a/e/m1$c;->c:Le/a/e/m1$c;

    if-eq p3, v0, :cond_0

    sget-object v0, Le/a/e/m1$c;->d:Le/a/e/m1$c;

    if-ne p3, v0, :cond_8

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Le/a/e/m1;->e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p2}, Le/a/e/m1;->e(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p2

    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    .line 5
    iget-object v0, p0, Le/a/e/m1;->c:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Le/a/e/m1;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-boolean v1, p0, Le/a/e/m1;->o:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Le/a/e/m1;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/a/e/m1;->b:Landroid/graphics/drawable/Drawable;

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    :goto_1
    move v3, v1

    move-object v1, v0

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 11
    iget-boolean v1, p0, Le/a/e/m1;->o:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Le/a/e/m1;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Le/a/e/m1;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float v5, v3, v2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v8, v2

    iget-object v9, p0, Le/a/e/m1;->e:Landroid/graphics/Paint;

    move-object v4, p1

    .line 15
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    return-void

    .line 16
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 19
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 20
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 21
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    return-void
.end method
