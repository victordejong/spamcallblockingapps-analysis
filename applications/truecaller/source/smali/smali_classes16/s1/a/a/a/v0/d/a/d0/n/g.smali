.class public final Ls1/a/a/a/v0/d/a/d0/n/g;
.super Ls1/a/a/a/v0/d/a/d0/n/k;
.source "SourceFile"


# instance fields
.field public final n:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final o:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final p:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/d/a/f0/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/b/h1/j;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ls1/a/a/a/v0/b/e;

.field public final s:Ls1/a/a/a/v0/d/a/f0/g;

.field public final t:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/f0/g;ZLs1/a/a/a/v0/d/a/d0/n/g;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p5}, Ls1/a/a/a/v0/d/a/d0/n/k;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    iput-boolean p4, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->t:Z

    .line 2
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 4
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/n/g$e;

    invoke-direct {p3, p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g$e;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/d/a/d0/h;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->n:Ls1/a/a/a/v0/l/i;

    .line 5
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 6
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 7
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/n/g$h;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/d/a/d0/n/g$h;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->o:Ls1/a/a/a/v0/l/i;

    .line 8
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 9
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 10
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/n/g$f;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/d/a/d0/n/g$f;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->p:Ls1/a/a/a/v0/l/i;

    .line 11
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 12
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 13
    new-instance p3, Ls1/a/a/a/v0/d/a/d0/n/g$i;

    invoke-direct {p3, p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g$i;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/d/a/d0/h;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->q:Ls1/a/a/a/v0/l/h;

    return-void
.end method

.method public static final u(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 2
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/d0/n/b;->d(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/d/a/f0/q;

    .line 6
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->s(Ls1/a/a/a/v0/d/a/f0/q;)Ls1/a/a/a/v0/d/a/c0/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final v(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->J(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ls1/a/a/a/v0/b/q0;

    const-string v2, "$this$doesOverrideBuiltinWithDifferentJvmName"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Le/q/f/a/d/a;->X0(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_3

    .line 6
    invoke-static {v1}, Ls1/a/a/a/v0/d/a/e;->a(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/v0/b/v;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 7
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->c()Ls1/a/a/a/v0/m/l1/e;

    move-result-object v0

    .line 8
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 9
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/l1/e;->f(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final B(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/a;Ljava/util/Collection;)Ls1/a/a/a/v0/b/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/q0;",
            "Ls1/a/a/a/v0/b/a;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;)",
            "Ls1/a/a/a/v0/b/q0;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/q0;

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ls1/a/a/a/v0/b/v;->F0()Ls1/a/a/a/v0/b/v;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->E(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/v$a;->c()Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast p1, Ls1/a/a/a/v0/b/q0;

    :goto_3
    return-object p1
.end method

.method public final C(Ls1/a/a/a/v0/b/q0;)Ls1/a/a/a/v0/b/q0;
    .locals 5

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    const-string v1, "valueParameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b1;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    invoke-interface {v3}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/c;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 3
    :goto_1
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 4
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 5
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->t:Ls1/a/a/a/v0/d/a/d0/d;

    .line 6
    invoke-interface {v4}, Ls1/a/a/a/v0/d/a/d0/d;->b()Z

    move-result v4

    .line 7
    invoke-static {v3, v4}, Ls1/a/a/a/v0/a/l;->a(Ls1/a/a/a/v0/f/b;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 8
    invoke-interface {p1}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v2

    .line 9
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ls1/u/i;->t(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ls1/a/a/a/v0/b/v$a;->k(Ljava/util/List;)Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    .line 10
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/y0;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/v$a;->f(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    .line 12
    check-cast p1, Ls1/a/a/a/v0/b/q0;

    .line 13
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/b/h1/i0;

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v1, v0, Ls1/a/a/a/v0/b/h1/r;->u:Z

    :cond_3
    return-object p1

    :cond_4
    return-object v2
.end method

.method public final D(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k0;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->z1(Ls1/a/a/a/v0/b/k0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->H(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->I(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;

    move-result-object p2

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object p1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object p2

    if-ne p1, p2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final E(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/l;->d:Ls1/a/a/a/v0/j/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Ls1/a/a/a/v0/j/l;->n(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Z)Ls1/a/a/a/v0/j/l$c;

    move-result-object v0

    const-string v2, "OverridingUtil.DEFAULT.i\u2026erDescriptor, this, true)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v0

    const-string v2, "OverridingUtil.DEFAULT.i\u2026iptor, this, true).result"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Ls1/a/a/a/v0/j/l$c$a;->a:Ls1/a/a/a/v0/j/l$c$a;

    if-ne v0, v2, :cond_0

    invoke-static {p2, p1}, Ls1/a/a/a/v0/d/a/t;->c(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final F(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/v;)Z
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/d;->f:Ls1/a/a/a/v0/d/a/d;

    const-string v0, "$this$isRemoveAtByIndex"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/p;->d(Ls1/a/a/a/v0/b/a;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/d/a/d;->a:Ls1/a/a/a/v0/d/a/x;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/x;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p2}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object p2

    :cond_1
    const-string v0, "if (superDescriptor.isRe\u2026iginal else subDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->E(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result p1

    return p1
.end method

.method public final G(Ls1/a/a/a/v0/b/k0;Ljava/lang/String;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k0;",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;)",
            "Ls1/a/a/a/v0/b/q0;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p2

    const-string v0, "Name.identifier(getterName)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ls1/a/a/a/v0/b/q0;

    .line 4
    invoke-interface {p3}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {p3}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ls1/a/a/a/v0/m/l1/d;->d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, p3

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    return-object v0
.end method

.method public final H(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k0;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;)",
            "Ls1/a/a/a/v0/b/q0;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k0;->getGetter()Ls1/a/a/a/v0/b/l0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/q/f/a/d/a;->X0(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/l0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "$this$getBuiltinSpecialPropertyGetterName"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->m(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Ls1/a/a/a/v0/d/a/h;->b:Ls1/a/a/a/v0/d/a/h;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ls1/a/a/a/v0/j/v/b;->c(Ls1/a/a/a/v0/b/b;ZLs1/z/b/l;I)Ls1/a/a/a/v0/b/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v3, Ls1/a/a/a/v0/d/a/g;->e:Ls1/a/a/a/v0/d/a/g;

    .line 6
    sget-object v3, Ls1/a/a/a/v0/d/a/g;->a:Ljava/util/Map;

    .line 7
    invoke-static {v2}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/f/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 9
    invoke-static {v2, v0}, Le/q/f/a/d/a;->k1(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->G(Ls1/a/a/a/v0/b/k0;Ljava/lang/String;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/d/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->G(Ls1/a/a/a/v0/b/k0;Ljava/lang/String;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;

    move-result-object p1

    return-object p1
.end method

.method public final I(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k0;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;)",
            "Ls1/a/a/a/v0/b/q0;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/d/a/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(JvmAbi.s\u2026terName(name.asString()))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ls1/a/a/a/v0/b/q0;

    .line 4
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ls1/a/a/a/v0/a/g;->M(Ls1/a/a/a/v0/m/e0;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v2, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v3

    const-string v4, "descriptor.valueParameters"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "descriptor.valueParameters.single()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ls1/a/a/a/v0/b/b1;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ls1/a/a/a/v0/m/l1/d;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    :cond_3
    :goto_0
    if-eqz v1, :cond_0

    :cond_4
    return-object v1
.end method

.method public final J(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/g;->A()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 5
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/c/a/d;->f:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v2, p1, v3}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final K(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/g;->A()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 5
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/c/a/d;->f:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v2, p1, v3}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ls1/a/a/a/v0/b/k0;

    .line 9
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v1, v3}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final L(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/v;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p1, v0, v0, v1}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p2}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v3

    const-string v4, "builtinWithErasedParameters.original"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v0, v1}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->E(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final M(Ls1/a/a/a/v0/b/q0;)Z
    .locals 12

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    const-string v2, "function.name"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name.asString()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, Ls1/a/a/a/v0/d/a/u;->a:Ls1/a/a/a/v0/f/b;

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "get"

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 5
    invoke-static {v3, v4, v5, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    const-string v8, "is"

    const/4 v9, 0x1

    if-nez v7, :cond_1

    invoke-static {v3, v8, v5, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v9

    :goto_1
    const-string v10, "methodName"

    const-string v11, "set"

    if-eqz v7, :cond_3

    .line 6
    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v7, 0xc

    .line 7
    invoke-static {v1, v4, v5, v3, v7}, Le/q/f/a/d/a;->r2(Ls1/a/a/a/v0/f/e;Ljava/lang/String;ZLjava/lang/String;I)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    invoke-static {v1, v8, v5, v3, v4}, Le/q/f/a/d/a;->r2(Ls1/a/a/a/v0/f/e;Ljava/lang/String;ZLjava/lang/String;I)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    .line 8
    :goto_2
    invoke-static {v4}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v3, v11, v5, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v6, [Ls1/a/a/a/v0/f/e;

    .line 12
    invoke-static {v1, v5}, Le/q/f/a/d/a;->q2(Ls1/a/a/a/v0/f/e;Z)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v9}, Le/q/f/a/d/a;->q2(Ls1/a/a/a/v0/f/e;Z)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v3}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 13
    :cond_4
    sget-object v3, Ls1/a/a/a/v0/d/a/g;->e:Ls1/a/a/a/v0/d/a/g;

    const-string v3, "name1"

    .line 14
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v3, Ls1/a/a/a/v0/d/a/g;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v0

    .line 16
    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_7

    .line 17
    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/f/e;

    .line 18
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/d/a/d0/n/g;->K(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 20
    :cond_8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/k0;

    .line 21
    new-instance v7, Ls1/a/a/a/v0/d/a/d0/n/g$g;

    invoke-direct {v7, p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g$g;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/b/q0;)V

    invoke-virtual {p0, v4, v7}, Ls1/a/a/a/v0/d/a/d0/n/g;->D(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v4

    if-nez v4, :cond_a

    .line 22
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v4

    const-string v7, "function.name.asString()"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v4, v11, v5, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move v4, v9

    goto :goto_4

    :cond_b
    move v4, v5

    :goto_4
    if-eqz v4, :cond_9

    move v3, v9

    goto :goto_6

    :cond_c
    :goto_5
    move v3, v5

    :goto_6
    if-eqz v3, :cond_7

    move v1, v9

    goto :goto_8

    :cond_d
    :goto_7
    move v1, v5

    :goto_8
    if-eqz v1, :cond_e

    return v5

    .line 25
    :cond_e
    sget-object v1, Ls1/a/a/a/v0/d/a/d;->f:Ls1/a/a/a/v0/d/a/d;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v3, Ls1/a/a/a/v0/d/a/d;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_f

    move-object v0, v1

    .line 28
    :cond_f
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_d

    .line 29
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/f/e;

    .line 30
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->J(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object v3

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ls1/a/a/a/v0/b/q0;

    const-string v8, "$this$doesOverrideBuiltinWithDifferentJvmName"

    .line 33
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v7}, Le/q/f/a/d/a;->X0(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v7

    if-eqz v7, :cond_13

    move v7, v9

    goto :goto_a

    :cond_13
    move v7, v5

    :goto_a
    if-eqz v7, :cond_12

    .line 35
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 36
    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_b

    .line 37
    :cond_15
    invoke-interface {p1}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v3

    .line 38
    invoke-interface {v3, v1}, Ls1/a/a/a/v0/b/v$a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/b/v$a;

    .line 39
    invoke-interface {v3}, Ls1/a/a/a/v0/b/v$a;->q()Ls1/a/a/a/v0/b/v$a;

    .line 40
    invoke-interface {v3}, Ls1/a/a/a/v0/b/v$a;->e()Ls1/a/a/a/v0/b/v$a;

    .line 41
    invoke-interface {v3}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v1, Ls1/a/a/a/v0/b/q0;

    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_b

    .line 43
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/q0;

    .line 44
    invoke-virtual {p0, v4, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->F(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/v;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v1, v9

    goto :goto_c

    :cond_18
    :goto_b
    move v1, v5

    :goto_c
    if-eqz v1, :cond_11

    move v0, v9

    goto :goto_e

    :cond_19
    :goto_d
    move v0, v5

    :goto_e
    if-nez v0, :cond_24

    .line 45
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->g:Ls1/a/a/a/v0/d/a/e;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/d/a/e;->b(Ls1/a/a/a/v0/f/e;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_10

    .line 46
    :cond_1a
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/d/a/d0/n/g;->J(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 49
    check-cast v3, Ls1/a/a/a/v0/b/q0;

    .line 50
    invoke-static {v3}, Ls1/a/a/a/v0/d/a/e;->a(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/v0/b/v;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 51
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 52
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_10

    .line 53
    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/v;

    .line 54
    invoke-virtual {p0, p1, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->L(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/v;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v0, v9

    goto :goto_11

    :cond_1f
    :goto_10
    move v0, v5

    :goto_11
    if-nez v0, :cond_24

    .line 55
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->C(Ls1/a/a/a/v0/b/q0;)Ls1/a/a/a/v0/b/q0;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 56
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->J(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_13

    .line 58
    :cond_20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/q0;

    .line 59
    invoke-interface {v1}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0, v0, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->E(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v9

    goto :goto_12

    :cond_22
    move v1, v5

    :goto_12
    if-eqz v1, :cond_21

    move p1, v9

    goto :goto_14

    :cond_23
    :goto_13
    move p1, v5

    :goto_14
    if-nez p1, :cond_24

    move v5, v9

    :cond_24
    return v5
.end method

.method public N(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->n:Ls1/a/a/a/v0/c/a/c;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 5
    invoke-static {v0, p2, v1, p1}, Le/q/f/a/d/a;->v2(Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/c/a/b;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/f/e;)V

    return-void
.end method

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->N(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/k;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->N(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/k;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->N(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)V

    .line 2
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->l:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 3
    check-cast p2, Ls1/a/a/a/v0/d/a/d0/n/g;

    if-eqz p2, :cond_0

    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/n/g;->q:Ls1/a/a/a/v0/l/h;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/b/h1/j;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->q:Ls1/a/a/a/v0/l/h;

    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/b/h;

    :goto_0
    return-object p2
.end method

.method public h(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
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
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->o:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->p:Ls1/a/a/a/v0/l/i;

    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 3

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 9
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/d0/n/b;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->h(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public j()Ls1/a/a/a/v0/d/a/d0/n/b;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/a;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    sget-object v2, Ls1/a/a/a/v0/d/a/d0/n/f;->b:Ls1/a/a/a/v0/d/a/d0/n/f;

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/a;-><init>(Ls1/a/a/a/v0/d/a/f0/g;Ls1/z/b/l;)V

    return-object v0
.end method

.method public l(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;)V
    .locals 10
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

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/d/a/d0/n/g;->J(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object v6

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/d;->f:Ls1/a/a/a/v0/d/a/d;

    const-string v0, "$this$sameAsRenamedInJvmBuiltin"

    .line 3
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ls1/a/a/a/v0/d/a/d;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_5

    .line 5
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->g:Ls1/a/a/a/v0/d/a/e;

    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/d/a/e;->b(Ls1/a/a/a/v0/f/e;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/v;

    .line 8
    invoke-interface {v2}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v7

    :goto_1
    if-eqz v0, :cond_5

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ls1/a/a/a/v0/b/q0;

    .line 11
    invoke-virtual {p0, v4}, Ls1/a/a/a/v0/d/a/d0/n/g;->M(Ls1/a/a/a/v0/b/q0;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0, p1, p2, v0, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->x(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Z)V

    return-void

    .line 13
    :cond_5
    invoke-static {}, Ls1/a/a/a/v0/o/m$b;->a()Ls1/a/a/a/v0/o/m;

    move-result-object v8

    .line 14
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 15
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 16
    sget-object v4, Ls1/a/a/a/v0/k/b/p;->a:Ls1/a/a/a/v0/k/b/p;

    .line 17
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 18
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 19
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 20
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v5

    move-object v0, p2

    move-object v1, v6

    .line 21
    invoke-static/range {v0 .. v5}, Le/q/f/a/d/a;->E2(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/j/l;)Ljava/util/Collection;

    move-result-object v9

    const-string v0, "resolveOverridesForNonSt\u2026.overridingUtil\n        )"

    invoke-static {v9, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v5, Ls1/a/a/a/v0/d/a/d0/n/g$a;

    invoke-direct {v5, p0}, Ls1/a/a/a/v0/d/a/d0/n/g$a;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v9

    move-object v4, p1

    .line 23
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/d/a/d0/n/g;->y(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ls1/z/b/l;)V

    .line 24
    new-instance v5, Ls1/a/a/a/v0/d/a/d0/n/g$b;

    invoke-direct {v5, p0}, Ls1/a/a/a/v0/d/a/d0/n/g$b;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V

    move-object v4, v8

    .line 25
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/d/a/d0/n/g;->y(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ls1/z/b/l;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ls1/a/a/a/v0/b/q0;

    .line 28
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/d/a/d0/n/g;->M(Ls1/a/a/a/v0/b/q0;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v0, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1, p2, v0, v7}, Ls1/a/a/a/v0/d/a/d0/n/g;->x(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Z)V

    return-void
.end method

.method public m(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/d0/n/b;->d(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->C0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/f0/q;

    if-eqz v0, :cond_0

    .line 4
    sget-object v4, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    .line 5
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 6
    invoke-static {v2, v0}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 8
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/r;->f()Ls1/a/a/a/v0/b/e1;

    move-result-object v5

    invoke-static {v5}, Le/q/f/a/d/a;->c3(Ls1/a/a/a/v0/b/e1;)Ls1/a/a/a/v0/b/r;

    move-result-object v5

    const/4 v6, 0x0

    .line 9
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v7

    .line 10
    iget-object v8, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 11
    iget-object v8, v8, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 12
    iget-object v8, v8, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 13
    invoke-interface {v8, v0}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v8

    const/4 v9, 0x0

    .line 14
    invoke-static/range {v2 .. v9}, Ls1/a/a/a/v0/d/a/c0/g;->S0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Z)Ls1/a/a/a/v0/d/a/c0/g;

    move-result-object v2

    const-string v3, "JavaPropertyDescriptor.c\u2026inal = */ false\n        )"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v3, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v3, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 18
    invoke-static {v2, v3}, Ls1/a/a/a/v0/f/d;->q0(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/h1/f0;

    move-result-object v3

    const-string v4, "DescriptorFactory.create\u2026iptor, Annotations.EMPTY)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object v3, v2, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    .line 20
    iput-object v1, v2, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    .line 21
    iput-object v1, v2, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    .line 22
    iput-object v1, v2, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    .line 23
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 v5, 0x0

    .line 24
    invoke-static {v4, v2, v0, v5}, Le/q/f/a/d/a;->B(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/x;I)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object v4

    .line 25
    invoke-virtual {p0, v0, v4}, Ls1/a/a/a/v0/d/a/d0/n/k;->k(Ls1/a/a/a/v0/d/a/f0/q;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 26
    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/g;->o()Ls1/a/a/a/v0/b/n0;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5, v1}, Ls1/a/a/a/v0/b/h1/e0;->R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V

    .line 27
    iput-object v0, v3, Ls1/a/a/a/v0/b/h1/f0;->m:Ls1/a/a/a/v0/m/e0;

    .line 28
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->K(Ls1/a/a/a/v0/f/e;)Ljava/util/Set;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-static {}, Ls1/a/a/a/v0/o/m$b;->a()Ls1/a/a/a/v0/o/m;

    move-result-object v2

    .line 32
    invoke-static {}, Ls1/a/a/a/v0/o/m$b;->a()Ls1/a/a/a/v0/o/m;

    move-result-object v3

    .line 33
    new-instance v4, Ls1/a/a/a/v0/d/a/d0/n/g$c;

    invoke-direct {v4, p0}, Ls1/a/a/a/v0/d/a/d0/n/g$c;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V

    invoke-virtual {p0, v0, p2, v2, v4}, Ls1/a/a/a/v0/d/a/d0/n/g;->z(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Ls1/z/b/l;)V

    .line 34
    invoke-static {v0, v2}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    new-instance v4, Ls1/a/a/a/v0/d/a/d0/n/g$d;

    invoke-direct {v4, p0}, Ls1/a/a/a/v0/d/a/d0/n/g$d;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Ls1/a/a/a/v0/d/a/d0/n/g;->z(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Ls1/z/b/l;)V

    .line 35
    invoke-static {v0, v3}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 36
    iget-object v8, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 37
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 38
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 39
    iget-object v9, v0, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 40
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 41
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v10

    move-object v5, p1

    move-object v7, p2

    .line 42
    invoke-static/range {v5 .. v10}, Le/q/f/a/d/a;->E2(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/j/l;)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "resolveOverridesForNonSt\u2026rridingUtil\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public n(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
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
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/k;->a()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 3
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 4
    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/d0/n/b;->c()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 6
    invoke-interface {p2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p2

    const-string v0, "ownerDescriptor.typeConstructor"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p2

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 9
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/j/y/i;->d()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public o()Ls1/a/a/a/v0/b/n0;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 2
    sget v1, Ls1/a/a/a/v0/j/g;->a:I

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/j/g;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    return-object v0
.end method

.method public q(Ls1/a/a/a/v0/d/a/c0/f;)Z
    .locals 1

    const-string v0, "$this$isVisibleAsFunction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->M(Ls1/a/a/a/v0/b/q0;)Z

    move-result p1

    return p1
.end method

.method public r(Ls1/a/a/a/v0/d/a/f0/q;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/b1;",
            ">;)",
            "Ls1/a/a/a/v0/d/a/d0/n/k$a;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "methodTypeParameters"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "returnType"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueParameters"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->e:Ls1/a/a/a/v0/d/a/b0/j;

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 5
    check-cast p1, Ls1/a/a/a/v0/d/a/b0/j$a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;

    const-string v0, "propagated.returnType"

    .line 9
    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propagated.valueParameters"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propagated.typeParameters"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v0, "propagated.errors"

    .line 10
    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/d/a/d0/n/k$a;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p1

    :cond_0
    const/4 p2, 0x3

    .line 12
    invoke-static {p2}, Ls1/a/a/a/v0/d/a/b0/j$b;->a(I)V

    throw p1

    :cond_1
    const/4 p2, 0x1

    .line 13
    invoke-static {p2}, Ls1/a/a/a/v0/d/a/b0/j$a;->a(I)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Lazy Java member scope for "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/g;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w(Ljava/util/List;Ls1/a/a/a/v0/b/j;ILs1/a/a/a/v0/d/a/f0/q;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/b1;",
            ">;",
            "Ls1/a/a/a/v0/b/j;",
            "I",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/m/e0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v5, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-interface/range {p4 .. p4}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v6

    .line 5
    invoke-static/range {p5 .. p5}, Ls1/a/a/a/v0/m/f1;->i(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    const-string v0, "TypeUtils.makeNotNullable(returnType)"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface/range {p4 .. p4}, Ls1/a/a/a/v0/d/a/f0/q;->L()Z

    move-result v8

    if-eqz p6, :cond_0

    .line 7
    invoke-static/range {p6 .. p6}, Ls1/a/a/a/v0/m/f1;->i(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    move-object v0, p0

    .line 8
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 10
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    move-object/from16 v2, p4

    .line 11
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v12

    .line 12
    new-instance v13, Ls1/a/a/a/v0/b/h1/n0;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Ls1/a/a/a/v0/b/h1/n0;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    move-object v1, p1

    .line 13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final x(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v4, v0, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    .line 7
    invoke-static/range {v0 .. v5}, Le/q/f/a/d/a;->E2(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/j/l;)Ljava/util/Collection;

    move-result-object p2

    const-string p3, "resolveOverridesForNonSt\u2026.overridingUtil\n        )"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {p1, p2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    .line 10
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ls1/a/a/a/v0/b/q0;

    .line 13
    invoke-static {v0}, Le/q/f/a/d/a;->Y0(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/q0;

    const-string v2, "resolvedOverride"

    if-eqz v1, :cond_1

    .line 14
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p3}, Ls1/a/a/a/v0/d/a/d0/n/g;->B(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/a;Ljava/util/Collection;)Ls1/a/a/a/v0/b/q0;

    move-result-object v0

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {p1, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final y(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ls1/z/b/l;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/q0;

    .line 2
    invoke-static {v5}, Le/q/f/a/d/a;->X0(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/b/q0;

    if-eqz v6, :cond_1

    .line 3
    invoke-static {v6}, Le/q/f/a/d/a;->S0(Ls1/a/a/a/v0/b/b;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 4
    invoke-static {v8}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v8

    const-string v9, "Name.identifier(nameInJava)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/b/q0;

    .line 5
    invoke-interface {v9}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v9

    move-object/from16 v10, p1

    .line 6
    invoke-interface {v9, v10}, Ls1/a/a/a/v0/b/v$a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/b/v$a;

    .line 7
    invoke-interface {v9}, Ls1/a/a/a/v0/b/v$a;->q()Ls1/a/a/a/v0/b/v$a;

    .line 8
    invoke-interface {v9}, Ls1/a/a/a/v0/b/v$a;->e()Ls1/a/a/a/v0/b/v$a;

    .line 9
    invoke-interface {v9}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object v9

    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v9, Ls1/a/a/a/v0/b/q0;

    .line 10
    invoke-virtual {v0, v6, v9}, Ls1/a/a/a/v0/d/a/d0/n/g;->F(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/v;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 11
    invoke-virtual {v0, v9, v6, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->B(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/a;Ljava/util/Collection;)Ls1/a/a/a/v0/b/q0;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    const/4 v6, 0x0

    .line 12
    :goto_1
    invoke-static {v2, v6}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 13
    invoke-static {v5}, Ls1/a/a/a/v0/d/a/e;->a(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/v0/b/v;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 14
    invoke-interface {v6}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v8

    const-string v9, "overridden.name"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 15
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ls1/a/a/a/v0/b/q0;

    .line 16
    invoke-virtual {v0, v11, v6}, Ls1/a/a/a/v0/d/a/d0/n/g;->L(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/v;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 17
    :goto_2
    check-cast v9, Ls1/a/a/a/v0/b/q0;

    if-eqz v9, :cond_5

    .line 18
    invoke-interface {v9}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v8

    .line 19
    invoke-interface {v6}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v11

    const-string v12, "overridden.valueParameters"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 22
    check-cast v13, Ls1/a/a/a/v0/b/b1;

    .line 23
    new-instance v14, Ls1/a/a/a/v0/d/a/c0/k;

    const-string v15, "it"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v15

    const-string v7, "it.type"

    invoke-static {v15, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Ls1/a/a/a/v0/b/b1;->U()Z

    move-result v7

    invoke-direct {v14, v15, v7}, Ls1/a/a/a/v0/d/a/c0/k;-><init>(Ls1/a/a/a/v0/m/e0;Z)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_4
    invoke-interface {v9}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v7

    const-string v9, "override.valueParameters"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v12, v7, v6}, Le/q/f/a/d/a;->V(Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/a;)Ljava/util/List;

    move-result-object v7

    .line 26
    invoke-interface {v8, v7}, Ls1/a/a/a/v0/b/v$a;->k(Ljava/util/List;)Ls1/a/a/a/v0/b/v$a;

    .line 27
    invoke-interface {v8}, Ls1/a/a/a/v0/b/v$a;->q()Ls1/a/a/a/v0/b/v$a;

    .line 28
    invoke-interface {v8}, Ls1/a/a/a/v0/b/v$a;->e()Ls1/a/a/a/v0/b/v$a;

    .line 29
    invoke-interface {v8}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/b/q0;

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 30
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/d/a/d0/n/g;->M(Ls1/a/a/a/v0/b/q0;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_7

    .line 31
    invoke-virtual {v0, v7, v6, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->B(Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/a;Ljava/util/Collection;)Ls1/a/a/a/v0/b/q0;

    move-result-object v6

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    .line 32
    :goto_6
    invoke-static {v2, v6}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 33
    invoke-interface {v5}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_8

    .line 34
    :cond_8
    invoke-interface {v5}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v6

    const-string v7, "descriptor.name"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 35
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 36
    check-cast v7, Ls1/a/a/a/v0/b/q0;

    .line 37
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/d/a/d0/n/g;->C(Ls1/a/a/a/v0/b/q0;)Ls1/a/a/a/v0/b/q0;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v7, v5}, Ls1/a/a/a/v0/d/a/d0/n/g;->E(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_9

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v7, 0x0

    .line 38
    :goto_9
    invoke-static {v2, v7}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final z(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Ls1/z/b/l;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ls1/a/a/a/v0/b/k0;",
            ">;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/k0;

    .line 2
    invoke-virtual {v0, v3, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->D(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0, v3, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->H(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;

    move-result-object v4

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v3}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-virtual {v0, v3, v1}, Ls1/a/a/a/v0/d/a/d0/n/g;->I(Ls1/a/a/a/v0/b/k0;Ls1/z/b/l;)Ls1/a/a/a/v0/b/q0;

    move-result-object v6

    invoke-static {v6}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 6
    invoke-interface {v6}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    invoke-interface {v4}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    .line 7
    :cond_2
    new-instance v15, Ls1/a/a/a/v0/d/a/c0/e;

    .line 8
    iget-object v7, v0, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 9
    invoke-direct {v15, v7, v4, v6, v3}, Ls1/a/a/a/v0/d/a/c0/e;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/k0;)V

    .line 10
    invoke-interface {v4}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    invoke-static {v7}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    sget-object v8, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/d/a/d0/n/g;->o()Ls1/a/a/a/v0/b/n0;

    move-result-object v9

    invoke-virtual {v15, v7, v8, v9, v5}, Ls1/a/a/a/v0/b/h1/e0;->R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V

    .line 11
    invoke-interface {v4}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 12
    invoke-interface {v4}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v12

    move-object v7, v15

    .line 13
    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->v0(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;ZZZLs1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/f0;

    move-result-object v14

    .line 14
    iput-object v4, v14, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    .line 15
    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-virtual {v14, v4}, Ls1/a/a/a/v0/b/h1/f0;->P0(Ls1/a/a/a/v0/m/e0;)V

    const-string v4, "DescriptorFactory.create\u2026escriptor.type)\n        }"

    .line 16
    invoke-static {v14, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    .line 17
    invoke-interface {v6}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v4

    const-string v7, "setterMethod.valueParameters"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/b1;

    if-eqz v4, :cond_3

    .line 18
    invoke-interface {v6}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v8

    invoke-interface {v4}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 19
    invoke-interface {v6}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v13

    invoke-interface {v6}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v4

    move-object v7, v15

    move-object v5, v14

    move-object v14, v4

    .line 20
    invoke-static/range {v7 .. v14}, Ls1/a/a/a/v0/f/d;->x0(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;ZZZLs1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/g0;

    move-result-object v4

    .line 21
    iput-object v6, v4, Ls1/a/a/a/v0/b/h1/d0;->l:Ls1/a/a/a/v0/b/v;

    goto :goto_2

    .line 22
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No parameter found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_4
    move-object v5, v14

    const/4 v4, 0x0

    .line 23
    :goto_2
    iput-object v5, v15, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    .line 24
    iput-object v4, v15, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    const/4 v4, 0x0

    .line 25
    iput-object v4, v15, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    .line 26
    iput-object v4, v15, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    move-object v5, v15

    :goto_3
    if-eqz v5, :cond_5

    move-object/from16 v4, p2

    .line 27
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6

    .line 28
    move-object/from16 v1, p3

    check-cast v1, Ls1/a/a/a/v0/o/m;

    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/o/m;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v4, p2

    goto/16 :goto_0

    :cond_6
    :goto_4
    return-void
.end method
