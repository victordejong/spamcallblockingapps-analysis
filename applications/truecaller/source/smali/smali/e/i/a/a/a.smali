.class public Le/i/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/CriteoBannerAdListener;


# instance fields
.field public final a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/a/a/a;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Le/i/a/a/a;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClicked()V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    iget-object v0, p0, Le/i/a/a/a;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-static {p1}, Ln3/g0/y;->c(Lcom/criteo/publisher/CriteoErrorCode;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Le/i/a/a/a;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdLeftApplication()V

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V
    .locals 1

    iget-object v0, p0, Le/i/a/a/a;->a:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
