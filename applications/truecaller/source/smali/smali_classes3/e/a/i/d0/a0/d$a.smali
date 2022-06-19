.class public final Le/a/i/d0/a0/d$a;
.super Le/a/i/d0/h0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/d0/a0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic o:Le/a/i/d0/a0/d;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/d;Lcom/appnext/nativeads/NativeAd;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/nativeads/NativeAd;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "nativeAd"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/d0/a0/d$a;->o:Le/a/i/d0/a0/d;

    invoke-direct {p0}, Le/a/i/d0/h0/c;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le/a/i/d0/h0/c;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Le/a/i/d0/h0/c;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAd;->getIconURL()Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Le/a/i/d0/h0/c;->h:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/appnext/nativeads/MediaView;

    invoke-direct {v0, p3}, Lcom/appnext/nativeads/MediaView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 9
    invoke-virtual {v0, p3}, Lcom/appnext/nativeads/MediaView;->setMute(Z)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/MediaView;->setClickEnabled(Z)V

    .line 11
    iget-object v2, p1, Le/a/i/d0/a0/d;->d:Lo3/a;

    .line 12
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/p5/h0;

    sget v3, Lcom/truecaller/ads/R$attr;->tcx_backgroundPrimary:I

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 13
    iput-object v0, p1, Le/a/i/d0/a0/d;->b:Lcom/appnext/nativeads/MediaView;

    const/4 v2, 0x0

    const-string v3, "appNextMediaView"

    if-eqz v0, :cond_4

    .line 14
    iput-object v0, p0, Le/a/i/d0/h0/c;->m:Landroid/view/View;

    .line 15
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAd;->getECPM()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/i/d0/h0/a;->b(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 20
    iput-wide v4, p0, Le/a/i/d0/h0/a;->d:D

    .line 21
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAd;->getCTAText()Ljava/lang/String;

    move-result-object v0

    .line 22
    iput-object v0, p0, Le/a/i/d0/h0/c;->g:Ljava/lang/String;

    const/16 v0, 0xa

    .line 23
    iput v0, p0, Le/a/i/d0/h0/a;->c:I

    .line 24
    iput-boolean p3, p0, Le/a/i/d0/h0/c;->l:Z

    .line 25
    iput-boolean p3, p0, Le/a/i/d0/h0/c;->k:Z

    .line 26
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    sget-object p3, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;->STATIC:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;->VIDEO:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;

    .line 27
    :goto_1
    iput-object p3, p0, Le/a/i/d0/h0/c;->n:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;

    .line 28
    iget-object p1, p1, Le/a/i/d0/a0/d;->b:Lcom/appnext/nativeads/MediaView;

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p2, p1}, Lcom/appnext/nativeads/NativeAd;->setMediaView(Lcom/appnext/nativeads/MediaView;)V

    return-void

    .line 30
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public c()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/h0/h;

    invoke-direct {v0, p0}, Le/a/i/d0/h0/h;-><init>(Le/a/i/d0/h0/c;)V

    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/a/i/d0/h0/c;->d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 2
    iget-object p2, p0, Le/a/i/d0/a0/d$a;->o:Le/a/i/d0/a0/d;

    invoke-static {p2}, Le/a/i/d0/a0/d;->e(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/NativeAd;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Lcom/appnext/nativeads/NativeAd;->setPrivacyPolicyColor(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/appnext/nativeads/NativeAd;->setPrivacyPolicyPosition(I)V

    .line 5
    iget-object v0, p0, Le/a/i/d0/a0/d$a;->o:Le/a/i/d0/a0/d;

    invoke-static {v0}, Le/a/i/d0/a0/d;->d(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/MediaView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/appnext/nativeads/NativeAd;->setMediaView(Lcom/appnext/nativeads/MediaView;)V

    .line 6
    new-instance v0, Lcom/appnext/nativeads/NativeAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appnext/nativeads/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v1, p0, Le/a/i/d0/a0/d$a;->o:Le/a/i/d0/a0/d;

    invoke-static {v1}, Le/a/i/d0/a0/d;->e(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/NativeAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/nativeads/NativeAd;->setNativeAdView(Lcom/appnext/nativeads/NativeAdView;)V

    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/appnext/nativeads/NativeAd;->registerClickableViews(Ljava/util/List;)V

    return-void
.end method
