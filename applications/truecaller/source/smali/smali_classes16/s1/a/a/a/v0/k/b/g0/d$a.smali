.class public final Ls1/a/a/a/v0/k/b/g0/d$a;
.super Ls1/a/a/a/v0/k/b/g0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final g:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Ls1/a/a/a/v0/m/l1/e;

.field public final synthetic j:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;Ls1/a/a/a/v0/m/l1/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/l1/e;",
            ")V"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v2, p1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 4
    iget-object v3, v0, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    const-string v0, "classProto.functionList"

    .line 5
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 7
    iget-object v4, v0, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    const-string v0, "classProto.propertyList"

    .line 8
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 10
    iget-object v5, v0, Ls1/a/a/a/v0/e/c;->p:Ljava/util/List;

    const-string v0, "classProto.typeAliasList"

    .line 11
    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 13
    iget-object v0, v0, Ls1/a/a/a/v0/e/c;->k:Ljava/util/List;

    const-string v1, "classProto.nestedClassNameList"

    .line 14
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 16
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 19
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 20
    invoke-static {p1, v6}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, Ls1/a/a/a/v0/k/b/g0/d$a$a;

    invoke-direct {v6, v1}, Ls1/a/a/a/v0/k/b/g0/d$a$a;-><init>(Ljava/util/List;)V

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/k/b/g0/h;-><init>(Ls1/a/a/a/v0/k/b/l;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ls1/z/b/a;)V

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->i:Ls1/a/a/a/v0/m/l1/e;

    .line 22
    iget-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 23
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 24
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 25
    new-instance p2, Ls1/a/a/a/v0/k/b/g0/d$a$b;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/k/b/g0/d$a$b;-><init>(Ls1/a/a/a/v0/k/b/g0/d$a;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->g:Ls1/a/a/a/v0/l/i;

    .line 26
    iget-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 27
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 28
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 29
    new-instance p2, Ls1/a/a/a/v0/k/b/g0/d$a$d;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/k/b/g0/d$a$d;-><init>(Ls1/a/a/a/v0/k/b/g0/d$a;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->h:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/d$a;->t(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/h;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/d$a;->t(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/h;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/d$a;->t(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/g0/d;->m:Ls1/a/a/a/v0/k/b/g0/d$c;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Ls1/a/a/a/v0/k/b/g0/d$c;->b:Ls1/a/a/a/v0/l/h;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/h;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->g:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public h(Ljava/util/Collection;Ls1/z/b/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/g0/d;->m:Ls1/a/a/a/v0/k/b/g0/d$c;

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p2, Ls1/a/a/a/v0/k/b/g0/d$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ls1/a/a/a/v0/f/e;

    const-string v3, "name"

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p2, Ls1/a/a/a/v0/k/b/g0/d$c;->b:Ls1/a/a/a/v0/l/h;

    invoke-interface {v3, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/e;

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public j(Ls1/a/a/a/v0/f/e;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->h:Ls1/a/a/a/v0/l/i;

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 3
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/c/a/d;->d:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v2, p1, v3}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->o:Ls1/a/a/a/v0/b/g1/a;

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    invoke-interface {v1, p1, v2}, Ls1/a/a/a/v0/b/g1/a;->d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Ls1/a/a/a/v0/k/b/g0/d$a;->s(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method public k(Ls1/a/a/a/v0/f/e;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptors"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->h:Ls1/a/a/a/v0/l/i;

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 3
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/c/a/d;->d:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v2, p1, v3}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Ls1/a/a/a/v0/k/b/g0/d$a;->s(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method public l(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->e:Ls1/a/a/a/v0/f/a;

    .line 3
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    const-string v0, "classId.createNestedClassId(name)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public n()Ljava/util/Set;
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->k:Ls1/a/a/a/v0/k/b/g0/d$b;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 6
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/j/y/i;->e()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public o()Ljava/util/Set;
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->k:Ls1/a/a/a/v0/k/b/g0/d$b;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 6
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/j/y/i;->a()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->o:Ls1/a/a/a/v0/b/g1/a;

    .line 11
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    invoke-interface {v0, v2}, Ls1/a/a/a/v0/b/g1/a;->e(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public p()Ljava/util/Set;
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
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->k:Ls1/a/a/a/v0/k/b/g0/d$b;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 6
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/j/y/i;->d()Ljava/util/Set;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public r(Ls1/a/a/a/v0/b/q0;)Z
    .locals 2

    const-string v0, "function"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->p:Ls1/a/a/a/v0/b/g1/c;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    invoke-interface {v0, v1, p1}, Ls1/a/a/a/v0/b/g1/c;->a(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/q0;)Z

    move-result p1

    return p1
.end method

.method public final s(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ls1/a/a/a/v0/b/b;",
            ">(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+TD;>;",
            "Ljava/util/List<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->r:Ls1/a/a/a/v0/m/l1/k;

    .line 5
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v0

    .line 6
    iget-object v4, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 7
    new-instance v5, Ls1/a/a/a/v0/k/b/g0/d$a$c;

    invoke-direct {v5, p3}, Ls1/a/a/a/v0/k/b/g0/d$a$c;-><init>(Ljava/util/List;)V

    move-object v1, p1

    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/j/l;->h(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/k;)V

    return-void
.end method

.method public t(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->j:Ls1/a/a/a/v0/c/a/c;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 5
    invoke-static {v0, p2, v1, p1}, Le/q/f/a/d/a;->v2(Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/c/a/b;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/f/e;)V

    return-void
.end method
