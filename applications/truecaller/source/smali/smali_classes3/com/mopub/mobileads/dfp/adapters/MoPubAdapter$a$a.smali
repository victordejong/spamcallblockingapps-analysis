.class public Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/StaticNativeAd;

.field public final synthetic b:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;Lcom/mopub/nativeads/StaticNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;->b:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;

    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailure()V
    .locals 3

    const/16 v0, 0x6f

    const-string v1, "Failed to download images."

    .line 1
    invoke-static {v0, v1}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;->b:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;

    iget-object v2, v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->a:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->c:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "icon_key"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    const-string v0, "image_key"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 3
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubUnifiedNativeAdMapper;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;->b:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;

    iget-object v2, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;->a:Lcom/mopub/nativeads/StaticNativeAd;

    iget-object v0, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->c:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    .line 4
    iget v6, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->g:I

    .line 5
    iget v7, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->h:I

    move-object v1, p1

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/mopub/mobileads/dfp/adapters/MoPubUnifiedNativeAdMapper;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/StaticNativeAd;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 7
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a;->b:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;

    iget-object v1, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->a:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v0, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$a;->c:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-void
.end method
