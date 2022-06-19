.class public Lp3/a/n1/d0$e;
.super Lp3/a/n1/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final j:Lp3/a/i0$f;

.field public final k:Lp3/a/q;

.field public final synthetic l:Lp3/a/n1/d0;


# direct methods
.method public constructor <init>(Lp3/a/n1/d0;Lp3/a/i0$f;Lp3/a/n1/d0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    invoke-direct {p0}, Lp3/a/n1/e0;-><init>()V

    .line 2
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/d0$e;->k:Lp3/a/q;

    .line 3
    iput-object p2, p0, Lp3/a/n1/d0$e;->j:Lp3/a/i0$f;

    return-void
.end method


# virtual methods
.method public h(Lp3/a/g1;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lp3/a/n1/e0;->h(Lp3/a/g1;)V

    .line 2
    iget-object p1, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    .line 3
    iget-object p1, p1, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    .line 6
    iget-object v1, v0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    .line 8
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 9
    iget-object v1, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    invoke-virtual {v1}, Lp3/a/n1/d0;->h()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    .line 11
    iget-object v1, v0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    .line 12
    iget-object v0, v0, Lp3/a/n1/d0;->f:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v1, v0}, Lp3/a/k1;->b(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    .line 15
    iget-object v1, v0, Lp3/a/n1/d0;->j:Lp3/a/g1;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, v0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    .line 17
    iget-object v0, v0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v1, v0}, Lp3/a/k1;->b(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    .line 21
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Lp3/a/n1/d0$e;->l:Lp3/a/n1/d0;

    .line 23
    iget-object p1, p1, Lp3/a/n1/d0;->d:Lp3/a/k1;

    .line 24
    invoke-virtual {p1}, Lp3/a/k1;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public l(Lp3/a/n1/z0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0$e;->j:Lp3/a/i0$f;

    check-cast v0, Lp3/a/n1/c2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/c2;->a:Lp3/a/c;

    .line 3
    invoke-virtual {v0}, Lp3/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lp3/a/n1/z0;->a:Ljava/util/ArrayList;

    const-string v1, "wait_for_ready"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lp3/a/n1/e0;->l(Lp3/a/n1/z0;)V

    return-void
.end method
