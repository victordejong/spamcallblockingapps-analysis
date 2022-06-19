.class public Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001*B\u0007\u00a2\u0006\u0004\u0008)\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006JC\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J;\u0010\u0019\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00172\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00020\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ-\u0010 \u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008%\u0010$R\u0016\u0010\'\u001a\u00020&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter;",
        "Lcom/google/android/gms/ads/mediation/Adapter;",
        "Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;",
        "Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;",
        "Ls1/s;",
        "onDestroy",
        "()V",
        "onPause",
        "onResume",
        "Landroid/content/Context;",
        "context",
        "Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;",
        "listener",
        "",
        "serverParameter",
        "Lcom/google/android/gms/ads/AdSize;",
        "size",
        "Lcom/google/android/gms/ads/mediation/MediationAdRequest;",
        "mediationAdRequest",
        "Landroid/os/Bundle;",
        "customEventExtras",
        "requestBannerAd",
        "(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V",
        "Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;",
        "Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;",
        "requestNativeAd",
        "(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V",
        "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
        "initializationCompleteCallback",
        "",
        "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
        "list",
        "initialize",
        "(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V",
        "Lcom/google/android/gms/ads/mediation/VersionInfo;",
        "getVersionInfo",
        "()Lcom/google/android/gms/ads/mediation/VersionInfo;",
        "getSDKVersionInfo",
        "Le/a/i/d0/d0/d;",
        "adRouterMediation",
        "Le/a/i/d0/d0/d;",
        "<init>",
        "a",
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
.field private final adRouterMediation:Le/a/i/d0/d0/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    const-class v1, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter$a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter$a;

    invoke-interface {v0}, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter$a;->X4()Le/a/i/d0/d0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter;->adRouterMediation:Le/a/i/d0/d0/d;

    return-void
.end method


# virtual methods
.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 4

    const-string v0, "\\."

    const-string v1, "1.0.0"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, [Ljava/lang/String;

    .line 4
    array-length v1, v0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 5
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 6
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 7
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    new-instance v3, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v3

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v2, v2, v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 5

    const-string v0, "\\."

    const-string v1, "1.0.0.0"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, [Ljava/lang/String;

    .line 4
    array-length v1, v0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 5
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 6
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 7
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    .line 8
    new-instance v3, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v3

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v2, v2, v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "initializationCompleteCallback"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "list"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter;->adRouterMediation:Le/a/i/d0/d0/d;

    invoke-interface {v0}, Le/a/i/d0/d0/d;->onDestroy()V

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
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdRequest"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Banner Ad Call"

    .line 2
    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/i/d0/d0/c;

    invoke-direct {v0, p1, p2}, Le/a/i/d0/d0/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    .line 4
    new-instance p1, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;

    invoke-direct {p1}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;-><init>()V

    .line 5
    invoke-virtual {p1, p4}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setServerParams(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p6}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setEventExtras(Landroid/os/Bundle;)V

    .line 8
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setUseTesting(Z)V

    .line 9
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setKeywords(Ljava/util/Set;)V

    .line 10
    iget-object p2, p0, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter;->adRouterMediation:Le/a/i/d0/d0/d;

    .line 11
    invoke-interface {p2, v0}, Le/a/i/d0/d0/d;->a(Le/a/i/d0/d0/b;)V

    .line 12
    invoke-interface {p2, p1}, Le/a/i/d0/d0/d;->b(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdRequest"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Native Ad Call"

    .line 2
    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isUnifiedNativeAdRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Le/a/i/d0/m;->d:Le/a/i/d0/m;

    invoke-static {p1}, Le/m/d/y/n;->p1(Le/a/i/c/b/a;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;

    invoke-direct {v0}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;-><init>()V

    .line 6
    invoke-virtual {v0, p3}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setServerParams(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p5}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setEventExtras(Landroid/os/Bundle;)V

    .line 8
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setUseTesting(Z)V

    .line 9
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setKeywords(Ljava/util/Set;)V

    .line 10
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdRequestOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object p3

    const-string p4, "mediationAdRequest.nativeAdRequestOptions"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getMediaAspectRatio()I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setImageOrientation(I)V

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getAdChoicesPlacement()I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setAdChoicesPlacement(I)V

    .line 13
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {v0, p4}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setShouldDownloadImages(Z)V

    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->setShouldDownloadMultipleImages(Z)V

    .line 15
    new-instance p3, Le/a/i/d0/d0/k;

    invoke-direct {p3, p1, p2}, Le/a/i/d0/d0/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;)V

    .line 16
    iget-object p1, p0, Lcom/truecaller/ads/mediation/google/AdRouterMediationAdapter;->adRouterMediation:Le/a/i/d0/d0/d;

    .line 17
    invoke-interface {p1, p3}, Le/a/i/d0/d0/d;->a(Le/a/i/d0/d0/b;)V

    .line 18
    invoke-interface {p1, v0}, Le/a/i/d0/d0/d;->c(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)V

    return-void
.end method
