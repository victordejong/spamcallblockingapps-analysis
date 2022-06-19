.class public Lcom/appnext/nativeads/designed_native_ads/views/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/nativeads/designed_native_ads/views/c$a;
    }
.end annotation


# instance fields
.field private fX:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/appnext/nativeads/designed_native_ads/views/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/appnext/nativeads/designed_native_ads/views/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/appnext/nativeads/designed_native_ads/views/c$1;

    invoke-direct {p1, p0}, Lcom/appnext/nativeads/designed_native_ads/views/c$1;-><init>(Lcom/appnext/nativeads/designed_native_ads/views/c;)V

    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->fX:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Lcom/appnext/nativeads/designed_native_ads/views/c$1;

    invoke-direct {p1, p0}, Lcom/appnext/nativeads/designed_native_ads/views/c$1;-><init>(Lcom/appnext/nativeads/designed_native_ads/views/c;)V

    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->fX:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/nativeads/designed_native_ads/views/c;)Lcom/appnext/nativeads/designed_native_ads/views/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/appnext/nativeads/designed_native_ads/views/c;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result p0

    return p0
.end method

.method private getVisiblePercent()I
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->isViewPartiallyVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v2, v1

    int-to-double v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v3, v0

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v5

    div-double/2addr v1, v3

    double-to-int v0, v1

    return v0

    :catchall_0
    move-exception v1

    const-string v2, "DesignedNativeAdViewContainerImpl$getVisiblePercent"

    .line 6
    invoke-static {v2, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private isViewPartiallyVisible(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v1, "DesignedNativeAdViewContainerImpl$isViewPartiallyVisible"

    .line 6
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->fX:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->fX:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "DesignedNativeAdViewContainerImpl$onDetachedFromWindow"

    .line 3
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "DesignedNativeAdViewContainerImpl$onVisibilityChanged"

    .line 4
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-void
.end method

.method public register(Lcom/appnext/nativeads/designed_native_ads/views/c$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    invoke-interface {v0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c;->ha:Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->getVisiblePercent()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdViewContainerImpl$setVisibility"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
