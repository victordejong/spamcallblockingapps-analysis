.class public final Le/a/i/d0/d0/j;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

.field public final c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;Lcom/truecaller/ads/mediation/google/MediationImageAssets;Ls1/z/b/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;",
            "Lcom/truecaller/ads/mediation/google/MediationImageAssets;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAd"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediationImageAssets"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onAdImpression"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d0/j;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    iput-object p4, p0, Le/a/i/d0/d0/j;->c:Ls1/z/b/a;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->l()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->i()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->j()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->h()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-virtual {p3}, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->getIconDrawable()Le/a/i/d0/d0/m;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 7
    :cond_4
    invoke-virtual {p3}, Lcom/truecaller/ads/mediation/google/MediationImageAssets;->getImageDrawable()Le/a/i/d0/d0/m;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 8
    invoke-static {p3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 9
    iget-object p3, p3, Le/a/i/d0/d0/m;->a:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p4, p3

    .line 11
    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaContentAspectRatio(F)V

    .line 12
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->n()Landroid/view/View;

    move-result-object p3

    const/16 p4, 0x11

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_7

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_6
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p4, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-direct {p4, p1}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0, p4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getImages()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-static {p3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz p3, :cond_8

    .line 19
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 23
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance p3, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-direct {p3, p1}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 27
    :cond_8
    :goto_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->p()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 29
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->q()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    .line 30
    invoke-virtual {p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->r()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 31
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "imageUrl"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string p4, "AdChoices"

    .line 33
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p4

    .line 35
    invoke-virtual {p4}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Le/a/z3/d;

    .line 36
    iput-object p2, v0, Le/f/a/h;->J:Ljava/lang/Object;

    .line 37
    iput-boolean v2, v0, Le/f/a/h;->N:Z

    .line 38
    check-cast p4, Le/a/z3/d;

    .line 39
    sget p2, Lcom/truecaller/ads/R$drawable;->ic_ads_choices:I

    invoke-virtual {p4, p2}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p2

    .line 40
    invoke-virtual {p2}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object p2

    const/high16 p4, 0x41800000    # 16.0f

    .line 41
    invoke-static {p1, p4}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, p1}, Le/a/z3/d;->m0(I)Le/a/z3/d;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p3}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 43
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public handleClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AdChoices"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0, v1}, Le/a/b0/q/t;->j(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-interface {v0}, Le/a/i/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0, v1}, Le/a/b0/q/t;->j(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 5
    iget-object p1, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-interface {p1}, Le/a/i/c/a/b;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public recordImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/j;->c:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-interface {v0}, Le/a/i/c/a/b;->recordImpression()V

    .line 3
    iget-object v0, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-interface {v0}, Le/a/i/c/a/b;->c()V

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickableAssetViews"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonClickableAssetViews"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-virtual {p3}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->p()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Le/a/i/d0/d0/j$a;

    invoke-direct {v1, p0}, Le/a/i/d0/d0/j$a;-><init>(Le/a/i/d0/d0/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-virtual {p3}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->q()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Le/a/i/d0/d0/j;->c:Ls1/z/b/a;

    invoke-interface {p3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 6
    iget-object p3, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-interface {p3}, Le/a/i/c/a/b;->recordImpression()V

    .line 7
    iget-object p3, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-interface {p3}, Le/a/i/c/a/b;->c()V

    .line 8
    :cond_1
    iget-object p3, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->v(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/d0/d0/j;->b:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
