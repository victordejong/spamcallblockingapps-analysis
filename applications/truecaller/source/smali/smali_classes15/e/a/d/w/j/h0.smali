.class public final Le/a/d/w/j/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/a0;


# instance fields
.field public final a:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/i0;

.field public final c:Le/a/d/x/r/h;

.field public final d:Le/a/d/c0/z1/i;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/x/r/h;Le/a/d/c0/z1/i;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/w/j/h0;->b:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/h0;->c:Le/a/d/x/r/h;

    iput-object p3, p0, Le/a/d/w/j/h0;->d:Le/a/d/c0/z1/i;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 2
    invoke-static {p1, p1, v0, v1}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p1

    iput-object p1, p0, Le/a/d/w/j/h0;->a:Lq3/a/x2/z0;

    .line 3
    invoke-interface {p2}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v1

    invoke-interface {v1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {p2}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v2

    invoke-interface {v2}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v1, v2}, Le/a/d/w/j/h0;->a(Ljava/util/Set;Ljava/util/Set;)Le/a/d/w/j/v;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/d/w/j/v;->a:Ljava/util/Set;

    .line 5
    invoke-interface {p3, v1}, Le/a/d/c0/z1/i;->r(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {p3, v1}, Le/a/d/c0/z1/i;->m(Ljava/util/Set;)V

    .line 8
    new-instance p3, Le/a/d/w/j/e0;

    invoke-direct {p3, v0}, Le/a/d/w/j/e0;-><init>(Ls1/w/d;)V

    .line 9
    new-instance v1, Lq3/a/x2/t;

    invoke-direct {v1, p3, p1}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V

    .line 10
    invoke-interface {p2}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object p1

    .line 11
    invoke-interface {p2}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object p2

    new-instance p3, Le/a/d/w/j/b0;

    invoke-direct {p3, v0}, Le/a/d/w/j/b0;-><init>(Ls1/w/d;)V

    .line 12
    new-instance v2, Lq3/a/x2/w0;

    invoke-direct {v2, p1, p2, p3}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 13
    new-instance p1, Le/a/d/w/j/c0;

    invoke-direct {p1, v0}, Le/a/d/w/j/c0;-><init>(Ls1/w/d;)V

    .line 14
    new-instance p2, Lq3/a/x2/w0;

    invoke-direct {p2, v2, v1, p1}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 15
    new-instance p1, Le/a/d/w/j/d0;

    invoke-direct {p1, p0, v0}, Le/a/d/w/j/d0;-><init>(Le/a/d/w/j/h0;Ls1/w/d;)V

    .line 16
    new-instance p3, Lq3/a/x2/u0;

    invoke-direct {p3, p2, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 17
    invoke-static {p3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Ljava/util/Set;)Le/a/d/w/j/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/a/d/x/r/l;",
            ">;",
            "Ljava/util/Set<",
            "Le/a/d/x/r/i;",
            ">;)",
            "Le/a/d/w/j/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/d/x/r/l;

    .line 3
    iget-object v3, v3, Le/a/d/x/r/l;->a:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Le/a/d/w/j/h0;->d:Le/a/d/c0/z1/i;

    invoke-interface {v4}, Le/a/d/c0/z1/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Le/a/d/x/r/l;

    .line 8
    iget-object v3, v3, Le/a/d/x/r/l;->a:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Le/a/p5/s0/g;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/d/x/r/i;

    .line 12
    iget-object v5, p0, Le/a/d/w/j/h0;->d:Le/a/d/c0/z1/i;

    invoke-interface {v5}, Le/a/d/c0/z1/i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Le/a/d/x/r/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Le/a/d/x/r/i;

    .line 16
    iget-object v4, p0, Le/a/d/w/j/h0;->d:Le/a/d/c0/z1/i;

    invoke-interface {v4}, Le/a/d/c0/z1/i;->getCurrentTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5, p1}, Le/a/p5/s0/g;->W(Le/a/d/x/r/i;JLjava/util/Set;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 17
    iget-object v3, v3, Le/a/d/x/r/i;->a:Ljava/lang/String;

    .line 18
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    .line 19
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_7
    invoke-static {p2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {v1, p2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    new-instance v2, Le/a/d/c0/z1/o$d;

    invoke-direct {v2, v1}, Le/a/d/c0/z1/o$d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_8
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 27
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 28
    new-instance v0, Le/a/d/w/j/v;

    invoke-direct {v0, p2, p1}, Le/a/d/w/j/v;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/h0;->b:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
