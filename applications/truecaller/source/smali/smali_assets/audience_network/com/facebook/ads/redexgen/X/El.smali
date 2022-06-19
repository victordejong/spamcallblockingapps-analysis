.class public final Lcom/facebook/ads/redexgen/X/El;
.super Lcom/facebook/ads/redexgen/X/b7;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b7;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/NativeAdLayout;)V
    .locals 10

    .line 30351
    move-object v2, p0

    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 30352
    .local v8, "adIconView":Lcom/facebook/ads/MediaView;
    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v9, v0, p2, p4}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 30353
    .local v0, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x14

    move-object v6, p3

    invoke-virtual {v6, v9, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 30354
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    .line 30355
    .local v9, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A15()Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v7

    .line 30356
    .local v0, "adType":Lcom/facebook/ads/redexgen/X/Ju;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Pz;

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Pz;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/redexgen/X/Ju;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    .line 30357
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jt;->A00()I

    move-result v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 30358
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    .line 30359
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PZ;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 30360
    invoke-virtual {p2, p4, v8, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 30361
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30362
    .local v4, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30363
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PZ;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30364
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 30365
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/57;->onDetachedFromWindow()V

    .line 30366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PZ;->unregisterView()V

    .line 30367
    return-void
.end method
