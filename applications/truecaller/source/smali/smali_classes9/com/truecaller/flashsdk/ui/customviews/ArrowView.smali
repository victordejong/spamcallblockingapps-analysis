.class public Lcom/truecaller/flashsdk/ui/customviews/ArrowView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Landroid/animation/ObjectAnimator;

.field public h:Landroid/animation/ObjectAnimator;

.field public i:Landroid/animation/ObjectAnimator;

.field public j:Landroid/animation/ObjectAnimator;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->c:F

    .line 3
    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d:F

    .line 4
    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e:F

    .line 5
    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->f:F

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 6
    fill-array-data p2, :array_0

    const-string v1, "alphaOne"

    invoke-static {v1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v1, p1, [F

    .line 7
    fill-array-data v1, :array_1

    const-string v2, "alphaTwo"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, p1, [F

    .line 8
    fill-array-data v2, :array_2

    const-string v3, "alphaThree"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, p1, [F

    .line 9
    fill-array-data v3, :array_3

    const-string v4, "alphaFour"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v0

    .line 10
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x258

    .line 11
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x384

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 13
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 14
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 15
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v0

    .line 16
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    .line 17
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 18
    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x320

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 19
    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 20
    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 21
    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v0

    .line 22
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    .line 23
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 25
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 26
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 27
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v1, v0

    .line 28
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    .line 29
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 30
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x28a

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 31
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 32
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 33
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 1
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->n:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 11
    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->n:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 14
    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 16
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 17
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 18
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlphaFour()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->c:F

    return v0
.end method

.method public getAlphaOne()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->f:F

    return v0
.end method

.method public getAlphaThree()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d:F

    return v0
.end method

.method public getAlphaTwo()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e:F

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->c:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->l:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->m:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->n:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->f:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlphaFour(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->c:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setAlphaOne(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->f:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setAlphaThree(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setAlphaTwo(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->e:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
