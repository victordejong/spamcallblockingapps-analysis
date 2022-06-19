.class public final Ls1/a/a/a/v0/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ls1/a/a/a/v0/d/a/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/g;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/g;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/g;->e:Ls1/a/a/a/v0/d/a/g;

    const/16 v0, 0x8

    new-array v0, v0, [Ls1/k;

    .line 2
    sget-object v1, Ls1/a/a/a/v0/a/k$a;->q:Ls1/a/a/a/v0/f/c;

    const-string v2, "name"

    invoke-static {v1, v2}, Le/q/f/a/d/a;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v3

    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    .line 3
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v3, "ordinal"

    .line 4
    invoke-static {v1, v3}, Le/q/f/a/d/a;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    .line 5
    new-instance v4, Ls1/k;

    invoke-direct {v4, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const/4 v1, 0x2

    .line 6
    sget-object v2, Ls1/a/a/a/v0/a/k$a;->I:Ls1/a/a/a/v0/f/b;

    const-string v3, "size"

    invoke-static {v2, v3}, Le/q/f/a/d/a;->e(Ls1/a/a/a/v0/f/b;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    .line 7
    new-instance v5, Ls1/k;

    invoke-direct {v5, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x3

    .line 8
    sget-object v2, Ls1/a/a/a/v0/a/k$a;->M:Ls1/a/a/a/v0/f/b;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->e(Ls1/a/a/a/v0/f/b;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v4

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    .line 9
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 10
    sget-object v3, Ls1/a/a/a/v0/a/k$a;->e:Ls1/a/a/a/v0/f/c;

    const-string v4, "length"

    invoke-static {v3, v4}, Le/q/f/a/d/a;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v3

    invoke-static {v4}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    .line 11
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v3, "keys"

    .line 12
    invoke-static {v2, v3}, Le/q/f/a/d/a;->e(Ls1/a/a/a/v0/f/b;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v3

    const-string v4, "keySet"

    invoke-static {v4}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    .line 13
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x6

    const-string v3, "values"

    .line 14
    invoke-static {v2, v3}, Le/q/f/a/d/a;->e(Ls1/a/a/a/v0/f/b;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v4

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    .line 15
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v3, "entries"

    .line 16
    invoke-static {v2, v3}, Le/q/f/a/d/a;->e(Ls1/a/a/a/v0/f/b;Ljava/lang/String;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "entrySet"

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    .line 17
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    .line 18
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/g;->a:Ljava/util/Map;

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    new-instance v4, Ls1/k;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/f/b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 26
    check-cast v3, Ls1/k;

    .line 27
    iget-object v4, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 28
    check-cast v4, Ls1/a/a/a/v0/f/e;

    .line 29
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 33
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 34
    check-cast v3, Ls1/a/a/a/v0/f/e;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_2
    sput-object v0, Ls1/a/a/a/v0/d/a/g;->b:Ljava/util/Map;

    .line 36
    sget-object v0, Ls1/a/a/a/v0/d/a/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/g;->c:Ljava/util/Set;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39
    check-cast v2, Ls1/a/a/a/v0/f/b;

    .line 40
    invoke-virtual {v2}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/g;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
