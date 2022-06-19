.class public Lcom/criteo/mediation/google/CriteoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/mediation/google/CriteoAdapter$b;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID:Ljava/lang/String; = "adUnitId"

.field public static final CRITEO_PUBLISHER_ID:Ljava/lang/String; = "cpId"

.field public static final TAG:Ljava/lang/String; = "CriteoAdapter"


# instance fields
.field public a:Lcom/criteo/publisher/CriteoInterstitial;

.field public b:Lcom/criteo/publisher/model/BannerAdUnit;

.field public c:Lcom/criteo/publisher/model/InterstitialAdUnit;

.field public d:Lcom/criteo/publisher/model/NativeAdUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/criteo/mediation/google/CriteoAdapter$b;Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;)Z
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p5, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(I)V

    return v2

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cpId"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "adUnitId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1
    sget-object v3, Lcom/criteo/mediation/google/CriteoAdapter$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    if-eq v3, v1, :cond_3

    const/4 p3, 0x2

    if-eq v3, p3, :cond_2

    if-ne v3, v4, :cond_1

    new-instance p3, Lcom/criteo/publisher/model/NativeAdUnit;

    invoke-direct {p3, v0}, Lcom/criteo/publisher/model/NativeAdUnit;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/criteo/mediation/google/CriteoAdapter;->d:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p3, Lcom/criteo/publisher/model/InterstitialAdUnit;

    invoke-direct {p3, v0}, Lcom/criteo/publisher/model/InterstitialAdUnit;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/criteo/mediation/google/CriteoAdapter;->c:Lcom/criteo/publisher/model/InterstitialAdUnit;

    goto :goto_0

    :cond_3
    new-instance p4, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p3

    invoke-direct {p4, v3, p3}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    new-instance p3, Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-direct {p3, v0, p4}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    iput-object p3, p0, Lcom/criteo/mediation/google/CriteoAdapter;->b:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    :try_start_2
    new-instance p4, Lcom/criteo/publisher/Criteo$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-direct {p4, p1, p2}, Lcom/criteo/publisher/Criteo$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/criteo/publisher/Criteo$Builder;->adUnits(Ljava/util/List;)Lcom/criteo/publisher/Criteo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/criteo/publisher/Criteo$Builder;->init()Lcom/criteo/publisher/Criteo;
    :try_end_2
    .catch Lcom/criteo/publisher/CriteoInitException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {p5, v4}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(I)V

    return v2

    :catch_1
    invoke-interface {p5, v2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(I)V

    return v2

    :catch_2
    invoke-interface {p5, v2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(I)V

    return v2
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 6

    sget-object v4, Lcom/criteo/mediation/google/CriteoAdapter$b;->a:Lcom/criteo/mediation/google/CriteoAdapter$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/criteo/mediation/google/CriteoAdapter;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/criteo/mediation/google/CriteoAdapter$b;Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/criteo/publisher/CriteoBannerView;

    iget-object p4, p0, Lcom/criteo/mediation/google/CriteoAdapter;->b:Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-direct {p3, p1, p4}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;)V

    new-instance p1, Le/i/a/a/a;

    invoke-direct {p1, p2}, Le/i/a/a/a;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {p3, p1}, Lcom/criteo/publisher/CriteoBannerView;->setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V

    invoke-virtual {p3}, Lcom/criteo/publisher/CriteoBannerView;->loadAd()V

    :cond_0
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 6

    sget-object v4, Lcom/criteo/mediation/google/CriteoAdapter$b;->b:Lcom/criteo/mediation/google/CriteoAdapter$b;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/criteo/mediation/google/CriteoAdapter;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/criteo/mediation/google/CriteoAdapter$b;Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/criteo/publisher/CriteoInterstitial;

    iget-object p3, p0, Lcom/criteo/mediation/google/CriteoAdapter;->c:Lcom/criteo/publisher/model/InterstitialAdUnit;

    invoke-direct {p1, p3}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;)V

    iput-object p1, p0, Lcom/criteo/mediation/google/CriteoAdapter;->a:Lcom/criteo/publisher/CriteoInterstitial;

    new-instance p3, Le/i/a/a/c;

    invoke-direct {p3, p2}, Le/i/a/a/c;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V

    invoke-virtual {p1, p3}, Lcom/criteo/publisher/CriteoInterstitial;->setCriteoInterstitialAdListener(Lcom/criteo/publisher/CriteoInterstitialAdListener;)V

    iget-object p1, p0, Lcom/criteo/mediation/google/CriteoAdapter;->a:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoInterstitial;->loadAd()V

    :cond_0
    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 6

    sget-object v4, Lcom/criteo/mediation/google/CriteoAdapter$b;->c:Lcom/criteo/mediation/google/CriteoAdapter$b;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/criteo/mediation/google/CriteoAdapter;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/criteo/mediation/google/CriteoAdapter$b;Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    iget-object p4, p0, Lcom/criteo/mediation/google/CriteoAdapter;->d:Lcom/criteo/publisher/model/NativeAdUnit;

    new-instance p5, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener;

    invoke-direct {p5, p1, p2}, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;)V

    new-instance p1, Le/i/a/a/b/d;

    invoke-direct {p1}, Le/i/a/a/b/d;-><init>()V

    invoke-direct {p3, p4, p5, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;-><init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->loadAd()V

    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/criteo/mediation/google/CriteoAdapter;->a:Lcom/criteo/publisher/CriteoInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/criteo/publisher/CriteoInterstitial;->show()V

    :cond_0
    return-void
.end method
