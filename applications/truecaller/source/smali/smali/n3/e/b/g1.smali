.class public abstract Ln3/e/b/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/g1$a;,
        Ln3/e/b/g1$c;,
        Ln3/e/b/g1$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/e/b/g1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public c:Ln3/e/b/g1$b;

.field public d:Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Landroid/util/Size;

.field public h:Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Landroid/graphics/Rect;

.field public j:Ln3/e/b/j1/b0;

.field public k:Ln3/e/b/j1/j1;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/r1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/r1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/e/b/g1;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/b/g1;->b:Ljava/lang/Object;

    .line 4
    sget-object v0, Ln3/e/b/g1$b;->b:Ln3/e/b/g1$b;

    iput-object v0, p0, Ln3/e/b/g1;->c:Ln3/e/b/g1$b;

    .line 5
    invoke-static {}, Ln3/e/b/j1/j1;->a()Ln3/e/b/j1/j1;

    move-result-object v0

    iput-object v0, p0, Ln3/e/b/g1;->k:Ln3/e/b/j1/j1;

    .line 6
    iput-object p1, p0, Ln3/e/b/g1;->e:Ln3/e/b/j1/r1;

    .line 7
    iput-object p1, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/b/j1/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/g1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/b/g1;->j:Ln3/e/b/j1/b0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/e/b/g1;->a()Ln3/e/b/j1/b0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No camera attached to use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ln3/e/b/j1/b0;

    .line 2
    invoke-interface {v0}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v0

    invoke-interface {v0}, Ln3/e/b/j1/z;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(ZLn3/e/b/j1/s1;)Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ln3/e/b/j1/s1;",
            ")",
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    const-string v1, "<UnknownUseCase-"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln3/e/b/k1/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Ln3/e/b/j1/j0;)Ln3/e/b/j1/r1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/j0;",
            ")",
            "Ln3/e/b/j1/r1$a<",
            "***>;"
        }
    .end annotation
.end method

