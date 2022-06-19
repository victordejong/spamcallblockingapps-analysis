.class public final Ls1/a/a/a/v0/m/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/s0$a;
    }
.end annotation


# static fields
.field public static final c:Ls1/a/a/a/v0/m/s0$a;


# instance fields
.field public final a:Ls1/a/a/a/v0/m/u0;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls1/a/a/a/v0/m/s0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/s0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/m/s0;->c:Ls1/a/a/a/v0/m/s0$a;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/u0;Z)V
    .locals 1

    const-string v0, "reportStrategy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/s0;->a:Ls1/a/a/a/v0/m/u0;

    iput-boolean p2, p0, Ls1/a/a/a/v0/m/s0;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ls1/a/a/a/v0/b/f1/c;

    .line 4
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/c;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/b/f1/c;

    .line 6
    invoke-interface {p2}, Ls1/a/a/a/v0/b/f1/c;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/m/s0;->a:Ls1/a/a/a/v0/m/u0;

    invoke-interface {v1, p2}, Ls1/a/a/a/v0/m/u0;->c(Ls1/a/a/a/v0/b/f1/c;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 2

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/m/s0;->c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Ls1/a/a/a/v0/f/d;->U2(Ls1/a/a/a/v0/m/l0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    invoke-static {p2, p1}, Le/q/f/a/d/a;->L(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/f1/h;ZIZ)Ls1/a/a/a/v0/m/l0;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/a1;

    .line 2
    sget-object v1, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    .line 3
    iget-object v2, p1, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    .line 4
    invoke-interface {v2}, Ls1/a/a/a/v0/b/v0;->G0()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    .line 5
    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1, p4}, Ls1/a/a/a/v0/m/s0;->e(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object p4

    .line 7
    invoke-interface {p4}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v1, "expandedProjection.type"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {p4}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    .line 10
    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, Ls1/a/a/a/v0/m/s0;->a(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)V

    .line 11
    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/m/s0;->b(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p4

    invoke-static {p4, p3}, Ls1/a/a/a/v0/m/f1;->l(Ls1/a/a/a/v0/m/l0;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p4

    const-string v0, "expandedType.combineAnno\u2026fNeeded(it, isNullable) }"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 12
    iget-object p5, p1, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    .line 13
    invoke-interface {p5}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p5

    const-string v0, "descriptor.typeConstructor"

    invoke-static {p5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Ls1/a/a/a/v0/m/t0;->c:Ljava/util/List;

    .line 15
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    .line 16
    invoke-static {p2, p5, p1, p3, v0}, Ls1/a/a/a/v0/m/f0;->h(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    .line 17
    invoke-static {p4, p1}, Ls1/a/a/a/v0/m/o0;->d(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method public final e(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    move/from16 v8, p4

    .line 1
    sget-object v1, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    iget-object v2, v7, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    const/16 v3, 0x64

    if-gt v8, v3, :cond_1a

    .line 2
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v2

    const-string v3, "TypeUtils.makeStarProjec\u2026ypeParameterDescriptor!!)"

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Ls1/a/a/a/v0/m/f1;->m(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    const-string v4, "underlyingProjection.type"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    const-string v5, "constructor"

    .line 5
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v4}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v4

    .line 7
    instance-of v5, v4, Ls1/a/a/a/v0/b/w0;

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    .line 8
    iget-object v5, v7, Ls1/a/a/a/v0/m/t0;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/m/y0;

    goto :goto_0

    :cond_1
    move-object v4, v9

    :goto_0
    if-eqz v4, :cond_b

    .line 9
    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {p3 .. p3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Ls1/a/a/a/v0/m/f1;->m(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_2
    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v3

    .line 11
    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v4

    const-string v5, "argument.projectionKind"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v5

    const-string v8, "underlyingProjection.projectionKind"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v4, v1, :cond_5

    move-object v4, v5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v5, v6, Ls1/a/a/a/v0/m/s0;->a:Ls1/a/a/a/v0/m/u0;

    .line 14
    iget-object v8, v7, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    .line 15
    invoke-interface {v5, v8, v0, v3}, Ls1/a/a/a/v0/m/u0;->d(Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/m/e0;)V

    :goto_1
    if-eqz v0, :cond_6

    .line 16
    invoke-interface/range {p3 .. p3}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v1

    :goto_2
    const-string v8, "typeParameterDescriptor?\u2026nce ?: Variance.INVARIANT"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v4, :cond_7

    goto :goto_3

    :cond_7
    if-ne v5, v1, :cond_8

    goto :goto_3

    :cond_8
    if-ne v4, v1, :cond_9

    goto :goto_4

    .line 17
    :cond_9
    iget-object v1, v6, Ls1/a/a/a/v0/m/s0;->a:Ls1/a/a/a/v0/m/u0;

    .line 18
    iget-object v5, v7, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    .line 19
    invoke-interface {v1, v5, v0, v3}, Ls1/a/a/a/v0/m/u0;->d(Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/m/e0;)V

    :goto_3
    move-object v1, v4

    .line 20
    :goto_4
    invoke-interface {v2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    invoke-interface {v3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ls1/a/a/a/v0/m/s0;->a(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)V

    .line 21
    instance-of v0, v3, Ls1/a/a/a/v0/m/v;

    if-eqz v0, :cond_a

    .line 22
    check-cast v3, Ls1/a/a/a/v0/m/v;

    invoke-interface {v2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v3, v0}, Ls1/a/a/a/v0/m/s0;->c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    const-string v2, "newAnnotations"

    .line 24
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Ls1/a/a/a/v0/m/v;

    .line 26
    iget-object v3, v3, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 27
    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ls1/a/a/a/v0/m/v;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/f1/h;)V

    goto :goto_5

    .line 28
    :cond_a
    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 29
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v3

    invoke-static {v0, v3}, Ls1/a/a/a/v0/m/f1;->l(Ls1/a/a/a/v0/m/l0;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v3, "TypeUtils.makeNullableIf\u2026romType.isMarkedNullable)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {v2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ls1/a/a/a/v0/m/s0;->b(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    .line 31
    :goto_5
    new-instance v0, Ls1/a/a/a/v0/m/a1;

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    return-object v0

    .line 32
    :cond_b
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    .line 33
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->W1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_c

    .line 34
    :cond_c
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->C(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v10

    .line 35
    invoke-static {v10}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "$this$requiresTypeAliasExpansion"

    .line 36
    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Ls1/a/a/a/v0/m/o1/b;->b:Ls1/a/a/a/v0/m/o1/b;

    invoke-static {v10, v0}, Ls1/a/a/a/v0/f/d;->m0(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_c

    .line 38
    :cond_d
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v2

    .line 40
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    instance-of v3, v2, Ls1/a/a/a/v0/b/w0;

    if-eqz v3, :cond_e

    move-object/from16 v1, p1

    goto/16 :goto_b

    .line 42
    :cond_e
    instance-of v3, v2, Ls1/a/a/a/v0/b/v0;

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    .line 43
    check-cast v2, Ls1/a/a/a/v0/b/v0;

    invoke-virtual {v7, v2}, Ls1/a/a/a/v0/m/t0;->a(Ls1/a/a/a/v0/b/v0;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 44
    iget-object v0, v6, Ls1/a/a/a/v0/m/s0;->a:Ls1/a/a/a/v0/m/u0;

    invoke-interface {v0, v2}, Ls1/a/a/a/v0/m/u0;->a(Ls1/a/a/a/v0/b/v0;)V

    .line 45
    new-instance v0, Ls1/a/a/a/v0/m/a1;

    const-string v3, "Recursive type alias: "

    .line 46
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    .line 47
    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto/16 :goto_d

    .line 48
    :cond_f
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v1

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    if-ltz v4, :cond_10

    .line 51
    check-cast v11, Ls1/a/a/a/v0/m/y0;

    .line 52
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/w0;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v11, v7, v4, v13}, Ls1/a/a/a/v0/m/s0;->e(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v12

    goto :goto_6

    .line 53
    :cond_10
    invoke-static {}, Ls1/u/i;->N0()V

    throw v9

    :cond_11
    const-string v0, "typeAliasDescriptor"

    .line 54
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {v2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v1, "typeAliasDescriptor.typeConstructor"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeAliasDescriptor.typeConstructor.parameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 58
    check-cast v4, Ls1/a/a/a/v0/b/w0;

    const-string v5, "it"

    .line 59
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ls1/a/a/a/v0/b/w0;->a()Ls1/a/a/a/v0/b/w0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 60
    :cond_12
    invoke-static {v1, v3}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v4

    .line 61
    new-instance v9, Ls1/a/a/a/v0/m/t0;

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/m/t0;-><init>(Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/v0;Ljava/util/List;Ljava/util/Map;Ls1/z/c/f;)V

    .line 62
    invoke-interface {v10}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v2

    .line 63
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    .line 64
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/m/s0;->d(Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/f1/h;ZIZ)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v10, v7, v8}, Ls1/a/a/a/v0/m/s0;->f(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/t0;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    .line 66
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->W1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v0, v1}, Ls1/a/a/a/v0/m/o0;->d(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 67
    :goto_8
    new-instance v1, Ls1/a/a/a/v0/m/a1;

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto/16 :goto_b

    .line 68
    :cond_14
    invoke-virtual {p0, v10, v7, v8}, Ls1/a/a/a/v0/m/s0;->f(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/t0;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 69
    invoke-static {v0}, Ls1/a/a/a/v0/m/d1;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/d1;

    move-result-object v2

    const-string v3, "TypeSubstitutor.create(substitutedType)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_17

    check-cast v5, Ls1/a/a/a/v0/m/y0;

    .line 72
    invoke-interface {v5}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-interface {v5}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    const-string v11, "substitutedArgument.type"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "$this$containsTypeAliasParameters"

    .line 73
    invoke-static {v8, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v12, Ls1/a/a/a/v0/m/o1/a;->b:Ls1/a/a/a/v0/m/o1/a;

    invoke-static {v8, v12}, Ls1/a/a/a/v0/f/d;->m0(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 75
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/m/y0;

    .line 76
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v12

    invoke-interface {v12}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/w0;

    .line 77
    iget-boolean v12, v6, Ls1/a/a/a/v0/m/s0;->b:Z

    if-eqz v12, :cond_16

    .line 78
    iget-object v12, v6, Ls1/a/a/a/v0/m/s0;->a:Ls1/a/a/a/v0/m/u0;

    .line 79
    invoke-interface {v8}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    const-string v13, "unsubstitutedArgument.type"

    invoke-static {v8, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {v5}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "typeParameter"

    .line 81
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "reportStrategy"

    .line 82
    invoke-static {v12, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "unsubstitutedArgument"

    invoke-static {v8, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "typeArgument"

    invoke-static {v5, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "typeParameterDescriptor"

    invoke-static {v4, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "substitutor"

    invoke-static {v2, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {v4}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_15
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/m/e0;

    .line 84
    invoke-virtual {v2, v13, v1}, Ls1/a/a/a/v0/m/d1;->i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v13

    const-string v14, "substitutor.safeSubstitu\u2026ound, Variance.INVARIANT)"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v14, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {v14, v5, v13}, Ls1/a/a/a/v0/m/l1/d;->d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 86
    invoke-interface {v12, v13, v8, v5, v4}, Ls1/a/a/a/v0/m/u0;->b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/w0;)V

    goto :goto_a

    :cond_16
    move v4, v7

    goto/16 :goto_9

    .line 87
    :cond_17
    invoke-static {}, Ls1/u/i;->N0()V

    throw v9

    .line 88
    :cond_18
    new-instance v1, Ls1/a/a/a/v0/m/a1;

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    :goto_b
    move-object v0, v1

    goto :goto_d

    :cond_19
    :goto_c
    move-object/from16 v0, p1

    :goto_d
    return-object v0

    .line 89
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Too deep recursion while expanding type alias "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final f(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/t0;I)Ls1/a/a/a/v0/m/l0;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    .line 5
    check-cast v4, Ls1/a/a/a/v0/m/y0;

    .line 6
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/w0;

    add-int/lit8 v5, p3, 0x1

    .line 7
    invoke-virtual {p0, v4, p2, v3, v5}, Ls1/a/a/a/v0/m/s0;->e(Ls1/a/a/a/v0/m/y0;Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/m/y0;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v5, Ls1/a/a/a/v0/m/a1;

    .line 10
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v7

    .line 11
    invoke-interface {v3}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    invoke-virtual {v4}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v4

    invoke-static {v3, v4}, Ls1/a/a/a/v0/m/f1;->k(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    .line 12
    invoke-direct {v5, v7, v3}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object v3, v5

    .line 13
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Ls1/u/i;->N0()V

    throw v5

    :cond_2
    const/4 p2, 0x2

    .line 15
    invoke-static {p1, v2, v5, p2}, Ls1/a/a/a/v0/f/d;->U2(Ls1/a/a/a/v0/m/l0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method
