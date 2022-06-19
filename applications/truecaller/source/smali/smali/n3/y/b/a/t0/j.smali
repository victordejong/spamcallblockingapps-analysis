.class public final Ln3/y/b/a/t0/j;
.super Ln3/y/b/a/t0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/j$d;,
        Ln3/y/b/a/t0/j$c;,
        Ln3/y/b/a/t0/j$b;,
        Ln3/y/b/a/t0/j$f;,
        Ln3/y/b/a/t0/j$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/y/b/a/t0/g<",
        "Ln3/y/b/a/t0/j$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/y/b/a/t0/j$e;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/y/b/a/t0/j$d;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/os/Handler;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/y/b/a/t0/j$e;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln3/y/b/a/t0/s;",
            "Ln3/y/b/a/t0/j$e;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ln3/y/b/a/t0/j$e;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/y/b/a/t0/j$e;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/y/b/a/t0/j$d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ln3/y/b/a/t0/l0;


# direct methods
.method public varargs constructor <init>([Ln3/y/b/a/t0/t;)V
    .locals 4

    .line 1
    new-instance v0, Ln3/y/b/a/t0/l0$a;

    .line 2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ln3/y/b/a/t0/l0$a;-><init>(ILjava/util/Random;)V

    .line 3
    invoke-direct {p0}, Ln3/y/b/a/t0/g;-><init>()V

    .line 4
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Ln3/y/b/a/t0/l0$a;->b:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ln3/y/b/a/t0/l0$a;->e()Ln3/y/b/a/t0/l0;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 8
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->m:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->n:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->q:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->j:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/j;->v(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ln3/y/b/a/t0/j$d;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/j$d;

    .line 2
    iget-object v2, v1, Ln3/y/b/a/t0/j$d;->a:Landroid/os/Handler;

    iget-object v1, v1, Ln3/y/b/a/t0/j$d;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/j;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized B()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final C(Ln3/y/b/a/t0/j$e;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Ln3/y/b/a/t0/j$e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/t0/g$b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v1, p1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v0, v1}, Ln3/y/b/a/t0/t;->f(Ln3/y/b/a/t0/t$b;)V

    .line 6
    iget-object v0, p1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object p1, p1, Ln3/y/b/a/t0/g$b;->c:Ln3/y/b/a/t0/c0;

    invoke-interface {v0, p1}, Ln3/y/b/a/t0/t;->h(Ln3/y/b/a/t0/c0;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized D(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Ln3/y/b/a/t0/j;->E(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final E(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    const/4 p3, 0x1

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 2
    iget-object p4, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ln3/y/b/a/x0/x;->y(Ljava/util/List;II)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 4
    new-instance v1, Ln3/y/b/a/t0/j$f;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2, v0}, Ln3/y/b/a/t0/j$f;-><init>(ILjava/lang/Object;Ln3/y/b/a/t0/j$d;)V

    invoke-virtual {p4, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final F(Ln3/y/b/a/t0/j$d;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t0/j;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln3/y/b/a/t0/j;->p:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Ln3/y/b/a/t0/j;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final G()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/t0/j;->p:Z

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/j;->q:Ljava/util/Set;

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ln3/y/b/a/t0/j;->q:Ljava/util/Set;

    .line 4
    new-instance v2, Ln3/y/b/a/t0/j$b;

    iget-object v3, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    iget-object v4, p0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    invoke-direct {v2, v3, v4, v0}, Ln3/y/b/a/t0/j$b;-><init>(Ljava/util/Collection;Ln3/y/b/a/t0/l0;Z)V

    invoke-virtual {p0, v2}, Ln3/y/b/a/t0/b;->n(Ln3/y/b/a/l0;)V

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Ln3/y/b/a/t0/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/j;->m:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/j$e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    invoke-virtual {v1, p1}, Ln3/y/b/a/t0/r;->c(Ln3/y/b/a/t0/s;)V

    .line 5
    iget-object v1, v0, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    check-cast p1, Ln3/y/b/a/t0/q;

    iget-object p1, p1, Ln3/y/b/a/t0/q;->b:Ln3/y/b/a/t0/t$a;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Ln3/y/b/a/t0/j;->m:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ln3/y/b/a/t0/j;->z()V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Ln3/y/b/a/t0/j;->C(Ln3/y/b/a/t0/j$e;)V

    return-void
.end method

.method public e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 3

    .line 1
    iget-object v0, p1, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, v0}, Ln3/y/b/a/t0/t$a;->a(Ljava/lang/Object;)Ln3/y/b/a/t0/t$a;

    move-result-object p1

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/j;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/j$e;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ln3/y/b/a/t0/j$e;

    new-instance v1, Ln3/y/b/a/t0/j$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ln3/y/b/a/t0/j$c;-><init>(Ln3/y/b/a/t0/j$a;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/y/b/a/t0/j$e;-><init>(Ln3/y/b/a/t0/t;Z)V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Ln3/y/b/a/t0/j$e;->f:Z

    .line 8
    iget-object v1, v0, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    invoke-virtual {p0, v0, v1}, Ln3/y/b/a/t0/g;->t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V

    .line 9
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/g$b;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v1, v1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v2, v1}, Ln3/y/b/a/t0/t;->i(Ln3/y/b/a/t0/t$b;)V

    .line 13
    iget-object v1, v0, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, v0, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    .line 15
    invoke-virtual {v1, p1, p2, p3, p4}, Ln3/y/b/a/t0/r;->v(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/q;

    move-result-object p1

    .line 16
    iget-object p2, p0, Ln3/y/b/a/t0/j;->m:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Ln3/y/b/a/t0/j;->z()V

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/y/b/a/t0/g;->k()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public declared-synchronized m(Ln3/y/b/a/w0/e0;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Ln3/y/b/a/t0/g;->h:Ln3/y/b/a/w0/e0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/g;->g:Landroid/os/Handler;

    .line 3
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Ln3/y/b/a/t0/i;

    invoke-direct {v0, p0}, Ln3/y/b/a/t0/i;-><init>(Ln3/y/b/a/t0/j;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    .line 4
    iget-object p1, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/t0/j;->G()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    iget-object v0, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ln3/y/b/a/t0/l0;->h(II)Ln3/y/b/a/t0/l0;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 7
    iget-object p1, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Ln3/y/b/a/t0/j;->w(ILjava/util/Collection;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/j;->F(Ln3/y/b/a/t0/j$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ln3/y/b/a/t0/g;->o()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Ln3/y/b/a/t0/j;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v0, p0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    invoke-interface {v0}, Ln3/y/b/a/t0/l0;->e()Ln3/y/b/a/t0/l0;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 6
    iget-object v0, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ln3/y/b/a/t0/j;->p:Z

    .line 10
    iget-object v0, p0, Ln3/y/b/a/t0/j;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 11
    iget-object v0, p0, Ln3/y/b/a/t0/j;->j:Ljava/util/Set;

    invoke-virtual {p0, v0}, Ln3/y/b/a/t0/j;->A(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p(Ljava/lang/Object;Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/t$a;
    .locals 5

    .line 1
    check-cast p1, Ln3/y/b/a/t0/j$e;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p1, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/t$a;

    iget-wide v1, v1, Ln3/y/b/a/t0/t$a;->d:J

    iget-wide v3, p2, Ln3/y/b/a/t0/t$a;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p2, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Ln3/y/b/a/t0/j$e;->b:Ljava/lang/Object;

    .line 6
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ln3/y/b/a/t0/t$a;->a(Ljava/lang/Object;)Ln3/y/b/a/t0/t$a;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public r(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    check-cast p1, Ln3/y/b/a/t0/j$e;

    .line 2
    iget p1, p1, Ln3/y/b/a/t0/j$e;->e:I

    add-int/2addr p2, p1

    return p2
.end method

.method public s(Ljava/lang/Object;Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/y/b/a/t0/j$e;

    if-eqz p1, :cond_1

    .line 2
    iget p2, p1, Ln3/y/b/a/t0/j$e;->d:I

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    iget v0, p1, Ln3/y/b/a/t0/j$e;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/t0/j$e;

    .line 4
    invoke-virtual {p3}, Ln3/y/b/a/l0;->o()I

    move-result p3

    iget p2, p2, Ln3/y/b/a/t0/j$e;->e:I

    iget v0, p1, Ln3/y/b/a/t0/j$e;->e:I

    sub-int/2addr p2, v0

    sub-int/2addr p3, p2

    if-eqz p3, :cond_0

    .line 5
    iget p1, p1, Ln3/y/b/a/t0/j$e;->d:I

    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ln3/y/b/a/t0/j;->y(III)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/j;->F(Ln3/y/b/a/t0/j$d;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public declared-synchronized v(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/y/b/a/t0/t;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1, v1}, Ln3/y/b/a/t0/j;->x(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w(ILjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ln3/y/b/a/t0/j$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/j$e;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 2
    iget-object v3, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/t0/j$e;

    .line 3
    iget-object v4, v3, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    .line 4
    iget-object v4, v4, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 5
    iget v3, v3, Ln3/y/b/a/t0/j$e;->e:I

    .line 6
    invoke-virtual {v4}, Ln3/y/b/a/t0/o;->o()I

    move-result v4

    add-int/2addr v4, v3

    .line 7
    iput p1, v0, Ln3/y/b/a/t0/j$e;->d:I

    .line 8
    iput v4, v0, Ln3/y/b/a/t0/j$e;->e:I

    .line 9
    iput-boolean v2, v0, Ln3/y/b/a/t0/j$e;->f:Z

    .line 10
    iget-object v2, v0, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 11
    :cond_0
    iput p1, v0, Ln3/y/b/a/t0/j$e;->d:I

    .line 12
    iput v2, v0, Ln3/y/b/a/t0/j$e;->e:I

    .line 13
    iput-boolean v2, v0, Ln3/y/b/a/t0/j$e;->f:Z

    .line 14
    iget-object v2, v0, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    :goto_1
    iget-object v2, v0, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    .line 16
    iget-object v2, v2, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 17
    invoke-virtual {v2}, Ln3/y/b/a/t0/o;->o()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3, v2}, Ln3/y/b/a/t0/j;->y(III)V

    .line 18
    iget-object v2, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    iget-object p1, p0, Ln3/y/b/a/t0/j;->n:Ljava/util/Map;

    iget-object v2, v0, Ln3/y/b/a/t0/j$e;->b:Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, v0, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    invoke-virtual {p0, v0, p1}, Ln3/y/b/a/t0/g;->t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V

    .line 21
    iget-object p1, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Ln3/y/b/a/t0/j;->m:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/t0/g$b;

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object p1, p1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v0, p1}, Ln3/y/b/a/t0/t;->d(Ln3/y/b/a/t0/t$b;)V

    :goto_2
    move p1, v1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final x(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ln3/y/b/a/t0/t;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 2
    iget-object p3, p0, Ln3/y/b/a/t0/j;->k:Landroid/os/Handler;

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/t;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/t;

    .line 7
    new-instance v3, Ln3/y/b/a/t0/j$e;

    invoke-direct {v3, v1, v2}, Ln3/y/b/a/t0/j$e;-><init>(Ln3/y/b/a/t0/t;Z)V

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    invoke-interface {v0, p1, p4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 10
    new-instance v0, Ln3/y/b/a/t0/j$f;

    invoke-direct {v0, p1, p4, p2}, Ln3/y/b/a/t0/j$f;-><init>(ILjava/lang/Object;Ln3/y/b/a/t0/j$d;)V

    .line 11
    invoke-virtual {p3, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public final y(III)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/j$e;

    .line 3
    iget v1, v0, Ln3/y/b/a/t0/j$e;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Ln3/y/b/a/t0/j$e;->d:I

    .line 4
    iget v1, v0, Ln3/y/b/a/t0/j$e;->e:I

    add-int/2addr v1, p3

    iput v1, v0, Ln3/y/b/a/t0/j$e;->e:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/j;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/j$e;

    .line 4
    iget-object v2, v1, Ln3/y/b/a/t0/j$e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/g$b;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v1, v1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v2, v1}, Ln3/y/b/a/t0/t;->d(Ln3/y/b/a/t0/t$b;)V

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
