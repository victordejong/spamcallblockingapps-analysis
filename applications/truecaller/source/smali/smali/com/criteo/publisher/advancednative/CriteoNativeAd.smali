.class public Lcom/criteo/publisher/advancednative/CriteoNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final adChoiceOverlay:Le/i/b/r1/e;

.field private final assets:Le/i/b/u2/c/n;

.field private final clickDetection:Le/i/b/r1/h;

.field private final clickOnAdChoiceHandler:Le/i/b/r1/u;

.field private final clickOnProductHandler:Le/i/b/r1/u;

.field private final impressionTask:Le/i/b/r1/r;

.field private renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

.field private final rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

.field private final visibilityTracker:Le/i/b/r1/w;


# direct methods
.method public constructor <init>(Le/i/b/u2/c/n;Le/i/b/r1/w;Le/i/b/r1/r;Le/i/b/r1/h;Le/i/b/r1/u;Le/i/b/r1/u;Le/i/b/r1/e;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/RendererHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    .line 3
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->visibilityTracker:Le/i/b/r1/w;

    .line 4
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->impressionTask:Le/i/b/r1/r;

    .line 5
    iput-object p4, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickDetection:Le/i/b/r1/h;

    .line 6
    iput-object p5, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnProductHandler:Le/i/b/r1/u;

    .line 7
    iput-object p6, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnAdChoiceHandler:Le/i/b/r1/u;

    .line 8
    iput-object p7, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->adChoiceOverlay:Le/i/b/r1/e;

    .line 9
    iput-object p8, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 10
    iput-object p9, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

    return-void
.end method


# virtual methods
.method public createNativeRenderedView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderNativeView(Landroid/view/View;)V

    return-object p1
.end method

.method public getAdChoiceView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/criteo/publisher/annotation/Internal;
        value = {
            "AdMob Adapter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->adChoiceOverlay:Le/i/b/r1/e;

    invoke-virtual {v0, p1}, Le/i/b/r1/e;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public getAdvertiserDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    .line 2
    invoke-virtual {v0}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiserDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    .line 2
    invoke-virtual {v0}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertiserLogoMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    invoke-virtual {v0}, Le/i/b/u2/c/n;->b()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/CriteoMedia;->create(Ljava/net/URL;)Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    invoke-virtual {v0}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    invoke-virtual {v0}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/r;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegalText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    .line 2
    invoke-virtual {v0}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/q;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    invoke-virtual {v0}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/r;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    invoke-virtual {v0}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/r;->e()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/CriteoMedia;->create(Ljava/net/URL;)Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    invoke-virtual {v0}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/r;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public renderNativeView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-interface {v0, v1, p1, p0}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->watchForImpression(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setProductClickableView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->adChoiceOverlay:Le/i/b/r1/e;

    invoke-virtual {v0, p1}, Le/i/b/r1/e;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->setAdChoiceClickableView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->rendererHelper:Lcom/criteo/publisher/advancednative/RendererHelper;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->assets:Le/i/b/u2/c/n;

    .line 7
    invoke-virtual {v1}, Le/i/b/u2/c/n;->g()Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setAdChoiceClickableView(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/criteo/publisher/annotation/Internal;
        value = {
            "AdMob Adapter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickDetection:Le/i/b/r1/h;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnAdChoiceHandler:Le/i/b/r1/u;

    invoke-virtual {v0, p1, v1}, Le/i/b/r1/h;->a(Landroid/view/View;Le/i/b/r1/u;)V

    return-void
.end method

.method public setProductClickableView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickDetection:Le/i/b/r1/h;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->clickOnProductHandler:Le/i/b/r1/u;

    invoke-virtual {v0, p1, v1}, Le/i/b/r1/h;->a(Landroid/view/View;Le/i/b/r1/u;)V

    return-void
.end method

.method public setRenderer(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 0
    .annotation build Lcom/criteo/publisher/annotation/Internal;
        value = {
            "MoPub Adapter",
            "AdMob Adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    return-void
.end method

.method public watchForImpression(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->visibilityTracker:Le/i/b/r1/w;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->impressionTask:Le/i/b/r1/r;

    .line 2
    iget-object v2, v0, Le/i/b/r1/w;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v0, Le/i/b/r1/w;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/i/b/r1/w$a;

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Le/i/b/r1/w$a;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v5, v0, Le/i/b/r1/w;->a:Le/i/b/r1/v;

    invoke-direct {v3, v4, v5}, Le/i/b/r1/w$a;-><init>(Ljava/lang/ref/Reference;Le/i/b/r1/v;)V

    .line 5
    iget-object v0, v0, Le/i/b/r1/w;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-object v1, v3, Le/i/b/r1/w$a;->c:Le/i/b/r1/r;

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
