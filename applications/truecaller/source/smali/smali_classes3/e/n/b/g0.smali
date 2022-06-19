.class public Le/n/b/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/MoPubAd;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/g0;->c:Lcom/mopub/mobileads/AdViewController;

    iput-object p2, p0, Le/n/b/g0;->a:Lcom/mopub/mobileads/MoPubAd;

    iput-object p3, p0, Le/n/b/g0;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/n/b/g0;->a:Lcom/mopub/mobileads/MoPubAd;

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Le/n/b/g0;->a:Lcom/mopub/mobileads/MoPubAd;

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Le/n/b/g0;->b:Landroid/view/View;

    iget-object v2, p0, Le/n/b/g0;->c:Lcom/mopub/mobileads/AdViewController;

    .line 3
    iget-object v3, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    .line 5
    iget-object v3, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 6
    sget-object v5, Lcom/mopub/mobileads/AdViewController;->E:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v2, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v2, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget-object v2, v2, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 10
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v3, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_2

    .line 11
    :cond_2
    sget-object v3, Lcom/mopub/mobileads/AdViewController;->D:Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    :goto_2
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
