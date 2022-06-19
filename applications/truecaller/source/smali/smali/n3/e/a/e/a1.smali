.class public final Ln3/e/a/e/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/y;


# instance fields
.field public final a:Ln3/e/b/j1/e0;

.field public final b:Ln3/e/b/j1/d0;

.field public final c:Ln3/e/a/e/k2/k;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/e/a/e/c1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/e/b/j1/e0;Ln3/e/b/m0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/x0;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/a1;->e:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Ln3/e/a/e/a1;->a:Ln3/e/b/j1/e0;

    .line 4
    new-instance v0, Ln3/e/b/j1/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/e/b/j1/d0;-><init>(I)V

    iput-object v0, p0, Ln3/e/a/e/a1;->b:Ln3/e/b/j1/d0;

    .line 5
    invoke-virtual {p2}, Ln3/e/b/j1/e0;->b()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, Ln3/e/a/e/k2/k;->a(Landroid/content/Context;Landroid/os/Handler;)Ln3/e/a/e/k2/k;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/a1;->c:Ln3/e/a/e/k2/k;

    .line 6
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1}, Ln3/e/a/e/k2/k;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez p3, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 9
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ln3/e/a/e/k2/a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ln3/e/b/n0; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ln3/e/b/m0;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 11
    invoke-static {p1, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->S(Ln3/e/a/e/k2/k;Ljava/lang/Integer;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ln3/e/a/e/k2/a; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ln3/e/b/n0; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 12
    :goto_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0, v2}, Ln3/e/a/e/a1;->c(Ljava/lang/String;)Ln3/e/a/e/c1;

    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ln3/e/a/e/k2/a; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ln3/e/b/n0; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 17
    :cond_2
    :try_start_3
    invoke-virtual {p3, v1}, Ln3/e/b/m0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/e/b/l0;

    .line 19
    check-cast p3, Ln3/e/b/j1/z;

    invoke-interface {p3}, Ln3/e/b/j1/z;->a()Ljava/lang/String;

    move-result-object p3

    .line 20
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ln3/e/a/e/k2/a; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ln3/e/b/n0; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 21
    :catch_1
    :cond_3
    iput-object p2, p0, Ln3/e/a/e/a1;->d:Ljava/util/List;

    return-void

    :catch_2
    move-exception p1

    .line 22
    new-instance p2, Ln3/e/b/x0;

    invoke-direct {p2, p1}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 23
    new-instance p2, Ln3/e/b/x0;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->L(Ln3/e/a/e/k2/a;)Ln3/e/b/n0;

    move-result-object p1

    invoke-direct {p2, p1}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Ln3/e/a/e/a1;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ln3/e/b/j1/b0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/n0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/a1;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ln3/e/a/e/b1;

    iget-object v2, p0, Ln3/e/a/e/a1;->c:Ln3/e/a/e/k2/k;

    .line 3
    invoke-virtual {p0, p1}, Ln3/e/a/e/a1;->c(Ljava/lang/String;)Ln3/e/a/e/c1;

    move-result-object v4

    iget-object v5, p0, Ln3/e/a/e/a1;->b:Ln3/e/b/j1/d0;

    iget-object v1, p0, Ln3/e/a/e/a1;->a:Ln3/e/b/j1/e0;

    .line 4
    invoke-virtual {v1}, Ln3/e/b/j1/e0;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Ln3/e/a/e/a1;->a:Ln3/e/b/j1/e0;

    .line 5
    invoke-virtual {v1}, Ln3/e/b/j1/e0;->b()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Ln3/e/a/e/b1;-><init>(Ln3/e/a/e/k2/k;Ljava/lang/String;Ln3/e/a/e/c1;Ln3/e/b/j1/d0;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given camera id is not on the available camera id list."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Ln3/e/a/e/c1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/n0;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/a1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/a/e/c1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/e/a/e/c1;

    iget-object v1, p0, Ln3/e/a/e/a1;->c:Ln3/e/a/e/k2/k;

    .line 3
    invoke-virtual {v1, p1}, Ln3/e/a/e/k2/k;->b(Ljava/lang/String;)Ln3/e/a/e/k2/e;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ln3/e/a/e/c1;-><init>(Ljava/lang/String;Ln3/e/a/e/k2/e;)V

    .line 4
    iget-object v1, p0, Ln3/e/a/e/a1;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ln3/e/a/e/k2/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->L(Ln3/e/a/e/k2/a;)Ln3/e/b/n0;

    move-result-object p1

    throw p1
.end method
