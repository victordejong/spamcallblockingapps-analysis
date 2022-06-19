.class public final Le/a/a/h1/o/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x7f0405a1

    .line 4
    invoke-static {p1, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iput-object v0, p0, Le/a/a/h1/o/a;->a:Landroid/graphics/Paint;

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    const-wide/16 v0, 0x640

    long-to-int v2, v0

    const/4 v3, 0x1

    aput v2, p1, v3

    .line 6
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v2, -0x1

    .line 7
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    new-instance v2, Le/a/a/h1/o/a$a;

    invoke-direct {v2, p0, v0, v1}, Le/a/a/h1/o/a$a;-><init>(Le/a/a/h1/o/a;J)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "ValueAnimator.ofInt(0, t\u2026alidateSelf() }\n        }"

    .line 10
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/h1/o/a;->b:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    int-to-long v6, v5

    const-wide/16 v8, 0x190

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x4b0

    add-long/2addr v8, v6

    int-to-long v10, v0

    sub-long/2addr v10, v6

    long-to-float v10, v10

    sub-long/2addr v8, v6

    long-to-float v6, v8

    div-float/2addr v10, v6

    int-to-float v6, v4

    cmpg-float v6, v10, v6

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    int-to-float v6, v6

    cmpl-float v6, v10, v6

    if-lez v6, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v6, p0, Le/a/a/h1/o/a;->a:Landroid/graphics/Paint;

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v10

    mul-float/2addr v8, v7

    const/16 v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    int-to-float v9, v2

    div-float/2addr v9, v7

    mul-float/2addr v6, v10

    div-float/2addr v6, v7

    .line 5
    iget-object v7, p0, Le/a/a/h1/o/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/h1/o/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
