.class final Lcom/google/android/gms/common/api/internal/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/e1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/api/internal/l0;

.field private final c:Landroid/os/Looper;

.field private final d:Lcom/google/android/gms/common/api/internal/q0;

.field private final e:Lcom/google/android/gms/common/api/internal/q0;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/q0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/o;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/common/api/a$f;

.field private i:Landroid/os/Bundle;

.field private j:Lcom/google/android/gms/common/b;

.field private k:Lcom/google/android/gms/common/b;

.field private l:Z

.field private final m:Ljava/util/concurrent/locks/Lock;

.field private n:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/l0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/l0;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/f;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Lcom/google/android/gms/common/internal/e;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lg/f/a/d/f/f;",
            "Lg/f/a/d/f/a;",
            ">;",
            "Lcom/google/android/gms/common/api/a$f;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/o2;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/o2;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q2;->g:Ljava/util/Set;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/q2;->l:Z

    .line 7
    iput v2, v0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    move-object/from16 v2, p1

    .line 8
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/q2;->a:Landroid/content/Context;

    move-object/from16 v15, p2

    .line 9
    iput-object v15, v0, Lcom/google/android/gms/common/api/internal/q2;->b:Lcom/google/android/gms/common/api/internal/l0;

    move-object/from16 v14, p3

    .line 10
    iput-object v14, v0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v13, p4

    .line 11
    iput-object v13, v0, Lcom/google/android/gms/common/api/internal/q2;->c:Landroid/os/Looper;

    move-object/from16 v3, p10

    .line 12
    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/q2;->h:Lcom/google/android/gms/common/api/a$f;

    .line 13
    new-instance v12, Lcom/google/android/gms/common/api/internal/q0;

    new-instance v11, Lcom/google/android/gms/common/api/internal/s2;

    invoke-direct {v11, v0, v1}, Lcom/google/android/gms/common/api/internal/s2;-><init>(Lcom/google/android/gms/common/api/internal/q2;Lcom/google/android/gms/common/api/internal/p2;)V

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v17, v11

    move-object/from16 v11, p14

    move-object v1, v12

    move-object/from16 v12, v16

    move-object/from16 v13, p12

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/q0;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/l0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/e;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/f1;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    .line 14
    new-instance v1, Lcom/google/android/gms/common/api/internal/q0;

    new-instance v14, Lcom/google/android/gms/common/api/internal/r2;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, Lcom/google/android/gms/common/api/internal/r2;-><init>(Lcom/google/android/gms/common/api/internal/q2;Lcom/google/android/gms/common/api/internal/p2;)V

    move-object v3, v1

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/q0;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/l0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/e;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/f1;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    .line 15
    new-instance v1, Lf/e/a;

    invoke-direct {v1}, Lf/e/a;-><init>()V

    .line 16
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$c;

    .line 17
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v1, v3, v4}, Lf/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$c;

    .line 19
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v1, v3, v4}, Lf/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q2;->f:Ljava/util/Map;

    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/o;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/o;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->y1()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final E()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->h:Lcom/google/android/gms/common/api/a$f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->b:Lcom/google/android/gms/common/api/internal/l0;

    .line 3
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/q2;->h:Lcom/google/android/gms/common/api/a$f;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->t()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 6
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/internal/q2;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    return-object p1
.end method

