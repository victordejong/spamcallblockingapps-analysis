.class public abstract Lq3/b/l/l/a;
.super Lq3/b/k/v;
.source "SourceFile"

# interfaces
.implements Lq3/b/l/d;


# instance fields
.field public final c:Lq3/b/l/l/c;

.field public final d:Lq3/b/l/a;


# direct methods
.method public constructor <init>(Lq3/b/l/a;Lq3/b/l/e;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/b/k/v;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 3
    iget-object p1, p1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 4
    iput-object p1, p0, Lq3/b/l/l/a;->c:Lq3/b/l/l/c;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/l/l/a;->H(Ljava/lang/String;)Lq3/b/l/k;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 5
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 6
    iget-boolean v1, v1, Lq3/b/l/l/c;->c:Z

    if-nez v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Lq3/b/l/h;

    .line 8
    iget-boolean v1, v1, Lq3/b/l/h;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "String literal for key \'"

    const-string v2, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    .line 9
    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, p1, v1}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract C(Ljava/lang/String;)Lq3/b/l/e;
.end method

.method public final D()Lq3/b/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/v;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lq3/b/l/l/a;->C(Ljava/lang/String;)Lq3/b/l/e;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq3/b/l/l/a;->G()Lq3/b/l/e;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public E(Lq3/b/i/d;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p2}, Lq3/b/i/d;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lq3/b/i/d;I)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getTag"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lq3/b/l/l/a;->E(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "nestedName"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lq3/b/k/v;->a:Ljava/util/ArrayList;

    invoke-static {p2}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const-string v0, "parentName"

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "childName"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract G()Lq3/b/l/e;
.end method

.method public H(Ljava/lang/String;)Lq3/b/l/k;
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lq3/b/l/l/a;->C(Ljava/lang/String;)Lq3/b/l/e;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lq3/b/l/k;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lq3/b/l/k;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, -0x1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JsonPrimitive at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, p1, v0}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1
.end method

.method public a(Lq3/b/i/d;)Lq3/b/j/b;
    .locals 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v1

    .line 3
    sget-object v2, Lq3/b/i/i$b;->a:Lq3/b/i/i$b;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", but had "

    const-string v4, " as the serialized body of "

    const-string v5, "Expected "

    const/4 v6, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lq3/b/i/b;

    if-eqz v2, :cond_2

    :goto_0
    new-instance v1, Lq3/b/l/l/k;

    .line 4
    iget-object v2, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 5
    instance-of v7, v0, Lq3/b/l/b;

    if-eqz v7, :cond_1

    .line 6
    check-cast v0, Lq3/b/l/b;

    .line 7
    invoke-direct {v1, v2, v0}, Lq3/b/l/l/k;-><init>(Lq3/b/l/a;Lq3/b/l/b;)V

    goto/16 :goto_2

    .line 8
    :cond_1
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lq3/b/l/b;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v6, p1}, Ls1/a/a/a/v0/f/d;->k(ILjava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    sget-object v2, Lq3/b/i/i$c;->a:Lq3/b/i/i$c;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11
    iget-object v1, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    const/4 v2, 0x0

    .line 12
    invoke-interface {p1, v2}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v7

    .line 14
    instance-of v8, v7, Lq3/b/i/c;

    if-nez v8, :cond_6

    sget-object v8, Lq3/b/i/h$b;->a:Lq3/b/i/h$b;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 16
    iget-boolean v1, v1, Lq3/b/l/l/c;->d:Z

    if-eqz v1, :cond_5

    .line 17
    new-instance v1, Lq3/b/l/l/k;

    .line 18
    iget-object v2, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 19
    instance-of v7, v0, Lq3/b/l/b;

    if-eqz v7, :cond_4

    .line 20
    check-cast v0, Lq3/b/l/b;

    .line 21
    invoke-direct {v1, v2, v0}, Lq3/b/l/l/k;-><init>(Lq3/b/l/a;Lq3/b/l/b;)V

    goto/16 :goto_2

    .line 22
    :cond_4
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lq3/b/l/b;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v6, p1}, Ls1/a/a/a/v0/f/d;->k(ILjava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1

    .line 24
    :cond_5
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->i(Lq3/b/i/d;)Lq3/b/l/l/e;

    move-result-object p1

    throw p1

    .line 25
    :cond_6
    :goto_1
    new-instance v1, Lq3/b/l/l/l;

    .line 26
    iget-object v2, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 27
    instance-of v7, v0, Lq3/b/l/j;

    if-eqz v7, :cond_7

    .line 28
    check-cast v0, Lq3/b/l/j;

    .line 29
    invoke-direct {v1, v2, v0}, Lq3/b/l/l/l;-><init>(Lq3/b/l/a;Lq3/b/l/j;)V

    goto :goto_2

    .line 30
    :cond_7
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lq3/b/l/j;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v6, p1}, Ls1/a/a/a/v0/f/d;->k(ILjava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1

    .line 32
    :cond_8
    new-instance v7, Lq3/b/l/l/j;

    .line 33
    iget-object v1, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 34
    instance-of v2, v0, Lq3/b/l/j;

    if-eqz v2, :cond_9

    .line 35
    move-object v2, v0

    check-cast v2, Lq3/b/l/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v7

    .line 36
    invoke-direct/range {v0 .. v5}, Lq3/b/l/l/j;-><init>(Lq3/b/l/a;Lq3/b/l/j;Ljava/lang/String;Lq3/b/i/d;I)V

    move-object v1, v7

    :goto_2
    return-object v1

    .line 37
    :cond_9
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lq3/b/l/j;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {v6, p1}, Ls1/a/a/a/v0/f/d;->k(ILjava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1
.end method

.method public b(Lq3/b/i/d;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lq3/b/m/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 2
    iget-object v0, v0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    iget-object v0, v0, Lq3/b/l/l/c;->k:Lq3/b/m/b;

    return-object v0
.end method

.method public n()Lq3/b/l/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    instance-of v0, v0, Lq3/b/l/i;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public v()Lq3/b/l/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    return-object v0
.end method

.method public w(Lq3/b/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lq3/b/l/l/m;->a(Lq3/b/l/d;Lq3/b/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/l/l/a;->H(Ljava/lang/String;)Lq3/b/l/k;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lq3/b/l/l/a;->d:Lq3/b/l/a;

    .line 5
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 6
    iget-boolean v1, v1, Lq3/b/l/l/c;->c:Z

    if-nez v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Lq3/b/l/h;

    .line 8
    iget-boolean v1, v1, Lq3/b/l/h;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "Boolean literal for key \'"

    const-string v2, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    .line 9
    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, p1, v1}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const-string p1, "$this$boolean"

    .line 11
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq3/b/l/l/q;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public y(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/l/l/a;->H(Ljava/lang/String;)Lq3/b/l/k;

    move-result-object p1

    :try_start_0
    const-string v0, "$this$int"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse \'int\'"

    invoke-static {p1, v1, v0}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1
.end method

.method public z(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/l/l/a;->H(Ljava/lang/String;)Lq3/b/l/k;

    move-result-object p1

    :try_start_0
    const-string v0, "$this$long"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse \'long\'"

    invoke-static {p1, v1, v0}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1
.end method
