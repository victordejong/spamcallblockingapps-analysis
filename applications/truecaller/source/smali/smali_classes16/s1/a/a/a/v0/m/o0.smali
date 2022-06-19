.class public final Ls1/a/a/a/v0/m/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "$this$makeDefinitelyNotNullOrNotNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/m/q;->a1(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/q;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/m/o0;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/i1;->S0(Z)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static final b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    instance-of v0, p0, Ls1/a/a/a/v0/m/c0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Ls1/a/a/a/v0/m/c0;

    if-eqz p0, :cond_6

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Ls1/a/a/a/v0/m/e0;

    .line 6
    invoke-static {v5}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v5}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v5

    .line 7
    invoke-static {v5, v3}, Ls1/a/a/a/v0/m/o0;->a(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/i1;

    move-result-object v5

    .line 8
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    move-object v2, v1

    goto :goto_2

    .line 9
    :cond_3
    iget-object p0, p0, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    if-eqz p0, :cond_4

    .line 10
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p0

    .line 11
    invoke-static {p0, v3}, Ls1/a/a/a/v0/m/o0;->a(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/i1;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :cond_5
    :goto_1
    const-string v0, "typesToIntersect"

    .line 12
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    .line 16
    new-instance v2, Ls1/a/a/a/v0/m/c0;

    .line 17
    invoke-direct {v2, v0}, Ls1/a/a/a/v0/m/c0;-><init>(Ljava/util/Collection;)V

    .line 18
    iput-object p0, v2, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    :goto_2
    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/c0;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static final c(Ls1/a/a/a/v0/m/l0;Z)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "$this$makeSimpleTypeDefinitelyNotNullOrNotNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/m/q;->a1(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/q;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/m/o0;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static final d(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "$this$withAbbreviation"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/m/a;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/a;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method
