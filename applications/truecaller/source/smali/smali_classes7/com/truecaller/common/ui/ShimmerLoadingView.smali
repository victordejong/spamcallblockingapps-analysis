.class public final Lcom/truecaller/common/ui/ShimmerLoadingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001FJ/\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000cJ\u000f\u0010\u001c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000cR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010%R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\"R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010E\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010\"\u00a8\u0006G"
    }
    d2 = {
        "Lcom/truecaller/common/ui/ShimmerLoadingView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "Ls1/s;",
        "onSizeChanged",
        "(IIII)V",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Landroid/view/View;",
        "changedView",
        "visibility",
        "onVisibilityChanged",
        "(Landroid/view/View;I)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/animation/ValueAnimator;",
        "valueAnimator",
        "onAnimationUpdate",
        "(Landroid/animation/ValueAnimator;)V",
        "g1",
        "f1",
        "",
        "E",
        "J",
        "animationDuration",
        "C",
        "I",
        "colorMiddle",
        "Landroid/animation/AnimatorSet;",
        "Landroid/animation/AnimatorSet;",
        "highlightAnimatorSet",
        "",
        "B",
        "F",
        "highlightWidth",
        "D",
        "colorEnd",
        "Landroid/graphics/RectF;",
        "t",
        "Landroid/graphics/RectF;",
        "highlightRectangle",
        "x",
        "Landroid/graphics/Canvas;",
        "customCanvas",
        "Landroid/graphics/Bitmap;",
        "y",
        "Landroid/graphics/Bitmap;",
        "customBitmap",
        "Landroid/graphics/LinearGradient;",
        "z",
        "Landroid/graphics/LinearGradient;",
        "highlightLinearGradient",
        "Landroid/graphics/Matrix;",
        "v",
        "Landroid/graphics/Matrix;",
        "translationMatrix",
        "Landroid/graphics/Paint;",
        "u",
        "Landroid/graphics/Paint;",
        "highlightPaint",
        "A",
        "layoutRes",
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
.field public A:I

.field public B:F

.field public C:I

.field public D:I

.field public E:J

.field public final t:Landroid/graphics/RectF;

.field public final u:Landroid/graphics/Paint;

.field public final v:Landroid/graphics/Matrix;

.field public w:Landroid/animation/AnimatorSet;

.field public x:Landroid/graphics/Canvas;

.field public y:Landroid/graphics/Bitmap;

.field public z:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;

    invoke-direct {v1, p0}, Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;-><init>(Lcom/truecaller/common/ui/ShimmerLoadingView;)V

    iput-object v1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->t:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->u:Landroid/graphics/Paint;

    .line 5
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->v:Landroid/graphics/Matrix;

    .line 6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->w:Landroid/animation/AnimatorSet;

    .line 7
    sget-object v2, Lcom/truecaller/common/ui/R$styleable;->ShimmerLoadingView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v2, "context.obtainStyledAttr\u2026eable.ShimmerLoadingView)"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget v2, Lcom/truecaller/common/ui/R$styleable;->ShimmerLoadingView_shimmerLayout:I

    .line 9
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->A:I

    .line 10
    sget v2, Lcom/truecaller/common/ui/R$styleable;->ShimmerLoadingView_shimmerWidth:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/truecaller/common/ui/R$dimen;->shimmer_loading_highlight_default_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 12
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->B:F

    .line 13
    sget v2, Lcom/truecaller/common/ui/R$styleable;->ShimmerLoadingView_shimmerColorMiddle:I

    .line 14
    sget v3, Lcom/truecaller/common/ui/R$color;->shimmer_loading_color_middle_light:I

    .line 15
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 16
    invoke-static {p1, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 17
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->C:I

    .line 18
    sget v2, Lcom/truecaller/common/ui/R$styleable;->ShimmerLoadingView_shimmerColorEnd:I

    .line 19
    sget v3, Lcom/truecaller/common/ui/R$color;->shimmer_loading_color_end_light:I

    .line 20
    invoke-static {p1, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 21
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->D:I

    .line 22
    sget p1, Lcom/truecaller/common/ui/R$styleable;->ShimmerLoadingView_shimmerAnimationDuration:I

    const/16 v2, 0x9c4

    .line 23
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long v2, p1

    .line 24
    iput-wide v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->E:J

    .line 25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iget p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->A:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->A:I

    invoke-virtual {p1, v2, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 31
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 32
    iget v6, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->B:F

    const/4 v7, 0x0

    const/4 v2, 0x3

    new-array v8, v2, [I

    .line 33
    iget v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->D:I

    aput v2, v8, v0

    iget v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->C:I

    aput v0, v8, p2

    const/4 p2, 0x2

    aput v2, v8, p2

    const/4 v9, 0x0

    .line 34
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, p1

    .line 35
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->z:Landroid/graphics/LinearGradient;

    .line 36
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->x:Landroid/graphics/Canvas;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->v:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->t:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7
    iget-object v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->z:Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 8
    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    iget-object v1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const-string p1, "customBitmap"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string p1, "highlightLinearGradient"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_3
    :goto_0
    return-void
.end method

.method public final f1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public final g1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShimmerLoadingView;->f1()V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShimmerLoadingView;->g1()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShimmerLoadingView;->f1()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShimmerLoadingView;->f1()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "Bitmap.createBitmap(widt\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->y:Landroid/graphics/Bitmap;

    .line 5
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->y:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_6

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->x:Landroid/graphics/Canvas;

    .line 6
    iget-object p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->t:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->B:F

    neg-float p2, p2

    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->left:F

    const/4 p2, 0x0

    .line 8
    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    .line 10
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->B:F

    add-float/2addr p3, p4

    goto :goto_1

    :cond_2
    move p3, p2

    :goto_1
    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 11
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 p3, 0xc8

    .line 12
    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 13
    iget-wide p3, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->E:J

    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14
    new-instance p3, Ln3/t/a/a/b;

    invoke-direct {p3}, Ln3/t/a/a/b;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p3, 0x2

    new-array p4, p3, [Landroid/animation/Animator;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->t:Landroid/graphics/RectF;

    new-array v2, p3, [F

    .line 17
    iget v3, v1, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 18
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->B:F

    neg-float v0, v0

    goto :goto_2

    :cond_3
    int-to-float v0, v0

    :goto_2
    const/4 v3, 0x1

    aput v0, v2, v3

    const-string v0, "left"

    .line 19
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v2, "ObjectAnimator.ofFloat(\n\u2026imator.INFINITE\n        }"

    .line 21
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p4, v4

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 23
    iget-object v5, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->t:Landroid/graphics/RectF;

    new-array p3, p3, [F

    .line 24
    iget v6, v5, Landroid/graphics/RectF;->right:F

    aput v6, p3, v4

    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    int-to-float p2, v0

    iget v0, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->B:F

    add-float/2addr p2, v0

    :goto_3
    aput p2, p3, v3

    const-string p2, "right"

    .line 26
    invoke-static {v5, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 29
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, p4, v3

    .line 30
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    .line 32
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 33
    :cond_5
    iput-object p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView;->w:Landroid/animation/AnimatorSet;

    goto :goto_4

    :cond_6
    const-string p1, "customBitmap"

    .line 34
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShimmerLoadingView;->g1()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShimmerLoadingView;->f1()V

    :goto_0
    return-void
.end method
