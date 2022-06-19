.class public Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$g;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$f;
    }
.end annotation


# static fields
.field public static final DEFAULT_MOPUB_IMAGE_SCALE:D = 1.0

.field public static final MOPUB_NATIVE_CEVENT_VERSION:Ljava/lang/String; = "gmext"

.field public static final TAG:Ljava/lang/String; = "MoPubAdapter"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Lcom/mopub/mobileads/MoPubView;

.field public c:Landroid/content/Context;

.field public d:Lcom/google/android/gms/ads/AdSize;

.field public e:Lcom/mopub/mobileads/MoPubInterstitial;

.field public f:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field public g:I

.field public h:I

.field public i:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

.field public j:Lcom/mopub/nativeads/RequestParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_0

    const-string v3, "yyyy"

    .line 2
    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    const/16 v0, 0x11

    const-string v4, "m_age:"

    .line 4
    invoke-static {v0, v4, v3}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 5
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v1, "m_gender:f"

    goto :goto_1

    :cond_1
    if-ne v3, v1, :cond_2

    const-string v1, "m_gender:m"

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v3, "gmext"

    const-string v4, ","

    .line 6
    invoke-static {v3, v4, v0, v4, v1}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 7
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->a(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2

    .line 9
    :cond_4
    invoke-static {p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->a(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    :cond_1
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

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->c:Landroid/content/Context;

    .line 2
    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->d:Lcom/google/android/gms/ads/AdSize;

    .line 3
    iput-object p6, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->a:Landroid/os/Bundle;

    const-string p4, "adUnitId"

    .line 4
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p1, 0x65

    const-string p3, "Missing or Invalid MoPub Ad Unit ID."

    .line 6
    invoke-static {p1, p3}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    .line 8
    :cond_0
    new-instance p4, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p4, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    .line 9
    new-instance p6, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$f;

    invoke-direct {p6, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$f;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    invoke-virtual {p4, p6}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 10
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 11
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    .line 13
    :cond_1
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p6

    invoke-virtual {p2, p6}, Lcom/mopub/mobileads/MoPubView;->setLocation(Landroid/location/Location;)V

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    const/4 p6, 0x0

    invoke-static {p5, p6}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-static {p5, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubView;->setUserDataKeywords(Ljava/lang/String;)V

    .line 17
    new-instance p2, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p2, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p2

    .line 18
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p3

    new-instance p4, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$d;

    invoke-direct {p4, p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$d;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V

    .line 19
    invoke-virtual {p3, p1, p2, p4}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    instance-of p5, p1, Landroid/app/Activity;

    if-nez p5, :cond_0

    const/16 p1, 0x67

    const-string p3, "MoPub SDK requires an Activity context to load interstitial ads."

    .line 2
    invoke-static {p1, p3}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_0
    const-string p5, "adUnitId"

    .line 4
    invoke-virtual {p3, p5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p1, 0x65

    const-string p3, "Missing or Invalid MoPub Ad Unit ID."

    .line 6
    invoke-static {p1, p3}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 8
    :cond_1
    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->f:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 9
    new-instance p2, Lcom/mopub/mobileads/MoPubInterstitial;

    move-object p5, p1

    check-cast p5, Landroid/app/Activity;

    invoke-direct {p2, p5, p3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 10
    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$g;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->f:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-direct {p5, p0, v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$g;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {p2, p5}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 11
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p2

    const/4 p5, 0x1

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p2, p5}, Lcom/mopub/mobileads/MoPubInterstitial;->setTesting(Z)V

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {p4, p5}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p2, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p2

    .line 16
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p3

    new-instance p4, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$e;

    invoke-direct {p4, p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$e;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V

    .line 17
    invoke-virtual {p3, p1, p2, p4}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "adUnitId"

    .line 1
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    const-string p3, "Missing or Invalid MoPub Ad Unit ID."

    .line 3
    invoke-static {p1, p3}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    .line 5
    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isUnifiedNativeAdRequested()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x6e

    const-string p3, "Failed to request native ad: Unified Native Ad should be requested."

    .line 6
    invoke-static {p1, p3}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    .line 8
    :cond_1
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->g:I

    goto :goto_0

    .line 10
    :cond_2
    iput v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->g:I

    :goto_0
    if-eqz p5, :cond_5

    const-string v0, "privacy_icon_size_dp"

    .line 11
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p5

    const/16 v0, 0xa

    if-ge p5, v0, :cond_3

    .line 12
    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->h:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x1e

    if-le p5, v0, :cond_4

    .line 13
    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->h:I

    goto :goto_1

    .line 14
    :cond_4
    iput p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->h:I

    goto :goto_1

    :cond_5
    const/16 p5, 0x14

    .line 15
    iput p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->h:I

    .line 16
    :goto_1
    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;

    invoke-direct {p5, p0, p2, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {v0, p1, p3, p5}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 18
    new-instance p5, Lcom/mopub/nativeads/ViewBinder$Builder;

    const/4 v2, 0x0

    invoke-direct {p5, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    invoke-virtual {p5}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object p5

    .line 19
    new-instance v3, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    invoke-direct {v3, p5}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 21
    sget-object p5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v4, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v6, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    .line 22
    invoke-static {p5, v3, v4, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p5

    .line 23
    new-instance v3, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v3}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    .line 24
    invoke-static {p4, v2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mopub/nativeads/RequestParameters$Builder;->keywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object v2

    .line 25
    invoke-static {p4, v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/RequestParameters$Builder;->userDataKeywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object v1

    .line 26
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mopub/nativeads/RequestParameters$Builder;->location(Landroid/location/Location;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p4

    .line 27
    invoke-virtual {p4, p5}, Lcom/mopub/nativeads/RequestParameters$Builder;->desiredAssets(Ljava/util/EnumSet;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p4

    .line 28
    invoke-virtual {p4}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object p4

    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->j:Lcom/mopub/nativeads/RequestParameters;

    .line 29
    new-instance p4, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p4, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p3

    .line 30
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p4

    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$b;

    invoke-direct {p5, p0, v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$b;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/mopub/nativeads/MoPubNative;)V

    .line 31
    invoke-virtual {p4, p1, p3, p5}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 32
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$c;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$c;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V

    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->i:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    goto :goto_0

    :cond_0
    const-string v0, "Interstitial was not ready. Unable to load the interstitial."

    .line 3
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->f:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 6
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->f:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method
