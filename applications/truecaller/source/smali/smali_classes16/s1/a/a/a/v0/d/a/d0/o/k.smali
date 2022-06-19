.class public final Ls1/a/a/a/v0/d/a/d0/o/k;
.super Ls1/a/a/a/v0/m/y;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/k0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/m/y;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/m/l1/d;->d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/m/y;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    if-nez p3, :cond_0

    .line 4
    sget-object p3, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {p3, p1, p2}, Ls1/a/a/a/v0/m/l1/d;->d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/o/k;->X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y;

    move-result-object p1

    return-object p1
.end method

.method public S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/k;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    .line 4
    iget-object v2, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/o/k;->X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y;

    move-result-object p1

    return-object p1
.end method

.method public U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 3

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/k;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 6
    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public V0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public W0(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/i/i;)Ljava/lang/String;
    .locals 12

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/o/k$a;->b:Ls1/a/a/a/v0/d/a/d0/o/k$a;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/k$b;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/a/d0/o/k$b;-><init>(Ls1/a/a/a/v0/i/c;)V

    .line 3
    sget-object v1, Ls1/a/a/a/v0/d/a/d0/o/k$c;->b:Ls1/a/a/a/v0/d/a/d0/o/k$c;

    .line 4
    iget-object v2, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 7
    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {p2}, Ls1/a/a/a/v0/i/i;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "raw ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 11
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Ls1/a/a/a/v0/i/c;->t(Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/a/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    iget-object p2, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 13
    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/d/a/d0/o/k$b;->a(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;

    move-result-object p2

    .line 14
    iget-object v4, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 15
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/d/a/d0/o/k$b;->a(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 16
    sget-object v10, Ls1/a/a/a/v0/d/a/d0/o/k$d;->b:Ls1/a/a/a/v0/d/a/d0/o/k$d;

    const/16 v11, 0x1e

    const-string v5, ", "

    move-object v4, p2

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {p2, v0}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 20
    sget-object v6, Ls1/a/a/a/v0/d/a/d0/o/k$a;->b:Ls1/a/a/a/v0/d/a/d0/o/k$a;

    .line 21
    iget-object v7, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 22
    check-cast v7, Ljava/lang/String;

    .line 23
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ls1/a/a/a/v0/d/a/d0/o/k$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v5, 0x0

    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 25
    invoke-virtual {v1, v3, v4}, Ls1/a/a/a/v0/d/a/d0/o/k$c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    :cond_5
    invoke-virtual {v1, v2, v4}, Ls1/a/a/a/v0/d/a/d0/o/k$c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p2

    .line 28
    :cond_6
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {p1, p2, v3, v0}, Ls1/a/a/a/v0/i/c;->t(Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/a/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public X0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/k;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/m/l0;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, p1, v2}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;Z)V

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Ls1/a/a/a/v0/d/a/d0/o/j;->d:Ls1/a/a/a/v0/d/a/d0/o/j;

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/b/e;->D0(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v1, "classDescriptor.getMemberScope(RawSubstitution)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Incorrect classifier: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
