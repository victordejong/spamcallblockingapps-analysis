.class public final Ls1/a/a/a/v0/d/a/t;
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

.method public static final c(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z
    .locals 5

    const-string v0, "superDescriptor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/c0/f;

    if-eqz v0, :cond_2

    instance-of v0, p0, Ls1/a/a/a/v0/b/v;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/d/a/c0/f;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    check-cast p0, Ls1/a/a/a/v0/b/v;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/i0;->Y0()Ls1/a/a/a/v0/b/q0;

    move-result-object v0

    const-string v1, "subDescriptor.original"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    const-string v1, "subDescriptor.original.valueParameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    const-string v2, "superDescriptor.original"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "superDescriptor.original.valueParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    .line 4
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v2, Ls1/a/a/a/v0/b/b1;

    .line 6
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v1, Ls1/a/a/a/v0/b/b1;

    .line 8
    move-object v3, p1

    check-cast v3, Ls1/a/a/a/v0/b/v;

    const-string v4, "subParameter"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Ls1/a/a/a/v0/d/a/t;->d(Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b1;)Ls1/a/a/a/v0/d/b/h;

    move-result-object v2

    instance-of v2, v2, Ls1/a/a/a/v0/d/b/h$c;

    const-string v3, "superParameter"

    .line 9
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Ls1/a/a/a/v0/d/a/t;->d(Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b1;)Ls1/a/a/a/v0/d/b/h;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/d/b/h$c;

    if-eq v2, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b1;)Ls1/a/a/a/v0/d/b/h;
    .locals 6

    const-string v0, "f"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_6

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    const-string v0, "$this$isFromJavaOrBuiltins"

    .line 3
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$isFromJava"

    .line 4
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->m(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    instance-of v0, v0, Ls1/a/a/a/v0/d/a/c0/d;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    const-string v4, "f.original"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    const-string v4, "f.original.valueParameters"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "f.original.valueParameters.single()"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/v0/b/b1;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v4, "f.original.valueParameters.single().type"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/d/b/p;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/b/h;

    move-result-object v0

    instance-of v4, v0, Ls1/a/a/a/v0/d/b/h$c;

    if-nez v4, :cond_3

    move-object v0, v2

    :cond_3
    check-cast v0, Ls1/a/a/a/v0/d/b/h$c;

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/h$c;->j:Ls1/a/a/a/v0/j/w/c;

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 10
    :goto_2
    sget-object v4, Ls1/a/a/a/v0/j/w/c;->i:Ls1/a/a/a/v0/j/w/c;

    if-eq v0, v4, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {p0}, Ls1/a/a/a/v0/d/a/e;->a(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/v0/b/v;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-interface {v0}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v4

    const-string v5, "overridden.original"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters.single()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ls1/a/a/a/v0/b/b1;

    invoke-interface {v4}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters.single().type"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/a/a/a/v0/d/b/p;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/b/h;

    move-result-object v4

    .line 13
    invoke-interface {v0}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    const-string v5, "overridden.containingDeclaration"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v0

    .line 14
    sget-object v5, Ls1/a/a/a/v0/a/k$a;->Q:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v5

    invoke-static {v0, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    instance-of v0, v4, Ls1/a/a/a/v0/d/b/h$b;

    if-eqz v0, :cond_6

    check-cast v4, Ls1/a/a/a/v0/d/b/h$b;

    .line 16
    iget-object v0, v4, Ls1/a/a/a/v0/d/b/h$b;->j:Ljava/lang/String;

    const-string v4, "java/lang/Object"

    .line 17
    invoke-static {v0, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v3

    :goto_4
    const-string v4, "valueParameterDescriptor.type"

    if-nez v0, :cond_d

    .line 18
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_7

    goto :goto_7

    .line 19
    :cond_7
    invoke-interface {p0}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    instance-of v5, v0, Ls1/a/a/a/v0/b/e;

    if-nez v5, :cond_8

    move-object v0, v2

    :cond_8
    check-cast v0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_b

    .line 20
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p0

    const-string v5, "f.valueParameters"

    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v5, "f.valueParameters.single()"

    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ls1/a/a/a/v0/b/b1;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    instance-of v5, p0, Ls1/a/a/a/v0/b/e;

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v2, p0

    :goto_5
    check-cast v2, Ls1/a/a/a/v0/b/e;

    if-eqz v2, :cond_b

    .line 21
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->G(Ls1/a/a/a/v0/b/e;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object p0

    invoke-static {v2}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    move v1, v3

    :goto_6
    move v3, v1

    :cond_b
    :goto_7
    if-eqz v3, :cond_c

    goto :goto_8

    .line 22
    :cond_c
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/v0/d/b/p;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/b/h;

    move-result-object p0

    goto :goto_9

    .line 23
    :cond_d
    :goto_8
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->D2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-static {p0}, Ls1/a/a/a/v0/d/b/p;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/b/h;

    move-result-object p0

    :goto_9
    return-object p0
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/j/h$a;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/h$a;->a:Ls1/a/a/a/v0/j/h$a;

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/h$b;
    .locals 8

    sget-object v0, Ls1/a/a/a/v0/j/h$b;->c:Ls1/a/a/a/v0/j/h$b;

    const-string v1, "superDescriptor"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subDescriptor"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p1, Ls1/a/a/a/v0/b/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    instance-of v1, p2, Ls1/a/a/a/v0/b/v;

    if-eqz v1, :cond_9

    .line 2
    invoke-static {p2}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    sget-object v1, Ls1/a/a/a/v0/d/a/e;->g:Ls1/a/a/a/v0/d/a/e;

    move-object v3, p2

    check-cast v3, Ls1/a/a/a/v0/b/v;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    const-string v5, "subDescriptor.name"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ls1/a/a/a/v0/d/a/e;->b(Ls1/a/a/a/v0/f/e;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ls1/a/a/a/v0/d/a/d;->f:Ls1/a/a/a/v0/d/a/d;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$sameAsRenamedInJvmBuiltin"

    .line 4
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v4, Ls1/a/a/a/v0/d/a/d;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/b/b;

    invoke-static {v1}, Le/q/f/a/d/a;->Y0(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v1

    .line 7
    invoke-interface {v3}, Ls1/a/a/a/v0/b/v;->K0()Z

    move-result v4

    instance-of v5, p1, Ls1/a/a/a/v0/b/v;

    if-nez v5, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v6, p1

    :goto_0
    check-cast v6, Ls1/a/a/a/v0/b/v;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ls1/a/a/a/v0/b/v;->K0()Z

    move-result v6

    if-eq v4, v6, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v7

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v1, :cond_8

    .line 8
    invoke-interface {v3}, Ls1/a/a/a/v0/b/v;->K0()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    instance-of v4, p3, Ls1/a/a/a/v0/d/a/c0/d;

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ls1/a/a/a/v0/b/v;->F0()Ls1/a/a/a/v0/b/v;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_9

    .line 10
    invoke-static {p3, v1}, Le/q/f/a/d/a;->k1(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/a;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    instance-of p3, v1, Ls1/a/a/a/v0/b/v;

    if-eqz p3, :cond_8

    if-eqz v5, :cond_8

    .line 12
    check-cast v1, Ls1/a/a/a/v0/b/v;

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/e;->a(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/v0/b/v;

    move-result-object p3

    if-eqz p3, :cond_8

    const/4 p3, 0x2

    .line 13
    invoke-static {v3, v2, v2, p3}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ls1/a/a/a/v0/b/v;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v3

    const-string v4, "superDescriptor.original"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v2, p3}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v7

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    return-object v0

    .line 14
    :cond_a
    invoke-static {p1, p2}, Ls1/a/a/a/v0/d/a/t;->c(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object v0

    .line 15
    :cond_b
    sget-object p1, Ls1/a/a/a/v0/j/h$b;->d:Ls1/a/a/a/v0/j/h$b;

    return-object p1
.end method
