.class public final Ls1/a/a/a/v0/d/a/d0/n/j;
.super Ls1/a/a/a/v0/d/a/d0/n/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/d0/n/j$b;,
        Ls1/a/a/a/v0/d/a/d0/n/j$a;
    }
.end annotation


# instance fields
.field public final n:Ls1/a/a/a/v0/l/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/j<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final o:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/d/a/d0/n/j$a;",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ls1/a/a/a/v0/d/a/f0/t;

.field public final q:Ls1/a/a/a/v0/d/a/d0/n/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/s;-><init>(Ls1/a/a/a/v0/d/a/d0/h;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->p:Ls1/a/a/a/v0/d/a/f0/t;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->q:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 2
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 4
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/n/j$d;

    invoke-direct {p3, p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/j$d;-><init>(Ls1/a/a/a/v0/d/a/d0/n/j;Ls1/a/a/a/v0/d/a/d0/h;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->n:Ls1/a/a/a/v0/l/j;

    .line 5
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 6
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 7
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/n/j$c;

    invoke-direct {p3, p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/j$c;-><init>(Ls1/a/a/a/v0/d/a/d0/n/j;Ls1/a/a/a/v0/d/a/d0/h;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->o:Ls1/a/a/a/v0/l/h;

    return-void
.end method


# virtual methods
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

    const-string p1, "location"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/j;->u(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 4
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

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 2
    sget v0, Ls1/a/a/a/v0/j/y/d;->k:I

    .line 3
    sget v1, Ls1/a/a/a/v0/j/y/d;->d:I

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_2

    .line 6
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->b:Ls1/a/a/a/v0/l/i;

    .line 7
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ls1/a/a/a/v0/b/k;

    .line 10
    instance-of v3, v2, Ls1/a/a/a/v0/b/e;

    if-eqz v3, :cond_2

    check-cast v2, Ls1/a/a/a/v0/b/e;

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    const-string v3, "it.name"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 2
    sget v0, Ls1/a/a/a/v0/j/y/d;->d:I

    .line 3
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->n:Ls1/a/a/a/v0/l/j;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 5
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 9
    :cond_2
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->p:Ls1/a/a/a/v0/d/a/f0/t;

    if-eqz p2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    sget-object p2, Ls1/a/a/a/v0/o/g;->a:Ls1/z/b/l;

    .line 11
    :goto_1
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/d/a/f0/t;->G(Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ls1/a/a/a/v0/d/a/f0/g;

    .line 14
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->x()Ls1/a/a/a/v0/d/a/f0/a0;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/d/a/f0/a0;->a:Ls1/a/a/a/v0/d/a/f0/a0;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    .line 15
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p2
.end method

.method public i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1
.end method

.method public j()Ls1/a/a/a/v0/d/a/d0/n/b;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/n/b$a;->a:Ls1/a/a/a/v0/d/a/d0/n/b$a;

    return-object v0
.end method

.method public l(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ls1/a/a/a/v0/f/e;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1
.end method

.method public p()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->q:Ls1/a/a/a/v0/d/a/d0/n/i;

    return-object v0
.end method

.method public final u(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/f/g;->a:Ls1/a/a/a/v0/f/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-boolean v2, p1, Ls1/a/a/a/v0/f/e;->b:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->n:Ls1/a/a/a/v0/l/j;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 6
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/j;->o:Ls1/a/a/a/v0/l/h;

    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/j$a;

    invoke-direct {v1, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/j$a;-><init>(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/d/a/f0/g;)V

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/e;

    return-object p1

    .line 7
    :cond_3
    invoke-static {v0}, Ls1/a/a/a/v0/f/g;->a(I)V

    throw v1
.end method
