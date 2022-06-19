.class public final Ln3/e/b/j1/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/j1/p1$b;,
        Ln3/e/b/j1/p1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln3/e/b/j1/p1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Ln3/e/b/j1/p1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/b/j1/j1$f;
    .locals 6

    .line 1
    new-instance v0, Ln3/e/b/j1/j1$f;

    invoke-direct {v0}, Ln3/e/b/j1/j1$f;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/e/b/j1/p1$b;

    .line 5
    iget-boolean v5, v4, Ln3/e/b/j1/p1$b;->b:Z

    if-eqz v5, :cond_0

    .line 6
    iget-object v4, v4, Ln3/e/b/j1/p1$b;->a:Ln3/e/b/j1/j1;

    .line 7
    invoke-virtual {v0, v4}, Ln3/e/b/j1/j1$f;->a(Ln3/e/b/j1/j1;)V

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All use case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for camera: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/e/b/j1/p1;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "UseCaseAttachState"

    .line 11
    invoke-static {v3, v1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ln3/e/b/j1/j1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/b/j1/j;->a:Ln3/e/b/j1/j;

    .line 2
    invoke-virtual {p0, v0}, Ln3/e/b/j1/p1;->c(Ln3/e/b/j1/p1$a;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ln3/e/b/j1/p1$a;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/p1$a;",
            ")",
            "Ljava/util/Collection<",
            "Ln3/e/b/j1/j1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
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

    check-cast v3, Ln3/e/b/j1/p1$b;

    invoke-interface {p1, v3}, Ln3/e/b/j1/p1$a;->a(Ln3/e/b/j1/p1$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/p1$b;

    .line 5
    iget-object v2, v2, Ln3/e/b/j1/p1$b;->a:Ln3/e/b/j1/j1;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/e/b/j1/p1$b;

    .line 3
    iget-boolean p1, p1, Ln3/e/b/j1/p1$b;->b:Z

    return p1
.end method

.method public e(Ljava/lang/String;Ln3/e/b/j1/j1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/p1$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/e/b/j1/p1$b;

    invoke-direct {v0, p2}, Ln3/e/b/j1/p1$b;-><init>(Ln3/e/b/j1/j1;)V

    .line 3
    iget-object p2, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Ln3/e/b/j1/p1$b;->c:Z

    return-void
.end method

.method public f(Ljava/lang/String;Ln3/e/b/j1/j1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/p1$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/e/b/j1/p1$b;

    invoke-direct {v0, p2}, Ln3/e/b/j1/p1$b;-><init>(Ln3/e/b/j1/j1;)V

    .line 3
    iget-object p2, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Ln3/e/b/j1/p1$b;->b:Z

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/p1$b;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Ln3/e/b/j1/p1$b;->c:Z

    .line 4
    iget-boolean v0, v0, Ln3/e/b/j1/p1$b;->b:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;Ln3/e/b/j1/j1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ln3/e/b/j1/p1$b;

    invoke-direct {v0, p2}, Ln3/e/b/j1/p1$b;-><init>(Ln3/e/b/j1/j1;)V

    .line 3
    iget-object p2, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/e/b/j1/p1$b;

    .line 4
    iget-boolean v1, p2, Ln3/e/b/j1/p1$b;->b:Z

    .line 5
    iput-boolean v1, v0, Ln3/e/b/j1/p1$b;->b:Z

    .line 6
    iget-boolean p2, p2, Ln3/e/b/j1/p1$b;->c:Z

    .line 7
    iput-boolean p2, v0, Ln3/e/b/j1/p1$b;->c:Z

    .line 8
    iget-object p2, p0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
