.class public final Le/k/a/c/d0/y/p;
.super Le/k/a/c/d0/u$a;
.source "SourceFile"


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/u;Ljava/lang/String;Le/k/a/c/d0/u;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/u$a;-><init>(Le/k/a/c/d0/u;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/y/p;->p:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/k/a/c/d0/y/p;->r:Le/k/a/c/d0/u;

    .line 4
    iput-boolean p4, p0, Le/k/a/c/d0/y/p;->q:Z

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    iget-boolean v0, p0, Le/k/a/c/d0/y/p;->q:Z

    if-eqz v0, :cond_6

    .line 2
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Le/k/a/c/d0/y/p;->r:Le/k/a/c/d0/u;

    invoke-virtual {v4, v3, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 6
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Le/k/a/c/d0/y/p;->r:Le/k/a/c/d0/u;

    invoke-virtual {v2, v1, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 9
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v2, p0, Le/k/a/c/d0/y/p;->r:Le/k/a/c/d0/u;

    invoke-virtual {v2, v1, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported container type ("

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") when resolving reference \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/k/a/c/d0/y/p;->p:Ljava/lang/String;

    const-string v1, "\'"

    invoke-static {v0, p2, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_6
    iget-object v0, p0, Le/k/a/c/d0/y/p;->r:Le/k/a/c/d0/u;

    invoke-virtual {v0, p2, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_7
    iget-object v0, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I(Le/k/a/c/d0/u;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should never try to reset delegate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p3, p1}, Le/k/a/c/d0/y/p;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Le/k/a/c/d0/y/p;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Le/k/a/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1}, Le/k/a/c/d0/u;->l(Le/k/a/c/f;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/y/p;->r:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1}, Le/k/a/c/d0/u;->l(Le/k/a/c/f;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/y/p;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
