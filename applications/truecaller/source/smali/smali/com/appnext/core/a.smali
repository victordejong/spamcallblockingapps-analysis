.class public final Lcom/appnext/core/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation
.end field

.field private cA:Ljava/lang/String;

.field private cy:Ljava/lang/Long;

.field private cz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private placementID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/appnext/core/a;->m:I

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/a;->cy:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/appnext/core/a;->cA:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/a;->cz:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/a;->cz:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/core/d$a;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/a;->cz:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/a;->cz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "AdContainer$addListener"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;Z)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/appnext/core/a;->cy:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public final am()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/a;->cy:Ljava/lang/Long;

    return-object v0
.end method

.method public final an()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/a;->m:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/core/a;->m:I

    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/appnext/core/a;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final getAds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-object v0

    .line 5
    :catchall_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getPlacementID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/a;->placementID:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/a;->cA:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized p(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/a$2;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/a$2;-><init>(Lcom/appnext/core/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "AdContainer$notifyListenersError"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setPlacementID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/a;->placementID:Ljava/lang/String;

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/a;->cA:Ljava/lang/String;

    return-object v0
.end method
