.class public Lcom/mopub/nativeads/NativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAd$a;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd$a;->a:Lcom/mopub/nativeads/NativeAd;

    .line 2
    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->j:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->e:Ljava/util/Set;

    iget-object v2, v0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 4
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->h:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onClick(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->j:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdImpressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd$a;->a:Lcom/mopub/nativeads/NativeAd;

    .line 2
    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->i:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/mopub/nativeads/NativeAd;->i:Z

    .line 4
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/util/Set;

    iget-object v2, v0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 5
    iget-object v1, v0, Lcom/mopub/nativeads/NativeAd;->h:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onImpression(Landroid/view/View;)V

    .line 7
    :cond_1
    new-instance v1, Lcom/mopub/network/SingleImpression;

    iget-object v2, v0, Lcom/mopub/nativeads/NativeAd;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/network/ImpressionData;

    invoke-direct {v1, v2, v0}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v1}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_2
    :goto_0
    return-void
.end method
