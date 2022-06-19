.class public final Lcom/appnext/core/adswatched/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eu:Lcom/appnext/core/adswatched/a;


# instance fields
.field private aM:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/adswatched/a;->aM:Landroid/content/Context;

    return-void
.end method

.method public static o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/adswatched/a;->eu:Lcom/appnext/core/adswatched/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/ra/services/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/adswatched/a;->eu:Lcom/appnext/core/adswatched/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/adswatched/a;

    invoke-direct {v1, p0}, Lcom/appnext/core/adswatched/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/core/adswatched/a;->eu:Lcom/appnext/core/adswatched/a;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/core/adswatched/a;->eu:Lcom/appnext/core/adswatched/a;

    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/adswatched/a;->aM:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/adswatched/database/AdWatchedDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/adswatched/database/AdWatchedDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/adswatched/database/AdWatchedDatabase;->adWatchedDao()Lcom/appnext/core/adswatched/database/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/adswatched/database/a;->C(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Watched ads = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "AdsWatchedManager$getAdsWatchedIdsByPlacement"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, " with "

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start setBannerWatched for -  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/appnext/core/adswatched/database/AdWatched;

    invoke-direct {v1}, Lcom/appnext/core/adswatched/database/AdWatched;-><init>()V

    .line 4
    iput-object p1, v1, Lcom/appnext/core/adswatched/database/AdWatched;->bannerId:Ljava/lang/String;

    .line 5
    iput-object p2, v1, Lcom/appnext/core/adswatched/database/AdWatched;->auid:Ljava/lang/String;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "setBannerWatched for -  "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/appnext/core/adswatched/database/AdWatched;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p0, Lcom/appnext/core/adswatched/a;->aM:Landroid/content/Context;

    invoke-static {p1}, Lcom/appnext/core/adswatched/database/AdWatchedDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/adswatched/database/AdWatchedDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/adswatched/database/AdWatchedDatabase;->adWatchedDao()Lcom/appnext/core/adswatched/database/a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/appnext/core/adswatched/database/a;->a(Lcom/appnext/core/adswatched/database/AdWatched;)J

    move-result-wide p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdWatched value - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AdsWatchedManager$setBannerWatched"

    .line 9
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "watched ads dao clean by placement  -  "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/adswatched/a;->aM:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/adswatched/database/AdWatchedDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/adswatched/database/AdWatchedDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/adswatched/database/AdWatchedDatabase;->adWatchedDao()Lcom/appnext/core/adswatched/database/a;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/appnext/core/adswatched/database/a;->D(Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3
    :catchall_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " auid - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
