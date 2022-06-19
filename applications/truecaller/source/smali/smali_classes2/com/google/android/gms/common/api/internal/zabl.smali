.class public final Lcom/google/android/gms/common/api/internal/zabl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/internal/zat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/common/api/internal/zat;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/zai;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/common/api/Api$Client;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/android/gms/common/api/internal/zaaa;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zal;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/zacc;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Lcom/google/android/gms/common/api/internal/zaco;

.field public i:Z

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/f/e/a/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/google/android/gms/common/ConnectionResult;

.field public l:I

.field public final synthetic m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    .line 1
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->k:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->l:I

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/GoogleApi;->zaa(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/zabl;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaaa;

    .line 8
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaaa;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->d:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->zab()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->g:I

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->e:Landroid/content/Context;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zac(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zaco;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->h:Lcom/google/android/gms/common/api/internal/zaco;

    return-void

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->h:Lcom/google/android/gms/common/api/internal/zaco;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->q()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->i()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zacc;

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->b:[Lcom/google/android/gms/common/Feature;

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabl;->m([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->a(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    const-string v1, "DeadObjectException thrown while calling register listener method."

    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->d()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->j()V

    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->i:Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->d:Lcom/google/android/gms/common/api/internal/zaaa;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection to Google Play services was lost"

    .line 4
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    const-string p1, " due to service disconnection."

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    const-string p1, " due to dead object exception."

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    .line 9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/api/internal/zaaa;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 14
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 v0, 0xb

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 19
    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1d4c0

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->g:Lcom/google/android/gms/common/internal/zal;

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zal;->a:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 26
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacc;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacc;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->r:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Lcom/google/android/gms/common/api/internal/zaab;

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Ljava/util/Set;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Lcom/google/android/gms/common/api/internal/zaab;

    .line 8
    iget v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->g:I

    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/zap;->o(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 10
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zai;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/api/internal/zabl;->e(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 4
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/zai;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zac;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->f(Lcom/google/android/gms/common/api/internal/zai;)V

    return v1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/zac;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->f(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabl;->m([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->f(Lcom/google/android/gms/common/api/internal/zai;)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v3, v2, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 10
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->g(Lcom/google/android/gms/common/api/internal/zabl;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Le/m/a/f/e/a/a/y;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 12
    invoke-direct {p1, v0, v2}, Le/m/a/f/e/a/a/y;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->j:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v3, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->j:Ljava/util/List;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/f/e/a/a/y;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 16
    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 18
    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 19
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->j:Ljava/util/List;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 23
    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 27
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1d4c0

    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 30
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->g:I

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j(Lcom/google/android/gms/common/ConnectionResult;I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 33
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zai;->b(Ljava/lang/Exception;)V

    return v1
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->d:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->s()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zai;->c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zai;->d(Lcom/google/android/gms/common/api/internal/zabl;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Error in GoogleApi implementation for client %s."

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zai;

    if-eqz p3, :cond_3

    .line 7
    iget v2, v1, Lcom/google/android/gms/common/api/internal/zai;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zai;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/internal/zai;->b(Ljava/lang/Exception;)V

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zabl;->g(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->i:Z

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 7
    iget-wide v2, v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->a:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final k(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->d:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaa;->a:Ljava/util/Map;

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaa;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->j()V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "Timing out service connection."

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return v3

    :cond_4
    return v1
.end method

.method public final l(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->e:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zal;

    .line 2
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->e:Ljava/util/Set;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final m([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lcom/google/android/gms/common/Feature;

    :cond_1
    array-length v3, v1

    .line 2
    new-instance v4, Ln3/g/a;

    invoke-direct {v4, v3}, Ln3/g/a;-><init>(I)V

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_2

    .line 3
    aget-object v6, v1, v5

    .line 4
    iget-object v7, v6, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->o2()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    .line 6
    aget-object v3, p1, v2

    .line 7
    iget-object v5, v3, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/android/gms/common/Feature;->o2()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final m1(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->h:Lcom/google/android/gms/common/api/internal/zaco;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaco;->f:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->q()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->g:Lcom/google/android/gms/common/internal/zal;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zal;->a:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 10
    instance-of v0, v0, Lcom/google/android/gms/common/internal/service/zap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 11
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b:Z

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 17
    :cond_1
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 18
    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->q:Lcom/google/android/gms/common/api/Status;

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->h(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 20
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 21
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 23
    invoke-virtual {p0, v2, p2, v0}, Lcom/google/android/gms/common/api/internal/zabl;->g(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 24
    iget-boolean p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Z

    if-eqz p2, :cond_a

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 26
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->d(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 27
    invoke-virtual {p0, p2, v2, v1}, Lcom/google/android/gms/common/api/internal/zabl;->g(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 28
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 29
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->c(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->g:I

    .line 30
    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 31
    iget p2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v3, 0x12

    if-ne p2, v3, :cond_7

    .line 32
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->i:Z

    :cond_7
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->i:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    const/16 p2, 0x9

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 35
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    .line 37
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->d(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 40
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 42
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/common/api/internal/zabl;->g(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    :cond_9
    return-void

    .line 43
    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 44
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->d(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 46
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 48
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/common/api/internal/zabl;->g(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->e(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->j()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Ljava/util/Queue;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->k:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->r()V

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabl;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 6
    new-instance v0, Le/m/a/f/e/a/a/u;

    .line 7
    invoke-direct {v0, p0}, Le/m/a/f/e/a/a/u;-><init>(Lcom/google/android/gms/common/api/internal/zabl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 3
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabl;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 6
    new-instance v1, Le/m/a/f/e/a/a/v;

    .line 7
    invoke-direct {v1, p0, p1}, Le/m/a/f/e/a/a/v;-><init>(Lcom/google/android/gms/common/api/internal/zabl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->p:Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->h(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->d:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/zaaa;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lcom/google/android/gms/common/api/internal/zah;

    .line 8
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/zabl;->o(Lcom/google/android/gms/common/api/internal/zai;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabl;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    new-instance v1, Le/m/a/f/e/a/a/x;

    invoke-direct {v1, p0}, Le/m/a/f/e/a/a/x;-><init>(Lcom/google/android/gms/common/api/internal/zabl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final r()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->g:Lcom/google/android/gms/common/internal/zal;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->e:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/internal/zal;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 11
    :cond_1
    new-instance v1, Le/m/a/f/e/a/a/a0;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabl;->c:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {v1, v2, v3, v4}, Le/m/a/f/e/a/a/a0;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->h:Lcom/google/android/gms/common/api/internal/zaco;

    const-string v3, "null reference"

    .line 13
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zaco;->f:Lcom/google/android/gms/signin/zae;

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zaco;->e:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 16
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 17
    iput-object v4, v3, Lcom/google/android/gms/common/internal/ClientSettings;->h:Ljava/lang/Integer;

    .line 18
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zaco;->c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v4, v2, Lcom/google/android/gms/common/api/internal/zaco;->a:Landroid/content/Context;

    iget-object v5, v2, Lcom/google/android/gms/common/api/internal/zaco;->b:Landroid/os/Handler;

    .line 19
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/common/api/internal/zaco;->e:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 20
    iget-object v7, v6, Lcom/google/android/gms/common/internal/ClientSettings;->g:Lcom/google/android/gms/signin/SignInOptions;

    move-object v8, v2

    move-object v9, v2

    .line 21
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zaco;->f:Lcom/google/android/gms/signin/zae;

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zaco;->g:Lcom/google/android/gms/common/api/internal/zacn;

    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zaco;->d:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 22
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaco;->f:Lcom/google/android/gms/signin/zae;

    .line 24
    invoke-interface {v2}, Lcom/google/android/gms/signin/zae;->a()V

    goto :goto_1

    .line 25
    :cond_4
    :goto_0
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/zaco;->b:Landroid/os/Handler;

    new-instance v4, Le/m/a/f/e/a/a/f0;

    .line 26
    invoke-direct {v4, v2}, Le/m/a/f/e/a/a/f0;-><init>(Lcom/google/android/gms/common/api/internal/zaco;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_5
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 28
    invoke-interface {v2, v1}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 29
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 30
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v1

    .line 31
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 32
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/zabl;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    return v0
.end method
