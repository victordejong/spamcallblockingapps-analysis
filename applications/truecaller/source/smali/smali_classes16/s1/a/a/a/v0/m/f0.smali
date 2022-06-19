.class public final Ls1/a/a/a/v0/m/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/f0$b;
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/f0;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/f0;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/f0;->a:Ls1/a/a/a/v0/m/f0;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/m/f0$a;->b:Ls1/a/a/a/v0/m/f0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ls1/a/a/a/v0/m/f0;Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/m/l1/e;Ljava/util/List;)Ls1/a/a/a/v0/m/f0$b;
    .locals 1

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p2, p0}, Ls1/a/a/a/v0/m/l1/e;->e(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/h;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    instance-of v0, p0, Ls1/a/a/a/v0/b/v0;

    if-eqz v0, :cond_0

    .line 4
    new-instance p2, Ls1/a/a/a/v0/m/f0$b;

    check-cast p0, Ls1/a/a/a/v0/b/v0;

    invoke-static {p0, p3}, Ls1/a/a/a/v0/m/f0;->b(Ls1/a/a/a/v0/b/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ls1/a/a/a/v0/m/f0$b;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/v0;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0, p2}, Ls1/a/a/a/v0/m/v0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    const-string p2, "descriptor.typeConstruct\u2026refine(kotlinTypeRefiner)"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Ls1/a/a/a/v0/m/f0$b;

    invoke-direct {p2, p1, p0}, Ls1/a/a/a/v0/m/f0$b;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/v0;)V

    :goto_0
    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public static final b(Ls1/a/a/a/v0/b/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/v0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const-string v0, "$this$computeExpandedType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ls1/a/a/a/v0/m/s0;

    sget-object v2, Ls1/a/a/a/v0/m/u0$a;->a:Ls1/a/a/a/v0/m/u0$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/m/s0;-><init>(Ls1/a/a/a/v0/m/u0;Z)V

    const-string v2, "typeAliasDescriptor"

    .line 2
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v2, "typeAliasDescriptor.typeConstructor"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v2, "typeAliasDescriptor.typeConstructor.parameters"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ls1/a/a/a/v0/b/w0;

    const-string v4, "it"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ls1/a/a/a/v0/b/w0;->a()Ls1/a/a/a/v0/b/w0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v2, p1}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v6

    .line 9
    new-instance v0, Ls1/a/a/a/v0/m/t0;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Ls1/a/a/a/v0/m/t0;-><init>(Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/v0;Ljava/util/List;Ljava/util/Map;Ls1/z/c/f;)V

    .line 10
    sget-object p0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v3, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    const-string p0, "typeAliasExpansion"

    .line 13
    invoke-static {v0, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "annotations"

    invoke-static {v3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 14
    invoke-virtual/range {v1 .. v6}, Ls1/a/a/a/v0/m/s0;->d(Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/f1/h;ZIZ)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/m/z;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/z;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method

.method public static final d(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/j/t/o;Z)Ls1/a/a/a/v0/m/l0;
    .locals 3

    const-string v0, "annotations"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "Scope for integer literal type"

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2}, Ls1/a/a/a/v0/m/x;->c(Ljava/lang/String;Z)Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    const-string v2, "ErrorUtils.createErrorSc\u2026eger literal type\", true)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2, v1}, Ls1/a/a/a/v0/m/f0;->h(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/e;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/b/e;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v2

    const-string p1, "descriptor.typeConstructor"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/m/v0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;Z",
            "Ls1/a/a/a/v0/m/l1/e;",
            ")",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string p1, "constructor.declarationDescriptor!!"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    const-string p1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p4

    invoke-virtual {p4}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    :goto_0
    move-object v4, p4

    goto/16 :goto_5

    .line 5
    :cond_1
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_8

    if-eqz p4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object p4

    invoke-static {p4}, Ls1/a/a/a/v0/j/v/b;->j(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/l1/e;

    move-result-object p4

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "kotlinTypeRefiner"

    if-eqz v1, :cond_5

    .line 8
    check-cast v0, Ls1/a/a/a/v0/b/e;

    const-string v1, "$this$getRefinedUnsubstitutedMemberScopeIfPossible"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v1, v0, Ls1/a/a/a/v0/b/h1/v;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    check-cast v2, Ls1/a/a/a/v0/b/h1/v;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p4}, Ls1/a/a/a/v0/b/h1/v;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    if-eqz p4, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    const-string v0, "this.unsubstitutedMemberScope"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_5
    check-cast v0, Ls1/a/a/a/v0/b/e;

    .line 13
    sget-object v1, Ls1/a/a/a/v0/m/x0;->b:Ls1/a/a/a/v0/m/x0$a;

    invoke-virtual {v1, p1, p2}, Ls1/a/a/a/v0/m/x0$a;->b(Ls1/a/a/a/v0/m/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/b1;

    move-result-object v1

    const-string v4, "$this$getRefinedMemberScopeIfPossible"

    .line 14
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeSubstitution"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v3, v0, Ls1/a/a/a/v0/b/h1/v;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v0

    :goto_3
    check-cast v2, Ls1/a/a/a/v0/b/h1/v;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1, p4}, Ls1/a/a/a/v0/b/h1/v;->X(Ls1/a/a/a/v0/m/b1;Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    if-eqz p4, :cond_7

    :goto_4
    goto :goto_0

    :cond_7
    invoke-interface {v0, v1}, Ls1/a/a/a/v0/b/e;->D0(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    const-string v0, "this.getMemberScope(\n   \u2026ubstitution\n            )"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_8
    instance-of p4, v0, Ls1/a/a/a/v0/b/v0;

    if-eqz p4, :cond_9

    const-string p4, "Scope for abbreviation: "

    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    check-cast v0, Ls1/a/a/a/v0/b/v0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p4, v0}, Ls1/a/a/a/v0/m/x;->c(Ljava/lang/String;Z)Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    const-string v0, "ErrorUtils.createErrorSc\u2026{descriptor.name}\", true)"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_9
    instance-of p4, p1, Ls1/a/a/a/v0/m/c0;

    if-eqz p4, :cond_a

    .line 19
    move-object p4, p1

    check-cast p4, Ls1/a/a/a/v0/m/c0;

    .line 20
    iget-object p4, p4, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    const-string v0, "member scope for intersection type"

    invoke-static {v0, p4}, Ls1/a/a/a/v0/j/y/n$a;->a(Ljava/lang/String;Ljava/util/Collection;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p4

    goto/16 :goto_0

    .line 21
    :goto_5
    new-instance v5, Ls1/a/a/a/v0/m/f0$c;

    invoke-direct {v5, p1, p2, p0, p3}, Ls1/a/a/a/v0/m/f0$c;-><init>(Ls1/a/a/a/v0/m/v0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 22
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/m/f0;->i(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0

    .line 23
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported classifier: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for constructor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;
    .locals 0

    and-int/lit8 p4, p5, 0x10

    const/4 p4, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Ls1/a/a/a/v0/m/f0;->f(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;)Ls1/a/a/a/v0/m/l0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/m/v0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;Z",
            "Ls1/a/a/a/v0/j/y/i;",
            ")",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/m0;

    new-instance v7, Ls1/a/a/a/v0/m/f0$d;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/m/f0$d;-><init>(Ls1/a/a/a/v0/m/v0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/j/y/i;)V

    move-object v1, v0

    move v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/m/m0;-><init>(Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)V

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/m/n;

    invoke-direct {p1, v0, p0}, Ls1/a/a/a/v0/m/n;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static final i(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/m/v0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;Z",
            "Ls1/a/a/a/v0/j/y/i;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/m/l1/e;",
            "+",
            "Ls1/a/a/a/v0/m/l0;",
            ">;)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/m0;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/m/m0;-><init>(Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)V

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/m/n;

    invoke-direct {p1, v0, p0}, Ls1/a/a/a/v0/m/n;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method
