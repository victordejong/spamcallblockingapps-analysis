.class public final Le/a/i/c/a/v;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdBannerListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0007R.\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Le/a/i/c/a/v;",
        "Landroid/widget/FrameLayout;",
        "",
        "Landroid/view/View;",
        "p0",
        "Ls1/s;",
        "onAdLoaded",
        "(Landroid/view/View;)V",
        "onAdClicked",
        "onImpressionFired",
        "Le/a/i/d0/h0/d;",
        "value",
        "a",
        "Le/a/i/d0/h0/d;",
        "getBannerAd",
        "()Le/a/i/d0/h0/d;",
        "setBannerAd",
        "(Le/a/i/d0/h0/d;)V",
        "bannerAd",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/i/d0/h0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getBannerAd()Le/a/i/d0/h0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    return-object v0
.end method

.method public onAdClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/i/d0/h0/d;->e()V

    :cond_0
    return-void
.end method

.method public onAdClosed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAdFailed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAdLeftApplication(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAdLoaded(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/i/d0/h0/d;->recordImpression()V

    :cond_0
    return-void
.end method

.method public onAdOpen(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onImpressionFired(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/i/d0/h0/d;->c()V

    :cond_0
    return-void
.end method

.method public final setBannerAd(Le/a/i/d0/h0/d;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    const-string v0, "context"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 3
    iget-object p1, p1, Le/a/i/d0/h0/b;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v2, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 7
    iget-object v2, v2, Le/a/i/d0/h0/b;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v1

    .line 9
    :cond_1
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdBannerListener;)V

    .line 10
    iget-object v2, p0, Le/a/i/c/a/v;->a:Le/a/i/d0/h0/d;

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, v2, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 12
    iget-object v2, v2, Le/a/i/d0/h0/b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 13
    :goto_1
    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;)V

    .line 14
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 16
    sget-object v0, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    invoke-virtual {v0, p1}, Le/a/i/h0/k;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
