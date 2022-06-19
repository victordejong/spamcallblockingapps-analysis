.class public Ln3/m0/c0/t/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Ln3/m0/f;

.field public final synthetic c:Ln3/m0/c0/t/w/c;

.field public final synthetic d:Ln3/m0/c0/t/u;


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/u;Ljava/util/UUID;Ln3/m0/f;Ln3/m0/c0/t/w/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iput-object p2, p0, Ln3/m0/c0/t/t;->a:Ljava/util/UUID;

    iput-object p3, p0, Ln3/m0/c0/t/t;->b:Ln3/m0/f;

    iput-object p4, p0, Ln3/m0/c0/t/t;->c:Ln3/m0/c0/t/w/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/t;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/t/u;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/t/t;->a:Ljava/util/UUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Ln3/m0/c0/t/t;->b:Ln3/m0/f;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "Updating progress for %s (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iget-object v1, v1, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iget-object v1, v1, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v1, v0}, Ln3/m0/c0/s/t;->k(Ljava/lang/String;)Ln3/m0/c0/s/p;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    .line 7
    sget-object v3, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    if-ne v1, v3, :cond_0

    .line 8
    new-instance v1, Ln3/m0/c0/s/m;

    iget-object v2, p0, Ln3/m0/c0/t/t;->b:Ln3/m0/f;

    invoke-direct {v1, v0, v2}, Ln3/m0/c0/s/m;-><init>(Ljava/lang/String;Ln3/m0/f;)V

    .line 9
    iget-object v0, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iget-object v0, v0, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()Ln3/m0/c0/s/n;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/o;

    .line 10
    iget-object v2, v0, Ln3/m0/c0/s/o;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 11
    iget-object v2, v0, Ln3/m0/c0/s/o;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v2, v0, Ln3/m0/c0/s/o;->b:Ln3/c0/k;

    invoke-virtual {v2, v1}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 13
    iget-object v1, v0, Ln3/m0/c0/s/o;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    iget-object v0, v0, Ln3/m0/c0/s/o;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, v0, Ln3/m0/c0/s/o;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 15
    throw v1

    .line 16
    :cond_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    const-string v3, "Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 17
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 19
    :goto_0
    iget-object v0, p0, Ln3/m0/c0/t/t;->c:Ln3/m0/c0/t/w/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/m0/c0/t/w/c;->i(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iget-object v0, v0, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    goto :goto_1

    :cond_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 22
    :try_start_4
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/t/u;->c:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    new-array v4, v6, [Ljava/lang/Throwable;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 23
    iget-object v1, p0, Ln3/m0/c0/t/t;->c:Ln3/m0/c0/t/w/c;

    invoke-virtual {v1, v0}, Ln3/m0/c0/t/w/c;->j(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 24
    :goto_1
    iget-object v0, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iget-object v0, v0, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Ln3/m0/c0/t/t;->d:Ln3/m0/c0/t/u;

    iget-object v1, v1, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 25
    throw v0
.end method
