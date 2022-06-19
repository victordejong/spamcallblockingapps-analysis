.class public abstract Ln3/y/b/a/t0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/t;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/b/a/t0/t$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ln3/y/b/a/t0/t$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/t0/c0$a;

.field public d:Landroid/os/Looper;

.field public e:Ln3/y/b/a/l0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ln3/y/b/a/t0/b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ln3/y/b/a/t0/c0$a;

    invoke-direct {v0}, Ln3/y/b/a/t0/c0$a;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/b;->c:Ln3/y/b/a/t0/c0$a;

    return-void
.end method


# virtual methods
.method public final b(Ln3/y/b/a/t0/t$b;Ln3/y/b/a/w0/e0;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/b;->d:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 3
    iget-object v1, p0, Ln3/y/b/a/t0/b;->e:Ln3/y/b/a/l0;

    .line 4
    iget-object v2, p0, Ln3/y/b/a/t0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Ln3/y/b/a/t0/b;->d:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 6
    iput-object v0, p0, Ln3/y/b/a/t0/b;->d:Landroid/os/Looper;

    .line 7
    iget-object v0, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p2}, Ln3/y/b/a/t0/b;->m(Ln3/y/b/a/w0/e0;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/b;->i(Ln3/y/b/a/t0/t$b;)V

    .line 10
    invoke-interface {p1, p0, v1}, Ln3/y/b/a/t0/t$b;->a(Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final d(Ln3/y/b/a/t0/t$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/t0/b;->k()V

    :cond_0
    return-void
.end method

.method public final f(Ln3/y/b/a/t0/t$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln3/y/b/a/t0/b;->d:Landroid/os/Looper;

    .line 4
    iput-object p1, p0, Ln3/y/b/a/t0/b;->e:Ln3/y/b/a/l0;

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/t0/b;->o()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/b;->d(Ln3/y/b/a/t0/t$b;)V

    :goto_0
    return-void
.end method

.method public final g(Landroid/os/Handler;Ln3/y/b/a/t0/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/b;->c:Ln3/y/b/a/t0/c0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t0/c0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ln3/y/b/a/t0/c0$a$a;

    invoke-direct {v1, p1, p2}, Ln3/y/b/a/t0/c0$a$a;-><init>(Landroid/os/Handler;Ln3/y/b/a/t0/c0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Ln3/y/b/a/t0/c0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/b;->c:Ln3/y/b/a/t0/c0$a;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/t0/c0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/t0/c0$a$a;

    .line 3
    iget-object v3, v2, Ln3/y/b/a/t0/c0$a$a;->b:Ln3/y/b/a/t0/c0;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Ln3/y/b/a/t0/c0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Ln3/y/b/a/t0/t$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/b;->d:Landroid/os/Looper;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/t0/b;->l()V

    :cond_0
    return-void
.end method

.method public final j(Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/c0$a;
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/b;->c:Ln3/y/b/a/t0/c0$a;

    .line 2
    new-instance v7, Ln3/y/b/a/t0/c0$a;

    iget-object v2, v0, Ln3/y/b/a/t0/c0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Ln3/y/b/a/t0/c0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILn3/y/b/a/t0/t$a;J)V

    return-object v7
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public abstract m(Ln3/y/b/a/w0/e0;)V
.end method

.method public final n(Ln3/y/b/a/l0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/b;->e:Ln3/y/b/a/l0;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/t$b;

    .line 3
    invoke-interface {v1, p0, p1}, Ln3/y/b/a/t0/t$b;->a(Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract o()V
.end method
