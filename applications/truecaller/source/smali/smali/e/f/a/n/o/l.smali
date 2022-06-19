.class public Le/f/a/n/o/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/n;
.implements Le/f/a/n/o/c0/i$a;
.implements Le/f/a/n/o/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/o/l$b;,
        Le/f/a/n/o/l$a;,
        Le/f/a/n/o/l$c;,
        Le/f/a/n/o/l$d;
    }
.end annotation


# static fields
.field public static final i:Z


# instance fields
.field public final a:Le/f/a/n/o/t;

.field public final b:Le/f/a/n/o/p;

.field public final c:Le/f/a/n/o/c0/i;

.field public final d:Le/f/a/n/o/l$b;

.field public final e:Le/f/a/n/o/z;

.field public final f:Le/f/a/n/o/l$c;

.field public final g:Le/f/a/n/o/l$a;

.field public final h:Le/f/a/n/o/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Le/f/a/n/o/l;->i:Z

    return-void
.end method

.method public constructor <init>(Le/f/a/n/o/c0/i;Le/f/a/n/o/c0/a$a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/o/l;->c:Le/f/a/n/o/c0/i;

    .line 3
    new-instance v0, Le/f/a/n/o/l$c;

    invoke-direct {v0, p2}, Le/f/a/n/o/l$c;-><init>(Le/f/a/n/o/c0/a$a;)V

    iput-object v0, p0, Le/f/a/n/o/l;->f:Le/f/a/n/o/l$c;

    .line 4
    new-instance p2, Le/f/a/n/o/a;

    invoke-direct {p2, p7}, Le/f/a/n/o/a;-><init>(Z)V

    .line 5
    iput-object p2, p0, Le/f/a/n/o/l;->h:Le/f/a/n/o/a;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iput-object p0, p2, Le/f/a/n/o/a;->e:Le/f/a/n/o/q$a;

    .line 9
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    new-instance p2, Le/f/a/n/o/p;

    invoke-direct {p2}, Le/f/a/n/o/p;-><init>()V

    .line 12
    iput-object p2, p0, Le/f/a/n/o/l;->b:Le/f/a/n/o/p;

    .line 13
    new-instance p2, Le/f/a/n/o/t;

    invoke-direct {p2}, Le/f/a/n/o/t;-><init>()V

    .line 14
    iput-object p2, p0, Le/f/a/n/o/l;->a:Le/f/a/n/o/t;

    .line 15
    new-instance p2, Le/f/a/n/o/l$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Le/f/a/n/o/l$b;-><init>(Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/n;Le/f/a/n/o/q$a;)V

    .line 16
    iput-object p2, p0, Le/f/a/n/o/l;->d:Le/f/a/n/o/l$b;

    .line 17
    new-instance p2, Le/f/a/n/o/l$a;

    invoke-direct {p2, v0}, Le/f/a/n/o/l$a;-><init>(Le/f/a/n/o/i$d;)V

    .line 18
    iput-object p2, p0, Le/f/a/n/o/l;->g:Le/f/a/n/o/l$a;

    .line 19
    new-instance p2, Le/f/a/n/o/z;

    invoke-direct {p2}, Le/f/a/n/o/z;-><init>()V

    .line 20
    iput-object p2, p0, Le/f/a/n/o/l;->e:Le/f/a/n/o/z;

    .line 21
    check-cast p1, Le/f/a/n/o/c0/h;

    .line 22
    iput-object p0, p1, Le/f/a/n/o/c0/h;->d:Le/f/a/n/o/c0/i$a;

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static d(Ljava/lang/String;JLe/f/a/n/f;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p0, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Le/f/a/t/f;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/f;Le/f/a/n/o/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            "Le/f/a/n/o/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/o/l;->h:Le/f/a/n/o/a;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Le/f/a/n/o/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/o/a$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Le/f/a/n/o/a$b;->c:Le/f/a/n/o/w;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    iget-boolean v0, p2, Le/f/a/n/o/q;->a:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/f/a/n/o/l;->c:Le/f/a/n/o/c0/i;

    check-cast v0, Le/f/a/n/o/c0/h;

    .line 9
    invoke-virtual {v0, p1, p2}, Le/f/a/t/g;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/a/n/o/w;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Le/f/a/n/o/l;->e:Le/f/a/n/o/z;

    invoke-virtual {p1, p2}, Le/f/a/n/o/z;->a(Le/f/a/n/o/w;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public b(Le/f/a/e;Ljava/lang/Object;Le/f/a/n/f;IILjava/lang/Class;Ljava/lang/Class;Le/f/a/f;Le/f/a/n/o/k;Ljava/util/Map;ZZLe/f/a/n/i;ZZZZLe/f/a/r/i;Ljava/util/concurrent/Executor;)Le/f/a/n/o/l$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/a/e;",
            "Ljava/lang/Object;",
            "Le/f/a/n/f;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Le/f/a/f;",
            "Le/f/a/n/o/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/n/m<",
            "*>;>;ZZ",
            "Le/f/a/n/i;",
            "ZZZZ",
            "Le/f/a/r/i;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Le/f/a/n/o/l$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Le/f/a/n/o/l;->i:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 3
    iget-object v0, v15, Le/f/a/n/o/l;->b:Le/f/a/n/o/p;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Le/f/a/n/o/o;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Le/f/a/n/o/o;-><init>(Ljava/lang/Object;Le/f/a/n/f;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/i;)V

    .line 6
    monitor-enter p0

    move/from16 v12, p14

    .line 7
    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Le/f/a/n/o/l;->c(Le/f/a/n/o/o;ZJ)Le/f/a/n/o/q;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    .line 8
    invoke-virtual/range {v1 .. v23}, Le/f/a/n/o/l;->g(Le/f/a/e;Ljava/lang/Object;Le/f/a/n/f;IILjava/lang/Class;Ljava/lang/Class;Le/f/a/f;Le/f/a/n/o/k;Ljava/util/Map;ZZLe/f/a/n/i;ZZZZLe/f/a/r/i;Ljava/util/concurrent/Executor;Le/f/a/n/o/o;J)Le/f/a/n/o/l$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Le/f/a/n/a;->e:Le/f/a/n/a;

    move-object/from16 v2, p18

    check-cast v2, Le/f/a/r/j;

    invoke-virtual {v2, v1, v0}, Le/f/a/r/j;->l(Le/f/a/n/o/w;Le/f/a/n/a;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Le/f/a/n/o/o;ZJ)Le/f/a/n/o/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/o;",
            "ZJ)",
            "Le/f/a/n/o/q<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p2, p0, Le/f/a/n/o/l;->h:Le/f/a/n/o/a;

    .line 2
    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v1, p2, Le/f/a/n/o/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/o/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 4
    monitor-exit p2

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/n/o/q;

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p2, v1}, Le/f/a/n/o/a;->b(Le/f/a/n/o/a$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :cond_2
    monitor-exit p2

    :goto_0
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Le/f/a/n/o/q;->d()V

    :cond_3
    if-eqz v2, :cond_5

    .line 9
    sget-boolean p2, Le/f/a/n/o/l;->i:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    .line 10
    invoke-static {p2, p3, p4, p1}, Le/f/a/n/o/l;->d(Ljava/lang/String;JLe/f/a/n/f;)V

    :cond_4
    return-object v2

    .line 11
    :cond_5
    iget-object p2, p0, Le/f/a/n/o/l;->c:Le/f/a/n/o/c0/i;

    check-cast p2, Le/f/a/n/o/c0/h;

    .line 12
    monitor-enter p2

    .line 13
    :try_start_2
    iget-object v1, p2, Le/f/a/t/g;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    iget-wide v2, p2, Le/f/a/t/g;->c:J

    invoke-virtual {p2, v1}, Le/f/a/n/o/c0/h;->b(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Le/f/a/t/g;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :cond_6
    monitor-exit p2

    .line 16
    move-object v2, v1

    check-cast v2, Le/f/a/n/o/w;

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_1

    .line 17
    :cond_7
    instance-of p2, v2, Le/f/a/n/o/q;

    if-eqz p2, :cond_8

    .line 18
    check-cast v2, Le/f/a/n/o/q;

    goto :goto_1

    .line 19
    :cond_8
    new-instance p2, Le/f/a/n/o/q;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Le/f/a/n/o/q;-><init>(Le/f/a/n/o/w;ZZLe/f/a/n/f;Le/f/a/n/o/q$a;)V

    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v2}, Le/f/a/n/o/q;->d()V

    .line 21
    iget-object p2, p0, Le/f/a/n/o/l;->h:Le/f/a/n/o/a;

    invoke-virtual {p2, p1, v2}, Le/f/a/n/o/a;->a(Le/f/a/n/f;Le/f/a/n/o/q;)V

    :cond_9
    if-eqz v2, :cond_b

    .line 22
    sget-boolean p2, Le/f/a/n/o/l;->i:Z

    if-eqz p2, :cond_a

    const-string p2, "Loaded resource from cache"

    .line 23
    invoke-static {p2, p3, p4, p1}, Le/f/a/n/o/l;->d(Ljava/lang/String;JLe/f/a/n/f;)V

    :cond_a
    return-object v2

    :cond_b
    return-object v0

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit p2

    throw p1
.end method

.method public declared-synchronized e(Le/f/a/n/o/m;Le/f/a/n/f;Le/f/a/n/o/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/m<",
            "*>;",
            "Le/f/a/n/f;",
            "Le/f/a/n/o/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p3, Le/f/a/n/o/q;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/a/n/o/l;->h:Le/f/a/n/o/a;

    invoke-virtual {v0, p2, p3}, Le/f/a/n/o/a;->a(Le/f/a/n/f;Le/f/a/n/o/q;)V

    .line 3
    :cond_0
    iget-object p3, p0, Le/f/a/n/o/l;->a:Le/f/a/n/o/t;

    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, p1, Le/f/a/n/o/m;->p:Z

    .line 6
    invoke-virtual {p3, v0}, Le/f/a/n/o/t;->a(Z)Ljava/util/Map;

    move-result-object p3

    .line 7
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Le/f/a/n/o/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "*>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Le/f/a/n/o/q;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/n/o/q;

    invoke-virtual {p1}, Le/f/a/n/o/q;->e()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Le/f/a/e;Ljava/lang/Object;Le/f/a/n/f;IILjava/lang/Class;Ljava/lang/Class;Le/f/a/f;Le/f/a/n/o/k;Ljava/util/Map;ZZLe/f/a/n/i;ZZZZLe/f/a/r/i;Ljava/util/concurrent/Executor;Le/f/a/n/o/o;J)Le/f/a/n/o/l$d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/a/e;",
            "Ljava/lang/Object;",
            "Le/f/a/n/f;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Le/f/a/f;",
            "Le/f/a/n/o/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/n/m<",
            "*>;>;ZZ",
            "Le/f/a/n/i;",
            "ZZZZ",
            "Le/f/a/r/i;",
            "Ljava/util/concurrent/Executor;",
            "Le/f/a/n/o/o;",
            "J)",
            "Le/f/a/n/o/l$d;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    .line 1
    iget-object v15, v1, Le/f/a/n/o/l;->a:Le/f/a/n/o/t;

    if-eqz v9, :cond_0

    .line 2
    iget-object v15, v15, Le/f/a/n/o/t;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v15, v15, Le/f/a/n/o/t;->a:Ljava/util/Map;

    .line 3
    :goto_0
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/f/a/n/o/m;

    if-eqz v15, :cond_2

    .line 4
    invoke-virtual {v15, v10, v11}, Le/f/a/n/o/m;->a(Le/f/a/r/i;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v0, Le/f/a/n/o/l;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "Added to existing load"

    .line 6
    invoke-static {v0, v13, v14, v12}, Le/f/a/n/o/l;->d(Ljava/lang/String;JLe/f/a/n/f;)V

    .line 7
    :cond_1
    new-instance v0, Le/f/a/n/o/l$d;

    invoke-direct {v0, v1, v10, v15}, Le/f/a/n/o/l$d;-><init>(Le/f/a/n/o/l;Le/f/a/r/i;Le/f/a/n/o/m;)V

    return-object v0

    .line 8
    :cond_2
    iget-object v15, v1, Le/f/a/n/o/l;->d:Le/f/a/n/o/l$b;

    .line 9
    iget-object v15, v15, Le/f/a/n/o/l$b;->g:Ln3/k/h/e;

    invoke-interface {v15}, Ln3/k/h/e;->a()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/f/a/n/o/m;

    const-string v13, "Argument must not be null"

    .line 10
    invoke-static {v15, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    monitor-enter v15

    .line 12
    :try_start_0
    iput-object v12, v15, Le/f/a/n/o/m;->l:Le/f/a/n/f;

    move/from16 v13, p14

    .line 13
    iput-boolean v13, v15, Le/f/a/n/o/m;->m:Z

    move/from16 v13, p15

    .line 14
    iput-boolean v13, v15, Le/f/a/n/o/m;->n:Z

    move/from16 v13, p16

    .line 15
    iput-boolean v13, v15, Le/f/a/n/o/m;->o:Z

    .line 16
    iput-boolean v9, v15, Le/f/a/n/o/m;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    monitor-exit v15

    .line 18
    iget-object v13, v1, Le/f/a/n/o/l;->g:Le/f/a/n/o/l$a;

    .line 19
    iget-object v14, v13, Le/f/a/n/o/l$a;->b:Ln3/k/h/e;

    invoke-interface {v14}, Ln3/k/h/e;->a()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/f/a/n/o/i;

    const-string v10, "Argument must not be null"

    .line 20
    invoke-static {v14, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget v10, v13, Le/f/a/n/o/l$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Le/f/a/n/o/l$a;->c:I

    .line 22
    iget-object v11, v14, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    iget-object v13, v14, Le/f/a/n/o/i;->d:Le/f/a/n/o/i$d;

    .line 23
    iput-object v0, v11, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 24
    iput-object v2, v11, Le/f/a/n/o/h;->d:Ljava/lang/Object;

    .line 25
    iput-object v3, v11, Le/f/a/n/o/h;->n:Le/f/a/n/f;

    .line 26
    iput v4, v11, Le/f/a/n/o/h;->e:I

    .line 27
    iput v5, v11, Le/f/a/n/o/h;->f:I

    .line 28
    iput-object v7, v11, Le/f/a/n/o/h;->p:Le/f/a/n/o/k;

    move-object/from16 v1, p6

    .line 29
    iput-object v1, v11, Le/f/a/n/o/h;->g:Ljava/lang/Class;

    .line 30
    iput-object v13, v11, Le/f/a/n/o/h;->h:Le/f/a/n/o/i$d;

    move-object/from16 v1, p7

    .line 31
    iput-object v1, v11, Le/f/a/n/o/h;->k:Ljava/lang/Class;

    .line 32
    iput-object v6, v11, Le/f/a/n/o/h;->o:Le/f/a/f;

    .line 33
    iput-object v8, v11, Le/f/a/n/o/h;->i:Le/f/a/n/i;

    move-object/from16 v1, p10

    .line 34
    iput-object v1, v11, Le/f/a/n/o/h;->j:Ljava/util/Map;

    move/from16 v1, p11

    .line 35
    iput-boolean v1, v11, Le/f/a/n/o/h;->q:Z

    move/from16 v1, p12

    .line 36
    iput-boolean v1, v11, Le/f/a/n/o/h;->r:Z

    .line 37
    iput-object v0, v14, Le/f/a/n/o/i;->h:Le/f/a/e;

    .line 38
    iput-object v3, v14, Le/f/a/n/o/i;->i:Le/f/a/n/f;

    .line 39
    iput-object v6, v14, Le/f/a/n/o/i;->j:Le/f/a/f;

    .line 40
    iput-object v12, v14, Le/f/a/n/o/i;->k:Le/f/a/n/o/o;

    .line 41
    iput v4, v14, Le/f/a/n/o/i;->l:I

    .line 42
    iput v5, v14, Le/f/a/n/o/i;->m:I

    .line 43
    iput-object v7, v14, Le/f/a/n/o/i;->n:Le/f/a/n/o/k;

    .line 44
    iput-boolean v9, v14, Le/f/a/n/o/i;->u:Z

    .line 45
    iput-object v8, v14, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    .line 46
    iput-object v15, v14, Le/f/a/n/o/i;->p:Le/f/a/n/o/i$a;

    .line 47
    iput v10, v14, Le/f/a/n/o/i;->q:I

    .line 48
    sget-object v0, Le/f/a/n/o/i$f;->a:Le/f/a/n/o/i$f;

    iput-object v0, v14, Le/f/a/n/o/i;->s:Le/f/a/n/o/i$f;

    .line 49
    iput-object v2, v14, Le/f/a/n/o/i;->v:Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 50
    iget-object v0, v1, Le/f/a/n/o/l;->a:Le/f/a/n/o/t;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-boolean v2, v15, Le/f/a/n/o/m;->p:Z

    .line 53
    invoke-virtual {v0, v2}, Le/f/a/n/o/t;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v2, p19

    .line 54
    invoke-virtual {v15, v0, v2}, Le/f/a/n/o/m;->a(Le/f/a/r/i;Ljava/util/concurrent/Executor;)V

    .line 55
    monitor-enter v15

    .line 56
    :try_start_1
    iput-object v14, v15, Le/f/a/n/o/m;->w:Le/f/a/n/o/i;

    .line 57
    sget-object v2, Le/f/a/n/o/i$g;->a:Le/f/a/n/o/i$g;

    invoke-virtual {v14, v2}, Le/f/a/n/o/i;->j(Le/f/a/n/o/i$g;)Le/f/a/n/o/i$g;

    move-result-object v2

    .line 58
    sget-object v3, Le/f/a/n/o/i$g;->b:Le/f/a/n/o/i$g;

    if-eq v2, v3, :cond_4

    sget-object v3, Le/f/a/n/o/i$g;->c:Le/f/a/n/o/i$g;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    .line 59
    iget-object v2, v15, Le/f/a/n/o/m;->g:Le/f/a/n/o/d0/a;

    goto :goto_3

    .line 60
    :cond_5
    iget-boolean v2, v15, Le/f/a/n/o/m;->n:Z

    if-eqz v2, :cond_6

    .line 61
    iget-object v2, v15, Le/f/a/n/o/m;->i:Le/f/a/n/o/d0/a;

    goto :goto_3

    .line 62
    :cond_6
    iget-boolean v2, v15, Le/f/a/n/o/m;->o:Z

    if-eqz v2, :cond_7

    iget-object v2, v15, Le/f/a/n/o/m;->j:Le/f/a/n/o/d0/a;

    goto :goto_3

    :cond_7
    iget-object v2, v15, Le/f/a/n/o/m;->h:Le/f/a/n/o/d0/a;

    .line 63
    :goto_3
    iget-object v2, v2, Le/f/a/n/o/d0/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit v15

    .line 65
    sget-boolean v2, Le/f/a/n/o/l;->i:Z

    if-eqz v2, :cond_8

    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    .line 66
    invoke-static {v2, v3, v4, v12}, Le/f/a/n/o/l;->d(Ljava/lang/String;JLe/f/a/n/f;)V

    .line 67
    :cond_8
    new-instance v2, Le/f/a/n/o/l$d;

    invoke-direct {v2, v1, v0, v15}, Le/f/a/n/o/l$d;-><init>(Le/f/a/n/o/l;Le/f/a/r/i;Le/f/a/n/o/m;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 68
    monitor-exit v15

    throw v0

    :catchall_1
    move-exception v0

    .line 69
    monitor-exit v15

    throw v0
.end method
