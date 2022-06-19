.class public Ls1/a/a/a/v0/d/a/d0/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/d0/n/b;


# instance fields
.field public final a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/d/a/f0/n;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/d/a/f0/g;

.field public final e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/d/a/f0/p;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/f0/g;Ls1/z/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/f0/g;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/d/a/f0/p;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->d:Ls1/a/a/a/v0/d/a/f0/g;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->e:Ls1/z/b/l;

    .line 2
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/n/a$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/n/a$a;-><init>(Ls1/a/a/a/v0/d/a/d0/n/a;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->a:Ls1/z/b/l;

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->r()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    check-cast p1, Ls1/e0/h;

    .line 6
    new-instance v0, Ls1/e0/h$a;

    invoke-direct {v0, p1}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 7
    :goto_0
    invoke-virtual {v0}, Ls1/e0/h$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object p1

    .line 8
    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/d/a/f0/q;

    .line 9
    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    .line 10
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 14
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->b:Ljava/util/Map;

    .line 16
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->d:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->getFields()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->e:Ls1/z/b/l;

    invoke-static {p1, p2}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    check-cast p1, Ls1/e0/h;

    .line 19
    new-instance v0, Ls1/e0/h$a;

    invoke-direct {v0, p1}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 20
    :goto_1
    invoke-virtual {v0}, Ls1/e0/h$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object p1

    .line 21
    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/d/a/f0/n;

    .line 22
    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_2
    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->d:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->r()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->a:Ls1/z/b/l;

    invoke-static {v0, v1}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    check-cast v0, Ls1/e0/h;

    .line 3
    new-instance v2, Ls1/e0/h$a;

    invoke-direct {v2, v0}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 4
    :goto_0
    invoke-virtual {v2}, Ls1/e0/h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ls1/a/a/a/v0/d/a/f0/q;

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/a/f0/n;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/n;

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->d:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->e:Ls1/z/b/l;

    invoke-static {v0, v1}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    check-cast v0, Ls1/e0/h;

    .line 3
    new-instance v2, Ls1/e0/h$a;

    invoke-direct {v2, v0}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 4
    :goto_0
    invoke-virtual {v2}, Ls1/e0/h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ls1/a/a/a/v0/d/a/f0/n;

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public d(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object p1
.end method
