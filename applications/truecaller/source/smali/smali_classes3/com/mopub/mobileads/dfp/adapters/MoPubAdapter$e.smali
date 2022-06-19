.class public Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$e;->a:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$e;->a:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->e:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method
