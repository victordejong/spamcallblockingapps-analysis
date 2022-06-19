.class public Lp3/a/n1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/e0$o;
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public b:Lp3/a/n1/t;

.field public c:Lp3/a/n1/s;

.field public d:Lp3/a/g1;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lp3/a/n1/e0$o;

.field public g:J

.field public h:J

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "compressor"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$c;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$c;-><init>(Lp3/a/n1/e0;Lp3/a/m;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/e0;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    invoke-interface {v0, p1}, Lp3/a/n1/s2;->b(I)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lp3/a/n1/e0$a;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/e0$a;-><init>(Lp3/a/n1/e0;I)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0;->o(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public c(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "message"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Lp3/a/n1/e0;->a:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    invoke-interface {v0, p1}, Lp3/a/n1/s2;->c(Ljava/io/InputStream;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lp3/a/n1/e0$k;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/e0$k;-><init>(Lp3/a/n1/e0;Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0;->o(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$f;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$f;-><init>(Lp3/a/n1/e0;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$g;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$g;-><init>(Lp3/a/n1/e0;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$b;

    invoke-direct {v1, p0}, Lp3/a/n1/e0$b;-><init>(Lp3/a/n1/e0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/e0;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    invoke-interface {v0}, Lp3/a/n1/s2;->flush()V

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lp3/a/n1/e0$l;

    invoke-direct {v0, p0}, Lp3/a/n1/e0$l;-><init>(Lp3/a/n1/e0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0;->o(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$d;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$d;-><init>(Lp3/a/n1/e0;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lp3/a/g1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v0, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "reason"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lp3/a/n1/x1;->a:Lp3/a/n1/x1;

    invoke-virtual {p0, v0}, Lp3/a/n1/e0;->r(Lp3/a/n1/s;)V

    .line 6
    iput-object p1, p0, Lp3/a/n1/e0;->d:Lp3/a/g1;

    move v1, v2

    .line 7
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Lp3/a/n1/e0$m;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/e0$m;-><init>(Lp3/a/n1/e0;Lp3/a/g1;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0;->o(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lp3/a/n1/e0;->p()V

    .line 10
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    new-instance v1, Lp3/a/o0;

    invoke-direct {v1}, Lp3/a/o0;-><init>()V

    invoke-interface {v0, p1, v1}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lp3/a/n1/e0$n;

    invoke-direct {v0, p0}, Lp3/a/n1/e0$n;-><init>(Lp3/a/n1/e0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0;->o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Lp3/a/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$e;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$e;-><init>(Lp3/a/n1/e0;Lp3/a/t;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v0, "authority"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$j;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$j;-><init>(Lp3/a/n1/e0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l(Lp3/a/n1/z0;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    .line 5
    iget-wide v1, p0, Lp3/a/n1/e0;->h:J

    iget-wide v3, p0, Lp3/a/n1/e0;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    .line 6
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    invoke-interface {v0, p1}, Lp3/a/n1/s;->l(Lp3/a/n1/z0;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lp3/a/n1/e0;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    const-string v0, "waiting_for_connection"

    .line 8
    iget-object p1, p1, Lp3/a/n1/z0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Lp3/a/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    new-instance v1, Lp3/a/n1/e0$h;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/e0$h;-><init>(Lp3/a/n1/e0;Lp3/a/r;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Lp3/a/n1/t;)V
    .locals 4

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/e0;->d:Lp3/a/g1;

    .line 5
    iget-boolean v1, p0, Lp3/a/n1/e0;->a:Z

    if-nez v1, :cond_1

    .line 6
    new-instance v2, Lp3/a/n1/e0$o;

    invoke-direct {v2, p1}, Lp3/a/n1/e0$o;-><init>(Lp3/a/n1/t;)V

    iput-object v2, p0, Lp3/a/n1/e0;->f:Lp3/a/n1/e0$o;

    move-object p1, v2

    .line 7
    :cond_1
    iput-object p1, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lp3/a/n1/e0;->g:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Lp3/a/o0;

    invoke-direct {v1}, Lp3/a/o0;-><init>()V

    invoke-interface {p1, v0, v1}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lp3/a/n1/e0;->q(Lp3/a/n1/t;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lp3/a/n1/e0;->a:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final p()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lp3/a/n1/e0;->a:Z

    .line 6
    iget-object v2, p0, Lp3/a/n1/e0;->f:Lp3/a/n1/e0$o;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v4, v2, Lp3/a/n1/e0$o;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iput-object v0, v2, Lp3/a/n1/e0$o;->c:Ljava/util/List;

    .line 12
    iput-boolean v1, v2, Lp3/a/n1/e0$o;->b:Z

    .line 13
    monitor-exit v2

    goto :goto_3

    .line 14
    :cond_0
    iget-object v4, v2, Lp3/a/n1/e0$o;->c:Ljava/util/List;

    .line 15
    iput-object v3, v2, Lp3/a/n1/e0$o;->c:Ljava/util/List;

    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 18
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 19
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 20
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_3
    return-void

    .line 21
    :cond_3
    :try_start_3
    iget-object v1, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    .line 23
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 25
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 26
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 27
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final q(Lp3/a/n1/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lp3/a/n1/e0;->i:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    invoke-interface {v0, p1}, Lp3/a/n1/s;->n(Lp3/a/n1/t;)V

    return-void
.end method

.method public final r(Lp3/a/n1/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Ln3/g0/y;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lp3/a/n1/e0;->h:J

    return-void
.end method

.method public final s(Lp3/a/n1/s;)Ljava/lang/Runnable;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    :cond_0
    const-string v0, "stream"

    .line 4
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lp3/a/n1/e0;->r(Lp3/a/n1/s;)V

    .line 5
    iget-object p1, p0, Lp3/a/n1/e0;->b:Lp3/a/n1/t;

    if-nez p1, :cond_1

    .line 6
    iput-object v1, p0, Lp3/a/n1/e0;->e:Ljava/util/List;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp3/a/n1/e0;->a:Z

    .line 8
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    return-object v1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lp3/a/n1/e0;->q(Lp3/a/n1/t;)V

    .line 10
    new-instance p1, Lp3/a/n1/e0$i;

    invoke-direct {p1, p0}, Lp3/a/n1/e0$i;-><init>(Lp3/a/n1/e0;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
