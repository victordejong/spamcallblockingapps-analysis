.class public Le/a/w4/t/b/c;
.super Le/a/w4/t/b/b;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Ln3/x/a/a;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/l4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/w4/t/b/b;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Le/a/w4/t/b/c;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Le/a/w4/t/b/c;->e:Landroid/util/LruCache;

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataManager loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    invoke-static {p1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/t/b/c;->c:Ln3/x/a/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/a/l4/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/c;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/w4/t/b/c;->b:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l4/e;

    .line 6
    iget-object v5, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    .line 7
    iget-object v6, v4, Le/a/l4/e;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l4/e;

    if-eqz v5, :cond_2

    .line 9
    iget-object v6, v5, Le/a/l4/e;->d:Lw3/b/a/b;

    if-eqz v6, :cond_2

    .line 10
    iget-object v7, v4, Le/a/l4/e;->d:Lw3/b/a/b;

    .line 11
    invoke-virtual {v6, v7}, Lw3/b/a/e0/c;->f(Lw3/b/a/z;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5}, Le/a/l4/e;->a()Le/a/l4/e$a;

    move-result-object v5

    .line 13
    iget-object v6, v4, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 14
    iput-object v6, v5, Le/a/l4/e$a;->a:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 15
    iget-object v6, v4, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 16
    iput-object v6, v5, Le/a/l4/e$a;->b:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 17
    iget-object v6, v4, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 18
    iput-object v6, v5, Le/a/l4/e$a;->e:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 19
    iget-object v6, v4, Le/a/l4/e;->e:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 20
    iput-object v6, v5, Le/a/l4/e$a;->d:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 21
    iget-object v6, v4, Le/a/l4/e;->a:Ljava/lang/String;

    const-string v7, "number"

    .line 22
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object v6, v5, Le/a/l4/e$a;->k:Ljava/lang/String;

    .line 24
    iget-object v6, v4, Le/a/l4/e;->j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 25
    iput-object v6, v5, Le/a/l4/e$a;->h:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 26
    iget-object v6, v4, Le/a/l4/e;->l:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 27
    iput-object v6, v5, Le/a/l4/e$a;->j:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 28
    invoke-virtual {v5}, Le/a/l4/e$a;->a()Le/a/l4/e;

    move-result-object v5

    .line 29
    iget-object v6, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    .line 30
    iget-object v4, v4, Le/a/l4/e;->a:Ljava/lang/String;

    .line 31
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 32
    :cond_3
    iget-object v5, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    .line 33
    iget-object v6, v4, Le/a/l4/e;->a:Ljava/lang/String;

    .line 34
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    iget-object p1, p0, Le/a/w4/t/b/c;->c:Ln3/x/a/a;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.truecaller.datamanager.STATUSES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.truecaller.datamanager.EXTRA_PRESENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Le/a/l4/e;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/e;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Lx3/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/c;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx3/a0;

    return-object p1
.end method

.method public e(Ljava/lang/String;Lx3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/c;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/String;Lw3/b/a/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l4/e;

    .line 4
    invoke-virtual {v1}, Le/a/l4/e;->a()Le/a/l4/e$a;

    move-result-object v1

    .line 5
    iput-object p2, v1, Le/a/l4/e$a;->c:Lw3/b/a/b;

    .line 6
    invoke-virtual {v1}, Le/a/l4/e$a;->a()Le/a/l4/e;

    move-result-object p2

    .line 7
    iget-object v1, p0, Le/a/w4/t/b/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Le/a/w4/t/b/c;->a(Ljava/util/Collection;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
