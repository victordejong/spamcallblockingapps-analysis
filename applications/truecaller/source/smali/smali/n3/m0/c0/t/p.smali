.class public Ln3/m0/c0/t/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Ln3/m0/c0/l;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/t/p;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln3/m0/c0/l;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/p;->a:Ln3/m0/c0/l;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Ln3/m0/c0/t/p;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/p;->a:Ln3/m0/c0/l;

    .line 2
    iget-object v1, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    iget-object v0, v0, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 4
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 6
    :try_start_0
    iget-object v3, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;

    .line 7
    iget-object v4, v0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v0, v0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-boolean v3, p0, Ln3/m0/c0/t/p;->c:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 10
    iget-object v0, p0, Ln3/m0/c0/t/p;->a:Ln3/m0/c0/l;

    .line 11
    iget-object v0, v0, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 12
    iget-object v2, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Ln3/m0/c0/d;->i(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    check-cast v2, Ln3/m0/c0/s/t;

    :try_start_3
    invoke-virtual {v2, v0}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v0

    sget-object v3, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    if-ne v0, v3, :cond_1

    .line 16
    sget-object v0, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v2, v0, v3}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 17
    :cond_1
    iget-object v0, p0, Ln3/m0/c0/t/p;->a:Ln3/m0/c0/l;

    .line 18
    iget-object v0, v0, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 19
    iget-object v2, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v2}, Ln3/m0/c0/d;->j(Ljava/lang/String;)Z

    move-result v0

    .line 21
    :goto_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v3, Ln3/m0/c0/t/p;->d:Ljava/lang/String;

    const-string v6, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Ln3/m0/c0/t/p;->b:Ljava/lang/String;

    aput-object v8, v7, v5

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v4

    .line 23
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 24
    invoke-virtual {v2, v3, v0, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 25
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 28
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 29
    throw v0
.end method
