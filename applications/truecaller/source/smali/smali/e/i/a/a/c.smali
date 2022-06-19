.class public Le/i/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/CriteoInterstitialAdListener;


# instance fields
.field public final a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    iget-object v0, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-static {p1}, Ln3/g0/y;->c(Lcom/criteo/publisher/CriteoErrorCode;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdLeftApplication()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdOpened()V

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V
    .locals 0

    iget-object p1, p0, Le/i/a/a/c;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    return-void
.end method
