.class public Le/n/b/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/MoPubFullscreen;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubFullscreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/m0;->a:Lcom/mopub/mobileads/MoPubFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/n/b/m0;->a:Lcom/mopub/mobileads/MoPubFullscreen;

    iget-object p1, p1, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/n/b/m0;->a:Lcom/mopub/mobileads/MoPubFullscreen;

    iget-object p1, p1, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 3
    iget-object p1, p0, Le/n/b/m0;->a:Lcom/mopub/mobileads/MoPubFullscreen;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubFullscreen;->g()V

    return-void
.end method
