.class public abstract Lcom/criteo/publisher/Criteo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/Criteo$Builder;
    }
.end annotation


# static fields
.field private static criteo:Lcom/criteo/publisher/Criteo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/criteo/publisher/CriteoInitException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/criteo/publisher/Criteo;->init(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/criteo/publisher/Criteo;
    .locals 2

    .line 1
    sget-object v0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Le/i/b/w2;

    const-string v1, "You must initialize the SDK before calling Criteo.getInstance()"

    invoke-direct {v0, v1}, Le/i/b/w2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "4.4.0"

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    const-class v1, Lcom/criteo/publisher/Criteo;

    invoke-static {v1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v1

    .line 3
    invoke-static {v0}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    const-string v0, ""

    return-object v0
.end method

.method private static init(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/criteo/publisher/CriteoInitException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/criteo/publisher/Criteo;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 4
    :try_start_1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v8

    .line 5
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$100(Lcom/criteo/publisher/Criteo$Builder;)Landroid/app/Application;

    move-result-object v2

    .line 6
    iput-object v2, v8, Le/i/b/x2;->b:Landroid/app/Application;

    .line 7
    invoke-virtual {v8}, Le/i/b/x2;->f()V

    .line 8
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$200(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 9
    iput-object v2, v8, Le/i/b/x2;->c:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$300(Lcom/criteo/publisher/Criteo$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    new-instance v2, Le/i/b/h1;

    invoke-direct {v2, v8}, Le/i/b/h1;-><init>(Le/i/b/x2;)V

    const-class v3, Le/i/b/q2/d;

    .line 13
    iget-object v4, v8, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Le/i/b/k1;

    invoke-direct {v5, v2}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v4, v3, v5}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Le/i/b/q2/d;

    const/4 v3, 0x4

    .line 15
    iput v3, v2, Le/i/b/q2/d;->a:I

    .line 16
    :cond_0
    invoke-virtual {v8}, Le/i/b/x2;->a()Le/i/b/s2/i;

    move-result-object v2

    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Le/i/b/p2;

    .line 19
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$100(Lcom/criteo/publisher/Criteo$Builder;)Landroid/app/Application;

    move-result-object v4

    .line 20
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$400(Lcom/criteo/publisher/Criteo$Builder;)Ljava/util/List;

    move-result-object v5

    .line 21
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$500(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/Boolean;

    move-result-object v6

    .line 22
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$600(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Le/i/b/p2;-><init>(Landroid/app/Application;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Le/i/b/x2;)V

    sput-object v2, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    .line 23
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$200(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$400(Lcom/criteo/publisher/Criteo$Builder;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/criteo/publisher/Criteo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Le/i/b/d3;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Le/i/b/q2/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance p0, Le/i/b/w2;

    const-string v2, "Criteo Publisher Id is required"

    invoke-direct {p0, v2}, Le/i/b/w2;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 25
    :try_start_2
    new-instance v2, Le/i/b/y2;

    invoke-direct {v2}, Le/i/b/y2;-><init>()V

    sput-object v2, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    .line 26
    new-instance v2, Lcom/criteo/publisher/CriteoInitException;

    const-string v3, "Internal error initializing Criteo instance."

    invoke-direct {v2, v3, p0}, Lcom/criteo/publisher/CriteoInitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "criteoInitException"

    .line 27
    invoke-static {v2, p0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p0, Le/i/b/q2/f;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-string v5, "onErrorDuringSdkInitialization"

    invoke-direct {p0, v3, v4, v2, v5}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 30
    throw v2

    .line 31
    :cond_2
    new-instance p0, Le/i/b/q2/f;

    const/4 v3, 0x0

    const-string v4, "Criteo SDK initialization method cannot be called more than once. Please ignore this if you are using a mediation adapter."

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1, p0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 33
    :goto_0
    sget-object p0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static setInstance(Lcom/criteo/publisher/Criteo;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    return-void
.end method


# virtual methods
.method public abstract createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Le/i/b/m2;
.end method

.method public abstract enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
.end method

.method public abstract getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V
.end method

.method public abstract getConfig()Le/i/b/u2/x;
.end method

.method public abstract getDeviceInfo()Le/i/b/u2/y;
.end method

.method public abstract getInterstitialActivityHelper()Le/i/b/g2/a;
.end method

.method public loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/criteo/publisher/Criteo;->loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V

    return-void
.end method

.method public abstract loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
.end method

.method public abstract setMopubConsent(Ljava/lang/String;)V
.end method

.method public abstract setUsPrivacyOptOut(Z)V
.end method

.method public abstract setUserData(Lcom/criteo/publisher/context/UserData;)V
.end method
