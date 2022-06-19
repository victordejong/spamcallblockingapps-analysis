.class public final Lc2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc2;->b:I

    iput-object p2, p0, Lc2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc2;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v2, v1, Lc2;->b:I

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x4

    const/4 v6, 0x0

    if-eq v2, v4, :cond_7

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 1
    invoke-static {}, Le/a/c/p/a;->s0()Le/m/d/n/i;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v7, "language"

    .line 2
    iget-object v8, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/TrueApp;

    invoke-virtual {v8}, Lcom/truecaller/TrueApp;->P()Ljava/lang/String;

    move-result-object v8

    .line 3
    iget-object v9, v2, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    invoke-virtual {v9, v7, v8}, Le/m/d/n/j/j/d0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "buildName"

    .line 4
    iget-object v8, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v8, Le/a/a4/i0;

    .line 5
    iget-object v8, v8, Le/a/a4/i0;->l:Lo3/a;

    .line 6
    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/c3/a;

    invoke-interface {v8}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v9, v2, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    invoke-virtual {v9, v7, v8}, Le/m/d/n/j/j/d0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v7, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v7, Le/a/a4/i0;

    .line 9
    iget-object v7, v7, Le/a/a4/i0;->n:Lo3/a;

    .line 10
    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/q2/d1/a;

    invoke-interface {v7}, Le/a/q2/d1/a;->a()Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v8, v2, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    .line 12
    iget-object v8, v8, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 13
    iget-object v8, v8, Le/m/d/n/j/j/w;->d:Le/m/d/n/j/k/k;

    .line 14
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x400

    .line 15
    invoke-static {v7, v9}, Le/m/d/n/j/k/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 16
    iget-object v9, v8, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    monitor-enter v9

    .line 17
    :try_start_0
    iget-object v10, v8, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v7, :cond_1

    if-nez v10, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v6

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :goto_0
    if-eqz v10, :cond_2

    .line 19
    monitor-exit v9

    goto :goto_1

    .line 20
    :cond_2
    iget-object v10, v8, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v10, v7, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 21
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v3, v8, Le/m/d/n/j/k/k;->b:Le/m/d/n/j/j/m;

    new-instance v7, Le/m/d/n/j/k/a;

    invoke-direct {v7, v8}, Le/m/d/n/j/k/a;-><init>(Le/m/d/n/j/k/k;)V

    invoke-virtual {v3, v7}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 23
    :goto_1
    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 24
    iget-object v3, v3, Le/a/a4/i0;->L:Lo3/a;

    .line 25
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d4/c;

    .line 26
    sget-object v7, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v3, v7}, Le/a/d4/c;->f(Le/a/d4/e;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    :goto_2
    const-string v7, "googlePlayServicesVersion"

    .line 27
    iget-object v8, v2, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v7, v3}, Le/m/d/n/j/j/d0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 29
    iget-object v3, v3, Le/a/a4/i0;->m:Lo3/a;

    .line 30
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/g;

    .line 31
    invoke-interface {v3}, Le/a/p5/g;->w()Ljava/util/List;

    move-result-object v3

    .line 32
    invoke-static {v3, v4}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v6, 0x1

    if-ltz v6, :cond_4

    check-cast v4, Ljava/lang/String;

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sig "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    iget-object v8, v2, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    invoke-virtual {v8, v6, v4}, Le/m/d/n/j/j/d0;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_3

    .line 36
    :cond_4
    invoke-static {}, Ls1/u/i;->N0()V

    throw v5

    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    return-object v0

    .line 38
    :cond_6
    throw v5

    .line 39
    :cond_7
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    invoke-static {v2}, Le/a/j4/b/a/h;->t(Landroid/content/Context;)Z

    move-result v2

    const-string v4, "App init, version: "

    const-string v5, "fileProviderAuthority"

    const-string v7, "context"

    const-string v8, "ShareUtil.getFileProviderAuthority(app)"

    if-eqz v2, :cond_8

    .line 40
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    invoke-static {v2}, Le/a/b0/q/g0;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v10, Le/a/n3/a/b;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v9, Le/a/n3/a/d;

    invoke-direct {v9}, Le/a/n3/a/d;-><init>()V

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-wide/32 v14, 0x100000

    const/16 v16, 0x2

    const-string v13, "debug.log"

    move-object v11, v9

    invoke-virtual/range {v11 .. v16}, Le/a/n3/a/d;->d(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 44
    sput-object v9, Le/a/n3/a/b;->b:Le/a/n3/a/d;

    new-array v2, v3, [Ljava/lang/Object;

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v10, Le/a/a4/i0;

    .line 46
    iget-object v10, v10, Le/a/a4/i0;->j:Ljava/lang/String;

    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    invoke-static {v2}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 48
    :cond_8
    iget-object v2, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/a4/i0;

    .line 49
    iget-object v2, v2, Le/a/a4/i0;->V:Le/a/c/c0/o;

    .line 50
    invoke-interface {v2}, Le/a/c/c0/o;->D0()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    invoke-static {v2}, Le/a/j4/b/a/h;->t(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    invoke-static {v2}, Le/a/b0/q/g0;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v8, Le/a/c/h/l/b;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v5, Le/a/n3/a/d;

    invoke-direct {v5}, Le/a/n3/a/d;-><init>()V

    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-wide/32 v13, 0x100000

    const/4 v15, 0x2

    const-string v12, "insights_debug.log"

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Le/a/n3/a/d;->d(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 55
    sput-object v5, Le/a/c/h/l/b;->b:Le/a/n3/a/d;

    new-array v2, v3, [Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v4, Le/a/a4/i0;

    .line 57
    iget-object v4, v4, Le/a/a4/i0;->j:Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    :cond_9
    return-object v0

    .line 59
    :cond_a
    iget-object v2, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/a4/i0;

    .line 60
    iget-object v2, v2, Le/a/a4/i0;->A:Lo3/a;

    .line 61
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f/b;

    iget-object v3, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/TrueApp;

    invoke-interface {v2, v3}, Le/a/f/b;->q(Landroid/content/Context;)V

    .line 62
    iget-object v2, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/a4/i0;

    .line 63
    iget-object v2, v2, Le/a/a4/i0;->E:Lo3/a;

    .line 64
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/w0/a;

    invoke-interface {v2}, Le/a/q2/w0/a;->a()V

    return-object v0

    .line 65
    :cond_b
    sget-object v2, Le/a/y/c/c;->b:Le/a/y/c/c;

    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    const-string v3, "application"

    .line 66
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type com.truecaller.flashsdk.core.FlashManagerImpl"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/y/c/d;

    .line 68
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v3

    const-string v6, "applicationBase.commonGraph"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Le/a/b0/g/a;->V()Le/a/p5/o0;

    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v6, Le/a/y/c/x/b/a;

    invoke-direct {v6}, Le/a/y/c/x/b/a;-><init>()V

    .line 73
    const-class v7, Le/a/p5/o0;

    invoke-static {v2, v7}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 74
    const-class v7, Le/a/b0/c;

    invoke-static {v3, v7}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 75
    new-instance v7, Le/a/y/c/x/a/b;

    invoke-direct {v7, v6, v2, v3, v5}, Le/a/y/c/x/a/b;-><init>(Le/a/y/c/x/b/a;Le/a/p5/o0;Le/a/b0/c;Le/a/y/c/x/a/b$a;)V

    const-string v2, "DaggerAppComponent.build\u2026e())\n            .build()"

    .line 76
    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v4, Le/a/y/c/d;->g:Le/a/y/c/x/a/a;

    .line 77
    invoke-virtual {v7, v4}, Le/a/y/c/x/a/b;->v(Le/a/y/c/d;)V

    .line 78
    iget-object v2, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/a4/i0;

    .line 79
    iget-object v2, v2, Le/a/a4/i0;->u:Lo3/a;

    .line 80
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/w3/i;

    sget-object v3, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/w3/i;->a(Le/a/i5/d;)V

    .line 81
    iget-object v2, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/a4/i0;

    .line 82
    iget-object v2, v2, Le/a/a4/i0;->v:Lo3/a;

    .line 83
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/c/b;

    .line 84
    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 85
    iget-object v3, v3, Le/a/a4/i0;->w:Lo3/a;

    .line 86
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "flashAnalyticsHelper.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/y/c/w;

    invoke-interface {v2, v3}, Le/a/y/c/b;->r(Le/a/y/c/w;)V

    .line 87
    iget-object v3, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/TrueApp;

    invoke-interface {v2, v3}, Le/a/y/c/b;->B(Le/a/y/c/i;)V

    .line 88
    invoke-interface {v2}, Le/a/y/c/b;->x()V

    return-object v0

    .line 89
    :cond_c
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 90
    iget-object v3, v3, Le/a/a4/i0;->k:Le/a/o5/j;

    .line 91
    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 92
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    new-instance v3, Le/a/q2/k;

    iget-object v4, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v4, Le/a/a4/i0;

    .line 93
    iget-object v5, v4, Le/a/a4/i0;->o:Le/a/q2/j;

    .line 94
    iget-object v4, v4, Le/a/a4/i0;->p:Le/a/q2/s;

    .line 95
    invoke-direct {v3, v5, v4}, Le/a/q2/k;-><init>(Le/a/q2/j;Le/a/q2/s;)V

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 97
    iget-object v3, v3, Le/a/a4/i0;->q:Le/a/o5/d;

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 99
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    new-instance v3, Le/a/a/k/a/e0;

    invoke-direct {v3}, Le/a/a/k/a/e0;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 100
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 101
    iget-object v3, v3, Le/a/a4/i0;->D:Lo3/a;

    .line 102
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 103
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 104
    iget-object v3, v3, Le/a/a4/i0;->r:Lo3/a;

    .line 105
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 106
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 107
    iget-object v3, v3, Le/a/a4/i0;->J:Lo3/a;

    .line 108
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 109
    iget-object v2, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    iget-object v3, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 110
    iget-object v3, v3, Le/a/a4/i0;->K:Lo3/a;

    .line 111
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0

    .line 112
    :cond_d
    iget-object v2, v1, Lc2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/a4/i0;

    .line 113
    iget-object v2, v2, Le/a/a4/i0;->Q:Le/a/b0/l/a;

    .line 114
    iget-object v3, v1, Lc2;->d:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/TrueApp;

    invoke-interface {v2, v3}, Le/a/b0/l/a;->a(Landroid/content/Context;)V

    return-object v0
.end method