.method public static h(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/l0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/e;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/q2;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/l0;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/f;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Lcom/google/android/gms/common/internal/e;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lg/f/a/d/f/f;",
            "Lg/f/a/d/f/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/o2;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/q2;"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 1
    new-instance v6, Lf/e/a;

    invoke-direct {v6}, Lf/e/a;-><init>()V

    .line 2
    new-instance v7, Lf/e/a;

    invoke-direct {v7}, Lf/e/a;-><init>()V

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v10, v3

    .line 6
    :cond_0
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    .line 11
    new-instance v13, Lf/e/a;

    invoke-direct {v13}, Lf/e/a;-><init>()V

    .line 12
    new-instance v14, Lf/e/a;

    invoke-direct {v14}, Lf/e/a;-><init>()V

    .line 13
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$c;

    move-result-object v3

    .line 15
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_8

    move-object/from16 v2, p9

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/o2;

    .line 23
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/o2;->a:Lcom/google/android/gms/common/api/a;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_6
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/o2;->a:Lcom/google/android/gms/common/api/a;

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    new-instance v15, Lcom/google/android/gms/common/api/internal/q2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/api/internal/q2;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/l0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v15
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/internal/q2;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private final j(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->b:Lcom/google/android/gms/common/api/internal/l0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/l0;->b(IZ)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    return-void
.end method

.method private final k(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->i:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->i:Landroid/os/Bundle;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private final l(Lcom/google/android/gms/common/b;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->b:Lcom/google/android/gms/common/api/internal/l0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/l0;->a(Lcom/google/android/gms/common/b;)V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->A()V

    :goto_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    return-void
.end method

.method static synthetic m(Lcom/google/android/gms/common/api/internal/q2;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/q2;->j(IZ)V

    return-void
.end method

.method static synthetic n(Lcom/google/android/gms/common/api/internal/q2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/q2;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic o(Lcom/google/android/gms/common/api/internal/q2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/q2;->l:Z

    return p1
.end method

.method static synthetic p(Lcom/google/android/gms/common/api/internal/q2;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    return-object p1
.end method

.method static synthetic q(Lcom/google/android/gms/common/api/internal/q2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->z()V

    return-void
.end method

.method private static s(Lcom/google/android/gms/common/b;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/b;->C1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final t(Lcom/google/android/gms/common/api/internal/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d<",
            "+",
            "Lcom/google/android/gms/common/api/i;",
            "+",
            "Lcom/google/android/gms/common/api/a$b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d;->u()Lcom/google/android/gms/common/api/a$c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/q0;

    const-string v0, "GoogleApiClient is not configured to use the API required for this call."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic u(Lcom/google/android/gms/common/api/internal/q2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/q2;->l:Z

    return p0
.end method

.method static synthetic v(Lcom/google/android/gms/common/api/internal/q2;)Lcom/google/android/gms/common/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/gms/common/api/internal/q2;)Lcom/google/android/gms/common/api/internal/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/gms/common/api/internal/q2;)Lcom/google/android/gms/common/api/internal/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    return-object p0
.end method

.method private final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/q2;->s(Lcom/google/android/gms/common/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/q2;->s(Lcom/google/android/gms/common/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_8

    .line 4
    iget v2, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    if-ne v2, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->A()V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/q2;->l(Lcom/google/android/gms/common/b;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->r()V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->b:Lcom/google/android/gms/common/api/internal/l0;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/l0;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/l0;->s(Landroid/os/Bundle;)V

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->A()V

    :goto_1
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    return-void

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/q2;->s(Lcom/google/android/gms/common/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->r()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/b;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/q2;->l(Lcom/google/android/gms/common/b;)V

    return-void

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    if-eqz v1, :cond_8

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/q0;->l:I

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    iget v3, v3, Lcom/google/android/gms/common/api/internal/q0;->l:I

    if-ge v2, v3, :cond_7

    move-object v0, v1

    .line 18
    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/q2;->l(Lcom/google/android/gms/common/b;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "R::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/q2;->t(Lcom/google/android/gms/common/api/internal/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->E()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d;->y(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/q0;->B(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/q0;->B(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    return-object p1
.end method

.method public final D(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d<",
            "+",
            "Lcom/google/android/gms/common/api/i;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/q2;->t(Lcom/google/android/gms/common/api/internal/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->E()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d;->y(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/q0;->D(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/q0;->D(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/q2;->l:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->a()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/q2;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/q2;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget p1, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 6
    iput v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/q0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/q2;->x()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/q0;->r()V

    .line 4
    new-instance v1, Lcom/google/android/gms/common/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/b;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lg/f/a/d/c/e/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lg/f/a/d/c/e/h;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/internal/p2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/p2;-><init>(Lcom/google/android/gms/common/api/internal/q2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->d()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->d()V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->C()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/q0;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/q0;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->k:Lcom/google/android/gms/common/b;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->j:Lcom/google/android/gms/common/b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->d:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->r()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q0;->r()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/q2;->A()V

    return-void
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/q2;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q2;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method
