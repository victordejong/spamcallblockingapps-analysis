.class public final Ln3/e/b/j1/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/e/b/j1/k0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ln3/e/b/j1/z0;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/q;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Ln3/e/b/j1/b1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/g0$a;->a:Ljava/util/Set;

    .line 3
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v0

    iput-object v0, p0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ln3/e/b/j1/g0$a;->c:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/g0$a;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ln3/e/b/j1/g0$a;->e:Z

    .line 7
    new-instance v0, Ln3/e/b/j1/b1;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v0, v1}, Ln3/e/b/j1/b1;-><init>(Ljava/util/Map;)V

    .line 8
    iput-object v0, p0, Ln3/e/b/j1/g0$a;->f:Ln3/e/b/j1/b1;

    return-void
.end method

.method public constructor <init>(Ln3/e/b/j1/g0;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/g0$a;->a:Ljava/util/Set;

    .line 11
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v1

    iput-object v1, p0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Ln3/e/b/j1/g0$a;->c:I

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/e/b/j1/g0$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Ln3/e/b/j1/g0$a;->e:Z

    .line 15
    new-instance v1, Ln3/e/b/j1/b1;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v1, v2}, Ln3/e/b/j1/b1;-><init>(Ljava/util/Map;)V

    .line 16
    iput-object v1, p0, Ln3/e/b/j1/g0$a;->f:Ln3/e/b/j1/b1;

    .line 17
    iget-object v1, p1, Ln3/e/b/j1/g0;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p1, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    invoke-static {v0}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object v0

    iput-object v0, p0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    .line 19
    iget v0, p1, Ln3/e/b/j1/g0;->c:I

    iput v0, p0, Ln3/e/b/j1/g0$a;->c:I

    .line 20
    iget-object v0, p0, Ln3/e/b/j1/g0$a;->d:Ljava/util/List;

    .line 21
    iget-object v1, p1, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-boolean v0, p1, Ln3/e/b/j1/g0;->e:Z

    .line 24
    iput-boolean v0, p0, Ln3/e/b/j1/g0$a;->e:Z

    .line 25
    iget-object p1, p1, Ln3/e/b/j1/g0;->f:Ln3/e/b/j1/o1;

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    iget-object v1, p1, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v2}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ln3/e/b/j1/b1;

    invoke-direct {p1, v0}, Ln3/e/b/j1/b1;-><init>(Ljava/util/Map;)V

    .line 31
    iput-object p1, p0, Ln3/e/b/j1/g0$a;->f:Ln3/e/b/j1/b1;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/e/b/j1/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/q;

    .line 2
    invoke-virtual {p0, v0}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ln3/e/b/j1/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/g0$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/g0$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duplicate camera capture callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ln3/e/b/j1/j0;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ln3/e/b/j1/j0;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/j0$a;

    .line 2
    iget-object v2, p0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    const/4 v3, 0x0

    check-cast v2, Ln3/e/b/j1/d1;

    invoke-virtual {v2, v1, v3}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-interface {p1, v1}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v2, Ln3/e/b/j1/y0;

    if-eqz v4, :cond_0

    .line 5
    check-cast v2, Ln3/e/b/j1/y0;

    check-cast v3, Ln3/e/b/j1/y0;

    invoke-virtual {v3}, Ln3/e/b/j1/y0;->b()Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, v2, Ln3/e/b/j1/y0;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_0
    instance-of v2, v3, Ln3/e/b/j1/y0;

    if-eqz v2, :cond_1

    .line 8
    check-cast v3, Ln3/e/b/j1/y0;

    invoke-virtual {v3}, Ln3/e/b/j1/y0;->a()Ln3/e/b/j1/y0;

    move-result-object v3

    .line 9
    :cond_1
    iget-object v2, p0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    .line 10
    invoke-interface {p1, v1}, Ln3/e/b/j1/j0;->e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object v4

    .line 11
    check-cast v2, Ln3/e/b/j1/a1;

    invoke-virtual {v2, v1, v4, v3}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()Ln3/e/b/j1/g0;
    .locals 11

    .line 1
    new-instance v7, Ln3/e/b/j1/g0;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Ln3/e/b/j1/g0$a;->a:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    .line 2
    invoke-static {v0}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v2

    iget v3, p0, Ln3/e/b/j1/g0$a;->c:I

    iget-object v4, p0, Ln3/e/b/j1/g0$a;->d:Ljava/util/List;

    iget-boolean v5, p0, Ln3/e/b/j1/g0$a;->e:Z

    iget-object v0, p0, Ln3/e/b/j1/g0$a;->f:Ln3/e/b/j1/b1;

    .line 3
    sget-object v6, Ln3/e/b/j1/o1;->b:Ln3/e/b/j1/o1;

    .line 4
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 5
    iget-object v8, v0, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v9}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v8, Ln3/e/b/j1/o1;

    invoke-direct {v8, v6}, Ln3/e/b/j1/o1;-><init>(Ljava/util/Map;)V

    move-object v0, v7

    move-object v6, v8

    .line 9
    invoke-direct/range {v0 .. v6}, Ln3/e/b/j1/g0;-><init>(Ljava/util/List;Ln3/e/b/j1/j0;ILjava/util/List;ZLn3/e/b/j1/o1;)V

    return-object v7
.end method
