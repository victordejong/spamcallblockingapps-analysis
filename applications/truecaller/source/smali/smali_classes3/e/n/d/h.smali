.class public Le/n/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/n/d/h$a;
    }
.end annotation


# static fields
.field public static final m:[I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/n/d/q<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field public e:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public f:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public g:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public h:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public i:Le/n/d/h$a;

.field public j:Lcom/mopub/nativeads/RequestParameters;

.field public k:Lcom/mopub/nativeads/MoPubNative;

.field public final l:Lcom/mopub/nativeads/AdRendererRegistry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/n/d/h;->m:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0xbb8
        0x1388
        0x61a8
        0xea60
        0x493e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/n/d/h;->a:Ljava/util/List;

    .line 4
    iput-object v1, p0, Le/n/d/h;->b:Landroid/os/Handler;

    .line 5
    new-instance v0, Le/n/d/f;

    invoke-direct {v0, p0}, Le/n/d/f;-><init>(Le/n/d/h;)V

    iput-object v0, p0, Le/n/d/h;->c:Ljava/lang/Runnable;

    .line 6
    iput-object v2, p0, Le/n/d/h;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 7
    new-instance v0, Le/n/d/g;

    invoke-direct {v0, p0}, Le/n/d/g;-><init>(Le/n/d/h;)V

    iput-object v0, p0, Le/n/d/h;->d:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Le/n/d/h;->g:I

    .line 9
    iput v0, p0, Le/n/d/h;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/d/h;->k:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 3
    iput-object v1, p0, Le/n/d/h;->k:Lcom/mopub/nativeads/MoPubNative;

    .line 4
    :cond_0
    iput-object v1, p0, Le/n/d/h;->j:Lcom/mopub/nativeads/RequestParameters;

    .line 5
    iget-object v0, p0, Le/n/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/n/d/q;

    .line 6
    iget-object v1, v1, Le/n/d/q;->a:Ljava/lang/Object;

    check-cast v1, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/n/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Le/n/d/h;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iput-boolean v1, p0, Le/n/d/h;->e:Z

    .line 10
    iput v1, p0, Le/n/d/h;->g:I

    .line 11
    iput v1, p0, Le/n/d/h;->h:I

    return-void
.end method

.method public b()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/n/d/h;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/n/d/h;->k:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/n/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iput-boolean v1, p0, Le/n/d/h;->e:Z

    .line 3
    iget-object v0, p0, Le/n/d/h;->k:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Le/n/d/h;->j:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Le/n/d/h;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/d/h;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/d/h;->l:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method
