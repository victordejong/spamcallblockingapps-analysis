.class public final Ls1/a/a/a/v0/k/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/k/b/e;

.field public final b:Ls1/a/a/a/v0/k/b/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/l;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/k/b/e;

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v1, p1, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->m:Ls1/a/a/a/v0/b/b0;

    .line 6
    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/k/b/e;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;)V

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/v;->a:Ls1/a/a/a/v0/k/b/e;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/k/b/y;
    .locals 4

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/c0;

    if-eqz v0, :cond_0

    new-instance v0, Ls1/a/a/a/v0/k/b/y$b;

    check-cast p1, Ls1/a/a/a/v0/b/c0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v2, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 3
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    .line 5
    invoke-direct {v0, p1, v2, v3, v1}, Ls1/a/a/a/v0/k/b/y$b;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz v0, :cond_1

    check-cast p1, Ls1/a/a/a/v0/k/b/g0/d;

    .line 7
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->s:Ls1/a/a/a/v0/k/b/y$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Ls1/a/a/a/v0/k/b/g0/g;Ls1/a/a/a/v0/k/b/c0;)Ls1/a/a/a/v0/k/b/g0/g$a;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->a:Ls1/a/a/a/v0/k/b/g0/g$a;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/v;->m(Ls1/a/a/a/v0/k/b/g0/g;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ls1/a/a/a/v0/k/b/c0;->c()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/w0;

    .line 4
    invoke-interface {v1}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p2, Ls1/a/a/a/v0/k/b/c0;->h:Z

    if-eqz p1, :cond_2

    .line 6
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->c:Ls1/a/a/a/v0/k/b/g0/g$a;

    :cond_2
    return-object v0
.end method

.method public final c(Ls1/a/a/a/v0/k/b/g0/b;Ls1/a/a/a/v0/b/n0;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/k/b/g0/g$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/g0/b;",
            "Ls1/a/a/a/v0/b/n0;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/b1;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ls1/a/a/a/v0/m/e0;",
            "Z)",
            "Ls1/a/a/a/v0/k/b/g0/g$a;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->b:Ls1/a/a/a/v0/k/b/g0/g$a;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/g$a;->c:Ls1/a/a/a/v0/k/b/g0/g$a;

    sget-object v2, Ls1/a/a/a/v0/k/b/g0/g$a;->a:Ls1/a/a/a/v0/k/b/g0/g$a;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/v;->m(Ls1/a/a/a/v0/k/b/g0/g;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object p1

    sget-object v3, Ls1/a/a/a/v0/k/b/a0;->a:Ls1/a/a/a/v0/f/b;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    .line 3
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p3, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Ls1/a/a/a/v0/b/b1;

    .line 6
    invoke-interface {v4}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p5, :cond_4

    .line 7
    invoke-virtual {p0, p5}, Ls1/a/a/a/v0/k/b/v;->d(Ls1/a/a/a/v0/m/e0;)Z

    move-result p3

    if-ne p3, p2, :cond_4

    return-object v1

    .line 8
    :cond_4
    instance-of p3, p4, Ljava/util/Collection;

    const/4 p5, 0x0

    if-eqz p3, :cond_5

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    .line 9
    :cond_5
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ls1/a/a/a/v0/b/w0;

    .line 10
    invoke-interface {p4}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object p4

    const-string v4, "typeParameter.upperBounds"

    invoke-static {p4, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 12
    :cond_7
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/m/e0;

    const-string v5, "it"

    .line 13
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ls1/a/a/a/v0/k/b/v;->d(Ls1/a/a/a/v0/m/e0;)Z

    move-result v4

    if-eqz v4, :cond_8

    move p4, p2

    goto :goto_3

    :cond_9
    :goto_2
    move p4, p5

    :goto_3
    if-eqz p4, :cond_6

    move p3, p2

    goto :goto_5

    :cond_a
    :goto_4
    move p3, p5

    :goto_5
    if-eqz p3, :cond_b

    return-object v1

    .line 14
    :cond_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 16
    check-cast p4, Ls1/a/a/a/v0/m/e0;

    const-string v3, "type"

    .line 17
    invoke-static {p4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Ls1/a/a/a/v0/a/f;->h(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p4}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_10

    .line 18
    invoke-virtual {p4}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p4

    .line 19
    instance-of v3, p4, Ljava/util/Collection;

    if-eqz v3, :cond_c

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    .line 20
    :cond_c
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/m/y0;

    .line 21
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    const-string v4, "it.type"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/k/b/v;->d(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-eqz v3, :cond_d

    move p4, p2

    goto :goto_8

    :cond_e
    :goto_7
    move p4, p5

    :goto_8
    if-eqz p4, :cond_f

    goto :goto_9

    :cond_f
    move-object p4, v0

    goto :goto_a

    .line 22
    :cond_10
    invoke-virtual {p0, p4}, Ls1/a/a/a/v0/k/b/v;->d(Ls1/a/a/a/v0/m/e0;)Z

    move-result p4

    if-eqz p4, :cond_11

    :goto_9
    move-object p4, v1

    goto :goto_a

    :cond_11
    move-object p4, v2

    .line 23
    :goto_a
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 24
    :cond_12
    invoke-static {p3}, Ls1/u/i;->X(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/k/b/g0/g$a;

    if-eqz p1, :cond_13

    goto :goto_b

    :cond_13
    move-object p1, v2

    :goto_b
    if-eqz p6, :cond_14

    goto :goto_c

    :cond_14
    move-object v0, v2

    :goto_c
    const-string p2, "a"

    .line 25
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "b"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_15

    move-object p1, v0

    :cond_15
    return-object p1
.end method

.method public final d(Ls1/a/a/a/v0/m/e0;)Z
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/k/b/u;->h:Ls1/a/k;

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->m0(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z

    move-result p1

    return p1
.end method

.method public final e(Ls1/a/a/a/v0/h/p;ILs1/a/a/a/v0/k/b/b;)Ls1/a/a/a/v0/b/f1/h;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->b:Ls1/a/a/a/v0/e/z/b$b;

    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-object p1

    .line 5
    :cond_0
    new-instance p2, Ls1/a/a/a/v0/k/b/g0/n;

    iget-object v0, p0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 8
    new-instance v1, Ls1/a/a/a/v0/k/b/v$a;

    invoke-direct {v1, p0, p1, p3}, Ls1/a/a/a/v0/k/b/v$a;-><init>(Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)V

    invoke-direct {p2, v0, v1}, Ls1/a/a/a/v0/k/b/g0/n;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    return-object p2
.end method

.method public final f()Ls1/a/a/a/v0/b/n0;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 3
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final g(Ls1/a/a/a/v0/e/n;Z)Ls1/a/a/a/v0/b/f1/h;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->b:Ls1/a/a/a/v0/e/z/b$b;

    .line 2
    iget v1, p1, Ls1/a/a/a/v0/e/n;->d:I

    .line 3
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/n;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 10
    new-instance v2, Ls1/a/a/a/v0/k/b/v$b;

    invoke-direct {v2, p0, p2, p1}, Ls1/a/a/a/v0/k/b/v$b;-><init>(Ls1/a/a/a/v0/k/b/v;ZLs1/a/a/a/v0/e/n;)V

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/k/b/g0/n;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    return-object v0
.end method

.method public final h(Ls1/a/a/a/v0/e/d;Z)Ls1/a/a/a/v0/b/d;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "proto"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/b/e;

    .line 4
    new-instance v6, Ls1/a/a/a/v0/k/b/g0/c;

    .line 5
    iget v2, v0, Ls1/a/a/a/v0/e/d;->d:I

    .line 6
    sget-object v3, Ls1/a/a/a/v0/k/b/b;->a:Ls1/a/a/a/v0/k/b/b;

    invoke-virtual {v7, v0, v2, v3}, Ls1/a/a/a/v0/k/b/v;->e(Ls1/a/a/a/v0/h/p;ILs1/a/a/a/v0/k/b/b;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v11

    .line 7
    sget-object v13, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v15, v2, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 9
    iget-object v4, v2, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 10
    iget-object v5, v2, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    .line 11
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object v8, v6

    move-object v9, v1

    move/from16 v12, p2

    move-object/from16 v14, p1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    .line 12
    invoke-direct/range {v8 .. v19}, Ls1/a/a/a/v0/k/b/g0/c;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/e/d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/b/r0;)V

    .line 13
    iget-object v8, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    sget-object v10, Ls1/u/s;->a:Ls1/u/s;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3c

    move-object v9, v6

    invoke-static/range {v8 .. v15}, Ls1/a/a/a/v0/k/b/l;->b(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;I)Ls1/a/a/a/v0/k/b/l;

    move-result-object v2

    .line 14
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 15
    iget-object v4, v0, Ls1/a/a/a/v0/e/d;->e:Ljava/util/List;

    const-string v5, "proto.valueParameterList"

    .line 16
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0, v3}, Ls1/a/a/a/v0/k/b/v;->l(Ljava/util/List;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;

    move-result-object v2

    .line 17
    sget-object v3, Ls1/a/a/a/v0/e/z/b;->c:Ls1/a/a/a/v0/e/z/b$d;

    .line 18
    iget v4, v0, Ls1/a/a/a/v0/e/d;->d:I

    .line 19
    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/x;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    .line 21
    :goto_0
    sget-object v3, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 22
    :cond_1
    sget-object v3, Ls1/a/a/a/v0/b/q;->f:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 23
    :cond_2
    sget-object v3, Ls1/a/a/a/v0/b/q;->b:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 24
    :cond_3
    sget-object v3, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 25
    :cond_4
    sget-object v3, Ls1/a/a/a/v0/b/q;->c:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 26
    :cond_5
    sget-object v3, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 27
    :cond_6
    sget-object v3, Ls1/a/a/a/v0/b/q;->d:Ls1/a/a/a/v0/b/r;

    :goto_1
    const-string v5, "when (visibility) {\n    \u2026isibilities.PRIVATE\n    }"

    .line 28
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6, v2, v3}, Ls1/a/a/a/v0/b/h1/i;->Y0(Ljava/util/List;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/i;

    .line 30
    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-virtual {v6, v1}, Ls1/a/a/a/v0/b/h1/r;->V0(Ls1/a/a/a/v0/m/e0;)V

    .line 31
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->m:Ls1/a/a/a/v0/e/z/b$b;

    .line 32
    iget v0, v0, Ls1/a/a/a/v0/e/d;->d:I

    .line 33
    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 34
    iput-boolean v0, v6, Ls1/a/a/a/v0/b/h1/r;->v:Z

    .line 35
    iget-object v0, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 36
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 37
    instance-of v1, v0, Ls1/a/a/a/v0/k/b/g0/d;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    check-cast v0, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz v0, :cond_8

    .line 38
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    if-eqz v0, :cond_8

    .line 39
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    if-eqz v0, :cond_8

    .line 40
    iget-boolean v0, v0, Ls1/a/a/a/v0/k/b/c0;->h:Z

    if-ne v0, v4, :cond_8

    .line 41
    invoke-virtual {v7, v6}, Ls1/a/a/a/v0/k/b/v;->m(Ls1/a/a/a/v0/k/b/g0/g;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_9

    .line 42
    sget-object v0, Ls1/a/a/a/v0/k/b/g0/g$a;->c:Ls1/a/a/a/v0/k/b/g0/g$a;

    move-object v9, v6

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v6}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v3

    const-string v0, "descriptor.valueParameters"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ls1/a/a/a/v0/b/h1/r;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    const-string v0, "descriptor.typeParameters"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v5, v6, Ls1/a/a/a/v0/b/h1/r;->g:Ls1/a/a/a/v0/m/e0;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v9, v6

    move v6, v8

    .line 45
    invoke-virtual/range {v0 .. v6}, Ls1/a/a/a/v0/k/b/v;->c(Ls1/a/a/a/v0/k/b/g0/b;Ls1/a/a/a/v0/b/n0;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/k/b/g0/g$a;

    move-result-object v0

    :goto_3
    const-string v1, "<set-?>"

    .line 46
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object v0, v9, Ls1/a/a/a/v0/k/b/g0/c;->J:Ls1/a/a/a/v0/k/b/g0/g$a;

    return-object v9
.end method

.method public final i(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/b/q0;
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    const-string v0, "proto"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, v6, Ls1/a/a/a/v0/e/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget v0, v6, Ls1/a/a/a/v0/e/i;->d:I

    goto :goto_1

    .line 3
    :cond_1
    iget v0, v6, Ls1/a/a/a/v0/e/i;->e:I

    and-int/lit8 v1, v0, 0x3f

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    :goto_1
    move v5, v0

    .line 4
    sget-object v0, Ls1/a/a/a/v0/k/b/b;->a:Ls1/a/a/a/v0/k/b/b;

    invoke-virtual {v7, v6, v5, v0}, Ls1/a/a/a/v0/k/b/v;->e(Ls1/a/a/a/v0/h/p;ILs1/a/a/a/v0/k/b/b;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v11

    .line 5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->l1(Ls1/a/a/a/v0/e/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/a;

    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 7
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 8
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 9
    new-instance v3, Ls1/a/a/a/v0/k/b/w;

    invoke-direct {v3, v7, v6, v0}, Ls1/a/a/a/v0/k/b/w;-><init>(Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)V

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/k/b/g0/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    goto :goto_2

    .line 10
    :cond_2
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 13
    :goto_2
    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 14
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 15
    invoke-static {v2}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    iget-object v3, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 16
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 17
    iget v4, v6, Ls1/a/a/a/v0/e/i;->f:I

    .line 18
    invoke-static {v3, v4}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/k/b/a0;->a:Ls1/a/a/a/v0/f/b;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    sget-object v2, Ls1/a/a/a/v0/e/z/g;->c:Ls1/a/a/a/v0/e/z/g$a;

    .line 20
    sget-object v2, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    sget-object v2, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    goto :goto_3

    .line 21
    :cond_3
    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 22
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    :goto_3
    move-object/from16 v17, v2

    .line 23
    new-instance v4, Ls1/a/a/a/v0/k/b/g0/k;

    .line 24
    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 25
    iget-object v9, v2, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    const/4 v10, 0x0

    .line 26
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 27
    iget v3, v6, Ls1/a/a/a/v0/e/i;->f:I

    .line 28
    invoke-static {v2, v3}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v12

    .line 29
    sget-object v2, Ls1/a/a/a/v0/e/z/b;->n:Ls1/a/a/a/v0/e/z/b$d;

    invoke-virtual {v2, v5}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/e/j;

    invoke-static {v2}, Ls1/a/a/a/v0/k/b/z;->a(Ls1/a/a/a/v0/e/j;)Ls1/a/a/a/v0/b/b$a;

    move-result-object v13

    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 30
    iget-object v15, v2, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 31
    iget-object v3, v2, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 32
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    const/16 v19, 0x0

    move-object v8, v4

    move-object/from16 v14, p1

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    .line 33
    invoke-direct/range {v8 .. v19}, Ls1/a/a/a/v0/k/b/g0/k;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/b/r0;)V

    .line 34
    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 35
    iget-object v3, v6, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    const-string v8, "proto.typeParameterList"

    .line 36
    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3c

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-static/range {v18 .. v25}, Ls1/a/a/a/v0/k/b/l;->b(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;I)Ls1/a/a/a/v0/k/b/l;

    move-result-object v8

    .line 37
    iget-object v2, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 38
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 39
    invoke-static {v6, v2}, Le/q/f/a/d/a;->u2(Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/q;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 40
    iget-object v3, v8, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 41
    invoke-virtual {v3, v2}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 42
    invoke-static {v4, v2, v1}, Ls1/a/a/a/v0/f/d;->u0(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/n0;

    move-result-object v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move-object/from16 v19, v1

    .line 43
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/v;->f()Ls1/a/a/a/v0/b/n0;

    move-result-object v20

    .line 44
    iget-object v1, v8, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 45
    invoke-virtual {v1}, Ls1/a/a/a/v0/k/b/c0;->c()Ljava/util/List;

    move-result-object v9

    .line 46
    iget-object v1, v8, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 47
    iget-object v2, v6, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    const-string v3, "proto.valueParameterList"

    .line 48
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0}, Ls1/a/a/a/v0/k/b/v;->l(Ljava/util/List;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;

    move-result-object v10

    .line 49
    iget-object v0, v8, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 50
    iget-object v1, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 51
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 52
    invoke-static {v6, v1}, Le/q/f/a/d/a;->G2(Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v23

    .line 53
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->d:Ls1/a/a/a/v0/e/z/b$d;

    invoke-virtual {v0, v5}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/k;

    invoke-static {v0}, Ls1/a/a/a/v0/k/b/z;->b(Ls1/a/a/a/v0/e/k;)Ls1/a/a/a/v0/b/y;

    move-result-object v24

    .line 54
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->c:Ls1/a/a/a/v0/e/z/b$d;

    invoke-virtual {v0, v5}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/x;

    invoke-static {v0}, Ls1/a/a/a/v0/k/b/z;->c(Ls1/a/a/a/v0/e/x;)Ls1/a/a/a/v0/b/r;

    move-result-object v11

    .line 55
    sget-object v12, Ls1/u/t;->a:Ls1/u/t;

    .line 56
    sget-object v13, Ls1/a/a/a/v0/e/z/b;->t:Ls1/a/a/a/v0/e/z/b$b;

    const-string v14, "Flags.IS_SUSPEND.get(flags)"

    invoke-static {v13, v5, v14}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    move-object v3, v10

    move-object/from16 v16, v4

    move-object v4, v9

    move-object/from16 v17, v8

    move v8, v5

    move-object/from16 v5, v23

    move v6, v15

    .line 57
    invoke-virtual/range {v0 .. v6}, Ls1/a/a/a/v0/k/b/v;->c(Ls1/a/a/a/v0/k/b/g0/b;Ls1/a/a/a/v0/b/n0;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/k/b/g0/g$a;

    move-result-object v0

    const-string v1, "typeParameters"

    .line 58
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unsubstitutedValueParameters"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "visibility"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userDataMap"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "isExperimentalCoroutineInReleaseEnvironment"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v16

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    .line 59
    invoke-virtual/range {v18 .. v26}, Ls1/a/a/a/v0/b/h1/i0;->a1(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ljava/util/Map;)Ls1/a/a/a/v0/b/h1/i0;

    const-string v1, "super.initialize(\n      \u2026    userDataMap\n        )"

    move-object/from16 v2, v16

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object v0, v2, Ls1/a/a/a/v0/k/b/g0/k;->D:Ls1/a/a/a/v0/k/b/g0/g$a;

    .line 61
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->o:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.IS_OPERATOR.get(flags)"

    invoke-static {v0, v8, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 62
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->l:Z

    .line 63
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->p:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.IS_INFIX.get(flags)"

    invoke-static {v0, v8, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 64
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->m:Z

    .line 65
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->s:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.IS_EXTERNAL_FUNCTION.get(flags)"

    invoke-static {v0, v8, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 66
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->n:Z

    .line 67
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->q:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.IS_INLINE.get(flags)"

    invoke-static {v0, v8, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 68
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->o:Z

    .line 69
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->r:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.IS_TAILREC.get(flags)"

    invoke-static {v0, v8, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 70
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->p:Z

    .line 71
    invoke-static {v13, v8, v14}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 72
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->u:Z

    .line 73
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->u:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.IS_EXPECT_FUNCTION.get(flags)"

    invoke-static {v0, v8, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    .line 74
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->q:Z

    .line 75
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->v:Ls1/a/a/a/v0/e/z/b$b;

    invoke-virtual {v0, v8}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 76
    iput-boolean v0, v2, Ls1/a/a/a/v0/b/h1/r;->v:Z

    .line 77
    iget-object v0, v7, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 78
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 79
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->n:Ls1/a/a/a/v0/k/b/i;

    .line 80
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    move-object/from16 v3, v17

    .line 81
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    move-object/from16 v4, p1

    .line 82
    invoke-interface {v1, v4, v2, v0, v3}, Ls1/a/a/a/v0/k/b/i;->a(Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/c0;)Ls1/k;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 83
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 84
    check-cast v1, Ls1/a/a/a/v0/b/a$a;

    .line 85
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 86
    invoke-virtual {v2, v1, v0}, Ls1/a/a/a/v0/b/h1/r;->S0(Ls1/a/a/a/v0/b/a$a;Ljava/lang/Object;)V

    :cond_5
    return-object v2
.end method

.method public final j(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/b/k0;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    sget-object v20, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    sget-object v3, Ls1/a/a/a/v0/k/b/b;->c:Ls1/a/a/a/v0/k/b/b;

    const-string v1, "proto"

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v15, Ls1/a/a/a/v0/e/n;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iget v1, v15, Ls1/a/a/a/v0/e/n;->d:I

    goto :goto_1

    .line 3
    :cond_1
    iget v1, v15, Ls1/a/a/a/v0/e/n;->e:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    :goto_1
    move v14, v1

    .line 4
    new-instance v13, Ls1/a/a/a/v0/k/b/g0/j;

    move-object v1, v13

    .line 5
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 6
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 7
    sget-object v4, Ls1/a/a/a/v0/k/b/b;->b:Ls1/a/a/a/v0/k/b/b;

    invoke-virtual {v0, v15, v14, v4}, Ls1/a/a/a/v0/k/b/v;->e(Ls1/a/a/a/v0/h/p;ILs1/a/a/a/v0/k/b/b;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    .line 8
    sget-object v12, Ls1/a/a/a/v0/e/z/b;->d:Ls1/a/a/a/v0/e/z/b$d;

    invoke-virtual {v12, v14}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/e/k;

    invoke-static {v5}, Ls1/a/a/a/v0/k/b/z;->b(Ls1/a/a/a/v0/e/k;)Ls1/a/a/a/v0/b/y;

    move-result-object v5

    .line 9
    sget-object v11, Ls1/a/a/a/v0/e/z/b;->c:Ls1/a/a/a/v0/e/z/b$d;

    invoke-virtual {v11, v14}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/e/x;

    invoke-static {v6}, Ls1/a/a/a/v0/k/b/z;->c(Ls1/a/a/a/v0/e/x;)Ls1/a/a/a/v0/b/r;

    move-result-object v6

    .line 10
    sget-object v7, Ls1/a/a/a/v0/e/z/b;->w:Ls1/a/a/a/v0/e/z/b$b;

    const-string v8, "Flags.IS_VAR.get(flags)"

    invoke-static {v7, v14, v8}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v7

    .line 11
    iget-object v8, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 12
    iget-object v8, v8, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 13
    iget v9, v15, Ls1/a/a/a/v0/e/n;->f:I

    .line 14
    invoke-static {v8, v9}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v8

    .line 15
    sget-object v9, Ls1/a/a/a/v0/e/z/b;->n:Ls1/a/a/a/v0/e/z/b$d;

    invoke-virtual {v9, v14}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/e/j;

    invoke-static {v9}, Ls1/a/a/a/v0/k/b/z;->a(Ls1/a/a/a/v0/e/j;)Ls1/a/a/a/v0/b/b$a;

    move-result-object v9

    .line 16
    sget-object v10, Ls1/a/a/a/v0/e/z/b;->A:Ls1/a/a/a/v0/e/z/b$b;

    move-object/from16 v21, v3

    const-string v3, "Flags.IS_LATEINIT.get(flags)"

    invoke-static {v10, v14, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v10

    .line 17
    sget-object v3, Ls1/a/a/a/v0/e/z/b;->z:Ls1/a/a/a/v0/e/z/b$b;

    move-object/from16 v16, v11

    const-string v11, "Flags.IS_CONST.get(flags)"

    invoke-static {v3, v14, v11}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v11

    move-object/from16 v3, v16

    move-object/from16 v22, v3

    .line 18
    sget-object v3, Ls1/a/a/a/v0/e/z/b;->C:Ls1/a/a/a/v0/e/z/b$b;

    move-object/from16 v16, v12

    const-string v12, "Flags.IS_EXTERNAL_PROPERTY.get(flags)"

    invoke-static {v3, v14, v12}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v12

    move-object/from16 v3, v16

    move-object/from16 v23, v3

    .line 19
    sget-object v3, Ls1/a/a/a/v0/e/z/b;->D:Ls1/a/a/a/v0/e/z/b$b;

    move-object/from16 v16, v13

    const-string v13, "Flags.IS_DELEGATED.get(flags)"

    invoke-static {v3, v14, v13}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v13

    move-object/from16 v3, v16

    move-object/from16 v24, v3

    .line 20
    sget-object v3, Ls1/a/a/a/v0/e/z/b;->E:Ls1/a/a/a/v0/e/z/b$b;

    const-string v15, "Flags.IS_EXPECT_PROPERTY.get(flags)"

    invoke-static {v3, v14, v15}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v3

    move v15, v14

    move v14, v3

    .line 21
    iget-object v3, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    move/from16 v25, v15

    .line 22
    iget-object v15, v3, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    move-object/from16 v16, v15

    .line 23
    iget-object v15, v3, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    move-object/from16 v17, v15

    .line 24
    iget-object v15, v3, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    move-object/from16 v18, v15

    .line 25
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move-object/from16 v15, v21

    move-object/from16 v27, v22

    move-object/from16 v26, v23

    move-object/from16 v28, v15

    move/from16 v29, v25

    move-object/from16 v15, p1

    .line 26
    invoke-direct/range {v1 .. v19}, Ls1/a/a/a/v0/k/b/g0/j;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;ZZZZZLs1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;)V

    .line 27
    iget-object v4, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    move-object/from16 v12, p1

    .line 28
    iget-object v6, v12, Ls1/a/a/a/v0/e/n;->i:Ljava/util/List;

    const-string v1, "proto.typeParameterList"

    .line 29
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    move-object/from16 v5, v24

    invoke-static/range {v4 .. v11}, Ls1/a/a/a/v0/k/b/l;->b(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;I)Ls1/a/a/a/v0/k/b/l;

    move-result-object v13

    .line 30
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->x:Ls1/a/a/a/v0/e/z/b$b;

    const-string v2, "Flags.HAS_GETTER.get(flags)"

    move/from16 v14, v29

    invoke-static {v1, v14, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->m1(Ls1/a/a/a/v0/e/n;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    new-instance v2, Ls1/a/a/a/v0/k/b/g0/a;

    iget-object v3, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 33
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 34
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 35
    new-instance v4, Ls1/a/a/a/v0/k/b/w;

    move-object/from16 v5, v28

    invoke-direct {v4, v0, v12, v5}, Ls1/a/a/a/v0/k/b/w;-><init>(Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)V

    invoke-direct {v2, v3, v4}, Ls1/a/a/a/v0/k/b/g0/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    goto :goto_2

    :cond_2
    move-object/from16 v5, v28

    .line 36
    sget-object v2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 37
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 39
    :goto_2
    iget-object v3, v13, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 40
    iget-object v4, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 41
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 42
    invoke-static {v12, v4}, Le/q/f/a/d/a;->H2(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    .line 43
    iget-object v4, v13, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 44
    invoke-virtual {v4}, Ls1/a/a/a/v0/k/b/c0;->c()Ljava/util/List;

    move-result-object v4

    .line 45
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/k/b/v;->f()Ls1/a/a/a/v0/b/n0;

    move-result-object v6

    .line 46
    iget-object v7, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 47
    iget-object v7, v7, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v8, "$this$receiverType"

    .line 48
    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "typeTable"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/e/n;->l()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 50
    iget-object v7, v12, Ls1/a/a/a/v0/e/n;->j:Ls1/a/a/a/v0/e/q;

    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/e/n;->m()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 52
    iget v8, v12, Ls1/a/a/a/v0/e/n;->k:I

    .line 53
    invoke-virtual {v7, v8}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_5

    .line 54
    iget-object v8, v13, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 55
    invoke-virtual {v8, v7}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object/from16 v15, v24

    .line 56
    invoke-static {v15, v7, v2}, Ls1/a/a/a/v0/f/d;->u0(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/n0;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object/from16 v15, v24

    const/4 v2, 0x0

    .line 57
    :goto_4
    invoke-virtual {v15, v3, v4, v6, v2}, Ls1/a/a/a/v0/b/h1/e0;->R0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;)V

    .line 58
    sget-object v2, Ls1/a/a/a/v0/e/z/b;->b:Ls1/a/a/a/v0/e/z/b$b;

    const-string v3, "Flags.HAS_ANNOTATIONS.get(flags)"

    invoke-static {v2, v14, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v3

    move-object/from16 v11, v27

    .line 59
    invoke-virtual {v11, v14}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/x;

    move-object/from16 v10, v26

    .line 60
    invoke-virtual {v10, v14}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/e/k;

    if-eqz v4, :cond_10

    if-eqz v6, :cond_f

    .line 61
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/e/z/b$b;->g(Ljava/lang/Boolean;)I

    move-result v2

    invoke-virtual {v10, v6}, Ls1/a/a/a/v0/e/z/b$d;->e(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v11, v4}, Ls1/a/a/a/v0/e/z/b$d;->e(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v9, Ls1/a/a/a/v0/e/z/b;->I:Ls1/a/a/a/v0/e/z/b$b;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v3}, Ls1/a/a/a/v0/e/z/b$b;->g(Ljava/lang/Boolean;)I

    move-result v4

    or-int/2addr v2, v4

    sget-object v8, Ls1/a/a/a/v0/e/z/b;->J:Ls1/a/a/a/v0/e/z/b$b;

    invoke-virtual {v8, v3}, Ls1/a/a/a/v0/e/z/b$b;->g(Ljava/lang/Boolean;)I

    move-result v4

    or-int/2addr v2, v4

    sget-object v7, Ls1/a/a/a/v0/e/z/b;->K:Ls1/a/a/a/v0/e/z/b$b;

    invoke-virtual {v7, v3}, Ls1/a/a/a/v0/e/z/b$b;->g(Ljava/lang/Boolean;)I

    move-result v3

    or-int v16, v2, v3

    if-eqz v1, :cond_9

    .line 62
    iget v1, v12, Ls1/a/a/a/v0/e/n;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_7

    .line 63
    iget v1, v12, Ls1/a/a/a/v0/e/n;->m:I

    goto :goto_6

    :cond_7
    move/from16 v1, v16

    :goto_6
    const-string v2, "Flags.IS_NOT_DEFAULT.get(getterFlags)"

    .line 64
    invoke-static {v9, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v2

    const-string v3, "Flags.IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    .line 65
    invoke-static {v8, v1, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v17

    const-string v3, "Flags.IS_INLINE_ACCESSOR.get(getterFlags)"

    .line 66
    invoke-static {v7, v1, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v18

    .line 67
    invoke-virtual {v0, v12, v1, v5}, Ls1/a/a/a/v0/k/b/v;->e(Ls1/a/a/a/v0/h/p;ILs1/a/a/a/v0/k/b/b;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    if-eqz v2, :cond_8

    .line 68
    new-instance v19, Ls1/a/a/a/v0/b/h1/f0;

    .line 69
    invoke-virtual {v10, v1}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/k;

    invoke-static {v4}, Ls1/a/a/a/v0/k/b/z;->b(Ls1/a/a/a/v0/e/k;)Ls1/a/a/a/v0/b/y;

    move-result-object v4

    .line 70
    invoke-virtual {v11, v1}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/e/x;

    invoke-static {v1}, Ls1/a/a/a/v0/k/b/z;->c(Ls1/a/a/a/v0/e/x;)Ls1/a/a/a/v0/b/r;

    move-result-object v5

    xor-int/lit8 v6, v2, 0x1

    .line 71
    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/e0;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v1, v19

    move-object v2, v15

    move-object/from16 v38, v7

    move/from16 v7, v17

    move-object/from16 v39, v8

    move/from16 v8, v18

    move-object/from16 v17, v13

    move-object v13, v9

    move-object/from16 v9, v21

    move-object/from16 v40, v10

    move-object/from16 v10, v22

    move-object/from16 v41, v11

    move-object/from16 v11, v20

    .line 72
    invoke-direct/range {v1 .. v11}, Ls1/a/a/a/v0/b/h1/f0;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZZZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/l0;Ls1/a/a/a/v0/b/r0;)V

    goto :goto_7

    :cond_8
    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v17, v13

    move-object v13, v9

    .line 73
    invoke-static {v15, v3}, Ls1/a/a/a/v0/f/d;->q0(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/h1/f0;

    move-result-object v1

    const-string v2, "DescriptorFactory.create\u2026er(property, annotations)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :goto_7
    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/e0;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/b/h1/f0;->P0(Ls1/a/a/a/v0/m/e0;)V

    goto :goto_8

    :cond_9
    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v17, v13

    move-object v13, v9

    const/4 v1, 0x0

    :goto_8
    move-object v11, v1

    .line 75
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->y:Ls1/a/a/a/v0/e/z/b$b;

    const-string v2, "Flags.HAS_SETTER.get(flags)"

    invoke-static {v1, v14, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 76
    iget v1, v12, Ls1/a/a/a/v0/e/n;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_b

    .line 77
    iget v1, v12, Ls1/a/a/a/v0/e/n;->n:I

    goto :goto_a

    :cond_b
    move/from16 v1, v16

    :goto_a
    const-string v2, "Flags.IS_NOT_DEFAULT.get(setterFlags)"

    .line 78
    invoke-static {v13, v1, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v2

    const-string v3, "Flags.IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    move-object/from16 v4, v39

    .line 79
    invoke-static {v4, v1, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v7

    const-string v3, "Flags.IS_INLINE_ACCESSOR.get(setterFlags)"

    move-object/from16 v4, v38

    .line 80
    invoke-static {v4, v1, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v8

    .line 81
    sget-object v13, Ls1/a/a/a/v0/k/b/b;->d:Ls1/a/a/a/v0/k/b/b;

    invoke-virtual {v0, v12, v1, v13}, Ls1/a/a/a/v0/k/b/v;->e(Ls1/a/a/a/v0/h/p;ILs1/a/a/a/v0/k/b/b;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    if-eqz v2, :cond_c

    .line 82
    new-instance v10, Ls1/a/a/a/v0/b/h1/g0;

    move-object/from16 v4, v40

    .line 83
    invoke-virtual {v4, v1}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/k;

    invoke-static {v4}, Ls1/a/a/a/v0/k/b/z;->b(Ls1/a/a/a/v0/e/k;)Ls1/a/a/a/v0/b/y;

    move-result-object v4

    move-object/from16 v5, v41

    .line 84
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/e/x;

    invoke-static {v1}, Ls1/a/a/a/v0/k/b/z;->c(Ls1/a/a/a/v0/e/x;)Ls1/a/a/a/v0/b/r;

    move-result-object v5

    xor-int/lit8 v6, v2, 0x1

    .line 85
    invoke-virtual {v15}, Ls1/a/a/a/v0/b/h1/e0;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v9

    const/16 v16, 0x0

    move-object v1, v10

    move-object v2, v15

    move-object/from16 v18, v10

    move-object/from16 v10, v16

    move-object/from16 v42, v11

    move-object/from16 v11, v20

    .line 86
    invoke-direct/range {v1 .. v11}, Ls1/a/a/a/v0/b/h1/g0;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZZZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/m0;Ls1/a/a/a/v0/b/r0;)V

    .line 87
    sget-object v32, Ls1/u/s;->a:Ls1/u/s;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x3c

    move-object/from16 v30, v17

    move-object/from16 v31, v18

    invoke-static/range {v30 .. v37}, Ls1/a/a/a/v0/k/b/l;->b(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;I)Ls1/a/a/a/v0/k/b/l;

    move-result-object v1

    .line 88
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 89
    iget-object v2, v12, Ls1/a/a/a/v0/e/n;->l:Ls1/a/a/a/v0/e/u;

    .line 90
    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2, v12, v13}, Ls1/a/a/a/v0/k/b/v;->l(Ljava/util/List;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-static {v1}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/b1;

    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/b/h1/g0;->Q0(Ls1/a/a/a/v0/b/b1;)V

    move-object v10, v2

    goto :goto_b

    :cond_c
    move-object/from16 v42, v11

    .line 93
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 94
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 96
    invoke-static {v15, v3, v1}, Ls1/a/a/a/v0/f/d;->r0(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/h1/g0;

    move-result-object v10

    const-string v1, "DescriptorFactory.create\u2026ptor */\n                )"

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_d
    move-object/from16 v42, v11

    const/4 v10, 0x0

    .line 97
    :goto_b
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->B:Ls1/a/a/a/v0/e/z/b$b;

    const-string v2, "Flags.HAS_CONSTANT.get(flags)"

    invoke-static {v1, v14, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 98
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 99
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 100
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 101
    new-instance v2, Ls1/a/a/a/v0/k/b/v$c;

    invoke-direct {v2, v0, v12, v15}, Ls1/a/a/a/v0/k/b/v$c;-><init>(Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/k/b/g0/j;)V

    invoke-interface {v1, v2}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    move-result-object v1

    .line 102
    invoke-virtual {v15, v1}, Ls1/a/a/a/v0/b/h1/p0;->N0(Ls1/a/a/a/v0/l/j;)V

    .line 103
    :cond_e
    new-instance v1, Ls1/a/a/a/v0/b/h1/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v2}, Ls1/a/a/a/v0/k/b/v;->g(Ls1/a/a/a/v0/e/n;Z)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Ls1/a/a/a/v0/b/h1/q;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/k0;)V

    .line 104
    new-instance v2, Ls1/a/a/a/v0/b/h1/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v3}, Ls1/a/a/a/v0/k/b/v;->g(Ls1/a/a/a/v0/e/n;Z)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    invoke-direct {v2, v3, v15}, Ls1/a/a/a/v0/b/h1/q;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/k0;)V

    move-object/from16 v3, v17

    .line 105
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 106
    invoke-virtual {v0, v15, v3}, Ls1/a/a/a/v0/k/b/v;->b(Ls1/a/a/a/v0/k/b/g0/g;Ls1/a/a/a/v0/k/b/c0;)Ls1/a/a/a/v0/k/b/g0/g$a;

    move-result-object v3

    const-string v4, "isExperimentalCoroutineInReleaseEnvironment"

    .line 107
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v42

    .line 108
    iput-object v3, v15, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    .line 109
    iput-object v10, v15, Ls1/a/a/a/v0/b/h1/e0;->w:Ls1/a/a/a/v0/b/m0;

    .line 110
    iput-object v1, v15, Ls1/a/a/a/v0/b/h1/e0;->y:Ls1/a/a/a/v0/b/s;

    .line 111
    iput-object v2, v15, Ls1/a/a/a/v0/b/h1/e0;->z:Ls1/a/a/a/v0/b/s;

    return-object v15

    :cond_f
    const/16 v1, 0xb

    .line 112
    invoke-static {v1}, Ls1/a/a/a/v0/e/z/b;->a(I)V

    const/4 v1, 0x0

    throw v1

    :cond_10
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v2}, Ls1/a/a/a/v0/e/z/b;->a(I)V

    throw v1
.end method

.method public final k(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/b/v0;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    iget-object v2, v12, Ls1/a/a/a/v0/e/r;->k:Ljava/util/List;

    const-string v3, "proto.annotationList"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ls1/a/a/a/v0/e/b;

    .line 7
    iget-object v5, v0, Ls1/a/a/a/v0/k/b/v;->a:Ls1/a/a/a/v0/k/b/e;

    const-string v6, "it"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v6, v6, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 9
    invoke-virtual {v5, v4, v6}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/b/f1/h$a;->a(Ljava/util/List;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    .line 11
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->c:Ls1/a/a/a/v0/e/z/b$d;

    .line 12
    iget v2, v12, Ls1/a/a/a/v0/e/r;->d:I

    .line 13
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/e/z/b$d;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/e/x;

    const/4 v13, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v13, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 15
    :goto_1
    sget-object v1, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 16
    :cond_2
    sget-object v1, Ls1/a/a/a/v0/b/q;->f:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 17
    :cond_3
    sget-object v1, Ls1/a/a/a/v0/b/q;->b:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 18
    :cond_4
    sget-object v1, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 19
    :cond_5
    sget-object v1, Ls1/a/a/a/v0/b/q;->c:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 20
    :cond_6
    sget-object v1, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_2

    .line 21
    :cond_7
    sget-object v1, Ls1/a/a/a/v0/b/q;->d:Ls1/a/a/a/v0/b/r;

    :goto_2
    move-object v6, v1

    const-string v1, "when (visibility) {\n    \u2026isibilities.PRIVATE\n    }"

    .line 22
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v15, Ls1/a/a/a/v0/k/b/g0/l;

    .line 24
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 25
    iget-object v2, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 26
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 27
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 28
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 29
    iget v5, v12, Ls1/a/a/a/v0/e/r;->e:I

    .line 30
    invoke-static {v1, v5}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    .line 31
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 32
    iget-object v8, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 33
    iget-object v9, v1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 34
    iget-object v10, v1, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    .line 35
    iget-object v11, v1, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    move-object v1, v15

    move-object/from16 v7, p1

    .line 36
    invoke-direct/range {v1 .. v11}, Ls1/a/a/a/v0/k/b/g0/l;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/e/r;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/k/b/g0/f;)V

    .line 37
    iget-object v14, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 38
    iget-object v1, v12, Ls1/a/a/a/v0/e/r;->f:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    .line 39
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3c

    move-object v2, v15

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v21}, Ls1/a/a/a/v0/k/b/l;->b(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;I)Ls1/a/a/a/v0/k/b/l;

    move-result-object v1

    .line 40
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 41
    invoke-virtual {v3}, Ls1/a/a/a/v0/k/b/c0;->c()Ljava/util/List;

    move-result-object v3

    .line 42
    iget-object v4, v1, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 43
    iget-object v5, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 44
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v6, "$this$underlyingType"

    .line 45
    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "typeTable"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/e/r;->m()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    .line 47
    iget-object v5, v12, Ls1/a/a/a/v0/e/r;->g:Ls1/a/a/a/v0/e/q;

    const-string v7, "underlyingType"

    .line 48
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 49
    :cond_8
    iget v7, v12, Ls1/a/a/a/v0/e/r;->c:I

    const/16 v9, 0x8

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_9

    move v7, v13

    goto :goto_3

    :cond_9
    move v7, v8

    :goto_3
    if-eqz v7, :cond_d

    .line 50
    iget v7, v12, Ls1/a/a/a/v0/e/r;->h:I

    .line 51
    invoke-virtual {v5, v7}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v5

    .line 52
    :goto_4
    invoke-virtual {v4, v5, v8}, Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    .line 53
    iget-object v5, v1, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 54
    iget-object v7, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 55
    iget-object v7, v7, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v9, "$this$expandedType"

    .line 56
    invoke-static {v12, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/e/r;->l()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 58
    iget-object v6, v12, Ls1/a/a/a/v0/e/r;->i:Ls1/a/a/a/v0/e/q;

    const-string v7, "expandedType"

    .line 59
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 60
    :cond_a
    iget v6, v12, Ls1/a/a/a/v0/e/r;->c:I

    const/16 v9, 0x20

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_b

    goto :goto_5

    :cond_b
    move v13, v8

    :goto_5
    if-eqz v13, :cond_c

    .line 61
    iget v6, v12, Ls1/a/a/a/v0/e/r;->j:I

    .line 62
    invoke-virtual {v7, v6}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v6

    .line 63
    :goto_6
    invoke-virtual {v5, v6, v8}, Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v5

    .line 64
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 65
    invoke-virtual {v0, v2, v1}, Ls1/a/a/a/v0/k/b/v;->b(Ls1/a/a/a/v0/k/b/g0/g;Ls1/a/a/a/v0/k/b/c0;)Ls1/a/a/a/v0/k/b/g0/g$a;

    move-result-object v1

    .line 66
    invoke-virtual {v2, v3, v4, v5, v1}, Ls1/a/a/a/v0/k/b/g0/l;->w0(Ljava/util/List;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/k/b/g0/g$a;)V

    return-object v2

    .line 67
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No expandedType in ProtoBuf.TypeAlias"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l(Ljava/util/List;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/u;",
            ">;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/b1;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ls1/a/a/a/v0/b/a;

    .line 4
    invoke-interface/range {v21 .. v21}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ls1/a/a/a/v0/k/b/v;->a(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/k/b/y;

    move-result-object v22

    .line 5
    new-instance v15, Ljava/util/ArrayList;

    const/16 v0, 0xa

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v12, v24

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v25, v12, 0x1

    if-ltz v12, :cond_7

    .line 7
    move-object v9, v0

    check-cast v9, Ls1/a/a/a/v0/e/u;

    .line 8
    iget v0, v9, Ls1/a/a/a/v0/e/u;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v1, v24

    :goto_1
    if-eqz v1, :cond_1

    .line 9
    iget v0, v9, Ls1/a/a/a/v0/e/u;->d:I

    move v10, v0

    goto :goto_2

    :cond_1
    move/from16 v10, v24

    :goto_2
    if-eqz v22, :cond_2

    .line 10
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->b:Ls1/a/a/a/v0/e/z/b$b;

    const-string v1, "Flags.HAS_ANNOTATIONS.get(flags)"

    invoke-static {v0, v10, v1}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v11, Ls1/a/a/a/v0/k/b/g0/n;

    iget-object v0, v8, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 12
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 13
    iget-object v13, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 14
    new-instance v14, Ls1/a/a/a/v0/k/b/v$d;

    move-object v0, v14

    move v1, v12

    move-object v2, v9

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/k/b/v$d;-><init>(ILs1/a/a/a/v0/e/u;Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;Ls1/a/a/a/v0/b/a;)V

    invoke-direct {v11, v13, v14}, Ls1/a/a/a/v0/k/b/g0/n;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    move-object v13, v11

    goto :goto_3

    .line 15
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    move-object v13, v0

    :goto_3
    const/4 v11, 0x0

    .line 18
    iget-object v0, v8, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 19
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 20
    iget v1, v9, Ls1/a/a/a/v0/e/u;->e:I

    .line 21
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v14

    .line 22
    iget-object v0, v8, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 23
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 24
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 25
    invoke-static {v9, v0}, Le/q/f/a/d/a;->n3(Ls1/a/a/a/v0/e/u;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 26
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->F:Ls1/a/a/a/v0/e/z/b$b;

    const-string v2, "Flags.DECLARES_DEFAULT_VALUE.get(flags)"

    invoke-static {v1, v10, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v16

    .line 27
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->G:Ls1/a/a/a/v0/e/z/b$b;

    const-string v2, "Flags.IS_CROSSINLINE.get(flags)"

    invoke-static {v1, v10, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v17

    .line 28
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->H:Ls1/a/a/a/v0/e/z/b$b;

    const-string v2, "Flags.IS_NOINLINE.get(flags)"

    invoke-static {v1, v10, v2}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v18

    .line 29
    iget-object v1, v8, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 30
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v2, "$this$varargElementType"

    .line 31
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v9}, Ls1/a/a/a/v0/e/u;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v1, v9, Ls1/a/a/a/v0/e/u;->h:Ls1/a/a/a/v0/e/q;

    goto :goto_5

    .line 34
    :cond_3
    iget v2, v9, Ls1/a/a/a/v0/e/u;->c:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    move/from16 v2, v24

    :goto_4
    if-eqz v2, :cond_5

    .line 35
    iget v2, v9, Ls1/a/a/a/v0/e/u;->i:I

    .line 36
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_6

    .line 37
    iget-object v2, v8, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 38
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 39
    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    move-object/from16 v19, v1

    .line 40
    sget-object v1, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v2, "SourceElement.NO_SOURCE"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v2, Ls1/a/a/a/v0/b/h1/n0;

    move-object v9, v2

    move-object/from16 v10, v21

    move-object v3, v15

    move-object v15, v0

    move-object/from16 v20, v1

    invoke-direct/range {v9 .. v20}, Ls1/a/a/a/v0/b/h1/n0;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v3

    move/from16 v12, v25

    goto/16 :goto_0

    .line 42
    :cond_7
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    move-object v3, v15

    .line 43
    invoke-static {v3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ls1/a/a/a/v0/k/b/g0/g;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 4
    invoke-interface {v0}, Ls1/a/a/a/v0/k/b/k;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ls1/a/a/a/v0/k/b/g0/g;->M0()Ljava/util/List;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p1, v2

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/z/f;

    .line 7
    iget-object v3, v0, Ls1/a/a/a/v0/e/z/f;->a:Ls1/a/a/a/v0/e/z/f$a;

    .line 8
    new-instance v4, Ls1/a/a/a/v0/e/z/f$a;

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v4, v2, v5, v1, v6}, Ls1/a/a/a/v0/e/z/f$a;-><init>(IIII)V

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/e/z/f;->b:Ls1/a/a/a/v0/e/v$d;

    .line 10
    sget-object v3, Ls1/a/a/a/v0/e/v$d;->b:Ls1/a/a/a/v0/e/v$d;

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method
