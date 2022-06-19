.class public final Ls1/a/a/a/v0/d/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/j/h$a;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/h$a;->b:Ls1/a/a/a/v0/j/h$a;

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/h$b;
    .locals 5

    sget-object p3, Ls1/a/a/a/v0/j/h$b;->d:Ls1/a/a/a/v0/j/h$b;

    const-string v0, "superDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Ls1/a/a/a/v0/d/a/c0/f;

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Ls1/a/a/a/v0/d/a/c0/f;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/r;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "subDescriptor.typeParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {p1, p2}, Ls1/a/a/a/v0/j/l;->i(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/j/l$c;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    return-object p3

    .line 3
    :cond_2
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v1

    const-string v4, "subDescriptor.valueParameters"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v1

    sget-object v4, Ls1/a/a/a/v0/d/a/m$a;->b:Ls1/a/a/a/v0/d/a/m$a;

    invoke-static {v1, v4}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 4
    iget-object v4, v0, Ls1/a/a/a/v0/b/h1/r;->g:Ls1/a/a/a/v0/m/e0;

    .line 5
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    invoke-static {v1, v4}, Ls1/e0/x;->n(Ls1/e0/k;Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v1

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/r;->h:Ls1/a/a/a/v0/b/n0;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Ls1/e0/x;->m(Ls1/e0/k;Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    .line 10
    check-cast v0, Ls1/e0/i;

    .line 11
    new-instance v1, Ls1/e0/i$a;

    invoke-direct {v1, v0}, Ls1/e0/i$a;-><init>(Ls1/e0/i;)V

    .line 12
    :cond_4
    invoke-virtual {v1}, Ls1/e0/i$a;->a()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v1}, Ls1/e0/i$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 14
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    instance-of v0, v0, Ls1/a/a/a/v0/d/a/d0/o/k;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    if-eqz v0, :cond_7

    return-object p3

    .line 15
    :cond_7
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/o/j;->d:Ls1/a/a/a/v0/d/a/d0/o/j;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->c()Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/t0;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/a;

    if-eqz p1, :cond_a

    .line 16
    instance-of v0, p1, Ls1/a/a/a/v0/b/q0;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/b/q0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    const-string v4, "erasedSuper.typeParameters"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 17
    invoke-interface {v0}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/v$a;->i(Ljava/util/List;)Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 18
    :cond_8
    sget-object v0, Ls1/a/a/a/v0/j/l;->d:Ls1/a/a/a/v0/j/l;

    invoke-virtual {v0, p1, p2, v3}, Ls1/a/a/a/v0/j/l;->n(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Z)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    const-string p2, "OverridingUtil.DEFAULT.i\u2026er, subDescriptor, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object p1

    const-string p2, "OverridingUtil.DEFAULT.i\u2026Descriptor, false).result"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 20
    :cond_9
    sget-object p3, Ls1/a/a/a/v0/j/h$b;->a:Ls1/a/a/a/v0/j/h$b;

    :cond_a
    :goto_3
    return-object p3
.end method
