.class public Lp3/a/n1/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$p$e;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    iget-object v0, v0, Lp3/a/n1/m1$p$e;->l:Lp3/a/q;

    invoke-virtual {v0}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    iget-object v2, v1, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v3, v1, Lp3/a/n1/m1$p$e;->m:Lp3/a/p0;

    iget-object v1, v1, Lp3/a/n1/m1$p$e;->n:Lp3/a/c;

    .line 3
    invoke-virtual {v2, v3, v1}, Lp3/a/n1/m1$p;->i(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v2, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    iget-object v2, v2, Lp3/a/n1/m1$p$e;->l:Lp3/a/q;

    invoke-virtual {v2, v0}, Lp3/a/q;->q(Lp3/a/q;)V

    .line 5
    iget-object v2, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    .line 6
    monitor-enter v2

    .line 7
    :try_start_1
    iget-object v0, v2, Lp3/a/n1/b0;->f:Lp3/a/f;

    if-eqz v0, :cond_0

    .line 8
    monitor-exit v2

    goto :goto_0

    :cond_0
    const-string v0, "call"

    .line 9
    invoke-static {v1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lp3/a/n1/b0;->j(Lp3/a/f;)V

    .line 10
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v2}, Lp3/a/n1/b0;->i()V

    .line 12
    :goto_0
    iget-object v0, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    iget-object v1, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v1, v1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v1, v1, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v2, Lp3/a/n1/m1$p$e$a;

    invoke-direct {v2, v0}, Lp3/a/n1/m1$p$e$a;-><init>(Lp3/a/n1/m1$p$e;)V

    .line 13
    iget-object v0, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v2, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1}, Lp3/a/k1;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 16
    iget-object v2, p0, Lp3/a/n1/p1;->a:Lp3/a/n1/m1$p$e;

    iget-object v2, v2, Lp3/a/n1/m1$p$e;->l:Lp3/a/q;

    invoke-virtual {v2, v0}, Lp3/a/q;->q(Lp3/a/q;)V

    throw v1
.end method
