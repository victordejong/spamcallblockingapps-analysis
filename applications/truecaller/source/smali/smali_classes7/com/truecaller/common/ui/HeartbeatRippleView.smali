.class public final Lcom/truecaller/common/ui/HeartbeatRippleView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J/\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u001f\u0010\u0019\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00172\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000fR$\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c8\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010#R\u0016\u0010&\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u001eR\u0018\u0010)\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010(R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/truecaller/common/ui/HeartbeatRippleView;",
        "Landroid/view/View;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "onDetachedFromWindow",
        "()V",
        "rippleColor",
        "heartbeatView",
        "",
        "playRippleAnimation",
        "e",
        "(ILandroid/view/View;Z)V",
        "c",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "b",
        "(Landroid/view/View;)Landroid/animation/ValueAnimator;",
        "d",
        "",
        "value",
        "F",
        "setRippleProgress",
        "(F)V",
        "rippleProgress",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        "rippleCenter",
        "a",
        "rippleRadius",
        "Landroid/animation/AnimatorSet;",
        "Landroid/animation/AnimatorSet;",
        "animatorSet",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "ripplePaint",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:F

.field public final b:Landroid/graphics/PointF;

.field public c:Landroid/animation/AnimatorSet;

.field public final d:Landroid/graphics/Paint;

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->b:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, -0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iput-object p1, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->d:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 10
    invoke-direct {p0, p1}, Lcom/truecaller/common/ui/HeartbeatRippleView;->setRippleProgress(F)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/truecaller/common/ui/HeartbeatRippleView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/common/ui/HeartbeatRippleView;->setRippleProgress(F)V

    return-void
.end method

.method private final setRippleProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->e:F

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->c()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/truecaller/common/ui/HeartbeatRippleView$a;

    invoke-direct {v1, v0, p1}, Lcom/truecaller/common/ui/HeartbeatRippleView$a;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v1, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    const/high16 v3, 0x40b00000    # 5.5f

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    .line 4
    iget v3, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->e:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/16 v3, 0x4c

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 5
    iget-object v4, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object v3, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 7
    iput v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->a:F

    .line 8
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->b:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 9
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->b:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->c:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->setRippleProgress(F)V

    return-void
.end method

.method public final e(ILandroid/view/View;Z)V
    .locals 4

    const-string v0, "heartbeatView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->d()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v1, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    new-instance v0, Lcom/truecaller/common/ui/HeartbeatRippleView$b;

    invoke-direct {v0, p1, p0, p3, p2}, Lcom/truecaller/common/ui/HeartbeatRippleView$b;-><init>(Landroid/animation/AnimatorSet;Lcom/truecaller/common/ui/HeartbeatRippleView;ZLandroid/view/View;)V

    .line 8
    new-instance v1, Le/a/b0/a/i;

    invoke-direct {v1, v0}, Le/a/b0/a/i;-><init>(Ls1/z/b/a;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    new-array v0, p3, [Landroid/animation/Animator;

    const/4 v1, 0x0

    new-array p3, p3, [F

    .line 9
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v2, 0x352

    .line 10
    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v2, Le/a/b0/a/h;

    invoke-direct {v2, p3, p0}, Le/a/b0/a/h;-><init>(Landroid/animation/ValueAnimator;Lcom/truecaller/common/ui/HeartbeatRippleView;)V

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "ValueAnimator.ofFloat(0f\u2026t\n            }\n        }"

    .line 12
    invoke-static {p3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p3, v0, v1

    const/4 p3, 0x1

    .line 13
    invoke-virtual {p0, p2}, Lcom/truecaller/common/ui/HeartbeatRippleView;->b(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p2

    aput-object p2, v0, p3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lcom/truecaller/common/ui/HeartbeatRippleView;->b(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 16
    iput-object p1, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->c:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->d()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->a:F

    iget-object v3, p0, Lcom/truecaller/common/ui/HeartbeatRippleView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->c()V

    return-void
.end method
