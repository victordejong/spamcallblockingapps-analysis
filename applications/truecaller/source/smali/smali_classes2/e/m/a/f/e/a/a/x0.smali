.class public final Le/m/a/f/e/a/a/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabu;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/common/api/internal/zaaz;

.field public final c:Landroid/os/Looper;

.field public final d:Lcom/google/android/gms/common/api/internal/zabd;

.field public final e:Lcom/google/android/gms/common/api/internal/zabd;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/zabd;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/SignInConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/common/api/Api$Client;

.field public i:Landroid/os/Bundle;

.field public j:Lcom/google/android/gms/common/ConnectionResult;

.field public k:Lcom/google/android/gms/common/ConnectionResult;

.field public l:Z

.field public final m:Ljava/util/concurrent/locks/Lock;

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaaz;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    .line 1
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Le/m/a/f/e/a/a/x0;->g:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, v0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Le/m/a/f/e/a/a/x0;->l:Z

    iput v1, v0, Le/m/a/f/e/a/a/x0;->n:I

    move-object/from16 v1, p1

    iput-object v1, v0, Le/m/a/f/e/a/a/x0;->a:Landroid/content/Context;

    move-object/from16 v14, p2

    iput-object v14, v0, Le/m/a/f/e/a/a/x0;->b:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object/from16 v15, p3

    iput-object v15, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v13, p4

    iput-object v13, v0, Le/m/a/f/e/a/a/x0;->c:Landroid/os/Looper;

    move-object/from16 v2, p10

    iput-object v2, v0, Le/m/a/f/e/a/a/x0;->h:Lcom/google/android/gms/common/api/Api$Client;

    new-instance v12, Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v11, Le/m/a/f/e/a/a/v0;

    .line 3
    invoke-direct {v11, v0}, Le/m/a/f/e/a/a/v0;-><init>(Le/m/a/f/e/a/a/x0;)V

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p14

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object/from16 v18, v12

    move-object/from16 v12, p12

    move-object/from16 v13, v17

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    move-object/from16 v2, v18

    iput-object v2, v0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v13, Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v12, Le/m/a/f/e/a/a/w0;

    .line 4
    invoke-direct {v12, v0}, Le/m/a/f/e/a/a/w0;-><init>(Le/m/a/f/e/a/a/x0;)V

    move-object v2, v13

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p13

    move-object/from16 v11, p9

    move-object v1, v12

    move-object/from16 v12, p11

    move-object v14, v13

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    iput-object v14, v0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v1, Ln3/g/a;

    .line 5
    invoke-direct {v1}, Ln3/g/a;-><init>()V

    .line 6
    move-object/from16 v2, p7

    check-cast v2, Ln3/g/a;

    invoke-virtual {v2}, Ln3/g/a;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ln3/g/g$c;

    invoke-virtual {v2}, Ln3/g/g$c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v3, v2

    check-cast v3, Ln3/g/g$a;

    invoke-virtual {v3}, Ln3/g/g$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    iget-object v4, v0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 7
    invoke-virtual {v1, v3, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v2, p6

    check-cast v2, Ln3/g/a;

    invoke-virtual {v2}, Ln3/g/a;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ln3/g/g$c;

    invoke-virtual {v2}, Ln3/g/g$c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move-object v3, v2

    check-cast v3, Ln3/g/g$a;

    invoke-virtual {v3}, Ln3/g/g$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    iget-object v4, v0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 9
    invoke-virtual {v1, v3, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Le/m/a/f/e/a/a/x0;->f:Ljava/util/Map;

    return-void
.end method

.method public static p(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Le/m/a/f/e/a/a/x0;)V
    .locals 4

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Le/m/a/f/e/a/a/x0;->p(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    const-string v1, "null reference"

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Le/m/a/f/e/a/a/x0;->p(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_9

    iget v1, p0, Le/m/a/f/e/a/a/x0;->n:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->l()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Le/m/a/f/e/a/a/x0;->r(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabd;->a()V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Le/m/a/f/e/a/a/x0;->n:I

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->b:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaz;->b(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->l()V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Le/m/a/f/e/a/a/x0;->n:I

    return-void

    :cond_5
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Le/m/a/f/e/a/a/x0;->p(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->a()V

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Le/m/a/f/e/a/a/x0;->r(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_9

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_9

    iget-object v2, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->m:I

    iget-object v3, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->m:I

    if-ge v2, v3, :cond_8

    move-object v0, v1

    :cond_8
    invoke-virtual {p0, v0}, Le/m/a/f/e/a/a/x0;->r(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Le/m/a/f/e/a/a/x0;->n:I

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->a()V

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->a()V

    .line 3
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->l()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->k:Lcom/google/android/gms/common/api/internal/zaba;

    .line 4
    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->g:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget p1, p0, Le/m/a/f/e/a/a/x0;->n:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Le/m/a/f/e/a/a/x0;->n:I

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabd;->k:Lcom/google/android/gms/common/api/internal/zaba;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zaba;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 11
    :cond_2
    iget-object p1, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Le/m/a/f/e/a/a/x0;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/m/a/f/e/a/a/x0;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->k:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->c()V

    .line 3
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->k:Lcom/google/android/gms/common/api/internal/zaba;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->c()V

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
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
    invoke-virtual {p0, p1}, Le/m/a/f/e/a/a/x0;->n(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->o()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->d(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->d(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
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
    invoke-virtual {p0, p1}, Le/m/a/f/e/a/a/x0;->n(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->o()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->e(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1

    :cond_1
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->e(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->f()V

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->f()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->i()Z

    move-result v0

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->a()V

    .line 4
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/base/zap;

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->c:Landroid/os/Looper;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/m/a/f/e/a/a/u0;

    .line 6
    invoke-direct {v1, p0}, Le/m/a/f/e/a/a/u0;-><init>(Le/m/a/f/e/a/a/x0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->k:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->k:Lcom/google/android/gms/common/api/internal/zaba;

    .line 6
    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Le/m/a/f/e/a/a/x0;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Le/m/a/f/e/a/a/x0;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3
    throw v0
.end method

.method public final j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabd;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabd;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final k(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->g:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->g:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->f:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabd;

    const-string v0, "GoogleApiClient is not configured to use the API required for this call."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final o()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->h:Lcom/google/android/gms/common/api/Api$Client;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->a:Landroid/content/Context;

    iget-object v1, p0, Le/m/a/f/e/a/a/x0;->b:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Le/m/a/f/e/a/a/x0;->h:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getSignInIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget v0, p0, Le/m/a/f/e/a/a/x0;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    .line 1
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/x0;->b:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaz;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/m/a/f/e/a/a/x0;->l()V

    :goto_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/m/a/f/e/a/a/x0;->n:I

    return-void
.end method
