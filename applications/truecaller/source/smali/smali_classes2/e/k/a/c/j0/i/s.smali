.class public Le/k/a/c/j0/i/s;
.super Le/k/a/c/j0/i/r;
.source "SourceFile"


# instance fields
.field public final c:Le/k/a/c/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/c0/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
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
            "Le/k/a/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/i;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/k/a/c/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 3
    invoke-direct {p0, p2, v0}, Le/k/a/c/j0/i/r;-><init>(Le/k/a/c/i;Le/k/a/c/m0/o;)V

    .line 4
    iput-object p1, p0, Le/k/a/c/j0/i/s;->c:Le/k/a/c/c0/k;

    .line 5
    iput-object p3, p0, Le/k/a/c/j0/i/s;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iput-object p4, p0, Le/k/a/c/j0/i/s;->e:Ljava/util/Map;

    .line 7
    sget-object p2, Le/k/a/c/p;->z:Le/k/a/c/p;

    invoke-virtual {p1, p2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/j0/i/s;->f:Z

    return-void
.end method

.method public static g(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/s;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    iget-object v1, p0, Le/k/a/c/j0/i/s;->e:Ljava/util/Map;

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

    check-cast v3, Le/k/a/c/i;

    invoke-virtual {v3}, Le/k/a/c/i;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Le/k/a/c/e;Ljava/lang/String;)Le/k/a/c/i;
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/k/a/c/j0/i/s;->f:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    iget-object p1, p0, Le/k/a/c/j0/i/s;->e:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/i;

    return-object p1
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Le/k/a/c/j0/i/s;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/s;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Le/k/a/c/j0/i/s;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3
    iget-object v3, p0, Le/k/a/c/j0/i/r;->a:Le/k/a/c/m0/o;

    .line 4
    sget-object v4, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v3, v0, p1, v4}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Le/k/a/c/j0/i/s;->c:Le/k/a/c/c0/k;

    invoke-virtual {v0}, Le/k/a/c/c0/k;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/k/a/c/j0/i/s;->c:Le/k/a/c/c0/k;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/k;->m(Ljava/lang/Class;)Le/k/a/c/c;

    move-result-object v0

    .line 8
    iget-object v2, p0, Le/k/a/c/j0/i/s;->c:Le/k/a/c/c0/k;

    invoke-virtual {v2}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v2

    check-cast v0, Le/k/a/c/g0/q;

    .line 9
    iget-object v0, v0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 10
    invoke-virtual {v2, v0}, Le/k/a/c/b;->Y(Le/k/a/c/g0/c;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 11
    invoke-static {p1}, Le/k/a/c/j0/i/s;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 12
    :cond_2
    iget-object p1, p0, Le/k/a/c/j0/i/s;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-class v1, Le/k/a/c/j0/i/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/j0/i/s;->e:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s; id-to-type=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
