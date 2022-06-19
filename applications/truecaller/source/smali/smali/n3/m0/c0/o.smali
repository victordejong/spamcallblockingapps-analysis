.class public Ln3/m0/c0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/o$a;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/m0/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/work/WorkerParameters$a;

.field public e:Ln3/m0/c0/s/p;

.field public f:Landroidx/work/ListenableWorker;

.field public g:Ln3/m0/c0/t/x/a;

.field public h:Landroidx/work/ListenableWorker$a;

.field public i:Ln3/m0/c;

.field public j:Ln3/m0/c0/r/a;

.field public k:Landroidx/work/impl/WorkDatabase;

.field public l:Ln3/m0/c0/s/q;

.field public m:Ln3/m0/c0/s/b;

.field public n:Ln3/m0/c0/s/v;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ln3/m0/c0/t/w/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/t/w/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/o;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln3/m0/c0/o$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/m0/c0/o;->h:Landroidx/work/ListenableWorker$a;

    .line 4
    new-instance v0, Ln3/m0/c0/t/w/c;

    invoke-direct {v0}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 5
    iput-object v0, p0, Ln3/m0/c0/o;->q:Ln3/m0/c0/t/w/c;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ln3/m0/c0/o;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    iget-object v1, p1, Ln3/m0/c0/o$a;->a:Landroid/content/Context;

    iput-object v1, p0, Ln3/m0/c0/o;->a:Landroid/content/Context;

    .line 8
    iget-object v1, p1, Ln3/m0/c0/o$a;->c:Ln3/m0/c0/t/x/a;

    iput-object v1, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    .line 9
    iget-object v1, p1, Ln3/m0/c0/o$a;->b:Ln3/m0/c0/r/a;

    iput-object v1, p0, Ln3/m0/c0/o;->j:Ln3/m0/c0/r/a;

    .line 10
    iget-object v1, p1, Ln3/m0/c0/o$a;->f:Ljava/lang/String;

    iput-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Ln3/m0/c0/o$a;->g:Ljava/util/List;

    iput-object v1, p0, Ln3/m0/c0/o;->c:Ljava/util/List;

    .line 12
    iget-object v1, p1, Ln3/m0/c0/o$a;->h:Landroidx/work/WorkerParameters$a;

    iput-object v1, p0, Ln3/m0/c0/o;->d:Landroidx/work/WorkerParameters$a;

    .line 13
    iput-object v0, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    .line 14
    iget-object v0, p1, Ln3/m0/c0/o$a;->d:Ln3/m0/c;

    iput-object v0, p0, Ln3/m0/c0/o;->i:Ln3/m0/c;

    .line 15
    iget-object p1, p1, Ln3/m0/c0/o$a;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object p1

    iput-object p1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    .line 17
    iget-object p1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->a()Ln3/m0/c0/s/b;

    move-result-object p1

    iput-object p1, p0, Ln3/m0/c0/o;->m:Ln3/m0/c0/s/b;

    .line 18
    iget-object p1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->g()Ln3/m0/c0/s/v;

    move-result-object p1

    iput-object p1, p0, Ln3/m0/c0/o;->n:Ln3/m0/c0/s/v;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/ListenableWorker$a;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object v0, Ln3/m0/c0/o;->t:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/o;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    invoke-virtual {p1}, Ln3/m0/c0/s/p;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ln3/m0/c0/o;->e()V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 8
    :try_start_0
    iget-object p1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v0, Ln3/m0/x$a;->c:Ln3/m0/x$a;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {p1, v0, v3}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Ln3/m0/c0/o;->h:Landroidx/work/ListenableWorker$a;

    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 10
    iget-object p1, p1, Landroidx/work/ListenableWorker$a$c;->a:Ln3/m0/f;

    .line 11
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v3, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v0, Ln3/m0/c0/s/t;

    :try_start_2
    invoke-virtual {v0, v3, p1}, Ln3/m0/c0/s/t;->p(Ljava/lang/String;Ln3/m0/f;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    iget-object p1, p0, Ln3/m0/c0/o;->m:Ln3/m0/c0/s/b;

    iget-object v0, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast p1, Ln3/m0/c0/s/c;

    :try_start_3
    invoke-virtual {p1, v0}, Ln3/m0/c0/s/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    check-cast v5, Ln3/m0/c0/s/t;

    :try_start_5
    invoke-virtual {v5, v0}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v5

    sget-object v6, Ln3/m0/x$a;->e:Ln3/m0/x$a;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Ln3/m0/c0/o;->m:Ln3/m0/c0/s/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    check-cast v5, Ln3/m0/c0/s/c;

    :try_start_6
    invoke-virtual {v5, v0}, Ln3/m0/c0/s/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v5

    sget-object v6, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const-string v7, "Setting status to enqueued for %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v5, v6, v7, v8}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    iget-object v5, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v6, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    check-cast v5, Ln3/m0/c0/s/t;

    :try_start_7
    invoke-virtual {v5, v6, v7}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 21
    iget-object v5, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    check-cast v5, Ln3/m0/c0/s/t;

    :try_start_8
    invoke-virtual {v5, v0, v3, v4}, Ln3/m0/c0/s/t;->q(Ljava/lang/String;J)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 23
    iget-object p1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 24
    invoke-virtual {p0, v2}, Ln3/m0/c0/o;->f(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 26
    invoke-virtual {p0, v2}, Ln3/m0/c0/o;->f(Z)V

    .line 27
    throw p1

    .line 28
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4

    .line 29
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object v0, Ln3/m0/c0/o;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ln3/m0/c0/o;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 30
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {p0}, Ln3/m0/c0/o;->d()V

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object v0, Ln3/m0/c0/o;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ln3/m0/c0/o;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Ln3/m0/p;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    iget-object p1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    invoke-virtual {p1}, Ln3/m0/c0/s/p;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p0}, Ln3/m0/c0/o;->e()V

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {p0}, Ln3/m0/c0/o;->h()V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    check-cast v1, Ln3/m0/c0/s/t;

    invoke-virtual {v1, p1}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v1

    sget-object v2, Ln3/m0/x$a;->f:Ln3/m0/x$a;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v2, Ln3/m0/x$a;->d:Ln3/m0/x$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v1, Ln3/m0/c0/s/t;

    invoke-virtual {v1, v2, v3}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Ln3/m0/c0/o;->m:Ln3/m0/c0/s/b;

    check-cast v1, Ln3/m0/c0/s/c;

    invoke-virtual {v1, p1}, Ln3/m0/c0/s/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/m0/c0/o;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v0, v1}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->e()Ln3/m0/c0/s/n;

    move-result-object v1

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Ln3/m0/c0/s/o;

    :try_start_2
    invoke-virtual {v1, v2}, Ln3/m0/c0/s/o;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Ln3/m0/c0/o;->h:Landroidx/work/ListenableWorker$a;

    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->a(Landroidx/work/ListenableWorker$a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ln3/m0/x$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Ln3/m0/c0/o;->d()V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 12
    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Ln3/m0/c0/o;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/m0/c0/e;

    .line 15
    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ln3/m0/c0/e;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Ln3/m0/c0/o;->i:Ln3/m0/c;

    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Ln3/m0/c0/o;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln3/m0/c0/f;->a(Ln3/m0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v2, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_2
    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/c0/s/t;->q(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v3, -0x1

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_3
    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/c0/s/t;->n(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    .line 10
    throw v1
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/c0/s/t;->q(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v2, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_2
    invoke-virtual {v1, v2, v3}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_3
    invoke-virtual {v1, v2}, Ln3/m0/c0/s/t;->o(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v3, -0x1

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_4
    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/c0/s/t;->n(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 8
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 10
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    .line 11
    throw v1
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/t;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v1

    .line 5
    iget-object v3, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v3}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 6
    iget-object v0, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    .line 9
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v1}, Ln3/c0/y;->l()V

    if-nez v3, :cond_1

    .line 11
    iget-object v0, p0, Ln3/m0/c0/o;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Ln3/m0/c0/t/h;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v1, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    check-cast v0, Ln3/m0/c0/s/t;

    :try_start_3
    invoke-virtual {v0, v1, v3}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v2, -0x1

    check-cast v0, Ln3/m0/c0/s/t;

    :try_start_4
    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/c0/s/t;->n(Ljava/lang/String;J)I

    .line 14
    :cond_2
    iget-object v0, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Ln3/m0/c0/o;->j:Ln3/m0/c0/r/a;

    iget-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    check-cast v0, Ln3/m0/c0/d;

    .line 16
    iget-object v2, v0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    :try_start_5
    iget-object v3, v0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Ln3/m0/c0/d;->h()V

    .line 19
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 21
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 22
    iget-object v0, p0, Ln3/m0/c0/o;->q:Ln3/m0/c0/t/w/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/m0/c0/t/w/c;->i(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception p1

    .line 23
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    invoke-virtual {v1}, Ln3/c0/y;->l()V

    .line 25
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 26
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 27
    throw p1
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    check-cast v0, Ln3/m0/c0/s/t;

    invoke-virtual {v0, v1}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v2}, Ln3/m0/c0/o;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v4, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v3}, Ln3/m0/c0/o;->f(Z)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ln3/m0/c0/o;->b(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/o;->h:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    iget-object v1, v1, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    .line 5
    iget-object v2, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v3, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v2, v3, v1}, Ln3/m0/c0/s/t;->p(Ljava/lang/String;Ln3/m0/f;)V

    .line 6
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 8
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 10
    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    .line 11
    throw v1
.end method

.method public final i()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Ln3/m0/c0/o;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v2, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Ln3/m0/c0/o;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    check-cast v0, Ln3/m0/c0/s/t;

    invoke-virtual {v0, v2}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ln3/m0/c0/o;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ln3/m0/x$a;->a()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ln3/m0/c0/o;->f(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Ln3/m0/c0/o;->n:Ln3/m0/c0/s/v;

    iget-object v1, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    check-cast v0, Ln3/m0/c0/s/w;

    invoke-virtual {v0, v1}, Ln3/m0/c0/s/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln3/m0/c0/o;->o:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    const-string v5, ", "

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Ln3/m0/c0/o;->p:Ljava/lang/String;

    .line 11
    sget-object v0, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    invoke-virtual {p0}, Ln3/m0/c0/o;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_b

    .line 12
    :cond_2
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v3, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v1, v3}, Ln3/m0/c0/s/t;->k(Ljava/lang/String;)Ln3/m0/c0/s/p;

    move-result-object v1

    iput-object v1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    if-nez v1, :cond_3

    .line 14
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const-string v3, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 15
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0, v5}, Ln3/m0/c0/o;->f(Z)V

    .line 18
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    goto/16 :goto_4

    .line 19
    :cond_3
    iget-object v3, v1, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    if-eq v3, v0, :cond_4

    .line 20
    invoke-virtual {p0}, Ln3/m0/c0/o;->g()V

    .line 21
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 22
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const-string v3, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v4, v4, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 23
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_4

    .line 25
    :cond_4
    invoke-virtual {v1}, Ln3/m0/c0/s/p;->c()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    .line 26
    iget-object v3, v1, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    if-ne v3, v0, :cond_5

    iget v1, v1, Ln3/m0/c0/s/p;->k:I

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_2
    if-eqz v1, :cond_8

    .line 27
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 28
    iget-object v1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-wide v6, v1, Ln3/m0/c0/s/p;->n:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v5

    :goto_3
    if-nez v6, :cond_8

    .line 29
    invoke-virtual {v1}, Ln3/m0/c0/s/p;->a()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-gez v1, :cond_8

    .line 30
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const-string v3, "Delaying execution for %s because it is being executed before schedule."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v6, v6, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 31
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 32
    invoke-virtual {v0, v1, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {p0, v2}, Ln3/m0/c0/o;->f(Z)V

    .line 34
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    :goto_4
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    goto/16 :goto_b

    .line 36
    :cond_8
    :try_start_2
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 38
    iget-object v1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    invoke-virtual {v1}, Ln3/m0/c0/s/p;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    iget-object v1, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v1, v1, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    :goto_5
    move-object v4, v1

    goto/16 :goto_9

    .line 40
    :cond_9
    iget-object v1, p0, Ln3/m0/c0/o;->i:Ln3/m0/c;

    .line 41
    iget-object v1, v1, Ln3/m0/c;->d:Ln3/m0/m;

    .line 42
    iget-object v3, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v3, v3, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Ln3/m0/k;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/m0/k;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v4

    .line 47
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v6

    sget-object v7, Ln3/m0/k;->a:Ljava/lang/String;

    const-string v8, "Trouble instantiating + "

    invoke-static {v8, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Throwable;

    aput-object v4, v8, v5

    invoke-virtual {v6, v7, v3, v8}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object v4, v1

    :goto_6
    if-nez v4, :cond_a

    .line 48
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v3, v3, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Input Merger %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 49
    invoke-virtual {p0}, Ln3/m0/c0/o;->h()V

    goto/16 :goto_b

    .line 50
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v6, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v6, v6, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v6, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v7, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    check-cast v6, Ln3/m0/c0/s/t;

    .line 53
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 54
    invoke-static {v8, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v8

    if-nez v7, :cond_b

    .line 55
    invoke-virtual {v8, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_7

    .line 56
    :cond_b
    invoke-virtual {v8, v2, v7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 57
    :goto_7
    iget-object v2, v6, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 58
    iget-object v2, v6, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-static {v2, v8, v5, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 61
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 62
    invoke-static {v6}, Ln3/m0/f;->a([B)Ln3/m0/f;

    move-result-object v6

    .line 63
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 64
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 65
    invoke-virtual {v8}, Ln3/c0/y;->l()V

    .line 66
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-virtual {v4, v3}, Ln3/m0/k;->a(Ljava/util/List;)Ln3/m0/f;

    move-result-object v1

    goto/16 :goto_5

    .line 68
    :goto_9
    new-instance v1, Landroidx/work/WorkerParameters;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    .line 69
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Ln3/m0/c0/o;->o:Ljava/util/List;

    iget-object v6, p0, Ln3/m0/c0/o;->d:Landroidx/work/WorkerParameters$a;

    iget-object v2, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget v7, v2, Ln3/m0/c0/s/p;->k:I

    iget-object v2, p0, Ln3/m0/c0/o;->i:Ln3/m0/c;

    .line 70
    iget-object v8, v2, Ln3/m0/c;->a:Ljava/util/concurrent/Executor;

    .line 71
    iget-object v9, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    .line 72
    iget-object v10, v2, Ln3/m0/c;->c:Ln3/m0/b0;

    .line 73
    new-instance v11, Ln3/m0/c0/t/u;

    iget-object v2, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v12, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    invoke-direct {v11, v2, v12}, Ln3/m0/c0/t/u;-><init>(Landroidx/work/impl/WorkDatabase;Ln3/m0/c0/t/x/a;)V

    new-instance v12, Ln3/m0/c0/t/s;

    iget-object v2, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v13, p0, Ln3/m0/c0/o;->j:Ln3/m0/c0/r/a;

    iget-object v14, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    invoke-direct {v12, v2, v13, v14}, Ln3/m0/c0/t/s;-><init>(Landroidx/work/impl/WorkDatabase;Ln3/m0/c0/r/a;Ln3/m0/c0/t/x/a;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Ln3/m0/f;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Ln3/m0/c0/t/x/a;Ln3/m0/b0;Ln3/m0/v;Ln3/m0/j;)V

    .line 74
    iget-object v2, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_d

    .line 75
    iget-object v2, p0, Ln3/m0/c0/o;->i:Ln3/m0/c;

    .line 76
    iget-object v2, v2, Ln3/m0/c;->c:Ln3/m0/b0;

    .line 77
    iget-object v3, p0, Ln3/m0/c0/o;->a:Landroid/content/Context;

    iget-object v4, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v4, v4, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Ln3/m0/b0;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    .line 78
    :cond_d
    iget-object v2, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_e

    .line 79
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v3, v3, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Could not create Worker %s"

    .line 80
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Ln3/m0/c0/o;->h()V

    goto/16 :goto_b

    :cond_e
    const/4 v3, 0x0

    .line 83
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 84
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v4, v4, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 85
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0}, Ln3/m0/c0/o;->h()V

    goto/16 :goto_b

    .line 88
    :cond_f
    iget-object v2, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 89
    iget-object v2, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ln3/c0/q;->beginTransaction()V

    .line 90
    :try_start_5
    iget-object v2, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v3, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    check-cast v2, Ln3/m0/c0/s/t;

    :try_start_6
    invoke-virtual {v2, v3}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v2

    if-ne v2, v0, :cond_10

    .line 91
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    sget-object v2, Ln3/m0/x$a;->b:Ln3/m0/x$a;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    check-cast v0, Ln3/m0/c0/s/t;

    :try_start_7
    invoke-virtual {v0, v2, v4}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Ln3/m0/c0/o;->l:Ln3/m0/c0/s/q;

    iget-object v2, p0, Ln3/m0/c0/o;->b:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    check-cast v0, Ln3/m0/c0/s/t;

    :try_start_8
    invoke-virtual {v0, v2}, Ln3/m0/c0/s/t;->m(Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    .line 93
    :goto_a
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 94
    iget-object v0, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    if-eqz v3, :cond_12

    .line 95
    invoke-virtual {p0}, Ln3/m0/c0/o;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    .line 96
    :cond_11
    new-instance v0, Ln3/m0/c0/t/w/c;

    invoke-direct {v0}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 97
    new-instance v8, Ln3/m0/c0/t/r;

    iget-object v3, p0, Ln3/m0/c0/o;->a:Landroid/content/Context;

    iget-object v4, p0, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v5, p0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    .line 98
    iget-object v6, v1, Landroidx/work/WorkerParameters;->j:Ln3/m0/j;

    .line 99
    iget-object v7, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ln3/m0/c0/t/r;-><init>(Landroid/content/Context;Ln3/m0/c0/s/p;Landroidx/work/ListenableWorker;Ln3/m0/j;Ln3/m0/c0/t/x/a;)V

    .line 100
    iget-object v1, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    check-cast v1, Ln3/m0/c0/t/x/b;

    .line 101
    iget-object v1, v1, Ln3/m0/c0/t/x/b;->c:Ljava/util/concurrent/Executor;

    .line 102
    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    iget-object v1, v8, Ln3/m0/c0/t/r;->a:Ln3/m0/c0/t/w/c;

    .line 104
    new-instance v2, Ln3/m0/c0/m;

    invoke-direct {v2, p0, v1, v0}, Ln3/m0/c0/m;-><init>(Ln3/m0/c0/o;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/m0/c0/t/w/c;)V

    iget-object v3, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    .line 105
    check-cast v3, Ln3/m0/c0/t/x/b;

    .line 106
    iget-object v3, v3, Ln3/m0/c0/t/x/b;->c:Ljava/util/concurrent/Executor;

    .line 107
    invoke-virtual {v1, v2, v3}, Ln3/m0/c0/t/w/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 108
    iget-object v1, p0, Ln3/m0/c0/o;->p:Ljava/lang/String;

    .line 109
    new-instance v2, Ln3/m0/c0/n;

    invoke-direct {v2, p0, v0, v1}, Ln3/m0/c0/n;-><init>(Ln3/m0/c0/o;Ln3/m0/c0/t/w/c;Ljava/lang/String;)V

    iget-object v1, p0, Ln3/m0/c0/o;->g:Ln3/m0/c0/t/x/a;

    .line 110
    check-cast v1, Ln3/m0/c0/t/x/b;

    .line 111
    iget-object v1, v1, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    .line 112
    invoke-virtual {v0, v2, v1}, Ln3/m0/c0/t/w/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_b

    .line 113
    :cond_12
    invoke-virtual {p0}, Ln3/m0/c0/o;->g()V

    :goto_b
    return-void

    :catchall_0
    move-exception v0

    .line 114
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 115
    throw v0

    :catchall_1
    move-exception v0

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v8}, Ln3/c0/y;->l()V

    .line 118
    throw v0

    :catchall_2
    move-exception v0

    .line 119
    iget-object v1, p0, Ln3/m0/c0/o;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 120
    throw v0
.end method
