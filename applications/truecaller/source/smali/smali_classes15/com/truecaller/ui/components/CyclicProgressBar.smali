.class public Lcom/truecaller/ui/components/CyclicProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final j:Landroid/view/animation/Interpolator;

.field public static k:Z


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Landroid/graphics/RectF;

.field public f:Landroid/graphics/Paint;

.field public g:F

.field public final h:Ljava/lang/Runnable;

.field public final i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/truecaller/ui/components/CyclicProgressBar;->j:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/truecaller/ui/components/CyclicProgressBar;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->e:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Lcom/truecaller/ui/components/CyclicProgressBar$a;

    invoke-direct {v0, p0}, Lcom/truecaller/ui/components/CyclicProgressBar$a;-><init>(Lcom/truecaller/ui/components/CyclicProgressBar;)V

    iput-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->h:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/truecaller/ui/components/CyclicProgressBar$b;

    invoke-direct {v0, p0}, Lcom/truecaller/ui/components/CyclicProgressBar$b;-><init>(Lcom/truecaller/ui/components/CyclicProgressBar;)V

    iput-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->i:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    const p1, -0x777778

    .line 7
    iput v2, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->g:F

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcom/truecaller/R$styleable;->CyclicProgressBar:[I

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    :try_start_0
    invoke-static {p1, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->g:F

    const/4 p1, -0x1

    .line 10
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    :goto_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    .line 13
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p2, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->g:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p2, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 16
    iget-object p2, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object p1, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    throw p1
.end method

.method public static setAnimationEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/truecaller/ui/components/CyclicProgressBar;->k:Z

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    .line 3
    rem-long v4, v0, v2

    long-to-float v4, v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float v5, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float v7, v5, v6

    .line 4
    iput v7, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->a:F

    .line 5
    div-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43610000    # 225.0f

    mul-float/2addr v0, v1

    div-float v2, v0, v6

    float-to-int v2, v2

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 6
    iput v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->d:F

    const v0, 0x3f59999a    # 0.85f

    cmpl-float v0, v5, v0

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x43870000    # 270.0f

    if-ltz v0, :cond_0

    const v0, 0x44d48000    # 1700.0f

    sub-float/2addr v4, v0

    div-float/2addr v4, v2

    .line 7
    sget-object v0, Lcom/truecaller/ui/components/CyclicProgressBar;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    .line 8
    iput v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->b:F

    sub-float/2addr v3, v0

    .line 9
    iput v3, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->c:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_1

    .line 10
    iput v3, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->b:F

    goto :goto_0

    :cond_1
    const v0, 0x3eb33333    # 0.35f

    cmpl-float v3, v5, v0

    const/high16 v6, 0x42340000    # 45.0f

    if-ltz v3, :cond_2

    const/high16 v0, 0x442f0000    # 700.0f

    sub-float/2addr v4, v0

    div-float/2addr v4, v2

    .line 11
    sget-object v0, Lcom/truecaller/ui/components/CyclicProgressBar;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    .line 12
    iput v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->b:F

    goto :goto_0

    :cond_2
    cmpg-float v0, v5, v0

    if-gez v0, :cond_3

    .line 13
    iput v6, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->b:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->c:F

    .line 15
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->e:Landroid/graphics/RectF;

    iget v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->a:F

    iget v1, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->d:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->c:F

    add-float v3, v0, v1

    iget v4, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->b:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 16
    sget-boolean p1, Lcom/truecaller/ui/components/CyclicProgressBar;->k:Z

    if-eqz p1, :cond_4

    .line 17
    sget-object p1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->e:Landroid/graphics/RectF;

    iget p4, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->g:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p4, v0

    mul-float v2, p4, v0

    int-to-float p1, p1

    mul-float v3, p4, v0

    sub-float/2addr p1, v3

    int-to-float p2, p2

    mul-float/2addr p4, v0

    sub-float/2addr p2, p4

    invoke-virtual {p3, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/CyclicProgressBar;->f:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
