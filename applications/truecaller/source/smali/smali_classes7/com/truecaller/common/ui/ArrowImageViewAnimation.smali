.class public final Lcom/truecaller/common/ui/ArrowImageViewAnimation;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/common/ui/ArrowImageViewAnimation$AnimatableRectF;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001AJ/\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0011R\u001e\u0010#\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00106\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?\u00a8\u0006B"
    }
    d2 = {
        "Lcom/truecaller/common/ui/ArrowImageViewAnimation;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "Landroid/animation/Animator$AnimatorListener;",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "Ls1/s;",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Landroid/animation/ValueAnimator;",
        "valueAnimator",
        "onAnimationUpdate",
        "(Landroid/animation/ValueAnimator;)V",
        "Landroid/animation/Animator;",
        "animator",
        "onAnimationStart",
        "(Landroid/animation/Animator;)V",
        "onAnimationEnd",
        "onAnimationCancel",
        "onAnimationRepeat",
        "d",
        "Landroid/graphics/drawable/Drawable;",
        "kotlin.jvm.PlatformType",
        "g",
        "Landroid/graphics/drawable/Drawable;",
        "arrowDrawable",
        "Landroid/graphics/LinearGradient;",
        "k",
        "Landroid/graphics/LinearGradient;",
        "highlightLinearGradient",
        "Landroid/graphics/RectF;",
        "c",
        "Landroid/graphics/RectF;",
        "highlightRectangle",
        "Landroid/graphics/Matrix;",
        "f",
        "Landroid/graphics/Matrix;",
        "translationMatrix",
        "Landroid/graphics/Bitmap;",
        "i",
        "Landroid/graphics/Bitmap;",
        "arrowBitmap",
        "j",
        "Landroid/graphics/Canvas;",
        "customCanvas",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "highlightPaint",
        "",
        "F",
        "highlightHeight",
        "Landroid/animation/AnimatorSet;",
        "e",
        "Landroid/animation/AnimatorSet;",
        "highlightAnimation",
        "AnimatableRectF",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/animation/AnimatorSet;

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public h:F

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/Canvas;

.field public k:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Lcom/truecaller/common/ui/ArrowImageViewAnimation$AnimatableRectF;

    invoke-direct {v1, p0}, Lcom/truecaller/common/ui/ArrowImageViewAnimation$AnimatableRectF;-><init>(Lcom/truecaller/common/ui/ArrowImageViewAnimation;)V

    iput-object v1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->c:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->d:Landroid/graphics/Paint;

    .line 5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    .line 6
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->f:Landroid/graphics/Matrix;

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->g:Landroid/graphics/drawable/Drawable;

    .line 8
    sget-object v4, Lcom/truecaller/common/ui/R$styleable;->ArrowImageViewAnimation:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v4, "context.obtainStyledAttr\u2026.ArrowImageViewAnimation)"

    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v4, Lcom/truecaller/common/ui/R$styleable;->ArrowImageViewAnimation_highlightHeight:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/truecaller/common/ui/R$dimen;->arrow_tcx_highlight_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 11
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->h:F

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-wide/16 v4, 0x64

    .line 15
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v4, 0x708

    .line 16
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 17
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p2, 0x3

    new-array v9, p2, [I

    .line 18
    sget p2, Lcom/truecaller/common/ui/R$color;->tcx_arrow_normal:I

    .line 19
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x1

    .line 21
    sget v1, Lcom/truecaller/common/ui/R$color;->tcx_arrow_highlight:I

    .line 22
    invoke-static {p1, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    aput v1, v9, v0

    .line 23
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x2

    aput p1, v9, p2

    .line 24
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->h:F

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->k:Landroid/graphics/LinearGradient;

    const-string p1, "arrowDrawable"

    .line 25
    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 26
    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "Bitmap.createBitmap(\n   \u2026      ARGB_8888\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->i:Landroid/graphics/Bitmap;

    .line 29
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->i:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->j:Landroid/graphics/Canvas;

    return-void

    :cond_0
    const-string p1, "arrowBitmap"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->d()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->d()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->k:Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->j:Landroid/graphics/Canvas;

    const-string v3, "customCanvas"

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->g:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->j:Landroid/graphics/Canvas;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->j:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const-string p1, "arrowBitmap"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "highlightLinearGradient"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->c:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p1, p1

    iget p4, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->h:F

    add-float/2addr p4, p2

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2, p1, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->d:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->k:Landroid/graphics/LinearGradient;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4
    iget-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->c:Landroid/graphics/RectF;

    const/4 p2, 0x2

    new-array p3, p2, [F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    aput p4, p3, v1

    iget p4, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->h:F

    neg-float p4, p4

    const/4 v2, 0x1

    aput p4, p3, v2

    const-string p4, "top"

    invoke-static {p1, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5
    iget-object p3, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->c:Landroid/graphics/RectF;

    new-array p4, p2, [F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    aput v3, p4, v1

    aput v0, p4, v2

    const-string v0, "bottom"

    invoke-static {p3, v0, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->d()V

    .line 8
    iget-object p4, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object p1, p2, v1

    aput-object p3, p2, v2

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 9
    iget-object p1, p0, Lcom/truecaller/common/ui/ArrowImageViewAnimation;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const-string p1, "highlightLinearGradient"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
