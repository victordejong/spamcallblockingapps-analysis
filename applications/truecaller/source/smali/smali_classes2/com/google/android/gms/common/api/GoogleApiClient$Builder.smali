.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/zab;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

.field public i:I

.field public j:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field public k:Landroid/os/Looper;

.field public l:Lcom/google/android/gms/common/GoogleApiAvailability;

.field public m:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->e:Ljava/util/Map;

    new-instance v0, Ln3/g/a;

    .line 4
    invoke-direct {v0}, Ln3/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->i:I

    .line 5
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->l:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 7
    sget-object v0, Lcom/google/android/gms/signin/zad;->c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->m:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->o:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->f:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->k:Landroid/os/Looper;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/api/Api;->a:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    const-string v0, "Base client builder must not be null"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->b:Ljava/util/Set;

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a:Ljava/util/Set;

    .line 8
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 21
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "must call addApi() to add at least one API"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->c()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v0

    .line 3
    iget-object v3, v0, Lcom/google/android/gms/common/internal/ClientSettings;->d:Ljava/util/Map;

    .line 4
    new-instance v11, Ln3/g/a;

    .line 5
    invoke-direct {v11}, Ln3/g/a;-><init>()V

    new-instance v14, Ln3/g/a;

    .line 6
    invoke-direct {v14}, Ln3/g/a;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    .line 8
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object v13, v4

    move/from16 v16, v18

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/gms/common/api/Api;

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    .line 9
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 10
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v2, v18

    .line 11
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v10, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/google/android/gms/common/api/internal/zas;

    .line 12
    invoke-direct {v9, v10, v2}, Lcom/google/android/gms/common/api/internal/zas;-><init>(Lcom/google/android/gms/common/api/Api;Z)V

    .line 13
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, v10, Lcom/google/android/gms/common/api/Api;->a:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    const-string v4, "null reference"

    .line 15
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->f:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->k:Landroid/os/Looper;

    move-object v4, v2

    move-object v7, v0

    move-object/from16 v8, v17

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object v3, v10

    move-object/from16 v10, v19

    .line 17
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v4

    .line 18
    iget-object v5, v3, Lcom/google/android/gms/common/api/Api;->b:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 19
    invoke-virtual {v14, v5, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    if-eqz v17, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    move/from16 v16, v18

    .line 21
    :cond_2
    :goto_2
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v13, :cond_3

    move-object v13, v3

    goto :goto_3

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    iget-object v2, v3, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    iget-object v3, v13, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x15

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " cannot be used with "

    invoke-static {v6, v2, v4, v3}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v3, v20

    goto/16 :goto_0

    :cond_5
    if-eqz v13, :cond_7

    if-nez v16, :cond_6

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    iget-object v4, v13, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    aput-object v4, v3, v18

    const-string v4, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    .line 26
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->n(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a:Ljava/util/Set;

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->b:Ljava/util/Set;

    .line 27
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    iget-object v4, v13, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    aput-object v4, v2, v18

    const-string v4, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    .line 29
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/common/internal/Preconditions;->n(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 30
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    iget-object v2, v13, Lcom/google/android/gms/common/api/Api;->c:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x52

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "With using "

    const-string v5, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"

    invoke-static {v4, v3, v2, v5}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_7
    :goto_4
    invoke-virtual {v14}, Ln3/g/a;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/internal/zaaz;->w(Ljava/lang/Iterable;Z)I

    move-result v16

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->f:Landroid/content/Context;

    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->k:Landroid/os/Looper;

    iget-object v9, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->l:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v10, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->m:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v12, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->n:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->o:Ljava/util/ArrayList;

    iget v8, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->i:I

    move-object v4, v2

    move/from16 v17, v8

    move-object v8, v0

    move-object v0, v15

    move/from16 v15, v17

    move-object/from16 v17, v0

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/common/api/internal/zaaz;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    .line 36
    sget-object v4, Lcom/google/android/gms/common/api/GoogleApiClient;->a:Ljava/util/Set;

    .line 37
    monitor-enter v4

    .line 38
    :try_start_0
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->i:I

    if-ltz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->h:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v0

    const-class v4, Lcom/google/android/gms/common/api/internal/zak;

    const-string v5, "AutoManageHelper"

    .line 41
    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->q9(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zak;

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    new-instance v4, Lcom/google/android/gms/common/api/internal/zak;

    .line 42
    invoke-direct {v4, v0}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 43
    :goto_5
    iget v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->i:I

    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->j:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    const-string v6, "GoogleApiClient instance cannot be null"

    .line 44
    invoke-static {v2, v6}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/google/android/gms/common/api/internal/zak;->f:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v3, v18

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x36

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Already managing a GoogleApiClient with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-static {v3, v6}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    iget-object v3, v4, Lcom/google/android/gms/common/api/internal/zap;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/f/e/a/a/p0;

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    new-instance v6, Le/m/a/f/e/a/a/o0;

    .line 49
    invoke-direct {v6, v4, v0, v2, v5}, Le/m/a/f/e/a/a/o0;-><init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 50
    iget-object v5, v2, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 51
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/internal/zak;->c(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 52
    iget-object v5, v4, Lcom/google/android/gms/common/api/internal/zak;->f:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v0, v4, Lcom/google/android/gms/common/api/internal/zap;->b:Z

    if-eqz v0, :cond_a

    if-nez v3, :cond_a

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaz;->e()V

    :cond_a
    return-object v2

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 10
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/android/gms/signin/SignInOptions;->a:Lcom/google/android/gms/signin/SignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    .line 1
    sget-object v2, Lcom/google/android/gms/signin/zad;->e:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->g:Ljava/util/Map;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/SignInOptions;

    :cond_0
    move-object v9, v0

    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->e:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->d:Ljava/lang/String;

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;)V

    return-object v0
.end method
