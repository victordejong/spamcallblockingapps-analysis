.class public final Lcom/facebook/ads/redexgen/X/Ds;
.super Lcom/facebook/ads/redexgen/X/b7;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29606
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b7;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 11

    .line 29607
    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/OA;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 29608
    .local v9, "adIconView":Lcom/facebook/ads/redexgen/X/OA;
    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 29609
    .local v10, "mediaView":Lcom/facebook/ads/MediaView;
    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 29610
    .local v10, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 29611
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    .line 29612
    .local v6, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A15()Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v7

    .line 29613
    .local v0, "viewType":Lcom/facebook/ads/redexgen/X/Ju;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Px;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Px;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/redexgen/X/Ju;Lcom/facebook/ads/redexgen/X/OA;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Ds;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    .line 29614
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jt;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 29615
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ds;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    .line 29616
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PZ;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 29617
    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 29618
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29619
    .local v4, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29620
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ds;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PZ;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29621
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 29622
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/57;->onDetachedFromWindow()V

    .line 29623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ds;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PZ;->unregisterView()V

    .line 29624
    return-void
.end method
