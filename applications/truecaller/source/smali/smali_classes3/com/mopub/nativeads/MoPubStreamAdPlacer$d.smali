.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/n/d/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$d;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$d;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 2
    iget-boolean v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Le/n/d/l;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c(Le/n/d/l;)V

    :cond_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    :goto_0
    return-void
.end method
