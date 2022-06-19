.class public final Lcom/google/android/gms/common/api/internal/zaaz;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Lcom/google/android/gms/common/internal/zak;

.field public d:Lcom/google/android/gms/common/api/internal/zabu;

.field public final e:I

.field public final f:Landroid/content/Context;

.field public final g:Landroid/os/Looper;

.field public final h:Ljava/util/Queue;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public j:J

.field public k:J

.field public final l:Le/m/a/f/e/a/a/o;

.field public final m:Lcom/google/android/gms/common/GoogleApiAvailability;

.field public n:Lcom/google/android/gms/common/api/internal/zabr;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/android/gms/common/internal/ClientSettings;

.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Integer;

.field public w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zacv;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/google/android/gms/common/api/internal/zacx;

.field public final y:Lcom/google/android/gms/common/internal/zaj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p11

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    new-instance v4, Ljava/util/LinkedList;

    .line 1
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    const-wide/32 v4, 0x1d4c0

    .line 2
    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->j:J

    const-wide/16 v4, 0x1388

    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->k:J

    new-instance v4, Ljava/util/HashSet;

    .line 3
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->p:Ljava/util/Set;

    new-instance v4, Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolders;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->t:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->w:Ljava/util/Set;

    new-instance v3, Le/m/a/f/e/a/a/n;

    .line 5
    invoke-direct {v3, p0}, Le/m/a/f/e/a/a/n;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->y:Lcom/google/android/gms/common/internal/zaj;

    move-object v4, p1

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    move-object v4, p2

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    new-instance v4, Lcom/google/android/gms/common/internal/zak;

    invoke-direct {v4, p3, v3}, Lcom/google/android/gms/common/internal/zak;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zaj;)V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->g:Landroid/os/Looper;

    new-instance v3, Le/m/a/f/e/a/a/o;

    .line 7
    invoke-direct {v3, p0, p3}, Le/m/a/f/e/a/a/o;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->l:Le/m/a/f/e/a/a/o;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->m:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput v2, v0, Lcom/google/android/gms/common/api/internal/zaaz;->e:I

    if-ltz v2, :cond_0

    .line 8
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    :cond_0
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->r:Ljava/util/Map;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->u:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Lcom/google/android/gms/common/api/internal/zacx;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zacx;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->x:Lcom/google/android/gms/common/api/internal/zacx;

    .line 10
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zak;->b(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 13
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zak;->c(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_2
    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaz;->q:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->s:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public static w(Ljava/lang/Iterable;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    or-int/2addr v0, v3

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static x(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method

.method public static synthetic y(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/zak;->e:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->c()V

    return-void
.end method

.method public final a(IZ)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->n:Lcom/google/android/gms/common/api/internal/zabr;

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->m:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Le/m/a/f/e/a/a/p;

    invoke-direct {v2, p0}, Le/m/a/f/e/a/a/p;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;)V

    .line 4
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->i(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->n:Lcom/google/android/gms/common/api/internal/zabr;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->l:Le/m/a/f/e/a/a/o;

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->j:J

    .line 6
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->l:Le/m/a/f/e/a/a/o;

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->k:J

    .line 8
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    move p1, v1

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->x:Lcom/google/android/gms/common/api/internal/zacx;

    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/zacx;->a:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 10
    invoke-interface {p2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 11
    array-length v3, p2

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    sget-object v6, Lcom/google/android/gms/common/api/internal/zacx;->c:Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 13
    iget-object v3, p2, Lcom/google/android/gms/common/internal/zak;->h:Landroid/os/Handler;

    const-string v4, "onUnintentionalDisconnection must only be called on the Handler thread"

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->e(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/google/android/gms/common/internal/zak;->h:Landroid/os/Handler;

    .line 15
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p2, Lcom/google/android/gms/common/internal/zak;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iput-boolean v1, p2, Lcom/google/android/gms/common/internal/zak;->g:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/google/android/gms/common/internal/zak;->b:Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p2, Lcom/google/android/gms/common/internal/zak;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-boolean v6, p2, Lcom/google/android/gms/common/internal/zak;->e:Z

    if-eqz v6, :cond_7

    iget-object v6, p2, Lcom/google/android/gms/common/internal/zak;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eq v6, v4, :cond_6

    goto :goto_3

    .line 20
    :cond_6
    iget-object v6, p2, Lcom/google/android/gms/common/internal/zak;->b:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 22
    invoke-interface {v5, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnectionSuspended(I)V

    goto :goto_2

    .line 23
    :cond_7
    :goto_3
    iget-object v1, p2, Lcom/google/android/gms/common/internal/zak;->c:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p2, Lcom/google/android/gms/common/internal/zak;->g:Z

    .line 25
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zak;->a()V

    if-ne p1, v0, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->A()V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaz;->i(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->h:Landroid/os/Handler;

    const-string v2, "onConnectionSuccess must only be called on the Handler thread"

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->e(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/zak;->g:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    iget-object v2, v0, Lcom/google/android/gms/common/internal/zak;->h:Landroid/os/Handler;

    .line 6
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, v0, Lcom/google/android/gms/common/internal/zak;->g:Z

    iget-object v2, v0, Lcom/google/android/gms/common/internal/zak;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/zak;->b:Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lcom/google/android/gms/common/internal/zak;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-boolean v6, v0, Lcom/google/android/gms/common/internal/zak;->e:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/common/internal/zak;->a:Lcom/google/android/gms/common/internal/zaj;

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/common/internal/zaj;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/common/internal/zak;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eq v6, v3, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    iget-object v6, v0, Lcom/google/android/gms/common/internal/zak;->c:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 15
    invoke-interface {v5, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    goto :goto_2

    .line 16
    :cond_4
    :goto_3
    iget-object p1, v0, Lcom/google/android/gms/common/internal/zak;->c:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v4, v0, Lcom/google/android/gms/common/internal/zak;->g:Z

    .line 18
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->m:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    .line 1
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->v()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->h:Landroid/os/Handler;

    const-string v2, "onConnectionFailure must only be called on the Handler thread"

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->e(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/zak;->d:Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lcom/google/android/gms/common/internal/zak;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-boolean v5, v0, Lcom/google/android/gms/common/internal/zak;->e:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/common/internal/zak;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/common/internal/zak;->d:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v4, p1}, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_2

    .line 16
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zak;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-void
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    const-string v0, "null reference"

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v2, "blockingConnect must not be called on the UI thread"

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    const-string v1, "TimeUnit must not be null"

    .line 3
    invoke-static {p3, v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/android/gms/common/api/internal/zaaz;->w(Ljava/lang/Iterable;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    .line 8
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zaaz;->z(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 10
    iput-boolean v3, v1, Lcom/google/android/gms/common/internal/zak;->e:Z

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    .line 12
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zabu;->k(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 15
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 17
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    throw p1
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "Sign-in mode should have been set explicitly by auto-manage."

    .line 2
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zaaz;->w(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    const-string v4, "null reference"

    .line 7
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_2
    move v2, v3

    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    .line 10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal sign-in mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zaaz;->z(I)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->A()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    throw v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->x:Lcom/google/android/gms/common/api/internal/zacx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacx;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->t:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/ListenerHolders;->a:Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ListenerHolders;->a:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 9
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Le/m/a/f/e/a/a/m0;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 12
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 13
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 14
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->v()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zak;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->x:Lcom/google/android/gms/common/api/internal/zacx;

    const-string v1, " mUnconsumedApiCalls.size()="

    .line 4
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacx;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabu;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "the API"

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    .line 8
    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->e(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 9
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw p1
.end method

.method public final i(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "the API"

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->h:Ljava/util/Queue;

    .line 9
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->x:Lcom/google/android/gms/common/api/internal/zacx;

    .line 10
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zacx;->a:Ljava/util/Set;

    .line 11
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacx;->b:Le/m/a/f/e/a/a/m0;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Le/m/a/f/e/a/a/m0;)V

    .line 13
    sget-object v1, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    .line 14
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->d(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 15
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    throw p1
.end method

.method public final k(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "Appropriate Api was not requested."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final m()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->b(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->g()V

    :cond_0
    return-void
.end method

.method public final r(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "null reference"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/zak;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/zak;->g:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zak;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "null reference"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zak;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zak;->d:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final t(Lcom/google/android/gms/common/api/internal/zacv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->w:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->w:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->w:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public final u(Lcom/google/android/gms/common/api/internal/zacv;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->w:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_0

    :try_start_1
    new-instance p1, Ljava/lang/Exception;

    .line 2
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Attempted to remove pending transform when no transforms are registered."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    .line 4
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Failed to remove pending transform - this may lead to memory leaks!"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->w:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 7
    :cond_2
    :try_start_4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabu;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw p1
.end method

.method public final v()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->l:Le/m/a/f/e/a/a/o;

    const/4 v1, 0x2

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->l:Le/m/a/f/e/a/a/o;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->n:Lcom/google/android/gms/common/api/internal/zabr;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabr;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->n:Lcom/google/android/gms/common/api/internal/zabr;

    :cond_1
    return v1
.end method

.method public final z(I)V
    .locals 18

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 3
    :goto_0
    iget-object v0, v15, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v15, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v4

    or-int/2addr v1, v4

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1

    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    :cond_3
    move-object v12, v15

    goto/16 :goto_8

    :cond_4
    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v15, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    iget-object v4, v15, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v5, v15, Lcom/google/android/gms/common/api/internal/zaaz;->g:Landroid/os/Looper;

    iget-object v6, v15, Lcom/google/android/gms/common/api/internal/zaaz;->m:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v0, v15, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    iget-object v8, v15, Lcom/google/android/gms/common/api/internal/zaaz;->q:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v2, v15, Lcom/google/android/gms/common/api/internal/zaaz;->r:Ljava/util/Map;

    iget-object v9, v15, Lcom/google/android/gms/common/api/internal/zaaz;->s:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v7, v15, Lcom/google/android/gms/common/api/internal/zaaz;->u:Ljava/util/ArrayList;

    .line 9
    new-instance v10, Ln3/g/a;

    invoke-direct {v10}, Ln3/g/a;-><init>()V

    new-instance v11, Ln3/g/a;

    .line 10
    invoke-direct {v11}, Ln3/g/a;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/common/api/Api$Client;

    move-object/from16 p1, v0

    .line 13
    invoke-interface {v14}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v0

    if-ne v3, v0, :cond_5

    move-object v12, v14

    .line 14
    :cond_5
    invoke-interface {v14}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-virtual {v10, v0, v14}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 16
    :cond_6
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-virtual {v11, v0, v14}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, p1

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {v10}, Ln3/g/h;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v3, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    .line 18
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    new-instance v13, Ln3/g/a;

    .line 19
    invoke-direct {v13}, Ln3/g/a;-><init>()V

    new-instance v14, Ln3/g/a;

    .line 20
    invoke-direct {v14}, Ln3/g/a;-><init>()V

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api;

    move-object/from16 p1, v0

    .line 22
    iget-object v0, v3, Lcom/google/android/gms/common/api/Api;->b:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 23
    invoke-virtual {v10, v0}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 24
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v13, v3, v0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {v11, v0}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v14, v3, v0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move-object/from16 v0, p1

    goto :goto_4

    .line 27
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_6
    if-ge v15, v0, :cond_d

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v0

    .line 32
    move-object/from16 v0, v16

    check-cast v0, Lcom/google/android/gms/common/api/internal/zas;

    move-object/from16 v16, v7

    .line 33
    iget-object v7, v0, Lcom/google/android/gms/common/api/internal/zas;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v13, v7}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 34
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 35
    :cond_b
    iget-object v7, v0, Lcom/google/android/gms/common/api/internal/zas;->a:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v14, v7}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p1

    move-object/from16 v7, v16

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_d
    new-instance v15, Le/m/a/f/e/a/a/x0;

    move-object v0, v15

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    move-object v7, v11

    move-object v10, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    .line 39
    invoke-direct/range {v0 .. v14}, Le/m/a/f/e/a/a/x0;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v12, p0

    .line 40
    iput-object v15, v12, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    return-void

    :cond_e
    move-object v12, v15

    if-eqz v1, :cond_10

    if-nez v2, :cond_f

    :goto_8
    new-instance v13, Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, v12, Lcom/google/android/gms/common/api/internal/zaaz;->f:Landroid/content/Context;

    iget-object v3, v12, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v4, v12, Lcom/google/android/gms/common/api/internal/zaaz;->g:Landroid/os/Looper;

    iget-object v5, v12, Lcom/google/android/gms/common/api/internal/zaaz;->m:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, v12, Lcom/google/android/gms/common/api/internal/zaaz;->o:Ljava/util/Map;

    iget-object v7, v12, Lcom/google/android/gms/common/api/internal/zaaz;->q:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v8, v12, Lcom/google/android/gms/common/api/internal/zaaz;->r:Ljava/util/Map;

    iget-object v9, v12, Lcom/google/android/gms/common/api/internal/zaaz;->s:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v10, v12, Lcom/google/android/gms/common/api/internal/zaaz;->u:Ljava/util/ArrayList;

    move-object v0, v13

    move-object/from16 v2, p0

    move-object/from16 v11, p0

    .line 41
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    iput-object v13, v12, Lcom/google/android/gms/common/api/internal/zaaz;->d:Lcom/google/android/gms/common/api/internal/zabu;

    return-void

    .line 42
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v12, v15

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/api/internal/zaaz;->x(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, v12, Lcom/google/android/gms/common/api/internal/zaaz;->v:Ljava/lang/Integer;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->x(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x33

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    const-string v4, ". Mode was already set to "

    invoke-static {v5, v3, v0, v4, v2}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
