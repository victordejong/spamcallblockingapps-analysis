.class public Lcom/amazon/device/ads/AdContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public adView:Landroid/view/View;

.field public orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/amazon/device/ads/AdContainer;->orientation:I

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget v0, p0, Lcom/amazon/device/ads/AdContainer;->orientation:I

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adView:Landroid/view/View;

    instance-of v1, v0, Lcom/amazon/device/ads/DTBAdView;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/amazon/device/ads/DTBAdView;

    .line 5
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->onAdRemoved()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amazon/device/ads/AdContainer;->adView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->adView:Landroid/view/View;

    return-void
.end method
