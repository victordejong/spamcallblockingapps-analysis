.class public Le/h/a/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;


# static fields
.field public static c:I

.field public static d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/h/a/c/p;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Le/h/a/c/s0/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Le/h/a/c/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Le/h/a/c/p;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v15, v1, Le/h/a/c/p;->a:Landroid/content/Context;

    .line 3
    new-instance v13, Le/h/a/c/x;

    invoke-direct {v13, v15}, Le/h/a/c/x;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v12, Le/h/a/c/w;

    invoke-direct {v12}, Le/h/a/c/w;-><init>()V

    .line 5
    new-instance v0, Le/h/a/c/a1/c;

    invoke-direct {v0}, Le/h/a/c/a1/c;-><init>()V

    .line 6
    new-instance v16, Le/h/a/c/a1/b;

    invoke-direct/range {v16 .. v16}, Le/h/a/c/a1/b;-><init>()V

    .line 7
    new-instance v11, Le/h/a/c/m;

    invoke-direct {v11}, Le/h/a/c/m;-><init>()V

    .line 8
    iput-object v11, v13, Le/h/a/c/x;->e:Le/h/a/c/m;

    .line 9
    new-instance v17, Le/h/a/c/y0/e;

    invoke-direct/range {v17 .. v17}, Le/h/a/c/y0/e;-><init>()V

    .line 10
    new-instance v10, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-direct {v10, v14}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 11
    iput-object v10, v13, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    new-instance v9, Le/h/a/c/n0/d;

    invoke-direct {v9, v15, v10, v12}, Le/h/a/c/n0/d;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/w;)V

    .line 13
    new-instance v8, Le/h/a/c/f0;

    invoke-direct {v8, v15, v10}, Le/h/a/c/f0;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 14
    new-instance v7, Le/h/a/c/b0;

    move-object/from16 v2, p3

    invoke-direct {v7, v15, v10, v2, v12}, Le/h/a/c/b0;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Le/h/a/c/w;)V

    .line 15
    iput-object v7, v13, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 16
    new-instance v6, Le/h/a/c/o;

    invoke-direct {v6, v10, v7}, Le/h/a/c/o;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;)V

    .line 17
    iput-object v6, v13, Le/h/a/c/x;->f:Le/h/a/c/k;

    .line 18
    new-instance v5, Le/h/a/c/i0;

    invoke-direct {v5, v10, v12, v0, v8}, Le/h/a/c/i0;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/w;Le/h/a/c/a1/c;Le/h/a/c/f0;)V

    .line 19
    iput-object v5, v13, Le/h/a/c/x;->j:Le/h/a/c/i0;

    .line 20
    new-instance v4, Le/h/a/c/l0/c;

    invoke-direct {v4, v10, v11}, Le/h/a/c/l0/c;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/m;)V

    .line 21
    new-instance v3, Le/h/a/c/v;

    move-object v2, v3

    move-object v1, v3

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move-object v4, v10

    move-object/from16 v19, v5

    move-object v5, v11

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Le/h/a/c/v;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/m;Le/h/a/c/k;Le/h/a/c/b0;Le/h/a/c/l0/a;)V

    .line 22
    iput-object v1, v13, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 23
    invoke-static {v10}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v2

    invoke-virtual {v2}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object v2

    .line 24
    new-instance v3, Le/h/a/c/r;

    invoke-direct {v3, v13, v1, v10, v15}, Le/h/a/c/r;-><init>(Le/h/a/c/x;Le/h/a/c/v;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Landroid/content/Context;)V

    .line 25
    iget-object v4, v2, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v5, Le/h/a/c/y0/j;

    const-string v6, "initFCManager"

    invoke-direct {v5, v2, v6, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 27
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    new-instance v23, Le/h/a/c/u0/b;

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    move-object v4, v10

    move-object/from16 v5, v21

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v1

    move-object/from16 v24, v9

    move-object/from16 v9, v18

    move-object/from16 v25, v10

    move-object/from16 v10, v20

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object v12, v0

    move-object/from16 v28, v13

    move-object/from16 v13, v22

    invoke-direct/range {v2 .. v13}, Le/h/a/c/u0/b;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/w;Le/h/a/c/a1/b;Le/h/a/c/v;Le/h/a/c/l0/a;Le/h/a/c/k;Le/h/a/c/m;Le/h/a/c/a1/c;Le/h/a/c/f0;)V

    .line 29
    new-instance v29, Le/h/a/c/n0/e;

    move-object/from16 v2, v29

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move-object/from16 v5, v25

    move-object/from16 v6, v24

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v17

    move-object/from16 v10, v21

    move-object/from16 v11, v16

    move-object/from16 v12, v23

    move-object/from16 v13, v27

    move-object/from16 v14, v26

    move-object/from16 v15, v22

    invoke-direct/range {v2 .. v15}, Le/h/a/c/n0/e;-><init>(Le/h/a/c/l0/a;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/n0/d;Le/h/a/c/i0;Le/h/a/c/k;Le/h/a/c/y0/e;Le/h/a/c/b0;Le/h/a/c/a1/b;Le/h/a/c/u0/b;Le/h/a/c/w;Le/h/a/c/m;Le/h/a/c/f0;)V

    .line 30
    new-instance v14, Le/h/a/c/f;

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, v25

    move-object/from16 v5, v29

    move-object v6, v0

    move-object/from16 v7, v16

    move-object/from16 v8, v27

    move-object/from16 v9, v22

    move-object/from16 v11, v20

    move-object v12, v1

    move-object/from16 v13, v26

    invoke-direct/range {v2 .. v13}, Le/h/a/c/f;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/n0/a;Le/h/a/c/a1/c;Le/h/a/c/a1/b;Le/h/a/c/w;Le/h/a/c/f0;Le/h/a/c/b0;Le/h/a/c/k;Le/h/a/c/v;Le/h/a/c/m;)V

    move-object/from16 v15, v28

    .line 31
    iput-object v14, v15, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 32
    new-instance v10, Le/h/a/c/q0/b0;

    move-object v2, v10

    move-object/from16 v5, v17

    move-object v6, v1

    move-object/from16 v7, v20

    move-object v8, v14

    move-object/from16 v9, v27

    invoke-direct/range {v2 .. v9}, Le/h/a/c/q0/b0;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/y0/e;Le/h/a/c/v;Le/h/a/c/k;Le/h/a/c/f;Le/h/a/c/w;)V

    .line 33
    iput-object v10, v15, Le/h/a/c/x;->h:Le/h/a/c/q0/b0;

    .line 34
    iget-object v0, v15, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 35
    iput-object v10, v0, Le/h/a/c/v;->l:Le/h/a/c/q0/b0;

    .line 36
    invoke-static/range {v25 .. v25}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object v0

    .line 37
    new-instance v9, Le/h/a/c/s;

    move-object v2, v9

    move-object v4, v1

    move-object/from16 v5, v25

    move-object/from16 v6, v21

    invoke-direct/range {v2 .. v8}, Le/h/a/c/s;-><init>(Landroid/content/Context;Le/h/a/c/v;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/k;Le/h/a/c/f;)V

    .line 38
    iget-object v2, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "initFeatureFlags"

    invoke-direct {v3, v0, v4, v9}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 40
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual/range {v25 .. v25}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    .line 42
    new-instance v8, Le/h/a/c/w0/i;

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, v25

    move-object/from16 v5, v18

    move-object/from16 v6, v16

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Le/h/a/c/w0/i;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/l0/a;Le/h/a/c/a1/b;Le/h/a/c/f;)V

    .line 43
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 44
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Le/h/a/c/w0/g$a;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Le/h/a/c/w0/g$a;

    move v4, v2

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 48
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Le/h/a/c/w0/g$a;->valueOf(Ljava/lang/String;)Le/h/a/c/w0/g$a;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_0
    array-length v4, v3

    move v5, v2

    :goto_1
    const-string v6, " Exception:"

    const-string v7, "PushProvider"

    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    .line 50
    iget-object v9, v0, Le/h/a/c/w0/g$a;->b:Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    iget-object v11, v8, Le/h/a/c/w0/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SDK Class Available :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 54
    iget-object v12, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v11}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 55
    iget-object v11, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v12, "SDK class Not available "

    invoke-static {v12, v9, v6}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v6, v11, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v11, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v0, v8, Le/h/a/c/w0/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/w0/g$a;

    .line 60
    iget-object v12, v0, Le/h/a/c/w0/g$a;->a:Ljava/lang/String;

    .line 61
    :try_start_1
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v13, v9, [Ljava/lang/Class;

    .line 62
    const-class v17, Le/h/a/c/w0/b;

    aput-object v17, v13, v2

    const-class v17, Landroid/content/Context;

    aput-object v17, v13, v11

    const-class v17, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    aput-object v17, v13, v5

    .line 63
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v2

    .line 64
    iget-object v13, v8, Le/h/a/c/w0/i;->g:Landroid/content/Context;

    aput-object v13, v9, v11

    iget-object v11, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    aput-object v11, v9, v5

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/h/a/c/w0/a;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    :try_start_2
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found provider:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 66
    iget-object v11, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    .line 67
    :goto_4
    iget-object v9, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v11, "Unable to create provider "

    invoke-static {v11, v12, v6}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v11, v9, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v9, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    const/4 v5, 0x0

    .line 70
    :catch_4
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v9, "Unable to create provider ClassNotFoundException"

    invoke-static {v9, v12}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    iget-object v11, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_5
    const/4 v5, 0x0

    .line 72
    :catch_6
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v9, "Unable to create provider IllegalAccessException"

    invoke-static {v9, v12}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    iget-object v11, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_7
    const/4 v5, 0x0

    .line 74
    :catch_8
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v9, "Unable to create provider InstantiationException"

    invoke-static {v9, v12}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 75
    iget-object v11, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 76
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 77
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 79
    iget-object v2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "No push providers found!. Make sure to install at least one push provider"

    invoke-virtual {v2, v0, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 80
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/h/a/c/w0/a;

    .line 81
    invoke-interface {v3}, Le/h/a/c/w0/a;->minSDKSupportVersionCode()I

    move-result v4

    const v6, 0x9dd0

    const-string v12, "Invalid Provider: "

    if-ge v6, v4, :cond_5

    .line 82
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 83
    iget-object v6, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "Provider: %s version %s does not match the SDK version %s. Make sure all CleverTap dependencies are the same version."

    invoke-virtual {v6, v4, v13}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 84
    :cond_5
    invoke-interface {v3}, Le/h/a/c/w0/a;->getPushType()Le/h/a/c/w0/g$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v11, :cond_7

    if-eq v4, v5, :cond_7

    if-eq v4, v9, :cond_7

    const/4 v6, 0x4

    if-eq v4, v6, :cond_6

    goto :goto_8

    .line 85
    :cond_6
    invoke-interface {v3}, Le/h/a/c/w0/a;->getPlatform()I

    move-result v4

    if-eq v4, v5, :cond_8

    .line 86
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ADM delivery is only available for Amazon platforms."

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v3}, Le/h/a/c/w0/a;->getPushType()Le/h/a/c/w0/g$a;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    iget-object v13, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 90
    :cond_7
    invoke-interface {v3}, Le/h/a/c/w0/a;->getPlatform()I

    move-result v4

    if-eq v4, v11, :cond_8

    .line 91
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " delivery is only available for Android platforms."

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v3}, Le/h/a/c/w0/a;->getPushType()Le/h/a/c/w0/g$a;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    iget-object v13, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move v4, v2

    goto :goto_9

    :cond_8
    :goto_8
    move v4, v11

    :goto_9
    if-nez v4, :cond_9

    .line 94
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v6}, Le/d/c/a/a;->X1(Le/h/a/c/w0/a;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 95
    iget-object v6, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 96
    :cond_9
    invoke-interface {v3}, Le/h/a/c/w0/a;->isSupported()Z

    move-result v4

    if-nez v4, :cond_a

    .line 97
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "Unsupported Provider: "

    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v6}, Le/d/c/a/a;->X1(Le/h/a/c/w0/a;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v6, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 99
    :cond_a
    invoke-interface {v3}, Le/h/a/c/w0/a;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 100
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "Available Provider: "

    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v6}, Le/d/c/a/a;->X1(Le/h/a/c/w0/a;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 101
    iget-object v12, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, v8, Le/h/a/c/w0/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 103
    :cond_b
    iget-object v4, v8, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "Unavailable Provider: "

    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v6}, Le/d/c/a/a;->X1(Le/h/a/c/w0/a;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 104
    iget-object v6, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v4, v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 105
    :cond_c
    :goto_a
    iget-object v0, v8, Le/h/a/c/w0/i;->c:Ljava/util/ArrayList;

    iget-object v2, v8, Le/h/a/c/w0/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v0, v8, Le/h/a/c/w0/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/w0/a;

    .line 107
    iget-object v3, v8, Le/h/a/c/w0/i;->c:Ljava/util/ArrayList;

    invoke-interface {v2}, Le/h/a/c/w0/a;->getPushType()Le/h/a/c/w0/g$a;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 108
    :cond_d
    iput-object v8, v1, Le/h/a/c/v;->m:Le/h/a/c/w0/i;

    .line 109
    iput-object v8, v15, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 110
    new-instance v0, Le/h/a/c/a;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, v25

    move-object v5, v14

    move-object/from16 v6, v27

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v29

    invoke-direct/range {v2 .. v11}, Le/h/a/c/a;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/f;Le/h/a/c/w;Le/h/a/c/i0;Le/h/a/c/w0/i;Le/h/a/c/k;Le/h/a/c/q0/b0;Le/h/a/c/n0/a;)V

    .line 111
    iput-object v0, v15, Le/h/a/c/x;->c:Le/h/a/c/a;

    .line 112
    new-instance v0, Le/h/a/c/t0/e;

    move-object v2, v0

    move-object/from16 v5, v21

    move-object/from16 v6, v16

    move-object/from16 v7, v29

    move-object v8, v14

    move-object/from16 v9, v27

    move-object v10, v1

    move-object/from16 v11, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v20

    move-object/from16 v14, v18

    move-object v1, v15

    move-object/from16 v15, v26

    invoke-direct/range {v2 .. v15}, Le/h/a/c/t0/e;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/a1/b;Le/h/a/c/n0/a;Le/h/a/c/f;Le/h/a/c/w;Le/h/a/c/v;Le/h/a/c/i0;Le/h/a/c/f0;Le/h/a/c/k;Le/h/a/c/l0/c;Le/h/a/c/m;)V

    .line 113
    iput-object v0, v1, Le/h/a/c/x;->i:Le/h/a/c/t0/e;

    move-object/from16 v2, p0

    .line 114
    iput-object v1, v2, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 115
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p2

    .line 116
    iget-object v4, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, ":async_deviceID"

    const-string v6, "CoreState is set"

    .line 117
    invoke-static {v1, v4, v5, v0, v6}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    .line 118
    invoke-static/range {p2 .. p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 119
    new-instance v1, Le/h/a/c/p$e;

    invoke-direct {v1, v2, v3}, Le/h/a/c/p$e;-><init>(Le/h/a/c/p;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 120
    iget-object v4, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 121
    new-instance v5, Le/h/a/c/y0/j;

    const-string v6, "CleverTapAPI#initializeDeviceInfo"

    invoke-direct {v5, v0, v6, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 122
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    sget-boolean v0, Le/h/a/c/j0;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 124
    sget v1, Le/h/a/c/w;->w:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-le v0, v1, :cond_e

    .line 125
    iget-object v0, v2, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 126
    iget-object v0, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    .line 128
    :cond_e
    invoke-static/range {p2 .. p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 129
    new-instance v1, Le/h/a/c/p$a;

    invoke-direct {v1, v2}, Le/h/a/c/p$a;-><init>(Le/h/a/c/p;)V

    .line 130
    iget-object v4, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 131
    new-instance v5, Le/h/a/c/y0/j;

    const-string v6, "setStatesAsync"

    invoke-direct {v5, v0, v6, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 132
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    invoke-static/range {p2 .. p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 134
    new-instance v1, Le/h/a/c/p$b;

    move-object/from16 v4, p1

    invoke-direct {v1, v2, v3, v4}, Le/h/a/c/p$b;-><init>(Le/h/a/c/p;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Landroid/content/Context;)V

    .line 135
    iget-object v3, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 136
    new-instance v4, Le/h/a/c/y0/j;

    const-string v5, "saveConfigtoSharedPrefs"

    invoke-direct {v4, v0, v5, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 137
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/p;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0, p2}, Le/h/a/c/p;->i(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v1, v2}, Ln3/g0/y;->y0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_2

    .line 5
    :try_start_2
    new-instance p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-direct {p1, v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    :try_start_3
    invoke-static {p0, p1, p2}, Le/h/a/c/p;->l(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    return-object v0

    .line 7
    :cond_2
    :try_start_4
    invoke-static {p0}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    iget-object p2, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 9
    iget-object p2, p2, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_3

    move-object v0, p0

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    return-object v0

    .line 12
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;
    .locals 4

    .line 1
    sget-object v0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1, v1}, Le/h/a/c/p;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v2, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    .line 5
    iget-object v3, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 6
    iget-object v3, v3, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v3, :cond_3

    .line 8
    :cond_2
    invoke-virtual {v0}, Le/h/a/c/p;->f()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_1

    return-object v0

    :cond_5
    return-object v1
.end method

.method public static h(Landroid/content/Context;)Le/h/a/c/p;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/h/a/c/p;->i(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;
    .locals 8

    .line 1
    sget-object v0, Le/h/a/c/p;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v0, p1}, Le/h/a/c/p;->l(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v3, Le/h/a/c/h0;->b:Ljava/lang/String;

    .line 6
    sget-object v4, Le/h/a/c/h0;->c:Ljava/lang/String;

    .line 7
    sget-object v5, Le/h/a/c/h0;->d:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v7, v0

    .line 9
    :goto_1
    sput-object v7, Le/h/a/c/p;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    if-eqz v7, :cond_3

    .line 10
    invoke-static {p0, v7, p1}, Le/h/a/c/p;->l(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static j(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "wzrk_acct_id"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    .line 2
    :goto_0
    sget-object v2, Le/h/a/c/p;->e:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 3
    invoke-static {p0, v1, v0}, Le/h/a/c/p;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object p0, p0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 6
    invoke-virtual {p0, p1}, Le/h/a/c/f;->m(Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    sget-object v2, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    .line 9
    iget-object v3, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 10
    iget-object v3, v3, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v3, :cond_4

    .line 12
    :cond_3
    invoke-virtual {v0}, Le/h/a/c/p;->f()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_2

    .line 14
    iget-object p0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 15
    iget-object p0, p0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 16
    invoke-virtual {p0, p1}, Le/h/a/c/f;->m(Landroid/os/Bundle;)V

    :cond_6
    return-void
.end method

.method public static k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Le/h/a/c/p;->l(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Le/h/a/c/p;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    .line 3
    :cond_1
    sget-object v1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    .line 4
    iget-object v2, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/h/a/c/p;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Le/h/a/c/p;

    invoke-direct {v1, p0, p1, p2}, Le/h/a/c/p;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V

    .line 7
    sget-object p0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    .line 8
    iget-object p1, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, v1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 11
    iget-object p0, p0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    invoke-static {p0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p0

    invoke-virtual {p0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object p0

    .line 13
    new-instance p1, Le/h/a/c/p$d;

    invoke-direct {p1, v1}, Le/h/a/c/p$d;-><init>(Le/h/a/c/p;)V

    .line 14
    iget-object p2, p0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v0, Le/h/a/c/y0/j;

    const-string v2, "recordDeviceIDErrors"

    invoke-direct {v0, p0, v2, p1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 16
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p0, v1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 18
    iget-object p0, p0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 19
    invoke-virtual {p0}, Le/h/a/c/b0;->o()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 20
    iget-object p0, v1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 21
    iget-object p0, p0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 22
    iget-boolean p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    if-eqz p0, :cond_3

    .line 23
    invoke-static {p2}, Le/h/a/c/j0;->n(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 24
    iget-object p0, v1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 25
    iget-object p0, p0, Le/h/a/c/x;->i:Le/h/a/c/t0/e;

    .line 26
    invoke-virtual {p0, v0, v0, p2}, Le/h/a/c/t0/e;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CleverTapAPI instance = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1
.end method

.method public static m(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const-string v0, "wzrk_from"

    const-string v1, "wzrk_acct_id"

    .line 1
    sget-object v2, Le/h/a/c/p;->e:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, p1}, Le/h/a/c/p;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/p;

    .line 3
    :cond_0
    sget-object p1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ln3/g0/y;->X(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v2, v3

    :catchall_1
    :cond_2
    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    .line 8
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 10
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "CTPushNotificationReceiver"

    .line 11
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_3

    move p0, p1

    goto :goto_1

    :cond_3
    move p0, v5

    :goto_1
    if-eqz p0, :cond_4

    .line 12
    :try_start_3
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 13
    :cond_4
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v0

    goto :goto_2

    :catchall_2
    :cond_5
    move p0, v5

    :catchall_3
    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    if-nez v2, :cond_7

    return-void

    .line 15
    :cond_7
    :try_start_4
    sget-object p0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_4
    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    sget-object v1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 18
    iget-object v0, v0, Le/h/a/c/x;->c:Le/h/a/c/a;

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v4, :cond_9

    .line 20
    :try_start_5
    iget-object v1, v0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    iget-boolean v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v1, :cond_a

    .line 22
    :cond_9
    iget-object v1, v0, Le/h/a/c/a;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    move v1, p1

    goto :goto_4

    :cond_b
    move v1, v5

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v3, :cond_c

    .line 25
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "wzrk_pn"

    .line 26
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    iget-object v1, v0, Le/h/a/c/a;->a:Le/h/a/c/f;

    invoke-virtual {v1, v3}, Le/h/a/c/f;->m(Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_c
    if-eqz v2, :cond_8

    .line 28
    :try_start_6
    iget-object v0, v0, Le/h/a/c/a;->a:Le/h/a/c/f;

    invoke-virtual {v0, v2, v5}, Le/h/a/c/f;->i(Landroid/net/Uri;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_5
    move-exception v0

    .line 29
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public static n(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1}, Le/h/a/c/p;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/p;

    :cond_0
    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Le/h/a/c/w;->t:Z

    .line 4
    sget-object v0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Le/h/a/c/w;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    invoke-static {p0}, Le/h/a/c/w;->e(Landroid/app/Activity;)V

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    :cond_3
    sget v0, Le/h/a/c/w;->v:I

    add-int/2addr v0, p1

    sput v0, Le/h/a/c/w;->v:I

    .line 10
    :cond_4
    sget p1, Le/h/a/c/w;->w:I

    if-gtz p1, :cond_5

    .line 11
    sget-boolean p1, Le/h/a/c/j0;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 12
    sput p1, Le/h/a/c/w;->w:I

    .line 13
    :cond_5
    sget-object p1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    sget-object v1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-eqz v0, :cond_6

    .line 15
    :try_start_0
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 16
    iget-object v0, v0, Le/h/a/c/x;->c:Le/h/a/c/a;

    .line 17
    invoke-virtual {v0, p0}, Le/h/a/c/a;->c(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;Le/h/a/c/w0/g$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Le/h/a/c/p;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Le/h/a/c/p;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p0}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    .line 7
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 8
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 9
    invoke-virtual {v0, p1, p2}, Le/h/a/c/w0/i;->f(Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/clevertap/android/sdk/inbox/CTInboxActivity;",
            "Lcom/clevertap/android/sdk/inbox/CTInboxMessage;",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object p1, p1, Le/h/a/c/x;->d:Le/h/a/c/f;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0, p2, p3}, Le/h/a/c/f;->k(ZLcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    :cond_0
    return-void
.end method

.method public b(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object p1, p1, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-static {p1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p1

    invoke-virtual {p1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object p1

    .line 4
    new-instance v0, Le/h/a/c/p$c;

    invoke-direct {v0, p0, p2, p3}, Le/h/a/c/p$c;-><init>(Le/h/a/c/p;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V

    .line 5
    iget-object p2, p1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p3, Le/h/a/c/y0/j;

    const-string v1, "handleMessageDidShow"

    invoke-direct {p3, p1, v1, v0}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 3
    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v1

    .line 4
    new-instance v2, Le/h/a/c/e;

    invoke-direct {v2, v0, p1, p2}, Le/h/a/c/e;-><init>(Le/h/a/c/f;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    iget-object p1, v1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p2, Le/h/a/c/y0/j;

    const-string v0, "addMultiValuesForKey"

    invoke-direct {p2, v1, v0, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Le/h/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Le/h/a/c/p;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_d

    const-string v1, ""

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    iget-object v2, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Le/h/a/c/a1/a;

    invoke-direct {v2}, Le/h/a/c/a1/a;-><init>()V

    .line 8
    sget-object v3, Le/h/a/c/a1/c;->e:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x201

    const/4 v8, 0x1

    if-ge v6, v4, :cond_2

    aget-object v9, v3, v6

    .line 9
    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v3, 0x10

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 10
    invoke-static {v7, v3, v4}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v3

    .line 11
    iget v4, v3, Le/h/a/c/a1/a;->a:I

    .line 12
    iput v4, v2, Le/h/a/c/a1/a;->a:I

    .line 13
    iget-object v3, v3, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 14
    iput-object v3, v2, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    iget v3, v2, Le/h/a/c/a1/a;->a:I

    if-lez v3, :cond_3

    .line 16
    iget-object p1, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {p1, v2}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    goto/16 :goto_4

    .line 17
    :cond_3
    iget-object v2, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v3, Le/h/a/c/a1/a;

    invoke-direct {v3}, Le/h/a/c/a1/a;-><init>()V

    .line 20
    iget-object v2, v2, Le/h/a/c/a1/c;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v2, 0x11

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 23
    invoke-static {v7, v2, v4}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v2

    .line 24
    iget v4, v2, Le/h/a/c/a1/a;->a:I

    .line 25
    iput v4, v3, Le/h/a/c/a1/a;->a:I

    .line 26
    iget-object v2, v2, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 27
    iput-object v2, v3, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 28
    :cond_5
    iget v2, v3, Le/h/a/c/a1/a;->a:I

    if-lez v2, :cond_6

    .line 29
    iget-object p1, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {p1, v3}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    goto/16 :goto_4

    :cond_6
    if-nez p2, :cond_7

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 31
    :cond_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    :try_start_0
    iget-object v3, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v3, p1}, Le/h/a/c/a1/c;->a(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 33
    iget v3, p1, Le/h/a/c/a1/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "wzrk_error"

    if-eqz v3, :cond_8

    .line 34
    :try_start_1
    invoke-static {p1}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_8
    iget-object p1, p1, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 39
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 40
    iget-object v10, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v10, v7}, Le/h/a/c/a1/c;->c(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v7

    .line 41
    iget-object v10, v7, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 42
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 43
    iget v11, v7, Le/h/a/c/a1/a;->a:I

    if-eqz v11, :cond_9

    .line 44
    invoke-static {v7}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_9
    :try_start_2
    iget-object v7, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    sget-object v11, Le/h/a/c/a1/c$b;->b:Le/h/a/c/a1/c$b;

    invoke-virtual {v7, v9, v11}, Le/h/a/c/a1/c;->d(Ljava/lang/Object;Le/h/a/c/a1/c$b;)Le/h/a/c/a1/a;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    iget-object v9, v7, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 47
    iget v11, v7, Le/h/a/c/a1/a;->a:I

    if-eqz v11, :cond_a

    .line 48
    invoke-static {v7}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_a
    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :catch_0
    const/16 v7, 0x200

    const/4 v11, 0x7

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    aput-object p1, v12, v5

    aput-object v10, v12, v8

    const/4 v10, 0x2

    if-eqz v9, :cond_b

    .line 50
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_b
    move-object v9, v1

    :goto_3
    aput-object v9, v12, v10

    .line 51
    invoke-static {v7, v11, v12}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v7

    .line 52
    iget-object v9, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v9}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v9

    iget-object v10, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 53
    iget-object v10, v10, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 54
    iget-object v11, v7, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v9, v10, v11}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v9, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v9, v7}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    goto :goto_2

    :cond_c
    const-string p2, "evtName"

    .line 57
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "evtData"

    .line 58
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p1, v0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object p2, v0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v2, v0}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_d
    :goto_4
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 3
    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v1

    .line 4
    new-instance v2, Le/h/a/c/g;

    invoke-direct {v2, v0, p2, p1}, Le/h/a/c/g;-><init>(Le/h/a/c/f;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p2, Le/h/a/c/y0/j;

    const-string v0, "removeMultiValuesForKey"

    invoke-direct {p2, v1, v0, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r(Le/h/a/c/w0/e;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 3
    iput-object p1, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    const-string p1, "notificationId"

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 6
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Le/h/a/c/w0/i;->b(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 9
    iget-object p1, p1, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    const/16 v0, -0x3e8

    .line 10
    invoke-virtual {p1, p2, p3, v0}, Le/h/a/c/w0/i;->b(Landroid/content/Context;Landroid/os/Bundle;I)V

    :goto_0
    return-void
.end method
