.class public Lcom/criteo/publisher/advancednative/CriteoNativeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public final adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

.field private final listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

.field private final logger:Le/i/b/q2/h;

.field private final publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

.field private renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;-><init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Le/i/b/q2/h;

    .line 4
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    .line 5
    new-instance v1, Le/i/b/r1/s;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p2, v2}, Le/i/b/r1/s;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Ljava/lang/ref/Reference;)V

    iput-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    .line 6
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 7
    new-instance p2, Le/i/b/q2/f;

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeLoader initialized for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, p2

    .line 9
    invoke-direct/range {v3 .. v8}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, p2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void
.end method

.method private synthetic a(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Le/i/b/u2/c/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->handleNativeAssets(Le/i/b/u2/c/n;)V

    return-void
.end method

.method public static synthetic b(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method public static synthetic c(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->a()V

    return-void
.end method

.method private doLoad(Lcom/criteo/publisher/Bid;)V
    .locals 9

    .line 9
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Le/i/b/q2/h;

    const-string v1, "nativeLoader"

    .line 10
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Le/i/b/q2/f;

    const-string v2, "Native("

    .line 12
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is loading with bid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ln3/g0/y;->f(Lcom/criteo/publisher/Bid;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v8

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    move-object v2, v1

    .line 13
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 14
    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 15
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getIntegrationRegistry()Le/i/b/d2/c;

    move-result-object v0

    sget-object v1, Le/i/b/d2/a;->d:Le/i/b/d2/a;

    invoke-virtual {v0, v1}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    if-nez p1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    sget-object v0, Le/i/b/e;->a:Le/i/b/e;

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/Bid;->a(Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Le/i/b/u2/c/n;

    .line 17
    :goto_1
    invoke-direct {p0, v8}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->handleNativeAssets(Le/i/b/u2/c/n;)V

    return-void
.end method

.method private doLoad(Lcom/criteo/publisher/context/ContextData;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Le/i/b/q2/h;

    const-string v1, "nativeLoader"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/i/b/q2/f;

    const-string v2, "Native("

    .line 4
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is loading"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object v2, v1

    .line 5
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 7
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getIntegrationRegistry()Le/i/b/d2/c;

    move-result-object v0

    sget-object v1, Le/i/b/d2/a;->c:Le/i/b/d2/a;

    invoke-virtual {v0, v1}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    .line 8
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getBidManager()Le/i/b/y1;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    new-instance v2, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    invoke-virtual {v0, v1, p1, v2}, Le/i/b/y1;->c(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V

    return-void
.end method

.method private getAdChoiceOverlay()Le/i/b/r1/e;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->g()Le/i/b/r1/e;

    move-result-object v0

    return-object v0
.end method

.method private getBidManager()Le/i/b/y1;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->q()Le/i/b/y1;

    move-result-object v0

    return-object v0
.end method

.method private static getImageLoaderHolder()Le/i/b/r1/o;
    .locals 4

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    .line 2
    new-instance v1, Le/i/b/t;

    invoke-direct {v1, v0}, Le/i/b/t;-><init>(Le/i/b/x2;)V

    const-class v2, Le/i/b/r1/o;

    .line 3
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v2, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/i/b/r1/o;

    return-object v0
.end method

.method private getIntegrationRegistry()Le/i/b/d2/c;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->b()Le/i/b/d2/c;

    move-result-object v0

    return-object v0
.end method

.method private getNativeAdMapper()Le/i/b/r1/t;
    .locals 4

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    .line 2
    new-instance v1, Le/i/b/o0;

    invoke-direct {v1, v0}, Le/i/b/o0;-><init>(Le/i/b/x2;)V

    const-class v2, Le/i/b/r1/t;

    .line 3
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v2, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/i/b/r1/t;

    return-object v0
.end method

.method private getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getAdChoiceOverlay()Le/i/b/r1/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Le/i/b/r1/e;)V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    return-object v0
.end method

.method private getUiThreadExecutor()Le/i/b/w1/c;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v0

    return-object v0
.end method

.method private handleNativeAssets(Le/i/b/u2/c/n;)V
    .locals 13

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->notifyForFailureAsync()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getNativeAdMapper()Le/i/b/r1/t;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    move-result-object v11

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v6, Le/i/b/r1/r;

    .line 7
    invoke-virtual {p1}, Le/i/b/u2/c/n;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Le/i/b/r1/t;->b:Le/i/b/r1/q;

    invoke-direct {v6, v2, v1, v3}, Le/i/b/r1/r;-><init>(Ljava/lang/Iterable;Ljava/lang/ref/Reference;Le/i/b/r1/q;)V

    .line 8
    new-instance v8, Le/i/b/r1/f;

    .line 9
    invoke-virtual {p1}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v2

    invoke-virtual {v2}, Le/i/b/u2/c/r;->b()Ljava/net/URI;

    move-result-object v2

    iget-object v3, v0, Le/i/b/r1/t;->d:Le/i/b/r1/l;

    invoke-direct {v8, v2, v1, v3}, Le/i/b/r1/f;-><init>(Ljava/net/URI;Ljava/lang/ref/Reference;Le/i/b/r1/l;)V

    .line 10
    new-instance v9, Le/i/b/r1/d;

    .line 11
    invoke-virtual {p1}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object v2

    invoke-virtual {v2}, Le/i/b/u2/c/q;->a()Ljava/net/URI;

    move-result-object v2

    .line 12
    iget-object v3, v0, Le/i/b/r1/t;->d:Le/i/b/r1/l;

    invoke-direct {v9, v2, v1, v3}, Le/i/b/r1/d;-><init>(Ljava/net/URI;Ljava/lang/ref/Reference;Le/i/b/r1/l;)V

    .line 13
    iget-object v1, v0, Le/i/b/r1/t;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v2

    invoke-virtual {v2}, Le/i/b/u2/c/r;->e()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 14
    iget-object v1, v0, Le/i/b/r1/t;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Le/i/b/u2/c/n;->b()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 15
    iget-object v1, v0, Le/i/b/r1/t;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Le/i/b/u2/c/n;->g()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 16
    new-instance v1, Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    iget-object v5, v0, Le/i/b/r1/t;->a:Le/i/b/r1/w;

    iget-object v7, v0, Le/i/b/r1/t;->c:Le/i/b/r1/h;

    iget-object v10, v0, Le/i/b/r1/t;->e:Le/i/b/r1/e;

    iget-object v12, v0, Le/i/b/r1/t;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;-><init>(Le/i/b/u2/c/n;Le/i/b/r1/w;Le/i/b/r1/r;Le/i/b/r1/h;Le/i/b/r1/u;Le/i/b/r1/u;Le/i/b/r1/e;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/RendererHelper;)V

    .line 17
    invoke-direct {p0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->notifyForAdAsync(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    :goto_0
    return-void
.end method

.method private notifyForAdAsync(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getUiThreadExecutor()Le/i/b/w1/c;

    move-result-object v0

    new-instance v1, Le/i/b/r1/a;

    invoke-direct {v1, p0, p1}, Le/i/b/r1/a;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    .line 2
    iget-object p1, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyForFailureAsync()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getUiThreadExecutor()Le/i/b/w1/c;

    move-result-object v0

    new-instance v1, Le/i/b/r1/b;

    invoke-direct {v1, p0}, Le/i/b/r1/b;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    .line 2
    iget-object v0, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setImageLoader(Lcom/criteo/publisher/advancednative/ImageLoader;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getImageLoaderHolder()Le/i/b/r1/o;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/i/b/r1/o;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createEmptyNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadAd()V
    .locals 1

    .line 1
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