.method public f(Ln3/e/b/j1/z;Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)Ln3/e/b/j1/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/z;",
            "Ln3/e/b/j1/r1<",
            "*>;",
            "Ln3/e/b/j1/r1<",
            "*>;)",
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p3}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object p3

    .line 2
    sget-object v0, Ln3/e/b/k1/f;->n:Ln3/e/b/j1/j0$a;

    .line 3
    iget-object v1, p3, Ln3/e/b/j1/d1;->q:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object p3

    .line 5
    :goto_0
    iget-object v0, p0, Ln3/e/b/g1;->e:Ln3/e/b/j1/r1;

    invoke-interface {v0}, Ln3/e/b/j1/i1;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/j0$a;

    .line 6
    iget-object v2, p0, Ln3/e/b/g1;->e:Ln3/e/b/j1/r1;

    .line 7
    invoke-interface {v2, v1}, Ln3/e/b/j1/i1;->e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object v2

    iget-object v3, p0, Ln3/e/b/g1;->e:Ln3/e/b/j1/r1;

    .line 8
    invoke-interface {v3, v1}, Ln3/e/b/j1/i1;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p3, v1, v2, v3}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2}, Ln3/e/b/j1/i1;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/j0$a;

    .line 11
    invoke-virtual {v1}, Ln3/e/b/j1/j0$a;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ln3/e/b/k1/f;->n:Ln3/e/b/j1/j0$a;

    invoke-virtual {v3}, Ln3/e/b/j1/j0$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p2, v1}, Ln3/e/b/j1/i1;->e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object v2

    .line 13
    invoke-interface {p2, v1}, Ln3/e/b/j1/i1;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    invoke-virtual {p3, v1, v2, v3}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_3
    sget-object p2, Ln3/e/b/j1/q0;->d:Ln3/e/b/j1/j0$a;

    invoke-virtual {p3, p2}, Ln3/e/b/j1/d1;->c(Ln3/e/b/j1/j0$a;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Ln3/e/b/j1/q0;->b:Ln3/e/b/j1/j0$a;

    .line 16
    invoke-virtual {p3, p2}, Ln3/e/b/j1/d1;->c(Ln3/e/b/j1/j0$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p3, Ln3/e/b/j1/d1;->q:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    invoke-virtual {p0, p3}, Ln3/e/b/g1;->e(Ln3/e/b/j1/j0;)Ln3/e/b/j1/r1$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ln3/e/b/g1;->l(Ln3/e/b/j1/z;Ln3/e/b/j1/r1$a;)Ln3/e/b/j1/r1;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/g1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1$c;

    .line 2
    invoke-interface {v1, p0}, Ln3/e/b/g1$c;->j(Ln3/e/b/g1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/g1;->c:Ln3/e/b/g1$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/b/g1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1$c;

    .line 3
    invoke-interface {v1, p0}, Ln3/e/b/g1$c;->k(Ln3/e/b/g1;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/e/b/g1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1$c;

    .line 5
    invoke-interface {v1, p0}, Ln3/e/b/g1$c;->f(Ln3/e/b/g1;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public i(Ln3/e/b/j1/b0;Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/b0;",
            "Ln3/e/b/j1/r1<",
            "*>;",
            "Ln3/e/b/j1/r1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/g1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Ln3/e/b/g1;->j:Ln3/e/b/j1/b0;

    .line 3
    iget-object v1, p0, Ln3/e/b/g1;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-object p2, p0, Ln3/e/b/g1;->d:Ln3/e/b/j1/r1;

    .line 6
    iput-object p3, p0, Ln3/e/b/g1;->h:Ln3/e/b/j1/r1;

    .line 7
    invoke-interface {p1}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object p2

    iget-object p3, p0, Ln3/e/b/g1;->d:Ln3/e/b/j1/r1;

    iget-object v0, p0, Ln3/e/b/g1;->h:Ln3/e/b/j1/r1;

    invoke-virtual {p0, p2, p3, v0}, Ln3/e/b/g1;->f(Ln3/e/b/j1/z;Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)Ln3/e/b/j1/r1;

    move-result-object p2

    iput-object p2, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    const/4 p3, 0x0

    .line 8
    invoke-interface {p2, p3}, Ln3/e/b/k1/i;->u(Ln3/e/b/g1$a;)Ln3/e/b/g1$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p1}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object p1

    invoke-interface {p2, p1}, Ln3/e/b/g1$a;->b(Ln3/e/b/l0;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Ln3/e/b/j1/b0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/e/b/g1;->k()V

    .line 2
    iget-object v0, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ln3/e/b/k1/i;->u(Ln3/e/b/g1$a;)Ln3/e/b/g1$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ln3/e/b/g1$a;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/e/b/g1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Ln3/e/b/g1;->j:Ln3/e/b/j1/b0;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->n(Z)V

    .line 6
    iget-object p1, p0, Ln3/e/b/g1;->j:Ln3/e/b/j1/b0;

    .line 7
    iget-object v2, p0, Ln3/e/b/g1;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    iput-object v1, p0, Ln3/e/b/g1;->j:Ln3/e/b/j1/b0;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-object v1, p0, Ln3/e/b/g1;->g:Landroid/util/Size;

    .line 11
    iput-object v1, p0, Ln3/e/b/g1;->i:Landroid/graphics/Rect;

    .line 12
    iget-object p1, p0, Ln3/e/b/g1;->e:Ln3/e/b/j1/r1;

    iput-object p1, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    .line 13
    iput-object v1, p0, Ln3/e/b/g1;->d:Ln3/e/b/j1/r1;

    .line 14
    iput-object v1, p0, Ln3/e/b/g1;->h:Ln3/e/b/j1/r1;

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(Ln3/e/b/j1/z;Ln3/e/b/j1/r1$a;)Ln3/e/b/j1/r1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/z;",
            "Ln3/e/b/j1/r1$a<",
            "***>;)",
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation

    .line 1
    check-cast p2, Ln3/e/b/c1$b;

    .line 2
    invoke-virtual {p2}, Ln3/e/b/c1$b;->b()Ln3/e/b/j1/e1;

    move-result-object p1

    return-object p1
.end method

.method public abstract m(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public n(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/g1;->i:Landroid/graphics/Rect;

    return-void
.end method
