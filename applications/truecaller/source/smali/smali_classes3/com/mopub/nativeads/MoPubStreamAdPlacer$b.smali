.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Le/n/d/h;Lcom/mopub/nativeads/PositioningSource;)V
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
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$b;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$b;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 2
    iget-boolean v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:I

    iget v2, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:I

    add-int/lit8 v2, v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d(II)Z

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$b;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:Z

    return-void
.end method
