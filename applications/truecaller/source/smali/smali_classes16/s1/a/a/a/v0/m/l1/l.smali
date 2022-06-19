.class public final Ls1/a/a/a/v0/m/l1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/l1/k;


# instance fields
.field public final c:Ls1/a/a/a/v0/j/l;

.field public final d:Ls1/a/a/a/v0/m/l1/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l1/e;)V
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/l;->d:Ls1/a/a/a/v0/m/l1/e;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ls1/a/a/a/v0/j/l;

    sget-object v1, Ls1/a/a/a/v0/j/l;->e:Ls1/a/a/a/v0/m/l1/d$a;

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/j/l;-><init>(Ls1/a/a/a/v0/m/l1/d$a;Ls1/a/a/a/v0/m/l1/e;)V

    const-string p1, "OverridingUtil.createWit\u2026efiner(kotlinTypeRefiner)"

    .line 3
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/a/a/a/v0/m/l1/l;->c:Ls1/a/a/a/v0/j/l;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/j/l;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z
    .locals 7

    const-string v0, "a"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/b;

    .line 2
    iget-object v5, p0, Ls1/a/a/a/v0/m/l1/l;->d:Ls1/a/a/a/v0/m/l1/e;

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/m/l1/b;-><init>(ZZZLs1/a/a/a/v0/m/l1/e;I)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Ls1/a/a/a/v0/m/l1/l;->e(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z

    move-result p1

    return p1
.end method

.method public b()Ls1/a/a/a/v0/j/l;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/l;->c:Ls1/a/a/a/v0/j/l;

    return-object v0
.end method

.method public c()Ls1/a/a/a/v0/m/l1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/l;->d:Ls1/a/a/a/v0/m/l1/e;

    return-object v0
.end method

.method public d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z
    .locals 7

    const-string v0, "subtype"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertype"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/b;

    .line 2
    iget-object v5, p0, Ls1/a/a/a/v0/m/l1/l;->d:Ls1/a/a/a/v0/m/l1/e;

    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/m/l1/b;-><init>(ZZZLs1/a/a/a/v0/m/l1/e;I)V

    .line 4
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Ls1/a/a/a/v0/m/l1/l;->f(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z

    move-result p1

    return p1
.end method

.method public final e(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z
    .locals 1

    const-string v0, "$this$equalTypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    invoke-virtual {v0, p1, p2, p3}, Ls1/a/a/a/v0/m/g;->c(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public final f(Ls1/a/a/a/v0/m/l1/b;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/i1;)Z
    .locals 7

    const-string v0, "$this$isSubtypeOf"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result p1

    return p1
.end method

.method public final g(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;
    .locals 17

    const-string v0, "type"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 2
    instance-of v2, v0, Ls1/a/a/a/v0/j/s/a/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 3
    check-cast v0, Ls1/a/a/a/v0/j/s/a/c;

    .line 4
    iget-object v2, v0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 5
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v7

    sget-object v8, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v6

    :cond_2
    move-object v10, v6

    .line 6
    iget-object v2, v0, Ls1/a/a/a/v0/j/s/a/c;->a:Ls1/a/a/a/v0/m/l1/i;

    if-nez v2, :cond_4

    .line 7
    iget-object v12, v0, Ls1/a/a/a/v0/j/s/a/c;->b:Ls1/a/a/a/v0/m/y0;

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/j/s/a/c;->c()Ljava/util/Collection;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Ls1/a/a/a/v0/m/e0;

    .line 12
    invoke-virtual {v4}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v2, Ls1/a/a/a/v0/m/l1/i;

    const/4 v14, 0x0

    const-string v4, "projection"

    .line 13
    invoke-static {v12, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "supertypes"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v13, Ls1/a/a/a/v0/m/l1/h;

    invoke-direct {v13, v3}, Ls1/a/a/a/v0/m/l1/h;-><init>(Ljava/util/List;)V

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Ls1/a/a/a/v0/m/l1/i;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;I)V

    .line 15
    iput-object v2, v0, Ls1/a/a/a/v0/j/s/a/c;->a:Ls1/a/a/a/v0/m/l1/i;

    .line 16
    :cond_4
    new-instance v2, Ls1/a/a/a/v0/m/l1/g;

    .line 17
    sget-object v8, Ls1/a/a/a/v0/m/n1/b;->a:Ls1/a/a/a/v0/m/n1/b;

    .line 18
    iget-object v9, v0, Ls1/a/a/a/v0/j/s/a/c;->a:Ls1/a/a/a/v0/m/l1/i;

    .line 19
    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 20
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0x20

    move-object v7, v2

    .line 21
    invoke-direct/range {v7 .. v14}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZI)V

    return-object v2

    .line 22
    :cond_5
    instance-of v2, v0, Ls1/a/a/a/v0/j/t/r;

    if-eqz v2, :cond_7

    .line 23
    check-cast v0, Ls1/a/a/a/v0/j/t/r;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 26
    check-cast v3, Ls1/a/a/a/v0/m/e0;

    .line 27
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v5

    invoke-static {v3, v5}, Ls1/a/a/a/v0/m/f1;->j(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    const-string v5, "TypeUtils.makeNullableAs\u2026t, type.isMarkedNullable)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v2, Ls1/a/a/a/v0/m/c0;

    invoke-direct {v2, v0}, Ls1/a/a/a/v0/m/c0;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    .line 29
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 30
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    .line 31
    invoke-static {v0, v2, v3, v4, v1}, Ls1/a/a/a/v0/m/f0;->h(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0

    .line 32
    :cond_7
    instance-of v2, v0, Ls1/a/a/a/v0/m/c0;

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 33
    check-cast v0, Ls1/a/a/a/v0/m/c0;

    .line 34
    iget-object v1, v0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 37
    check-cast v4, Ls1/a/a/a/v0/m/e0;

    .line 38
    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->D2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_4

    :cond_8
    if-nez v4, :cond_9

    goto :goto_5

    .line 40
    :cond_9
    iget-object v1, v0, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    if-eqz v1, :cond_a

    .line 41
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->D2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    :cond_a
    const-string v1, "typesToIntersect"

    .line 42
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->hashCode()I

    .line 46
    new-instance v2, Ls1/a/a/a/v0/m/c0;

    .line 47
    invoke-direct {v2, v1}, Ls1/a/a/a/v0/m/c0;-><init>(Ljava/util/Collection;)V

    .line 48
    iput-object v6, v2, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    move-object v6, v2

    :goto_5
    if-eqz v6, :cond_b

    move-object v0, v6

    .line 49
    :cond_b
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/c0;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v0, v1

    :goto_6
    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/i1;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/m/l1/l;->g(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/m/y;

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/m/y;

    .line 4
    iget-object v1, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/m/l1/l;->g(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 7
    invoke-virtual {p0, v2}, Ls1/a/a/a/v0/m/l1/l;->g(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    .line 8
    iget-object v3, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    if-ne v1, v3, :cond_2

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 11
    :goto_1
    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->M1(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
