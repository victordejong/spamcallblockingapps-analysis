.class public abstract Ln3/m0/c0/q/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/q/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/q/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/m0/c0/q/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ln3/m0/c0/q/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/q/f/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Ln3/m0/c0/q/e/c$a;


# direct methods
.method public constructor <init>(Ln3/m0/c0/q/f/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/c0/q/f/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Ln3/m0/c0/q/e/c;->c:Ln3/m0/c0/q/f/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/m0/c0/q/e/c;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/m0/c0/q/e/c;->d:Ln3/m0/c0/q/e/c$a;

    invoke-virtual {p0, v0, p1}, Ln3/m0/c0/q/e/c;->e(Ln3/m0/c0/q/e/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Ln3/m0/c0/s/p;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ln3/m0/c0/s/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/p;

    .line 3
    invoke-virtual {p0, v0}, Ln3/m0/c0/q/e/c;->b(Ln3/m0/c0/s/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    iget-object v0, v0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Ln3/m0/c0/q/e/c;->c:Ln3/m0/c0/q/f/d;

    invoke-virtual {p1, p0}, Ln3/m0/c0/q/f/d;->b(Ln3/m0/c0/q/a;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Ln3/m0/c0/q/e/c;->c:Ln3/m0/c0/q/f/d;

    .line 8
    iget-object v0, p1, Ln3/m0/c0/q/f/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p1, Ln3/m0/c0/q/f/d;->d:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p1, Ln3/m0/c0/q/f/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 11
    invoke-virtual {p1}, Ln3/m0/c0/q/f/d;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Ln3/m0/c0/q/f/d;->e:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v3, Ln3/m0/c0/q/f/d;->f:Ljava/lang/String;

    const-string v4, "%s: initial state = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p1, Ln3/m0/c0/q/f/d;->e:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {p1}, Ln3/m0/c0/q/f/d;->d()V

    .line 16
    :cond_3
    iget-object p1, p1, Ln3/m0/c0/q/f/d;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ln3/m0/c0/q/e/c;->a(Ljava/lang/Object;)V

    .line 17
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_1
    iget-object p1, p0, Ln3/m0/c0/q/e/c;->d:Ln3/m0/c0/q/e/c$a;

    iget-object v0, p0, Ln3/m0/c0/q/e/c;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ln3/m0/c0/q/e/c;->e(Ln3/m0/c0/q/e/c$a;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Ln3/m0/c0/q/e/c$a;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/c0/q/e/c$a;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p0, p2}, Ln3/m0/c0/q/e/c;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    check-cast p1, Ln3/m0/c0/q/d;

    .line 4
    iget-object v0, p1, Ln3/m0/c0/q/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v2}, Ln3/m0/c0/q/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v3

    sget-object v4, Ln3/m0/c0/q/d;->d:Ljava/lang/String;

    const-string v5, "Constraints met for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p1, Ln3/m0/c0/q/d;->a:Ln3/m0/c0/q/c;

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1, v1}, Ln3/m0/c0/q/c;->m(Ljava/util/List;)V

    .line 12
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_5
    :goto_1
    iget-object p2, p0, Ln3/m0/c0/q/e/c;->a:Ljava/util/List;

    check-cast p1, Ln3/m0/c0/q/d;

    .line 14
    iget-object v0, p1, Ln3/m0/c0/q/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_1
    iget-object p1, p1, Ln3/m0/c0/q/d;->a:Ln3/m0/c0/q/c;

    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p1, p2}, Ln3/m0/c0/q/c;->c(Ljava/util/List;)V

    .line 17
    :cond_6
    monitor-exit v0

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    :goto_3
    return-void
.end method
