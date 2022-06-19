.class public Lcom/criteo/publisher/CriteoBannerView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final UNSET_DIMENSION_VALUE:I = -0x1


# instance fields
.field public final bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

.field private final criteo:Lcom/criteo/publisher/Criteo;

.field private criteoBannerAdListener:Lcom/criteo/publisher/CriteoBannerAdListener;

.field private criteoBannerEventController:Le/i/b/m2;

.field private final logger:Le/i/b/q2/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v0}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Le/i/b/q2/h;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->criteo:Lcom/criteo/publisher/Criteo;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/criteo/publisher/R$styleable;->CriteoBannerView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    :try_start_0
    sget p2, Lcom/criteo/publisher/R$styleable;->CriteoBannerView_criteoAdUnitWidth:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 6
    sget v3, Lcom/criteo/publisher/R$styleable;->CriteoBannerView_criteoAdUnitHeight:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 7
    sget v4, Lcom/criteo/publisher/R$styleable;->CriteoBannerView_criteoAdUnitId:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eq p2, v2, :cond_0

    if-eq v3, v2, :cond_0

    .line 8
    new-instance v1, Lcom/criteo/publisher/model/BannerAdUnit;

    new-instance v2, Lcom/criteo/publisher/model/AdSize;

    invoke-direct {v2, p2, v3}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v1, v4, v2}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-ne p2, v2, :cond_1

    if-ne v3, v2, :cond_1

    .line 9
    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    goto :goto_0

    .line 10
    :cond_1
    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 11
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "CriteoBannerView was not properly inflated. For InHouse integration, no attribute must be set. For Standalone integration, all of: criteoAdUnitId, criteoAdUnitWidth and criteoAdUnitHeight must be set."

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    iget-object p1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-static {p1}, Le/i/b/t1;->a(Lcom/criteo/publisher/model/BannerAdUnit;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void

    :catchall_0
    move-exception p2

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;Lcom/criteo/publisher/Criteo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Le/i/b/q2/h;

    .line 20
    iput-object p2, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 21
    iput-object p3, p0, Lcom/criteo/publisher/CriteoBannerView;->criteo:Lcom/criteo/publisher/Criteo;

    .line 22
    invoke-static {p2}, Le/i/b/t1;->a(Lcom/criteo/publisher/model/BannerAdUnit;)Le/i/b/q2/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/Bid;)V
    .locals 9

    .line 10
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Le/i/b/q2/h;

    const-string v1, "bannerView"

    .line 11
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Le/i/b/q2/f;

    const-string v2, "BannerView("

    .line 13
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

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

    .line 14
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 16
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoBannerView;->getIntegrationRegistry()Le/i/b/d2/c;

    move-result-object v0

    sget-object v1, Le/i/b/d2/a;->d:Le/i/b/d2/a;

    invoke-virtual {v0, v1}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    .line 17
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Le/i/b/m2;

    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    sget-object v1, Le/i/b/s2/a;->a:Le/i/b/s2/a;

    invoke-virtual {p1, v1}, Lcom/criteo/publisher/Bid;->b(Le/i/b/s2/a;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_2

    .line 20
    sget-object p1, Le/i/b/v2;->b:Le/i/b/v2;

    invoke-virtual {v0, p1}, Le/i/b/m2;->a(Le/i/b/v2;)V

    goto :goto_2

    .line 21
    :cond_2
    sget-object p1, Le/i/b/v2;->a:Le/i/b/v2;

    invoke-virtual {v0, p1}, Le/i/b/m2;->a(Le/i/b/v2;)V

    .line 22
    invoke-virtual {v0, v8}, Le/i/b/m2;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Le/i/b/q2/h;

    const-string v1, "bannerView"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/i/b/q2/f;

    const-string v2, "BannerView("

    .line 4
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

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
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoBannerView;->getIntegrationRegistry()Le/i/b/d2/c;

    move-result-object v0

    sget-object v1, Le/i/b/d2/a;->c:Le/i/b/d2/a;

    invoke-virtual {v0, v1}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    .line 8
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Le/i/b/m2;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 9
    iget-object v2, v0, Le/i/b/m2;->c:Lcom/criteo/publisher/Criteo;

    new-instance v3, Le/i/b/j2;

    invoke-direct {v3, v0}, Le/i/b/j2;-><init>(Le/i/b/m2;)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/criteo/publisher/Criteo;->getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V

    return-void
.end method

.method private getCriteo()Lcom/criteo/publisher/Criteo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteo:Lcom/criteo/publisher/Criteo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    :cond_0
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


# virtual methods
.method public getCriteoBannerAdListener()Lcom/criteo/publisher/CriteoBannerAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerAdListener:Lcom/criteo/publisher/CriteoBannerAdListener;

    return-object v0
.end method

.method public getOrCreateController()Le/i/b/m2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerEventController:Le/i/b/m2;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoBannerView;->getCriteo()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/Criteo;->createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Le/i/b/m2;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerEventController:Le/i/b/m2;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerEventController:Le/i/b/m2;

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/CriteoBannerView;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoBannerView;->doLoadAd(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoBannerView;->doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public loadAdWithDisplayData(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Le/i/b/m2;

    move-result-object v0

    sget-object v1, Le/i/b/v2;->a:Le/i/b/v2;

    invoke-virtual {v0, v1}, Le/i/b/m2;->a(Le/i/b/v2;)V

    .line 2
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Le/i/b/m2;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/i/b/m2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerAdListener:Lcom/criteo/publisher/CriteoBannerAdListener;

    return-void
.end method
