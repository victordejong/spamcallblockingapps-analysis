.class public Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/MoPubCustomEventNative$a;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventNative$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Lcom/mopub/nativeads/MoPubCustomEventNative$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Lcom/mopub/nativeads/MoPubCustomEventNative$a;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Lcom/mopub/nativeads/MoPubCustomEventNative$a;

    .line 3
    iget-object v1, v0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->u:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 4
    invoke-interface {v1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Lcom/mopub/nativeads/MoPubCustomEventNative$a;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->a:Lcom/mopub/nativeads/MoPubCustomEventNative$a;

    .line 3
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->u:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 4
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
