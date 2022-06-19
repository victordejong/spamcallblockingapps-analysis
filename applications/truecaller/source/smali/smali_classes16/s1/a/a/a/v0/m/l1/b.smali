.class public Ls1/a/a/a/v0/m/l1/b;
.super Ls1/a/a/a/v0/m/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/l1/c;


# instance fields
.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Ls1/a/a/a/v0/m/l1/e;


# direct methods
.method public constructor <init>(ZZZLs1/a/a/a/v0/m/l1/e;)V
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ls1/a/a/a/v0/m/h;-><init>()V

    iput-boolean p1, p0, Ls1/a/a/a/v0/m/l1/b;->e:Z

    iput-boolean p2, p0, Ls1/a/a/a/v0/m/l1/b;->f:Z

    iput-boolean p3, p0, Ls1/a/a/a/v0/m/l1/b;->g:Z

    iput-object p4, p0, Ls1/a/a/a/v0/m/l1/b;->h:Ls1/a/a/a/v0/m/l1/e;

    return-void
.end method

.method public constructor <init>(ZZZLs1/a/a/a/v0/m/l1/e;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 1
    sget-object p4, Ls1/a/a/a/v0/m/l1/e$a;->a:Ls1/a/a/a/v0/m/l1/e$a;

    :cond_2
    const-string p5, "kotlinTypeRefiner"

    .line 2
    invoke-static {p4, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ls1/a/a/a/v0/m/h;-><init>()V

    iput-boolean p1, p0, Ls1/a/a/a/v0/m/l1/b;->e:Z

    iput-boolean p2, p0, Ls1/a/a/a/v0/m/l1/b;->f:Z

    iput-boolean p3, p0, Ls1/a/a/a/v0/m/l1/b;->g:Z

    iput-object p4, p0, Ls1/a/a/a/v0/m/l1/b;->h:Ls1/a/a/a/v0/m/l1/e;

    return-void
.end method


# virtual methods
.method public A(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/e;
    .locals 1

    const-string v0, "$this$asDynamicType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->x(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/e;

    move-result-object p1

    return-object p1
.end method

.method public B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p2, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ls1/a/a/a/v0/m/v0;

    check-cast p2, Ls1/a/a/a/v0/m/v0;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/m/l1/b;->R(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/m/v0;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public E(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/n1/i;",
            "Ls1/a/a/a/v0/m/n1/l;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/n1/i;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$fastCorrespondingSupertypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "constructor"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public F(Ls1/a/a/a/v0/m/n1/j;I)Ls1/a/a/a/v0/m/n1/k;
    .locals 1

    const-string v0, "$this$get"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ls1/a/a/a/v0/f/d;->f1(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/j;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object p1

    return-object p1
.end method

.method public G(Ls1/a/a/a/v0/m/n1/i;I)Ls1/a/a/a/v0/m/n1/k;
    .locals 1

    const-string v0, "$this$getArgumentOrNull"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ls1/a/a/a/v0/f/d;->h1(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/i;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object p1

    return-object p1
.end method

.method public H(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$hasFlexibleNullability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->G1(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public J(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "$this$isClassType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/b;->W(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public K(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isDefinitelyNotNullType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->V1(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public L(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isDynamic"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->X1(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/m/l1/b;->e:Z

    return v0
.end method

.method public N(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "$this$isIntegerLiteralType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/b;->Y(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public O(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/e0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ls1/a/a/a/v0/m/l1/k;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    .line 5
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l1/l;->h(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/m/e0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/b;->h:Ls1/a/a/a/v0/m/l1/e;

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/h$a;
    .locals 2

    const-string v0, "type"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$classicSubstitutionSupertypePolicy"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Ls1/a/a/a/v0/m/x0;->b:Ls1/a/a/a/v0/m/x0$a;

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/x0$a;->a(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/b1;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/b1;->c()Ls1/a/a/a/v0/m/d1;

    move-result-object p1

    .line 5
    new-instance v0, Ls1/a/a/a/v0/m/l1/a;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/l1/a;-><init>(Ls1/a/a/a/v0/m/l1/c;Ls1/a/a/a/v0/m/d1;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/m/v0;)Z
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/o;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/j/t/o;

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/j/t/o;->f(Ls1/a/a/a/v0/m/v0;)Z

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p2, Ls1/a/a/a/v0/j/t/o;

    if-eqz v0, :cond_1

    check-cast p2, Ls1/a/a/a/v0/j/t/o;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/j/t/o;->f(Ls1/a/a/a/v0/m/v0;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public S(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/j;
    .locals 2

    const-string v0, "$this$asArgumentList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ls1/a/a/a/v0/m/n1/j;

    return-object p1

    :cond_0
    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v1, ", "

    .line 4
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->q(Ls1/a/a/a/v0/m/n1/i;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/b;)Ls1/a/a/a/v0/m/n1/i;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v1, "type"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "status"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v3, v0, Ls1/a/a/a/v0/m/l0;

    if-eqz v3, :cond_e

    .line 3
    move-object v9, v0

    check-cast v9, Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v10, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v12

    .line 7
    instance-of v0, v12, Ljava/util/Collection;

    const/4 v13, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/m/y0;

    .line 9
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v2

    if-ne v2, v10, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v13

    :goto_0
    if-nez v2, :cond_2

    move v1, v13

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    move-object v4, v11

    goto/16 :goto_9

    .line 10
    :cond_5
    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "type.constructor.parameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v14, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ls1/k;

    .line 14
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/m/y0;

    .line 16
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 17
    move-object v6, v0

    check-cast v6, Ls1/a/a/a/v0/b/w0;

    .line 18
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    if-ne v0, v10, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    if-ne v0, v1, :cond_7

    .line 20
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_7
    move-object/from16 v16, v11

    .line 21
    :goto_4
    new-instance v17, Ls1/a/a/a/v0/m/l1/g;

    const-string v0, "parameter"

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureStatus"

    .line 22
    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameter"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v18, Ls1/a/a/a/v0/m/l1/i;

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v4, 0x0

    move-object/from16 v2, v18

    invoke-direct/range {v2 .. v7}, Ls1/a/a/a/v0/m/l1/i;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZI)V

    .line 24
    invoke-static/range {v17 .. v17}, Ls1/a/a/a/v0/f/d;->F(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v3

    :goto_5
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_8
    sget-object v0, Ls1/a/a/a/v0/m/x0;->b:Ls1/a/a/a/v0/m/x0$a;

    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ls1/a/a/a/v0/m/x0$a;->b(Ls1/a/a/a/v0/m/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/b1;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/b1;->c()Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    .line 26
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_6
    if-ge v13, v1, :cond_c

    .line 27
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/m/y0;

    .line 28
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/m/y0;

    .line 29
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v4

    if-ne v4, v10, :cond_9

    goto/16 :goto_8

    .line 30
    :cond_9
    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    invoke-interface {v4}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "type.constructor.parameters[index]"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v4}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "type.constructor.parameters[index].upperBounds"

    invoke-static {v4, v5}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 31
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 32
    check-cast v6, Ls1/a/a/a/v0/m/e0;

    .line 33
    sget-object v7, Ls1/a/a/a/v0/m/l1/k;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 34
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v7, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    .line 36
    invoke-virtual {v0, v6, v10}, Ls1/a/a/a/v0/m/d1;->i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    invoke-virtual {v6}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v6

    invoke-virtual {v7, v6}, Ls1/a/a/a/v0/m/l1/l;->h(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/i1;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 37
    :cond_a
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v4

    sget-object v6, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    if-ne v4, v6, :cond_b

    .line 38
    sget-object v4, Ls1/a/a/a/v0/m/l1/k;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 39
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v4, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    .line 41
    invoke-interface {v2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v2

    invoke-virtual {v4, v2}, Ls1/a/a/a/v0/m/l1/l;->h(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/i1;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_b
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedType"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ls1/a/a/a/v0/m/l1/g;

    .line 43
    iget-object v2, v2, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    .line 44
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "supertypes"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v3, Ls1/a/a/a/v0/m/l1/j;

    invoke-direct {v3, v5}, Ls1/a/a/a/v0/m/l1/j;-><init>(Ljava/util/List;)V

    iput-object v3, v2, Ls1/a/a/a/v0/m/l1/i;->c:Ls1/z/b/a;

    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    :cond_c
    move-object v4, v14

    :goto_9
    if-eqz v4, :cond_d

    .line 46
    invoke-interface {v9}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v2

    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    invoke-virtual {v9}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v11

    :cond_d
    return-object v11

    :cond_e
    const-string v1, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v2, ", "

    .line 47
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Le/d/c/a/a;->q(Ls1/a/a/a/v0/m/n1/i;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public U(Ls1/a/a/a/v0/m/n1/l;I)Ls1/a/a/a/v0/m/n1/m;
    .locals 1

    const-string v0, "$this$getParameter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Ls1/a/a/a/v0/m/v0;

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "this.parameters[index]"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ls1/a/a/a/v0/m/n1/m;

    return-object p1
.end method

.method public V(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/p;
    .locals 2

    const-string v0, "$this$getVariance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ls1/a/a/a/v0/b/w0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object p1

    const-string v0, "this.variance"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->n0(Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassicTypeSystemContext couldn\'t handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public W(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isClassTypeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->U1(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public X(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 2

    const-string v0, "$this$isError"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/e0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassicTypeSystemContext couldn\'t handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Y(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isIntegerLiteralTypeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->f2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public Z(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 2

    const-string v0, "$this$isIntersection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    .line 3
    instance-of p1, p1, Ls1/a/a/a/v0/m/c0;

    return p1

    :cond_0
    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v1, ", "

    .line 4
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$asSimpleType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->D(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public a0(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isNothing"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->i2(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public b(Ls1/a/a/a/v0/m/n1/h;)I
    .locals 1

    const-string v0, "$this$argumentsCount"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->u(Ls1/a/a/a/v0/m/n1/h;)I

    move-result p1

    return p1
.end method

.method public b0(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 2

    const-string v0, "$this$isStubType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v1, ", "

    .line 3
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->q(Ls1/a/a/a/v0/m/n1/i;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ls1/a/a/a/v0/m/n1/k;)Z
    .locals 1

    const-string v0, "$this$isStarProjection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->n2(Ls1/a/a/a/v0/m/n1/k;)Z

    move-result p1

    return p1
.end method

.method public c0(Ls1/a/a/a/v0/m/n1/l;)I
    .locals 2

    const-string v0, "$this$parametersCount"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ls1/a/a/a/v0/m/v0;

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v1, ", "

    .line 4
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$upperBoundIfFlexible"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->W3(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public d0(Ls1/a/a/a/v0/m/n1/j;)I
    .locals 1

    const-string v0, "$this$size"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->o3(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/j;)I

    move-result p1

    return p1
.end method

.method public e(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "$this$isMarkedNullable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h2(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    return p1
.end method

.method public e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/n1/l;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/n1/h;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$supertypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ls1/a/a/a/v0/m/v0;

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "this.supertypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v1, ", "

    .line 4
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->H1(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    return p1
.end method

.method public g(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$getRepresentativeUpperBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->w1(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isNothingConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->j2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;
    .locals 1

    const-string v0, "$this$typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->S3(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    return-object p1
.end method

.method public j(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/f;
    .locals 1

    const-string v0, "$this$asFlexibleType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->z(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/f;

    move-result-object p1

    return-object p1
.end method

.method public k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$lowerBoundIfFlexible"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->B2(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public l(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;
    .locals 1

    const-string v0, "$this$getVariance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->C1(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object p1

    return-object p1
.end method

.method public m(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$getType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->z1(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$makeNullable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->E2(Ls1/a/a/a/v0/m/l1/c;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public o(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/m/n1/m;
    .locals 1

    const-string v0, "$this$getTypeParameterClassifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->A1(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/m/n1/m;

    move-result-object p1

    return-object p1
.end method

.method public p(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isInlineClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public q(Ls1/a/a/a/v0/m/n1/h;I)Ls1/a/a/a/v0/m/n1/k;
    .locals 1

    const-string v0, "$this$getArgument"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->g1(Ls1/a/a/a/v0/m/n1/h;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object p1

    return-object p1
.end method

.method public r(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isNullableType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->k2(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public s(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$lowerBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->A2(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public t(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "$this$isPrimitiveType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->l2(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    return p1
.end method

.method public u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;
    .locals 1

    const-string v0, "$this$typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->R3(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    return-object p1
.end method

.method public v(Ls1/a/a/a/v0/m/n1/i;Z)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$withNullability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->c4(Ls1/a/a/a/v0/m/n1/i;Z)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public w(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$getSubstitutedUnderlyingType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->y1(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public x(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$upperBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->V3(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public y(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isMarkedNullable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->g2(Ls1/a/a/a/v0/m/l1/c;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public z(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/d;
    .locals 1

    const-string v0, "$this$asDefinitelyNotNullType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->w(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/d;

    move-result-object p1

    return-object p1
.end method
