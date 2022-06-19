.class public final Ls1/a/a/a/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/f/a;

.field public static final b:Ls1/a/a/a/q0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    const-string v1, "ClassId.topLevel(FqName(\"java.lang.Void\"))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/q0;->a:Ls1/a/a/a/v0/f/a;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ls1/a/a/a/v0/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls1/a/a/a/v0/a/i;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/a/a/a/v0/j/w/c;->c(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/c;

    move-result-object p0

    const-string v0, "JvmPrimitiveType.get(simpleName)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/j/w/c;->e()Ls1/a/a/a/v0/a/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e$e;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/e$e;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/e/a0/b/e$b;

    .line 3
    invoke-static {p0}, Le/q/f/a/d/a;->S0(Ls1/a/a/a/v0/b/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, p0, Ls1/a/a/a/v0/b/l0;

    const-string v3, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v2, :cond_1

    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->m(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, p0, Ls1/a/a/a/v0/b/m0;

    if-eqz v2, :cond_2

    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->m(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "descriptor.name.asString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    invoke-static {p0, v4, v4, v3}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ls1/a/a/a/v0/e/a0/b/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {v0, v1}, Ls1/a/a/a/e$e;-><init>(Ls1/a/a/a/v0/e/a0/b/e$b;)V

    return-object v0
.end method

.method public static final c(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/f;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->z(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object p0

    const-string v0, "DescriptorUtils.unwrapFa\u2026ssiblyOverriddenProperty)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ls1/a/a/a/v0/b/k0;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k0;->a()Ls1/a/a/a/v0/b/k0;

    move-result-object v1

    const-string p0, "DescriptorUtils.unwrapFa\u2026rriddenProperty).original"

    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, v1, Ls1/a/a/a/v0/k/b/g0/j;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    move-object p0, v1

    check-cast p0, Ls1/a/a/a/v0/k/b/g0/j;

    .line 4
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/j;->A:Ls1/a/a/a/v0/e/n;

    .line 5
    sget-object v3, Ls1/a/a/a/v0/e/a0/a;->d:Ls1/a/a/a/v0/h/h$f;

    const-string v4, "JvmProtoBuf.propertySignature"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Le/q/f/a/d/a;->K0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/a0/a$d;

    if-eqz v3, :cond_a

    .line 6
    new-instance v6, Ls1/a/a/a/f$c;

    .line 7
    iget-object v4, p0, Ls1/a/a/a/v0/k/b/g0/j;->B:Ls1/a/a/a/v0/e/z/c;

    .line 8
    iget-object v5, p0, Ls1/a/a/a/v0/k/b/g0/j;->C:Ls1/a/a/a/v0/e/z/e;

    move-object v0, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/f$c;-><init>(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/a0/a$d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;)V

    return-object v6

    .line 10
    :cond_0
    instance-of p0, v1, Ls1/a/a/a/v0/d/a/c0/g;

    if-eqz p0, :cond_a

    .line 11
    move-object p0, v1

    check-cast p0, Ls1/a/a/a/v0/d/a/c0/g;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object p0

    instance-of v2, p0, Ls1/a/a/a/v0/d/a/e0/a;

    if-nez v2, :cond_1

    move-object p0, v0

    :cond_1
    check-cast p0, Ls1/a/a/a/v0/d/a/e0/a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ls1/a/a/a/v0/d/a/e0/a;->c()Ls1/a/a/a/v0/d/a/f0/l;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 12
    :goto_0
    instance-of v2, p0, Ls1/a/a/a/v0/b/j1/b/w;

    if-eqz v2, :cond_3

    new-instance v0, Ls1/a/a/a/f$a;

    check-cast p0, Ls1/a/a/a/v0/b/j1/b/w;

    .line 13
    iget-object p0, p0, Ls1/a/a/a/v0/b/j1/b/w;->a:Ljava/lang/reflect/Field;

    .line 14
    invoke-direct {v0, p0}, Ls1/a/a/a/f$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 15
    :cond_3
    instance-of v2, p0, Ls1/a/a/a/v0/b/j1/b/z;

    if-eqz v2, :cond_9

    new-instance v2, Ls1/a/a/a/f$b;

    .line 16
    check-cast p0, Ls1/a/a/a/v0/b/j1/b/z;

    .line 17
    iget-object p0, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 18
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    instance-of v3, v1, Ls1/a/a/a/v0/d/a/e0/a;

    if-nez v3, :cond_5

    move-object v1, v0

    :cond_5
    check-cast v1, Ls1/a/a/a/v0/d/a/e0/a;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/e0/a;->c()Ls1/a/a/a/v0/d/a/f0/l;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    instance-of v3, v1, Ls1/a/a/a/v0/b/j1/b/z;

    if-nez v3, :cond_7

    move-object v1, v0

    :cond_7
    check-cast v1, Ls1/a/a/a/v0/b/j1/b/z;

    if-eqz v1, :cond_8

    .line 19
    iget-object v0, v1, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 20
    :cond_8
    invoke-direct {v2, p0, v0}, Ls1/a/a/a/f$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v2

    :goto_3
    return-object v0

    .line 21
    :cond_9
    new-instance v0, Ls1/a/a/a/i0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_a
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k0;->getGetter()Ls1/a/a/a/v0/b/l0;

    move-result-object p0

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Ls1/a/a/a/q0;->b(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e$e;

    move-result-object p0

    .line 23
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Ls1/a/a/a/q0;->b(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e$e;

    move-result-object v0

    .line 24
    :cond_b
    new-instance v1, Ls1/a/a/a/f$d;

    invoke-direct {v1, p0, v0}, Ls1/a/a/a/f$d;-><init>(Ls1/a/a/a/e$e;Ls1/a/a/a/e$e;)V

    return-object v1
.end method

.method public static final d(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e;
    .locals 7

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->z(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026siblySubstitutedFunction)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/v0/b/v;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/v;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026titutedFunction).original"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/k/b/g0/b;

    if-eqz v1, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Ls1/a/a/a/v0/k/b/g0/b;

    invoke-interface {v1}, Ls1/a/a/a/v0/k/b/g0/g;->O()Ls1/a/a/a/v0/h/p;

    move-result-object v2

    .line 4
    instance-of v3, v2, Ls1/a/a/a/v0/e/i;

    if-eqz v3, :cond_0

    .line 5
    sget-object v3, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    move-object v4, v2

    check-cast v4, Ls1/a/a/a/v0/e/i;

    invoke-interface {v1}, Ls1/a/a/a/v0/k/b/g0/g;->i0()Ls1/a/a/a/v0/e/z/c;

    move-result-object v5

    invoke-interface {v1}, Ls1/a/a/a/v0/k/b/g0/g;->A()Ls1/a/a/a/v0/e/z/e;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ls1/a/a/a/v0/e/a0/b/h;->c(Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/a0/b/e$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    new-instance p0, Ls1/a/a/a/e$e;

    invoke-direct {p0, v3}, Ls1/a/a/a/e$e;-><init>(Ls1/a/a/a/v0/e/a0/b/e$b;)V

    return-object p0

    .line 7
    :cond_0
    instance-of v3, v2, Ls1/a/a/a/v0/e/d;

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    check-cast v2, Ls1/a/a/a/v0/e/d;

    invoke-interface {v1}, Ls1/a/a/a/v0/k/b/g0/g;->i0()Ls1/a/a/a/v0/e/z/c;

    move-result-object v4

    invoke-interface {v1}, Ls1/a/a/a/v0/k/b/g0/g;->A()Ls1/a/a/a/v0/e/z/e;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Ls1/a/a/a/v0/e/a0/b/h;->a(Ls1/a/a/a/v0/e/d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/a0/b/e$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p0}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p0

    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->c2(Ls1/a/a/a/v0/b/k;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    new-instance p0, Ls1/a/a/a/e$e;

    invoke-direct {p0, v1}, Ls1/a/a/a/e$e;-><init>(Ls1/a/a/a/v0/e/a0/b/e$b;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Ls1/a/a/a/e$d;

    invoke-direct {p0, v1}, Ls1/a/a/a/e$d;-><init>(Ls1/a/a/a/v0/e/a0/b/e$b;)V

    :goto_0
    return-object p0

    .line 12
    :cond_2
    invoke-static {v0}, Ls1/a/a/a/q0;->b(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e$e;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    instance-of p0, v0, Ls1/a/a/a/v0/d/a/c0/f;

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    .line 14
    move-object p0, v0

    check-cast p0, Ls1/a/a/a/v0/d/a/c0/f;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object p0

    instance-of v2, p0, Ls1/a/a/a/v0/d/a/e0/a;

    if-nez v2, :cond_4

    move-object p0, v1

    :cond_4
    check-cast p0, Ls1/a/a/a/v0/d/a/e0/a;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ls1/a/a/a/v0/d/a/e0/a;->c()Ls1/a/a/a/v0/d/a/f0/l;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v1

    :goto_1
    instance-of v2, p0, Ls1/a/a/a/v0/b/j1/b/z;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    check-cast v1, Ls1/a/a/a/v0/b/j1/b/z;

    if-eqz v1, :cond_7

    .line 15
    iget-object p0, v1, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_7

    .line 16
    new-instance v0, Ls1/a/a/a/e$c;

    invoke-direct {v0, p0}, Ls1/a/a/a/e$c;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 17
    :cond_7
    new-instance p0, Ls1/a/a/a/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect resolution sequence for Java method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_8
    instance-of p0, v0, Ls1/a/a/a/v0/d/a/c0/c;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p0, :cond_d

    .line 19
    move-object p0, v0

    check-cast p0, Ls1/a/a/a/v0/d/a/c0/c;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object p0

    instance-of v4, p0, Ls1/a/a/a/v0/d/a/e0/a;

    if-nez v4, :cond_9

    move-object p0, v1

    :cond_9
    check-cast p0, Ls1/a/a/a/v0/d/a/e0/a;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ls1/a/a/a/v0/d/a/e0/a;->c()Ls1/a/a/a/v0/d/a/f0/l;

    move-result-object v1

    .line 20
    :cond_a
    instance-of p0, v1, Ls1/a/a/a/v0/b/j1/b/t;

    if-eqz p0, :cond_b

    .line 21
    new-instance p0, Ls1/a/a/a/e$b;

    check-cast v1, Ls1/a/a/a/v0/b/j1/b/t;

    .line 22
    iget-object v0, v1, Ls1/a/a/a/v0/b/j1/b/t;->a:Ljava/lang/reflect/Constructor;

    .line 23
    invoke-direct {p0, v0}, Ls1/a/a/a/e$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_3

    .line 24
    :cond_b
    instance-of p0, v1, Ls1/a/a/a/v0/b/j1/b/q;

    if-eqz p0, :cond_c

    move-object p0, v1

    check-cast p0, Ls1/a/a/a/v0/b/j1/b/q;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/q;->k()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 25
    new-instance v0, Ls1/a/a/a/e$a;

    .line 26
    iget-object p0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    .line 27
    invoke-direct {v0, p0}, Ls1/a/a/a/e$a;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_3
    return-object p0

    .line 28
    :cond_c
    new-instance p0, Ls1/a/a/a/i0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_d
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p0

    sget-object v1, Ls1/a/a/a/v0/a/k;->b:Ls1/a/a/a/v0/f/e;

    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/f/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_e

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Y1(Ls1/a/a/a/v0/b/v;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v4

    goto :goto_4

    :cond_e
    move p0, v1

    :goto_4
    if-nez p0, :cond_11

    .line 30
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p0

    sget-object v5, Ls1/a/a/a/v0/a/k;->a:Ls1/a/a/a/v0/f/e;

    invoke-virtual {p0, v5}, Ls1/a/a/a/v0/f/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Y1(Ls1/a/a/a/v0/b/v;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v4

    goto :goto_5

    :cond_f
    move p0, v1

    :goto_5
    if-eqz p0, :cond_10

    goto :goto_6

    .line 31
    :cond_10
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p0

    sget-object v5, Ls1/a/a/a/v0/a/p/a;->f:Ls1/a/a/a/v0/a/p/a;

    .line 32
    sget-object v5, Ls1/a/a/a/v0/a/p/a;->e:Ls1/a/a/a/v0/f/e;

    .line 33
    invoke-static {p0, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_11
    :goto_6
    move v1, v4

    :cond_12
    if-eqz v1, :cond_13

    .line 34
    invoke-static {v0}, Ls1/a/a/a/q0;->b(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e$e;

    move-result-object p0

    return-object p0

    .line 35
    :cond_13
    new-instance p0, Ls1/a/a/a/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown origin of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p0
.end method
