.class public Le/m/d/n/j/j/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/d/n/j/j/g0;

.field public final b:Le/m/d/n/j/n/e;

.field public final c:Le/m/d/n/j/o/c;

.field public final d:Le/m/d/n/j/k/e;

.field public final e:Le/m/d/n/j/k/k;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/g0;Le/m/d/n/j/n/e;Le/m/d/n/j/o/c;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/j/q0;->a:Le/m/d/n/j/j/g0;

    .line 3
    iput-object p2, p0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 4
    iput-object p3, p0, Le/m/d/n/j/j/q0;->c:Le/m/d/n/j/o/c;

    .line 5
    iput-object p4, p0, Le/m/d/n/j/j/q0;->d:Le/m/d/n/j/k/e;

    .line 6
    iput-object p5, p0, Le/m/d/n/j/j/q0;->e:Le/m/d/n/j/k/k;

    return-void
.end method

.method public static b(Landroid/content/Context;Le/m/d/n/j/j/n0;Le/m/d/n/j/n/f;Le/m/d/n/j/j/h;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;Le/m/d/n/j/q/d;Le/m/d/n/j/p/f;)Le/m/d/n/j/j/q0;
    .locals 6

    .line 1
    new-instance v1, Le/m/d/n/j/j/g0;

    invoke-direct {v1, p0, p1, p3, p6}, Le/m/d/n/j/j/g0;-><init>(Landroid/content/Context;Le/m/d/n/j/j/n0;Le/m/d/n/j/j/h;Le/m/d/n/j/q/d;)V

    .line 2
    new-instance v2, Le/m/d/n/j/n/e;

    invoke-direct {v2, p2, p7}, Le/m/d/n/j/n/e;-><init>(Le/m/d/n/j/n/f;Le/m/d/n/j/p/f;)V

    .line 3
    sget-object p1, Le/m/d/n/j/o/c;->b:Le/m/d/n/j/l/d0/g;

    .line 4
    invoke-static {p0}, Le/m/a/b/j/v;->c(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Le/m/a/b/j/v;->a()Le/m/a/b/j/v;

    move-result-object p0

    new-instance p1, Le/m/a/b/i/c;

    sget-object p2, Le/m/d/n/j/o/c;->c:Ljava/lang/String;

    sget-object p3, Le/m/d/n/j/o/c;->d:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Le/m/a/b/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Le/m/a/b/j/v;->d(Le/m/a/b/j/l;)Le/m/a/b/g;

    move-result-object p0

    const-class p1, Le/m/d/n/j/l/a0;

    .line 7
    new-instance p2, Le/m/a/b/b;

    const-string p3, "json"

    invoke-direct {p2, p3}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p3, Le/m/d/n/j/o/c;->e:Le/m/a/b/e;

    .line 9
    check-cast p0, Le/m/a/b/j/s;

    const-string p6, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-virtual {p0, p6, p1, p2, p3}, Le/m/a/b/j/s;->a(Ljava/lang/String;Ljava/lang/Class;Le/m/a/b/b;Le/m/a/b/e;)Le/m/a/b/f;

    move-result-object p0

    .line 10
    new-instance v3, Le/m/d/n/j/o/c;

    invoke-direct {v3, p0, p3}, Le/m/d/n/j/o/c;-><init>(Le/m/a/b/f;Le/m/a/b/e;)V

    .line 11
    new-instance p0, Le/m/d/n/j/j/q0;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Le/m/d/n/j/j/q0;-><init>(Le/m/d/n/j/j/g0;Le/m/d/n/j/n/e;Le/m/d/n/j/o/c;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;)V

    return-object p0
.end method

.method public static c(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Le/m/d/n/j/l/a0$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Null key"

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Null value"

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v3, Le/m/d/n/j/l/d;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Le/m/d/n/j/l/d;-><init>(Ljava/lang/String;Ljava/lang/String;Le/m/d/n/j/l/d$a;)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Le/m/d/n/j/j/d;->a:Le/m/d/n/j/j/d;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final a(Le/m/d/n/j/l/a0$e$d;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;)Le/m/d/n/j/l/a0$e$d;
    .locals 3

    .line 1
    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d;->f()Le/m/d/n/j/l/a0$e$d$b;

    move-result-object v0

    .line 2
    iget-object p2, p2, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    invoke-interface {p2}, Le/m/d/n/j/k/c;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    new-instance v1, Le/m/d/n/j/l/t;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Le/m/d/n/j/l/t;-><init>(Ljava/lang/String;Le/m/d/n/j/l/t$a;)V

    .line 4
    move-object p2, v0

    check-cast p2, Le/m/d/n/j/l/k$b;

    .line 5
    iput-object v1, p2, Le/m/d/n/j/l/k$b;->e:Le/m/d/n/j/l/a0$e$d$d;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p2, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 8
    :goto_0
    iget-object p2, p3, Le/m/d/n/j/k/k;->d:Le/m/d/n/j/k/k$a;

    .line 9
    iget-object p2, p2, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/d/n/j/k/d;

    invoke-virtual {p2}, Le/m/d/n/j/k/d;->a()Ljava/util/Map;

    move-result-object p2

    .line 10
    invoke-static {p2}, Le/m/d/n/j/j/q0;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 11
    iget-object p3, p3, Le/m/d/n/j/k/k;->e:Le/m/d/n/j/k/k$a;

    .line 12
    iget-object p3, p3, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/d/n/j/k/d;

    invoke-virtual {p3}, Le/m/d/n/j/k/d;->a()Ljava/util/Map;

    move-result-object p3

    .line 13
    invoke-static {p3}, Le/m/d/n/j/j/q0;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    .line 14
    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    :cond_1
    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d;->a()Le/m/d/n/j/l/a0$e$d$a;

    move-result-object p1

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$a;->f()Le/m/d/n/j/l/a0$e$d$a$a;

    move-result-object p1

    .line 16
    new-instance v1, Le/m/d/n/j/l/b0;

    invoke-direct {v1, p2}, Le/m/d/n/j/l/b0;-><init>(Ljava/util/List;)V

    .line 17
    check-cast p1, Le/m/d/n/j/l/l$b;

    .line 18
    iput-object v1, p1, Le/m/d/n/j/l/l$b;->b:Le/m/d/n/j/l/b0;

    .line 19
    new-instance p2, Le/m/d/n/j/l/b0;

    invoke-direct {p2, p3}, Le/m/d/n/j/l/b0;-><init>(Ljava/util/List;)V

    .line 20
    iput-object p2, p1, Le/m/d/n/j/l/l$b;->c:Le/m/d/n/j/l/b0;

    .line 21
    invoke-virtual {p1}, Le/m/d/n/j/l/l$b;->a()Le/m/d/n/j/l/a0$e$d$a;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Le/m/d/n/j/l/a0$e$d$b;->b(Le/m/d/n/j/l/a0$e$d$a;)Le/m/d/n/j/l/a0$e$d$b;

    .line 23
    :cond_2
    invoke-virtual {v0}, Le/m/d/n/j/l/a0$e$d$b;->a()Le/m/d/n/j/l/a0$e$d;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "crash"

    .line 1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2
    iget-object v4, v0, Le/m/d/n/j/j/q0;->a:Le/m/d/n/j/j/g0;

    .line 3
    iget-object v5, v4, Le/m/d/n/j/j/g0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 4
    new-instance v6, Le/m/d/n/j/q/e;

    iget-object v7, v4, Le/m/d/n/j/j/g0;->d:Le/m/d/n/j/q/d;

    move-object/from16 v8, p1

    invoke-direct {v6, v8, v7}, Le/m/d/n/j/q/e;-><init>(Ljava/lang/Throwable;Le/m/d/n/j/q/d;)V

    .line 5
    new-instance v7, Le/m/d/n/j/l/k$b;

    invoke-direct {v7}, Le/m/d/n/j/l/k$b;-><init>()V

    .line 6
    invoke-virtual {v7, v2}, Le/m/d/n/j/l/k$b;->e(Ljava/lang/String;)Le/m/d/n/j/l/a0$e$d$b;

    .line 7
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Le/m/d/n/j/l/k$b;->a:Ljava/lang/Long;

    .line 8
    iget-object v2, v4, Le/m/d/n/j/j/g0;->c:Le/m/d/n/j/j/h;

    iget-object v2, v2, Le/m/d/n/j/j/h;->d:Ljava/lang/String;

    iget-object v8, v4, Le/m/d/n/j/j/g0;->a:Landroid/content/Context;

    const-string v9, "activity"

    .line 9
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 10
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 11
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 12
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_1
    move-object v10, v9

    :goto_0
    const/4 v2, 0x0

    if-eqz v10, :cond_3

    .line 13
    iget v8, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v2

    .line 14
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :cond_3
    move-object v14, v9

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v18, 0x0

    .line 16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v10, v6, Le/m/d/n/j/q/e;->c:[Ljava/lang/StackTraceElement;

    const/4 v11, 0x4

    .line 18
    invoke-virtual {v4, v1, v10, v11}, Le/m/d/n/j/j/g0;->f(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Le/m/d/n/j/l/a0$e$d$a$b$d;

    move-result-object v10

    .line 19
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_5

    .line 20
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v10

    .line 21
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Thread;

    .line 23
    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 24
    iget-object v15, v4, Le/m/d/n/j/j/g0;->d:Le/m/d/n/j/q/d;

    .line 25
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/StackTraceElement;

    invoke-interface {v15, v12}, Le/m/d/n/j/q/d;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 26
    invoke-virtual {v4, v13, v12, v2}, Le/m/d/n/j/j/g0;->f(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Le/m/d/n/j/l/a0$e$d$a$b$d;

    move-result-object v12

    .line 27
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_5
    new-instance v1, Le/m/d/n/j/l/b0;

    invoke-direct {v1, v9}, Le/m/d/n/j/l/b0;-><init>(Ljava/util/List;)V

    const/16 v9, 0x8

    .line 29
    invoke-virtual {v4, v6, v11, v9, v2}, Le/m/d/n/j/j/g0;->c(Le/m/d/n/j/q/e;III)Le/m/d/n/j/l/a0$e$d$a$b$b;

    move-result-object v17

    .line 30
    invoke-virtual {v4}, Le/m/d/n/j/j/g0;->e()Le/m/d/n/j/l/a0$e$d$a$b$c;

    move-result-object v19

    .line 31
    invoke-virtual {v4}, Le/m/d/n/j/j/g0;->a()Le/m/d/n/j/l/b0;

    move-result-object v20

    .line 32
    new-instance v11, Le/m/d/n/j/l/m;

    const/16 v21, 0x0

    move-object v15, v11

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Le/m/d/n/j/l/m;-><init>(Le/m/d/n/j/l/b0;Le/m/d/n/j/l/a0$e$d$a$b$b;Le/m/d/n/j/l/a0$a;Le/m/d/n/j/l/a0$e$d$a$b$c;Le/m/d/n/j/l/b0;Le/m/d/n/j/l/m$a;)V

    if-nez v8, :cond_6

    const-string v1, " uiOrientation"

    goto :goto_3

    :cond_6
    const-string v1, ""

    .line 33
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 34
    new-instance v1, Le/m/d/n/j/l/l;

    .line 35
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Le/m/d/n/j/l/l;-><init>(Le/m/d/n/j/l/a0$e$d$a$b;Le/m/d/n/j/l/b0;Le/m/d/n/j/l/b0;Ljava/lang/Boolean;ILe/m/d/n/j/l/l$a;)V

    .line 36
    invoke-virtual {v7, v1}, Le/m/d/n/j/l/k$b;->b(Le/m/d/n/j/l/a0$e$d$a;)Le/m/d/n/j/l/a0$e$d$b;

    .line 37
    invoke-virtual {v4, v5}, Le/m/d/n/j/j/g0;->b(I)Le/m/d/n/j/l/a0$e$d$c;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/m/d/n/j/l/k$b;->c(Le/m/d/n/j/l/a0$e$d$c;)Le/m/d/n/j/l/a0$e$d$b;

    .line 38
    invoke-virtual {v7}, Le/m/d/n/j/l/k$b;->a()Le/m/d/n/j/l/a0$e$d;

    move-result-object v1

    .line 39
    iget-object v2, v0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 40
    iget-object v4, v0, Le/m/d/n/j/j/q0;->d:Le/m/d/n/j/k/e;

    iget-object v5, v0, Le/m/d/n/j/j/q0;->e:Le/m/d/n/j/k/k;

    invoke-virtual {v0, v1, v4, v5}, Le/m/d/n/j/j/q0;->a(Le/m/d/n/j/l/a0$e$d;Le/m/d/n/j/k/e;Le/m/d/n/j/k/k;)Le/m/d/n/j/l/a0$e$d;

    move-result-object v1

    move-object/from16 v4, p3

    .line 41
    invoke-virtual {v2, v1, v4, v3}, Le/m/d/n/j/n/e;->d(Le/m/d/n/j/l/a0$e$d;Ljava/lang/String;Z)V

    return-void

    .line 42
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public e(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 2
    invoke-virtual {v0}, Le/m/d/n/j/n/e;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 5
    :try_start_0
    sget-object v3, Le/m/d/n/j/n/e;->f:Le/m/d/n/j/l/d0/g;

    invoke-static {v2}, Le/m/d/n/j/n/e;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/m/d/n/j/l/d0/g;->e(Ljava/lang/String;)Le/m/d/n/j/l/a0;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Le/m/d/n/j/j/i;

    invoke-direct {v5, v3, v4, v2}, Le/m/d/n/j/j/i;-><init>(Le/m/d/n/j/l/a0;Ljava/lang/String;Ljava/io/File;)V

    .line 8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    sget-object v4, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load report file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; deleting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Le/m/d/n/j/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/n/j/j/h0;

    .line 13
    iget-object v3, p0, Le/m/d/n/j/j/q0;->c:Le/m/d/n/j/o/c;

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Le/m/d/n/j/j/h0;->a()Le/m/d/n/j/l/a0;

    move-result-object v4

    .line 16
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 17
    iget-object v3, v3, Le/m/d/n/j/o/c;->a:Le/m/a/b/f;

    .line 18
    new-instance v6, Le/m/a/b/a;

    sget-object v7, Le/m/a/b/d;->c:Le/m/a/b/d;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v4, v7}, Le/m/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Le/m/a/b/d;)V

    .line 19
    new-instance v4, Le/m/d/n/j/o/b;

    invoke-direct {v4, v5, v2}, Le/m/d/n/j/o/b;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Le/m/d/n/j/j/h0;)V

    .line 20
    check-cast v3, Le/m/a/b/j/t;

    invoke-virtual {v3, v6, v4}, Le/m/a/b/j/t;->a(Le/m/a/b/c;Le/m/a/b/h;)V

    .line 21
    iget-object v2, v5, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 22
    new-instance v3, Le/m/d/n/j/j/c;

    invoke-direct {v3, p0}, Le/m/d/n/j/j/c;-><init>(Le/m/d/n/j/j/q0;)V

    .line 23
    invoke-virtual {v2, p1, v3}, Le/m/a/f/q/b0;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->g(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
