.class public final Lp3/a/r1/a;
.super Lp3/a/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/r1/a$d;,
        Lp3/a/r1/a$b;,
        Lp3/a/r1/a$c;,
        Lp3/a/r1/a$e;
    }
.end annotation


# static fields
.field public static final g:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Lp3/a/r1/a$d<",
            "Lp3/a/p;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final h:Lp3/a/g1;


# instance fields
.field public final b:Lp3/a/i0$d;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lp3/a/v;",
            "Lp3/a/i0$h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Random;

.field public e:Lp3/a/o;

.field public f:Lp3/a/r1/a$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/a$c;

    const-string v1, "state-info"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lp3/a/r1/a;->g:Lp3/a/a$c;

    .line 3
    sget-object v0, Lp3/a/g1;->f:Lp3/a/g1;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/r1/a;->h:Lp3/a/g1;

    return-void
.end method

.method public constructor <init>(Lp3/a/i0$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp3/a/i0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp3/a/r1/a;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Lp3/a/r1/a$b;

    sget-object v1, Lp3/a/r1/a;->h:Lp3/a/g1;

    invoke-direct {v0, v1}, Lp3/a/r1/a$b;-><init>(Lp3/a/g1;)V

    iput-object v0, p0, Lp3/a/r1/a;->f:Lp3/a/r1/a$e;

    const-string v0, "helper"

    .line 4
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/i0$d;

    iput-object p1, p0, Lp3/a/r1/a;->b:Lp3/a/i0$d;

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lp3/a/r1/a;->d:Ljava/util/Random;

    return-void
.end method

.method public static d(Lp3/a/i0$h;)Lp3/a/r1/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/i0$h;",
            ")",
            "Lp3/a/r1/a$d<",
            "Lp3/a/p;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/i0$h;->b()Lp3/a/a;

    move-result-object p0

    sget-object v0, Lp3/a/r1/a;->g:Lp3/a/a$c;

    .line 2
    iget-object p0, p0, Lp3/a/a;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "STATE_INFO"

    .line 3
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lp3/a/r1/a$d;

    return-object p0
.end method


# virtual methods
.method public a(Lp3/a/g1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/r1/a;->e:Lp3/a/o;

    sget-object v1, Lp3/a/o;->b:Lp3/a/o;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lp3/a/o;->c:Lp3/a/o;

    new-instance v1, Lp3/a/r1/a$b;

    invoke-direct {v1, p1}, Lp3/a/r1/a$b;-><init>(Lp3/a/g1;)V

    invoke-virtual {p0, v0, v1}, Lp3/a/r1/a;->g(Lp3/a/o;Lp3/a/r1/a$e;)V

    :cond_0
    return-void
.end method

.method public b(Lp3/a/i0$g;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lp3/a/i0$g;->a:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lp3/a/r1/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/v;

    .line 5
    new-instance v3, Lp3/a/v;

    .line 6
    iget-object v4, v2, Lp3/a/v;->a:Ljava/util/List;

    .line 7
    sget-object v5, Lp3/a/a;->b:Lp3/a/a;

    invoke-direct {v3, v4, v5}, Lp3/a/v;-><init>(Ljava/util/List;Lp3/a/a;)V

    .line 8
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/v;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/v;

    .line 15
    iget-object v3, p0, Lp3/a/r1/a;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/i0$h;

    if-eqz v3, :cond_1

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lp3/a/i0$h;->g(Ljava/util/List;)V

    goto :goto_1

    .line 17
    :cond_1
    sget-object v3, Lp3/a/a;->b:Lp3/a/a;

    .line 18
    sget-object v4, Lp3/a/r1/a;->g:Lp3/a/a$c;

    new-instance v5, Lp3/a/r1/a$d;

    sget-object v6, Lp3/a/o;->d:Lp3/a/o;

    .line 19
    invoke-static {v6}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object v6

    invoke-direct {v5, v6}, Lp3/a/r1/a$d;-><init>(Ljava/lang/Object;)V

    .line 20
    new-instance v6, Ljava/util/IdentityHashMap;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 21
    invoke-virtual {v6, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v4, p0, Lp3/a/r1/a;->b:Lp3/a/i0$d;

    .line 23
    new-instance v5, Lp3/a/i0$b$a;

    invoke-direct {v5}, Lp3/a/i0$b$a;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lp3/a/i0$b$a;->a:Ljava/util/List;

    .line 25
    iget-object v0, v3, Lp3/a/a;->a:Ljava/util/Map;

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 29
    :cond_3
    new-instance v0, Lp3/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v6, v3}, Lp3/a/a;-><init>(Ljava/util/Map;Lp3/a/a$a;)V

    const-string v3, "attrs"

    .line 30
    invoke-static {v0, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v5, Lp3/a/i0$b$a;->b:Lp3/a/a;

    .line 31
    invoke-virtual {v5}, Lp3/a/i0$b$a;->a()Lp3/a/i0$b;

    move-result-object v0

    .line 32
    invoke-virtual {v4, v0}, Lp3/a/i0$d;->a(Lp3/a/i0$b;)Lp3/a/i0$h;

    move-result-object v0

    const-string v3, "subchannel"

    .line 33
    invoke-static {v0, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v3, Lp3/a/r1/a$a;

    invoke-direct {v3, p0, v0}, Lp3/a/r1/a$a;-><init>(Lp3/a/r1/a;Lp3/a/i0$h;)V

    invoke-virtual {v0, v3}, Lp3/a/i0$h;->f(Lp3/a/i0$j;)V

    .line 35
    iget-object v3, p0, Lp3/a/r1/a;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v0}, Lp3/a/i0$h;->d()V

    goto/16 :goto_1

    .line 37
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/v;

    .line 39
    iget-object v2, p0, Lp3/a/r1/a;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_5
    invoke-virtual {p0}, Lp3/a/r1/a;->f()V

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/i0$h;

    .line 42
    invoke-virtual {v0}, Lp3/a/i0$h;->e()V

    .line 43
    invoke-static {v0}, Lp3/a/r1/a;->d(Lp3/a/i0$h;)Lp3/a/r1/a$d;

    move-result-object v0

    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    .line 44
    invoke-static {v1}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object v1

    iput-object v1, v0, Lp3/a/r1/a$d;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/a/r1/a;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/i0$h;

    .line 2
    invoke-virtual {v1}, Lp3/a/i0$h;->e()V

    .line 3
    invoke-static {v1}, Lp3/a/r1/a;->d(Lp3/a/i0$h;)Lp3/a/r1/a$d;

    move-result-object v1

    sget-object v2, Lp3/a/o;->e:Lp3/a/o;

    .line 4
    invoke-static {v2}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object v2

    iput-object v2, v1, Lp3/a/r1/a$d;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lp3/a/i0$h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/r1/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 8

    .line 1
    sget-object v0, Lp3/a/o;->a:Lp3/a/o;

    sget-object v1, Lp3/a/o;->b:Lp3/a/o;

    invoke-virtual {p0}, Lp3/a/r1/a;->e()Ljava/util/Collection;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/a/i0$h;

    .line 4
    invoke-static {v4}, Lp3/a/r1/a;->d(Lp3/a/i0$h;)Lp3/a/r1/a$d;

    move-result-object v7

    iget-object v7, v7, Lp3/a/r1/a$d;->a:Ljava/lang/Object;

    check-cast v7, Lp3/a/p;

    .line 5
    iget-object v7, v7, Lp3/a/p;->a:Lp3/a/o;

    if-ne v7, v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8
    sget-object v1, Lp3/a/r1/a;->h:Lp3/a/g1;

    .line 9
    invoke-virtual {p0}, Lp3/a/r1/a;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/i0$h;

    .line 10
    invoke-static {v3}, Lp3/a/r1/a;->d(Lp3/a/i0$h;)Lp3/a/r1/a$d;

    move-result-object v3

    iget-object v3, v3, Lp3/a/r1/a$d;->a:Ljava/lang/Object;

    check-cast v3, Lp3/a/p;

    .line 11
    iget-object v4, v3, Lp3/a/p;->a:Lp3/a/o;

    if-eq v4, v0, :cond_4

    .line 12
    sget-object v7, Lp3/a/o;->d:Lp3/a/o;

    if-ne v4, v7, :cond_5

    :cond_4
    move v6, v5

    .line 13
    :cond_5
    sget-object v4, Lp3/a/r1/a;->h:Lp3/a/g1;

    if-eq v1, v4, :cond_6

    invoke-virtual {v1}, Lp3/a/g1;->g()Z

    move-result v4

    if-nez v4, :cond_3

    .line 14
    :cond_6
    iget-object v1, v3, Lp3/a/p;->b:Lp3/a/g1;

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_3

    .line 15
    :cond_8
    sget-object v0, Lp3/a/o;->c:Lp3/a/o;

    :goto_3
    new-instance v2, Lp3/a/r1/a$b;

    invoke-direct {v2, v1}, Lp3/a/r1/a$b;-><init>(Lp3/a/g1;)V

    invoke-virtual {p0, v0, v2}, Lp3/a/r1/a;->g(Lp3/a/o;Lp3/a/r1/a$e;)V

    goto :goto_4

    .line 16
    :cond_9
    iget-object v0, p0, Lp3/a/r1/a;->d:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 17
    new-instance v2, Lp3/a/r1/a$c;

    invoke-direct {v2, v3, v0}, Lp3/a/r1/a$c;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v1, v2}, Lp3/a/r1/a;->g(Lp3/a/o;Lp3/a/r1/a$e;)V

    :goto_4
    return-void
.end method

.method public final g(Lp3/a/o;Lp3/a/r1/a$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/r1/a;->e:Lp3/a/o;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lp3/a/r1/a;->f:Lp3/a/r1/a$e;

    invoke-virtual {p2, v0}, Lp3/a/r1/a$e;->b(Lp3/a/r1/a$e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lp3/a/r1/a;->b:Lp3/a/i0$d;

    invoke-virtual {v0, p1, p2}, Lp3/a/i0$d;->d(Lp3/a/o;Lp3/a/i0$i;)V

    .line 3
    iput-object p1, p0, Lp3/a/r1/a;->e:Lp3/a/o;

    .line 4
    iput-object p2, p0, Lp3/a/r1/a;->f:Lp3/a/r1/a$e;

    :cond_1
    return-void
.end method
