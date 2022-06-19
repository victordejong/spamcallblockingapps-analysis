.class public Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CriteoUnifiedNativeAdMapper"
.end annotation


# instance fields
.field public final a:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

.field private final listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/advancednative/CriteoNativeAd;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    iput-object p3, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getPrice()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setPrice(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crtn_advdomain"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    new-instance p3, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;-><init>(Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$a;)V

    .line 1
    new-instance v1, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;

    invoke-direct {v1, p3}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    invoke-virtual {p2, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setRenderer(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->createNativeRenderedView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p3, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 5
    iget-object p3, p3, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    .line 6
    invoke-static {p3}, Le/i/a/a/e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserLogoMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v0

    .line 7
    new-instance v1, Le/i/a/a/b/c;

    .line 8
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->getImageView()Landroid/widget/ImageView;

    move-result-object p3

    .line 9
    invoke-direct {v1, p3}, Le/i/a/a/b/c;-><init>(Landroid/widget/ImageView;)V

    .line 10
    invoke-virtual {v0}, Lcom/criteo/publisher/advancednative/CriteoMedia;->getImageUrl()Ljava/net/URL;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-instance v0, Le/i/a/a/b/a;

    invoke-direct {v0, v1, p3}, Le/i/a/a/b/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdChoiceView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    .line 14
    invoke-static {p1}, Le/i/a/a/e;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener;->c:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    iput-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    return-void
.end method


# virtual methods
.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    new-instance p3, Le/i/a/a/b/d;

    invoke-direct {p3}, Le/i/a/a/b/d;-><init>()V

    .line 1
    new-instance v0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;

    invoke-direct {v0, p3}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    invoke-virtual {p2, v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setRenderer(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    .line 2
    iget-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderNativeView(Landroid/view/View;)V

    sget-object p2, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener;->c:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    .line 3
    invoke-virtual {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setAdChoiceClickableView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
