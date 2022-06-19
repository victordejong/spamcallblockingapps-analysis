.class public final Ls1/a/a/a/v0/j/v/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "value"

    .line 1
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(\"value\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ls1/a/a/a/v0/b/b1;)Z
    .locals 2

    const-string v0, "$this$declaresOrInheritsDefaultValue"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    sget-object v0, Ls1/a/a/a/v0/j/v/b$a;->a:Ls1/a/a/a/v0/j/v/b$a;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/j/v/b$b;->j:Ls1/a/a/a/v0/j/v/b$b;

    .line 4
    invoke-static {p0, v0, v1}, Ls1/a/a/a/v0/f/d;->I1(Ljava/util/Collection;Ls1/a/a/a/v0/o/c;Ls1/z/b/l;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "DFS.ifAny(\n        listO\u2026eclaresDefaultValue\n    )"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/j/t/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/c;",
            ")",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "$this$firstArgument"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/c;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/j/t/g;

    return-object p0
.end method

.method public static c(Ls1/a/a/a/v0/b/b;ZLs1/z/b/l;I)Ls1/a/a/a/v0/b/b;
    .locals 1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string p3, "$this$firstOverridden"

    .line 1
    invoke-static {p0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "predicate"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Ls1/z/c/c0;

    invoke-direct {p3}, Ls1/z/c/c0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v0, Ls1/a/a/a/v0/j/v/c;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/j/v/c;-><init>(Z)V

    .line 5
    new-instance p1, Ls1/a/a/a/v0/j/v/d;

    invoke-direct {p1, p3, p2}, Ls1/a/a/a/v0/j/v/d;-><init>(Ls1/z/c/c0;Ls1/z/b/l;)V

    .line 6
    invoke-static {p0, v0, p1}, Ls1/a/a/a/v0/f/d;->E0(Ljava/util/Collection;Ls1/a/a/a/v0/o/c;Ls1/a/a/a/v0/o/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/b/b;

    return-object p0
.end method

.method public static final d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;
    .locals 2

    const-string v0, "$this$fqNameOrNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final e(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/e;
    .locals 1

    const-string v0, "$this$annotationClass"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/c;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    instance-of v0, p0, Ls1/a/a/a/v0/b/e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ls1/a/a/a/v0/b/e;

    return-object p0
.end method

.method public static final f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;
    .locals 1

    const-string v0, "$this$builtIns"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ls1/a/a/a/v0/b/h;)Ls1/a/a/a/v0/f/a;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    instance-of v2, v1, Ls1/a/a/a/v0/b/c0;

    if-eqz v2, :cond_0

    new-instance v0, Ls1/a/a/a/v0/f/a;

    check-cast v1, Ls1/a/a/a/v0/b/c0;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v2, v1, Ls1/a/a/a/v0/b/i;

    if-eqz v2, :cond_1

    check-cast v1, Ls1/a/a/a/v0/b/h;

    invoke-static {v1}, Ls1/a/a/a/v0/j/v/b;->g(Ls1/a/a/a/v0/b/h;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p0

    invoke-virtual {v1, p0}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p0

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;
    .locals 1

    const-string v0, "$this$fqNameSafe"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object p0

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "DescriptorUtils.getFqNameSafe(this)"

    .line 3
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x4

    .line 4
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;
    .locals 1

    const-string v0, "$this$fqNameUnsafe"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object p0

    const-string v0, "DescriptorUtils.getFqName(this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final j(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/l1/e;
    .locals 1

    const-string v0, "$this$getKotlinTypeRefiner"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/l1/f;->a:Ls1/a/a/a/v0/b/z;

    .line 2
    invoke-interface {p0, v0}, Ls1/a/a/a/v0/b/a0;->Z(Ls1/a/a/a/v0/b/z;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/l1/m;

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Ls1/a/a/a/v0/m/l1/m;->a:Ljava/lang/Object;

    .line 4
    check-cast p0, Ls1/a/a/a/v0/m/l1/e;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ls1/a/a/a/v0/m/l1/e$a;->a:Ls1/a/a/a/v0/m/l1/e$a;

    :goto_0
    return-object p0
.end method

.method public static final k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;
    .locals 1

    const-string v0, "$this$module"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object p0

    const-string v0, "DescriptorUtils.getContainingModule(this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final l(Ls1/a/a/a/v0/b/k;)Ls1/e0/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k;",
            ")",
            "Ls1/e0/k<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$parents"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$parentsWithSelf"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/j/v/e;->b:Ls1/a/a/a/v0/j/v/e;

    invoke-static {p0, v0}, Ls1/a/a/a/v0/f/d;->d1(Ljava/lang/Object;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Ls1/e0/x;->d(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;
    .locals 1

    const-string v0, "$this$propertyIfAccessor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Ls1/a/a/a/v0/b/j0;

    if-eqz v0, :cond_0

    check-cast p0, Ls1/a/a/a/v0/b/j0;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/j0;->o0()Ls1/a/a/a/v0/b/k0;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
