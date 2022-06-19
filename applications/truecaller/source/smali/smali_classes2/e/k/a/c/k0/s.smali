.class public Le/k/a/c/k0/s;
.super Le/k/a/c/k0/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/k0/f<",
        "Le/k/a/c/k0/s;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/k0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/k0/f;-><init>(Le/k/a/c/k0/l;)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public N(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    sget-object p2, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l;

    return-object p1
.end method

.method public O(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/k/a/c/l;",
            ">(",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ")TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    sget-object p2, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    return-object v0
.end method

.method public b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Le/k/a/c/z;->u:Le/k/a/c/z;

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    .line 4
    invoke-virtual {p3, p0, v1}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v1

    .line 5
    invoke-virtual {p3, p1, v1}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/k0/b;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v4}, Le/k/a/c/l;->y()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p2}, Le/k/a/c/m$a;->d(Le/k/a/c/a0;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, p1, p2}, Le/k/a/c/k0/b;->c(Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p3, p1, v1}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Le/k/a/c/z;->u:Le/k/a/c/z;

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, p0}, Le/k/a/b/g;->O1(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/k0/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v3}, Le/k/a/c/l;->y()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2}, Le/k/a/c/m$a;->d(Le/k/a/c/a0;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, p1, p2}, Le/k/a/c/k0/b;->c(Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    return-void
.end method

.method public d(Le/k/a/c/a0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    instance-of v1, p1, Le/k/a/c/k0/s;

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/k/a/c/k0/s;

    .line 3
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    iget-object p1, p1, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Le/k/a/c/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/l;

    return-object p1
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->g:Le/k/a/c/k0/m;

    return-object v0
.end method
