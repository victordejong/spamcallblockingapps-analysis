.class public Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;
.super Lcom/amazon/device/ads/DTBAdMRAIDController;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DTBAdMRAIDExpandedController"


# instance fields
.field private masterController:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    return-void
.end method


# virtual methods
.method public addCloseIndicator()V
    .locals 1

    .line 1
    new-instance v0, Le/c/b/a/v;

    invoke-direct {v0, p0}, Le/c/b/a/v;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->addCloseIndicator(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public addCloseIndicator(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->createContentIndicator()V

    .line 3
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->layoutCloseIndicator()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCloseIndicatorContent(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public closeExpandedPartTwo()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBAdActivity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    const-string v3, "cntrl_index"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->findControllerByIndex(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->closeExpandedPartTwo()V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdActivity;->straightFinish()V

    return-void
.end method

.method public expand(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "expand"

    const-string v0, "Expanded View does not allow expand"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public getInitialStateType()Lcom/amazon/device/ads/MraidStateType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    return-object v0
.end method

.method public layoutCloseIndicator()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getRootView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v3

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->sizeToDevicePixels(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800035

    .line 3
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 6
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onMRAIDClose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->closeExpandedPartTwo()V

    return-void
.end method

.method public onPageLoad()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->prepareMraid()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error:"

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResize(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "resize"

    const-string v0, "Expanded View does not allow resize"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->commandCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public passLoadError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->masterController:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->passLoadError()V

    :cond_0
    return-void
.end method

.method public setMasterController(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->masterController:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    return-void
.end method
