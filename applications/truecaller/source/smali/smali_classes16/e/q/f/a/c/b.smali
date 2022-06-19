.class public Le/q/f/a/c/b;
.super Le/q/f/a/c/e;
.source "SourceFile"


# instance fields
.field public d:Z

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/q/f/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/q/f/a/c/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/q/f/a/c/b;->d:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    .line 4
    iput-boolean v0, p0, Le/q/f/a/c/e;->a:Z

    .line 5
    iput-boolean v0, p0, Le/q/f/a/c/e;->b:Z

    .line 6
    iput-boolean v0, p0, Le/q/f/a/c/e;->c:Z

    const-string v0, ""

    .line 7
    iput-object v0, p0, Le/q/f/a/c/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/q/f/a/e/d/b;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/q/f/a/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Le/q/f/a/e/d/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/q/f/a/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/q/f/a/c/e;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Le/q/f/a/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    iget-object v1, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/c/b;

    iget-boolean v3, v3, Le/q/f/a/c/e;->b:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/f/a/c/b;

    iget-object v2, v2, Le/q/f/a/c/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/f/a/c/b;

    invoke-virtual {v2}, Le/q/f/a/c/b;->c()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Le/q/f/a/e/d/b;)Le/q/f/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/q/f/a/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Le/q/f/a/e/d/b;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Le/q/f/a/c/b;->e(Ljava/lang/String;)Le/q/f/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Le/q/f/a/c/b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/q/f/a/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Le/q/f/a/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/c/b;

    iget-object v0, v0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/q/f/a/c/b;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/q/f/a/c/b;

    return-object p1
.end method

.method public f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    iget-boolean v1, p0, Le/q/f/a/c/b;->d:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/f/a/c/b;

    iget-object v2, v2, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/q/f/a/c/b;->d:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/f/a/c/b;

    iget-object v2, v2, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
