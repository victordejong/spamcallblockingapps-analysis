.class public final synthetic Le/m/d/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/d;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Le/m/d/n/d;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    .line 1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v2, Le/m/d/g;

    invoke-interface {v0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/g;

    .line 3
    const-class v3, Le/m/d/n/j/c;

    .line 4
    invoke-interface {v0, v3}, Le/m/d/m/p;->e(Ljava/lang/Class;)Le/m/d/v/a;

    move-result-object v3

    .line 5
    const-class v4, Le/m/d/k/a/a;

    .line 6
    invoke-interface {v0, v4}, Le/m/d/m/p;->e(Ljava/lang/Class;)Le/m/d/v/a;

    move-result-object v4

    .line 7
    const-class v5, Le/m/d/w/i;

    invoke-interface {v0, v5}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/w/i;

    .line 8
    sget-object v12, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    invoke-virtual {v2}, Le/m/d/g;->a()V

    .line 9
    iget-object v14, v2, Le/m/d/g;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x4

    .line 11
    invoke-virtual {v12, v13}, Le/m/d/n/j/f;->a(I)Z

    .line 12
    new-instance v15, Le/m/d/n/j/n/f;

    invoke-direct {v15, v14}, Le/m/d/n/j/n/f;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v11, Le/m/d/n/j/j/j0;

    invoke-direct {v11, v2}, Le/m/d/n/j/j/j0;-><init>(Le/m/d/g;)V

    .line 14
    new-instance v10, Le/m/d/n/j/j/n0;

    invoke-direct {v10, v14, v5, v0, v11}, Le/m/d/n/j/j/n0;-><init>(Landroid/content/Context;Ljava/lang/String;Le/m/d/w/i;Le/m/d/n/j/j/j0;)V

    .line 15
    new-instance v6, Le/m/d/n/j/d;

    invoke-direct {v6, v3}, Le/m/d/n/j/d;-><init>(Le/m/d/v/a;)V

    .line 16
    new-instance v0, Le/m/d/n/e;

    invoke-direct {v0, v4}, Le/m/d/n/e;-><init>(Le/m/d/v/a;)V

    const-string v3, "Crashlytics Exception Handler"

    .line 17
    invoke-static {v3}, Ln3/g0/y;->p(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v16

    .line 18
    new-instance v9, Le/m/d/n/j/j/d0;

    .line 19
    new-instance v8, Le/m/d/n/c;

    invoke-direct {v8, v0}, Le/m/d/n/c;-><init>(Le/m/d/n/e;)V

    .line 20
    new-instance v7, Le/m/d/n/b;

    invoke-direct {v7, v0}, Le/m/d/n/b;-><init>(Le/m/d/n/e;)V

    move-object v3, v9

    move-object v4, v2

    move-object v5, v10

    move-object v0, v7

    move-object v7, v11

    move-object/from16 v26, v9

    move-object v9, v0

    move-object v0, v10

    move-object v10, v15

    move-object/from16 v27, v11

    move-object/from16 v11, v16

    .line 21
    invoke-direct/range {v3 .. v11}, Le/m/d/n/j/j/d0;-><init>(Le/m/d/g;Le/m/d/n/j/j/n0;Le/m/d/n/j/c;Le/m/d/n/j/j/j0;Le/m/d/n/j/i/b;Le/m/d/n/j/h/a;Le/m/d/n/j/n/f;Ljava/util/concurrent/ExecutorService;)V

    .line 22
    invoke-virtual {v2}, Le/m/d/g;->a()V

    .line 23
    iget-object v2, v2, Le/m/d/g;->c:Le/m/d/i;

    .line 24
    iget-object v2, v2, Le/m/d/i;->b:Ljava/lang/String;

    .line 25
    invoke-static {v14}, Le/m/d/n/j/j/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x3

    .line 26
    invoke-virtual {v12, v11}, Le/m/d/n/j/f;->a(I)Z

    .line 27
    new-instance v10, Le/m/d/n/j/e;

    invoke-direct {v10, v14}, Le/m/d/n/j/e;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 28
    :try_start_0
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v0}, Le/m/d/n/j/j/n0;->d()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 32
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 33
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "0.0"

    :cond_0
    move-object/from16 v17, v3

    .line 34
    new-instance v4, Le/m/d/n/j/j/h;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v3, v4

    move-object v11, v4

    const/16 v41, 0x0

    move-object v4, v2

    move-object/from16 v8, v16

    move-object/from16 v42, v9

    move-object/from16 v9, v17

    :try_start_1
    invoke-direct/range {v3 .. v10}, Le/m/d/n/j/j/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/d/n/j/e;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v3, 0x2

    .line 35
    invoke-virtual {v12, v3}, Le/m/d/n/j/f;->a(I)Z

    const-string v4, "com.google.firebase.crashlytics.startup"

    .line 36
    invoke-static {v4}, Ln3/g0/y;->p(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 37
    new-instance v5, Le/m/d/n/j/m/b;

    invoke-direct {v5}, Le/m/d/n/j/m/b;-><init>()V

    iget-object v6, v11, Le/m/d/n/j/j/h;->e:Ljava/lang/String;

    iget-object v7, v11, Le/m/d/n/j/j/h;->f:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Le/m/d/n/j/j/n0;->d()Ljava/lang/String;

    move-result-object v8

    .line 39
    new-instance v9, Le/m/d/n/j/j/r0;

    invoke-direct {v9}, Le/m/d/n/j/j/r0;-><init>()V

    .line 40
    new-instance v10, Le/m/d/n/j/p/g;

    invoke-direct {v10, v9}, Le/m/d/n/j/p/g;-><init>(Le/m/d/n/j/j/r0;)V

    .line 41
    new-instance v13, Le/m/d/n/j/p/a;

    invoke-direct {v13, v15}, Le/m/d/n/j/p/a;-><init>(Le/m/d/n/j/n/f;)V

    .line 42
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v41

    const-string v3, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v15, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v3, Le/m/d/n/j/p/k/a;

    invoke-direct {v3, v1, v5}, Le/m/d/n/j/p/k/a;-><init>(Ljava/lang/String;Le/m/d/n/j/m/b;)V

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    .line 44
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Le/m/d/n/j/j/n0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v41

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Le/m/d/n/j/j/n0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1

    aput-object v1, v5, v17

    const-string v1, "%s/%s"

    .line 47
    invoke-static {v15, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 48
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/d/n/j/j/n0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 49
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/d/n/j/j/n0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    .line 50
    invoke-static {v14}, Le/m/d/n/j/j/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v41

    aput-object v2, v5, v17

    const/4 v15, 0x2

    aput-object v7, v5, v15

    const/4 v15, 0x3

    aput-object v6, v5, v15

    .line 51
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v13

    move/from16 v13, v41

    :goto_0
    if-ge v13, v1, :cond_2

    .line 52
    aget-object v1, v5, v13

    if-eqz v1, :cond_1

    move-object/from16 v17, v5

    const-string v5, "-"

    move-object/from16 v43, v12

    const-string v12, ""

    .line 53
    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v17, v5

    move-object/from16 v43, v12

    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    move-object/from16 v12, v43

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    move-object/from16 v43, v12

    .line 54
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {v1}, Le/m/d/n/j/j/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_3

    :cond_4
    move-object/from16 v22, v42

    :goto_3
    if-eqz v8, :cond_5

    .line 60
    sget-object v1, Le/m/d/n/j/j/k0;->e:Le/m/d/n/j/j/k0;

    goto :goto_4

    :cond_5
    sget-object v1, Le/m/d/n/j/j/k0;->b:Le/m/d/n/j/j/k0;

    .line 61
    :goto_4
    iget v1, v1, Le/m/d/n/j/j/k0;->a:I

    .line 62
    new-instance v15, Le/m/d/n/j/p/j/f;

    move-object/from16 v16, v15

    move-object/from16 v17, v2

    move-object/from16 v21, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v6

    move/from16 v25, v1

    invoke-direct/range {v16 .. v25}, Le/m/d/n/j/p/j/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/d/n/j/j/o0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    new-instance v0, Le/m/d/n/j/p/e;

    move-object/from16 v1, v29

    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v27

    invoke-direct/range {v13 .. v20}, Le/m/d/n/j/p/e;-><init>(Landroid/content/Context;Le/m/d/n/j/p/j/f;Le/m/d/n/j/j/r0;Le/m/d/n/j/p/g;Le/m/d/n/j/p/a;Le/m/d/n/j/p/k/a;Le/m/d/n/j/j/j0;)V

    .line 64
    sget-object v1, Le/m/d/n/j/p/c;->a:Le/m/d/n/j/p/c;

    .line 65
    iget-object v2, v0, Le/m/d/n/j/p/e;->a:Landroid/content/Context;

    invoke-static {v2}, Le/m/d/n/j/j/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "existing_instance_identifier"

    const-string v5, ""

    .line 66
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    iget-object v3, v0, Le/m/d/n/j/p/e;->b:Le/m/d/n/j/p/j/f;

    iget-object v3, v3, Le/m/d/n/j/p/j/f;->f:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 69
    invoke-virtual {v0, v1}, Le/m/d/n/j/p/e;->a(Le/m/d/n/j/p/c;)Le/m/d/n/j/p/j/e;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 70
    iget-object v2, v0, Le/m/d/n/j/p/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    iget-object v2, v0, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 72
    iget-object v1, v1, Le/m/d/n/j/p/j/e;->a:Le/m/d/n/j/p/j/a;

    .line 73
    invoke-virtual {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 74
    invoke-static/range {v42 .. v42}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    goto :goto_5

    .line 75
    :cond_6
    sget-object v1, Le/m/d/n/j/p/c;->c:Le/m/d/n/j/p/c;

    .line 76
    invoke-virtual {v0, v1}, Le/m/d/n/j/p/e;->a(Le/m/d/n/j/p/c;)Le/m/d/n/j/p/j/e;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 77
    iget-object v2, v0, Le/m/d/n/j/p/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    iget-object v2, v0, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 79
    iget-object v1, v1, Le/m/d/n/j/p/j/e;->a:Le/m/d/n/j/p/j/a;

    .line 80
    invoke-virtual {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 81
    :cond_7
    iget-object v1, v0, Le/m/d/n/j/p/e;->g:Le/m/d/n/j/j/j0;

    .line 82
    iget-object v2, v1, Le/m/d/n/j/j/j0;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 83
    iget-object v2, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 84
    iget-object v3, v1, Le/m/d/n/j/j/j0;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_2
    iget-object v1, v1, Le/m/d/n/j/j/j0;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 86
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 87
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    sget-object v3, Le/m/d/n/j/j/t0;->a:Ljava/util/concurrent/ExecutorService;

    .line 89
    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 90
    new-instance v5, Le/m/d/n/j/j/e;

    invoke-direct {v5, v3}, Le/m/d/n/j/j/e;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 91
    invoke-virtual {v2, v4, v5}, Le/m/a/f/q/b0;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 92
    invoke-virtual {v1, v4, v5}, Le/m/a/f/q/b0;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 93
    iget-object v1, v3, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 94
    new-instance v2, Le/m/d/n/j/p/d;

    invoke-direct {v2, v0}, Le/m/d/n/j/p/d;-><init>(Le/m/d/n/j/p/e;)V

    .line 95
    invoke-virtual {v1, v4, v2}, Le/m/a/f/q/b0;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 96
    :goto_5
    new-instance v2, Le/m/d/n/g;

    invoke-direct {v2}, Le/m/d/n/g;-><init>()V

    .line 97
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-object/from16 v1, v26

    .line 98
    iget-object v2, v1, Le/m/d/n/j/j/d0;->a:Landroid/content/Context;

    if-eqz v2, :cond_9

    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v5, "com.crashlytics.RequireBuildId"

    const-string v6, "bool"

    .line 100
    invoke-static {v2, v5, v6}, Le/m/d/n/j/j/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    .line 101
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :goto_6
    move/from16 v17, v2

    goto :goto_7

    :cond_8
    const-string v3, "string"

    .line 102
    invoke-static {v2, v5, v3}, Le/m/d/n/j/j/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :cond_9
    const/16 v17, 0x1

    .line 104
    :goto_7
    iget-object v2, v11, Le/m/d/n/j/j/h;->b:Ljava/lang/String;

    if-nez v17, :cond_a

    move-object/from16 v5, v43

    const/4 v3, 0x2

    .line 105
    invoke-virtual {v5, v3}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_8

    :cond_a
    move-object/from16 v5, v43

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_b
    move/from16 v2, v41

    :goto_9
    if-eqz v2, :cond_10

    .line 107
    new-instance v2, Le/m/d/n/j/j/k;

    iget-object v3, v1, Le/m/d/n/j/j/d0;->g:Le/m/d/n/j/j/n0;

    invoke-direct {v2, v3}, Le/m/d/n/j/j/k;-><init>(Le/m/d/n/j/j/n0;)V

    .line 108
    sget-object v2, Le/m/d/n/j/j/k;->b:Ljava/lang/String;

    .line 109
    :try_start_3
    new-instance v3, Le/m/d/n/j/j/f0;

    const-string v6, "crash_marker"

    iget-object v7, v1, Le/m/d/n/j/j/d0;->h:Le/m/d/n/j/n/f;

    invoke-direct {v3, v6, v7}, Le/m/d/n/j/j/f0;-><init>(Ljava/lang/String;Le/m/d/n/j/n/f;)V

    iput-object v3, v1, Le/m/d/n/j/j/d0;->e:Le/m/d/n/j/j/f0;

    .line 110
    new-instance v3, Le/m/d/n/j/j/f0;

    const-string v6, "initialization_marker"

    invoke-direct {v3, v6, v7}, Le/m/d/n/j/j/f0;-><init>(Ljava/lang/String;Le/m/d/n/j/n/f;)V

    iput-object v3, v1, Le/m/d/n/j/j/d0;->d:Le/m/d/n/j/j/f0;

    .line 111
    new-instance v3, Le/m/d/n/j/k/k;

    iget-object v6, v1, Le/m/d/n/j/j/d0;->l:Le/m/d/n/j/j/m;

    invoke-direct {v3, v2, v7, v6}, Le/m/d/n/j/k/k;-><init>(Ljava/lang/String;Le/m/d/n/j/n/f;Le/m/d/n/j/j/m;)V

    .line 112
    new-instance v6, Le/m/d/n/j/k/e;

    iget-object v7, v1, Le/m/d/n/j/j/d0;->h:Le/m/d/n/j/n/f;

    invoke-direct {v6, v7}, Le/m/d/n/j/k/e;-><init>(Le/m/d/n/j/n/f;)V

    .line 113
    new-instance v7, Le/m/d/n/j/q/a;

    const/16 v8, 0x400

    const/4 v9, 0x1

    new-array v10, v9, [Le/m/d/n/j/q/d;

    new-instance v12, Le/m/d/n/j/q/c;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Le/m/d/n/j/q/c;-><init>(I)V

    aput-object v12, v10, v41

    invoke-direct {v7, v8, v10}, Le/m/d/n/j/q/a;-><init>(I[Le/m/d/n/j/q/d;)V

    .line 114
    iget-object v8, v1, Le/m/d/n/j/j/d0;->a:Landroid/content/Context;

    iget-object v10, v1, Le/m/d/n/j/j/d0;->g:Le/m/d/n/j/j/n0;

    iget-object v12, v1, Le/m/d/n/j/j/d0;->h:Le/m/d/n/j/n/f;

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v0

    .line 115
    invoke-static/range {v18 .. v25}, Le/m/d/n/j/j/q0;->b(Landroid/content/Context;Le/m/d/n/j/j/n0;Le/m/d/n/j/n/f;Le/m/d/n/j/j/h;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;Le/m/d/n/j/q/d;Le/m/d/n/j/p/f;)Le/m/d/n/j/j/q0;

    move-result-object v38

    .line 116
    new-instance v7, Le/m/d/n/j/j/w;

    iget-object v8, v1, Le/m/d/n/j/j/d0;->a:Landroid/content/Context;

    iget-object v10, v1, Le/m/d/n/j/j/d0;->l:Le/m/d/n/j/j/m;

    iget-object v12, v1, Le/m/d/n/j/j/d0;->g:Le/m/d/n/j/j/n0;

    iget-object v13, v1, Le/m/d/n/j/j/d0;->b:Le/m/d/n/j/j/j0;

    iget-object v14, v1, Le/m/d/n/j/j/d0;->h:Le/m/d/n/j/n/f;

    iget-object v15, v1, Le/m/d/n/j/j/d0;->e:Le/m/d/n/j/j/f0;

    iget-object v9, v1, Le/m/d/n/j/j/d0;->m:Le/m/d/n/j/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v16, v4

    :try_start_4
    iget-object v4, v1, Le/m/d/n/j/j/d0;->j:Le/m/d/n/j/h/a;

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    move-object/from16 v35, v11

    move-object/from16 v36, v3

    move-object/from16 v37, v6

    move-object/from16 v39, v9

    move-object/from16 v40, v4

    invoke-direct/range {v28 .. v40}, Le/m/d/n/j/j/w;-><init>(Landroid/content/Context;Le/m/d/n/j/j/m;Le/m/d/n/j/j/n0;Le/m/d/n/j/j/j0;Le/m/d/n/j/n/f;Le/m/d/n/j/j/f0;Le/m/d/n/j/j/h;Le/m/d/n/j/k/k;Le/m/d/n/j/k/e;Le/m/d/n/j/j/q0;Le/m/d/n/j/c;Le/m/d/n/j/h/a;)V

    iput-object v7, v1, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 117
    iget-object v3, v1, Le/m/d/n/j/j/d0;->d:Le/m/d/n/j/j/f0;

    .line 118
    invoke-virtual {v3}, Le/m/d/n/j/j/f0;->b()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 119
    iget-object v4, v1, Le/m/d/n/j/j/d0;->l:Le/m/d/n/j/j/m;

    new-instance v6, Le/m/d/n/j/j/e0;

    invoke-direct {v6, v1}, Le/m/d/n/j/j/e0;-><init>(Le/m/d/n/j/j/d0;)V

    .line 120
    invoke-virtual {v4, v6}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 121
    :try_start_5
    invoke-static {v4}, Le/m/d/n/j/j/t0;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 122
    :try_start_6
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 123
    :catch_0
    iget-object v4, v1, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 124
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    .line 125
    iget-object v7, v4, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    new-instance v8, Le/m/d/n/j/j/z;

    invoke-direct {v8, v4, v2}, Le/m/d/n/j/j/z;-><init>(Le/m/d/n/j/j/w;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 126
    new-instance v2, Le/m/d/n/j/j/q;

    invoke-direct {v2, v4}, Le/m/d/n/j/j/q;-><init>(Le/m/d/n/j/j/w;)V

    .line 127
    new-instance v7, Le/m/d/n/j/j/i0;

    iget-object v8, v4, Le/m/d/n/j/j/w;->j:Le/m/d/n/j/c;

    invoke-direct {v7, v2, v0, v6, v8}, Le/m/d/n/j/j/i0;-><init>(Le/m/d/n/j/j/i0$a;Le/m/d/n/j/p/f;Ljava/lang/Thread$UncaughtExceptionHandler;Le/m/d/n/j/c;)V

    iput-object v7, v4, Le/m/d/n/j/j/w;->m:Le/m/d/n/j/j/i0;

    .line 128
    invoke-static {v7}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v3, :cond_f

    .line 129
    iget-object v2, v1, Le/m/d/n/j/j/d0;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 130
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    move/from16 v4, v41

    :goto_a
    if-eqz v4, :cond_e

    const-string v3, "connectivity"

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 132
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 133
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_b

    :cond_d
    move/from16 v4, v41

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v4, 0x1

    :goto_c
    if-eqz v4, :cond_f

    const/4 v2, 0x3

    .line 134
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 135
    new-instance v3, Le/m/d/n/j/j/c0;

    invoke-direct {v3, v1, v0}, Le/m/d/n/j/j/c0;-><init>(Le/m/d/n/j/j/d0;Le/m/d/n/j/p/f;)V

    .line 136
    iget-object v4, v1, Le/m/d/n/j/j/d0;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 137
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const-wide/16 v6, 0x4

    .line 138
    :try_start_7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    :catch_1
    const/4 v2, 0x6

    .line 139
    :try_start_8
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_d

    :catch_2
    const/4 v2, 0x6

    .line 140
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_d

    :catch_3
    const/4 v2, 0x6

    .line 141
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_d

    :cond_f
    const/4 v2, 0x3

    .line 142
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z

    const/4 v4, 0x1

    goto :goto_e

    :catch_4
    move-object/from16 v16, v4

    :catch_5
    const/4 v2, 0x6

    .line 143
    :catch_6
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z

    move-object/from16 v4, v42

    .line 144
    iput-object v4, v1, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    :goto_d
    move/from16 v4, v41

    .line 145
    :goto_e
    new-instance v2, Le/m/d/n/h;

    invoke-direct {v2, v4, v1, v0}, Le/m/d/n/h;-><init>(ZLe/m/d/n/j/j/d0;Le/m/d/n/j/p/e;)V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 146
    new-instance v9, Le/m/d/n/i;

    invoke-direct {v9, v1}, Le/m/d/n/i;-><init>(Le/m/d/n/j/j/d0;)V

    goto :goto_10

    .line 147
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 148
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :catch_7
    move-object v5, v12

    move-object/from16 v4, v42

    const/4 v2, 0x6

    goto :goto_f

    :catch_8
    move v2, v8

    move-object v4, v9

    move-object v5, v12

    .line 149
    :goto_f
    invoke-virtual {v5, v2}, Le/m/d/n/j/f;->a(I)Z

    move-object v9, v4

    :goto_10
    return-object v9
.end method
