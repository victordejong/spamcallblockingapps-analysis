.class public Lcom/amazon/device/ads/DTBAdMRAIDBannerController;
.super Lcom/amazon/device/ads/DTBAdMRAIDController;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;,
        Lcom/amazon/device/ads/DTBAdMRAIDBannerController$ExpandedBannerListener;,
        Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4

.field private static bannerControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/device/ads/DTBAdMRAIDBannerController;",
            ">;>;"
        }
    .end annotation
.end field

.field private static indexDispencer:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private animater:Landroid/animation/ObjectAnimator;

.field private animationProgress:F

.field public bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

.field private defaultParent:Landroid/view/ViewGroup;

.field private endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

.field private expandedBackground:Landroid/view/ViewGroup;

.field private index:I

.field private originalHeight:I

.field private originalParams:Landroid/view/ViewGroup$LayoutParams;

.field private originalWidth:I

.field private originalX:F

.field private originalXPos:I

.field private originalY:F

.field private originalYPos:I

.field private startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerControllers:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->indexDispencer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdBannerListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    .line 2
    sget-object p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->indexDispencer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->index:I

    .line 3
    iput-object p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    .line 4
    iput-object p0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->customButtonListener:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    return-void
.end method

.method private executeOnePartExpand(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalX:F

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalY:F

    .line 3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getRootView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "expand"

    const-string v0, "rootview doesn\'t exist in one part expand"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 6
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 7
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdView;->setIgnoreDetachment()V

    .line 9
    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-array v3, v1, [I

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 13
    new-instance v12, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    const/4 v13, 0x0

    aget v6, v2, v13

    aget v7, v3, v13

    sub-int v8, v6, v7

    const/4 v6, 0x1

    aget v2, v2, v6

    aget v3, v3, v6

    sub-int v9, v2, v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v11

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v12, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    const-string v2, "position"

    .line 14
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 15
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v2, "width"

    .line 16
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 18
    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const-string v3, "height"

    .line 19
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 21
    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v3

    move v4, v3

    :cond_2
    const-string v3, "useCustomClose"

    .line 22
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    move v2, v5

    :cond_4
    move p1, v13

    .line 24
    :goto_1
    new-instance v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/content/Context;)V

    .line 25
    iput-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v6, -0x1

    .line 27
    invoke-virtual {v0, v3, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 29
    iget-object v7, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v8, v7, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 30
    iget v7, v7, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setX(F)V

    .line 34
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setY(F)V

    .line 35
    new-instance v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    move-object v7, p0

    move v10, v2

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 36
    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCurrentPositionProperty(FF)V

    new-array v0, v1, [F

    .line 37
    fill-array-data v0, :array_0

    const-string v1, "animationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    .line 38
    new-instance v1, Le/c/b/a/d;

    invoke-direct {v1, p0, v5, p1}, Le/c/b/a/d;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private executeTwoPartsExpand(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/amazon/device/ads/DTBAdActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "ad_state"

    const-string v1, "expanded"

    .line 5
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->index:I

    const-string v1, "cntrl_index"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "two_part_expand"

    .line 7
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "orientation"

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 10
    :cond_1
    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "expand"

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    .line 13
    sget-object p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerControllers:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static findControllerByIndex(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;
    .locals 3

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz v1, :cond_0

    .line 3
    iget v2, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->index:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isVisibleRecyclerOrListView(Landroid/view/ViewParent;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recyclerview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->isVisibleRecyclerOrListView(Landroid/view/ViewParent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private moveExpandedToDefault()V
    .locals 2

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->moveExpandedToDefault(IZ)V

    return-void
.end method

.method private moveExpandedToDefault(IZ)V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/c/b/a/a;

    invoke-direct {v1, p0, p2, p1}, Le/c/b/a/a;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private moveResizedToDefault()V
    .locals 2

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->moveResizedToDefault(IZ)V

    return-void
.end method

.method private moveResizedToDefault(IZ)V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/c/b/a/o;

    invoke-direct {v1, p0, p2, p1}, Le/c/b/a/o;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic a(IZLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setX(F)V

    .line 4
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setY(F)V

    .line 5
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 9
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->addCloseIndicator(IIZ)V

    .line 11
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p1, p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result p1

    iget-object p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p2, p2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    invoke-static {p2}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireSizeChange(II)V

    .line 12
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    const-string p1, "expand"

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    .line 15
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBAdView;->computeExposure(Z)V

    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/util/Map;)V
    .locals 1

    const-string v0, "url"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->executeTwoPartsExpand(Ljava/util/Map;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->executeOnePartExpand(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public synthetic c(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 3
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 4
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 9
    fill-array-data v1, :array_0

    const-string v2, "animationProgress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    .line 10
    new-instance v2, Le/c/b/a/e;

    invoke-direct {v2, p0, v0, p1}, Le/c/b/a/e;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public closeExpandedPartTwo()V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    return-void
.end method

.method public synthetic d(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 3
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 4
    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalHeight:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    .line 5
    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalWidth:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    .line 6
    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalXPos:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    .line 7
    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalYPos:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 12
    fill-array-data v1, :array_0

    const-string v2, "animationProgress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    .line 13
    new-instance v2, Le/c/b/a/n;

    invoke-direct {v2, p0, v0, p1}, Le/c/b/a/n;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic e(Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setX(F)V

    .line 4
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setY(F)V

    .line 5
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 9
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/device/ads/DTBAdView;->setIgnoreDetachment()V

    .line 11
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 13
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 15
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    .line 16
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCurrentPositionProperty()V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    .line 18
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p3, p3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    invoke-static {p3}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result p3

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    .line 19
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result v0

    .line 20
    invoke-virtual {p0, p3, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireSizeChange(II)V

    .line 21
    sget-object p3, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p3}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    .line 22
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    const-string p1, "close"

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Le/c/b/a/h;

    invoke-direct {p2, p0}, Le/c/b/a/h;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Le/c/b/a/m;

    invoke-direct {p2, p0}, Le/c/b/a/m;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public expand(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "expand"

    const-string v0, "current state does not allow transition to expand"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/c/b/a/j;

    invoke-direct {v1, p0, p1}, Le/c/b/a/j;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic f(Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setX(F)V

    .line 4
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setY(F)V

    .line 5
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 9
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/device/ads/DTBAdView;->setIgnoreDetachment()V

    .line 11
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 13
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iput-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    .line 17
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p1, p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result p1

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireSizeChange(II)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 20
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCurrentPositionProperty()V

    .line 21
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    const-string p1, "close"

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    .line 23
    iput-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    .line 24
    iput-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Le/c/b/a/p;

    invoke-direct {p2, p0}, Le/c/b/a/p;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Le/c/b/a/k;

    invoke-direct {p2, p0}, Le/c/b/a/k;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public synthetic g(IIIILandroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setX(F)V

    .line 4
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    int-to-float v3, v2

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setY(F)V

    .line 5
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->width:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    int-to-float v2, v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->height:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 9
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p5, p5, v0

    if-nez p5, :cond_0

    .line 10
    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result p5

    .line 11
    invoke-static {p2}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result p2

    .line 12
    invoke-virtual {p0, p5, p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireSizeChange(II)V

    add-int/2addr p3, p1

    .line 13
    invoke-virtual {p0, p3, p4}, Lcom/amazon/device/ads/DTBAdMRAIDController;->addCloseIndicator(II)V

    const-string p1, "resize"

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    .line 17
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBAdView;->computeExposure(Z)V

    :cond_0
    return-void
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    const-string v0, "inline"

    return-object v0
.end method

.method public synthetic h(IIZII)V
    .locals 15

    move-object v6, p0

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getRootView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "resize"

    const-string v1, "rootview doesn\'t exist"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->removeCloseIndicator()V

    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 5
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    new-array v1, v8, [I

    .line 6
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 7
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getX()F

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalX:F

    .line 9
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getY()F

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalY:F

    .line 10
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalWidth:I

    .line 11
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalHeight:I

    .line 12
    aget v2, v0, v9

    aget v4, v1, v9

    sub-int/2addr v2, v4

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalXPos:I

    .line 13
    aget v2, v0, v3

    aget v4, v1, v3

    sub-int/2addr v2, v4

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalYPos:I

    .line 14
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->setIgnoreDetachment()V

    .line 16
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    :cond_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    .line 18
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    .line 19
    iget v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalXPos:I

    invoke-static/range {p1 .. p1}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 20
    iget v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalYPos:I

    invoke-static/range {p2 .. p2}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v5

    add-int/2addr v5, v2

    if-nez p3, :cond_5

    add-int/lit8 v2, v11, -0x14

    if-le v4, v2, :cond_2

    move v4, v2

    :cond_2
    if-gez v4, :cond_3

    move v4, v9

    :cond_3
    add-int/lit8 v2, v10, -0x14

    if-le v5, v2, :cond_4

    move v5, v2

    :cond_4
    if-gez v5, :cond_5

    move v12, v4

    move v13, v9

    goto :goto_0

    :cond_5
    move v12, v4

    move v13, v5

    .line 21
    :goto_0
    new-instance v14, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    aget v2, v0, v9

    aget v4, v1, v9

    sub-int/2addr v2, v4

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int v3, v0, v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v14, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 22
    invoke-static/range {p4 .. p4}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v0

    .line 23
    invoke-static/range {p5 .. p5}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v1

    if-nez p3, :cond_9

    add-int v2, v12, v0

    if-ge v2, v11, :cond_6

    goto :goto_1

    :cond_6
    sub-int v0, v11, v12

    :goto_1
    if-gez v0, :cond_7

    move v0, v9

    :cond_7
    add-int v2, v13, v1

    if-ge v2, v10, :cond_8

    goto :goto_2

    :cond_8
    sub-int v1, v10, v13

    :goto_2
    if-gez v1, :cond_9

    move v10, v9

    move v9, v0

    goto :goto_3

    :cond_9
    move v9, v0

    move v10, v1

    .line 24
    :goto_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, v7, :cond_a

    .line 25
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 26
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->startAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->xPos:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 27
    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->yPos:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    :cond_a
    new-instance v7, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    move-object v0, v7

    move-object v1, p0

    move v2, v12

    move v3, v13

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v7, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->endAnimation:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 30
    invoke-static {v9}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v10}, Lcom/amazon/device/ads/DTBAdUtil;->pixelsToDeviceIndependenPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCurrentPositionProperty(FF)V

    new-array v0, v8, [F

    .line 31
    fill-array-data v0, :array_0

    const-string v1, "animationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    .line 32
    new-instance v8, Le/c/b/a/f;

    move-object v0, v8

    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v5}, Le/c/b/a/f;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public impressionFired()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdListener;->onImpressionFired(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->impressionFired()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->getInstance()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/ActivityMonitor;->setActivityListener(Lcom/amazon/device/ads/DTBActivityListener;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-interface {p1, v0}, Lcom/amazon/device/ads/DTBAdListener;->onAdClosed(Landroid/view/View;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Le/c/b/a/c;

    invoke-direct {v2, p0, v0}, Le/c/b/a/c;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/c/b/a/g;

    invoke-direct {v1, p0}, Le/c/b/a/g;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->getInstance()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/ActivityMonitor;->setActivityListener(Lcom/amazon/device/ads/DTBActivityListener;)V

    return-void
.end method

.method public onAdRemoved()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdRemoved()V

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->removeCloseIndicator()V

    .line 3
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animater:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->isVisibleRecyclerOrListView(Landroid/view/ViewParent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->expandedBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMRAIDClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->moveResizedToDefault()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->moveExpandedToDefault()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    const-string v2, "close"

    if-ne v0, v1, :cond_2

    .line 6
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->HIDDEN:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Command is not allowed in a given ad state:"

    .line 8
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MraidStateType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMRAIDUnload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->moveResizedToDefault(IZ)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->moveExpandedToDefault(IZ)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/c/b/a/b;

    invoke-direct {v1, p0}, Le/c/b/a/b;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onPageLoad()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->pageLoaded:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->prepareMraid()V

    .line 3
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdListener;->onAdLoaded(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error:"

    .line 4
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->originalParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public onResize(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offsetY"

    const-string v1, "offsetX"

    .line 1
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    sget-object v3, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    const-string v4, "resize"

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    if-eq v2, v3, :cond_0

    const-string p1, "invalid current state"

    .line 2
    invoke-virtual {p0, v4, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v3

    .line 6
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    move v8, v3

    const-string v0, "width"

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v0, "height"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v0, "allowOffscreen"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Le/c/b/a/l;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Le/c/b/a/l;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIZII)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "invalid input parameters"

    .line 12
    invoke-virtual {p0, v4, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public openExpanded()V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setState(Lcom/amazon/device/ads/MraidStateType;)V

    return-void
.end method

.method public passLoadError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdListener;->onAdFailed(Landroid/view/View;)V

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->animationProgress:F

    return-void
.end method

.method public useCustomButtonUpdated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->state:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/c/b/a/i;

    invoke-direct {v1, p0}, Le/c/b/a/i;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
