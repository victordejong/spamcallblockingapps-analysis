.class public Le/n/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# instance fields
.field public final synthetic a:Lcom/mopub/network/AdResponse;

.field public final synthetic b:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    iput-object p2, p0, Le/n/d/e;->a:Lcom/mopub/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/mopub/nativeads/MoPubNative;->f:Le/n/d/b;

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/mopub/nativeads/MoPubNative;->b(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/mopub/nativeads/MoPubNative;->f:Le/n/d/b;

    .line 4
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative;->i:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForAd(Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v8

    if-nez v8, :cond_1

    .line 6
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {p0, p1}, Le/n/d/e;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    .line 8
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    .line 10
    :cond_2
    iget-object v0, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    new-instance v1, Lcom/mopub/nativeads/NativeAd;

    iget-object v9, p0, Le/n/d/e;->a:Lcom/mopub/network/AdResponse;

    .line 11
    iget-object v6, v0, Lcom/mopub/nativeads/MoPubNative;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v9}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v9}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object v5

    move-object v2, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 13
    invoke-virtual {v9}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object p1

    iput-object p1, v1, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/network/ImpressionData;

    .line 14
    iput-object v1, v0, Lcom/mopub/nativeads/MoPubNative;->j:Lcom/mopub/nativeads/NativeAd;

    .line 15
    iget-object p1, p0, Le/n/d/e;->b:Lcom/mopub/nativeads/MoPubNative;

    .line 16
    iget-object v0, p1, Lcom/mopub/nativeads/MoPubNative;->c:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 17
    iget-object p1, p1, Lcom/mopub/nativeads/MoPubNative;->j:Lcom/mopub/nativeads/NativeAd;

    .line 18
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V

    return-void
.end method
