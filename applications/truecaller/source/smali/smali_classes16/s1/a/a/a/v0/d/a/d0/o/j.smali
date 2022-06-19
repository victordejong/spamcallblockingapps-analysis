.class public final Ls1/a/a/a/v0/d/a/d0/o/j;
.super Ls1/a/a/a/v0/m/b1;
.source "SourceFile"


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/d0/o/a;

.field public static final c:Ls1/a/a/a/v0/d/a/d0/o/a;

.field public static final d:Ls1/a/a/a/v0/d/a/d0/o/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/j;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/o/j;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/o/j;->d:Ls1/a/a/a/v0/d/a/d0/o/j;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/d/a/d0/o/b;->c:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {v4, v5}, Ls1/a/a/a/v0/d/a/d0/o/a;->a(Ls1/a/a/a/v0/d/a/d0/o/b;)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v4

    sput-object v4, Ls1/a/a/a/v0/d/a/d0/o/j;->b:Ls1/a/a/a/v0/d/a/d0/o/a;

    .line 3
    invoke-static {v0, v1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/o/b;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/d/a/d0/o/a;->a(Ls1/a/a/a/v0/d/a/d0/o/b;)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/o/j;->c:Ls1/a/a/a/v0/d/a/d0/o/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/a1;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/o/j;->j(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;
    .locals 3

    sget-object v0, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    const-string v1, "parameter"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "erasedUpperBound"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p2, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-ne v1, p1, :cond_0

    .line 3
    new-instance p1, Ls1/a/a/a/v0/m/a1;

    invoke-direct {p1, v0, p3}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v1

    .line 5
    iget-boolean v1, v1, Ls1/a/a/a/v0/m/j1;->b:Z

    if-nez v1, :cond_2

    .line 6
    new-instance p2, Ls1/a/a/a/v0/m/a1;

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->n()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object p1, p2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "erasedUpperBound.constructor.parameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Ls1/a/a/a/v0/m/a1;

    sget-object p2, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    invoke-direct {p1, p2, p3}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1, p2}, Ls1/a/a/a/v0/d/a/d0/o/i;->b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final i(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/l0;",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/d/a/d0/o/a;",
            ")",
            "Ls1/k<",
            "Ls1/a/a/a/v0/m/l0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 3
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->y(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/m/y0;

    .line 5
    new-instance p3, Ls1/a/a/a/v0/m/a1;

    invoke-interface {p2}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v1

    invoke-interface {p2}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    const-string v2, "componentTypeProjection.type"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/d/a/d0/o/j;->j(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    .line 6
    invoke-static {p3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v2

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 8
    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    .line 9
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 10
    :cond_1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "Raw error type: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string p2, "ErrorUtils.createErrorTy\u2026pe: ${type.constructor}\")"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 12
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/o/j;->d:Ls1/a/a/a/v0/d/a/d0/o/j;

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/b/e;->D0(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v5

    const-string v0, "declaration.getMemberScope(RawSubstitution)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    invoke-interface {p2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v2

    const-string v0, "declaration.typeConstructor"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v3, "declaration.typeConstructor.parameters"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 17
    check-cast v4, Ls1/a/a/a/v0/b/w0;

    const-string v6, "parameter"

    .line 18
    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v7, Ls1/a/a/a/v0/d/a/d0/o/i;->a:Ls1/a/a/a/v0/f/b;

    const/4 v7, 0x0

    .line 20
    new-instance v8, Ls1/a/a/a/v0/d/a/d0/o/h;

    invoke-direct {v8, v4}, Ls1/a/a/a/v0/d/a/d0/o/h;-><init>(Ls1/a/a/a/v0/b/w0;)V

    invoke-static {v4, v7, v8}, Ls1/a/a/a/v0/d/a/d0/o/i;->a(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;Ls1/z/b/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    .line 21
    sget-object v8, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "attr"

    invoke-static {p3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "erasedUpperBound"

    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v6, p3, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    .line 23
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_4

    const/4 v4, 0x2

    if-ne v6, v4, :cond_3

    .line 24
    new-instance v4, Ls1/a/a/a/v0/m/a1;

    invoke-direct {v4, v8, v7}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_1

    .line 25
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_4
    invoke-interface {v4}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v6

    .line 26
    iget-boolean v6, v6, Ls1/a/a/a/v0/m/j1;->b:Z

    if-nez v6, :cond_5

    .line 27
    new-instance v6, Ls1/a/a/a/v0/m/a1;

    invoke-static {v4}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v4

    invoke-virtual {v4}, Ls1/a/a/a/v0/a/g;->n()Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    invoke-direct {v6, v8, v4}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object v4, v6

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {v7}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v6

    invoke-interface {v6}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v6

    const-string v8, "erasedUpperBound.constructor.parameters"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v9

    if-eqz v6, :cond_6

    .line 29
    new-instance v4, Ls1/a/a/a/v0/m/a1;

    sget-object v6, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    invoke-direct {v4, v6, v7}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_1

    .line 30
    :cond_6
    invoke-static {v4, p3}, Ls1/a/a/a/v0/d/a/d0/o/i;->b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/y0;

    move-result-object v4

    .line 31
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_7
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v4

    .line 33
    new-instance v6, Ls1/a/a/a/v0/d/a/d0/o/j$a;

    invoke-direct {v6, p2, p1, p3}, Ls1/a/a/a/v0/d/a/d0/o/j$a;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/d/a/d0/o/a;)V

    .line 34
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/f0;->i(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    .line 35
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final j(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v1, :cond_0

    check-cast v0, Ls1/a/a/a/v0/b/w0;

    .line 3
    sget-object p1, Ls1/a/a/a/v0/d/a/d0/o/i;->a:Ls1/a/a/a/v0/f/b;

    const/4 p1, 0x0

    .line 4
    new-instance v1, Ls1/a/a/a/v0/d/a/d0/o/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/d/a/d0/o/h;-><init>(Ls1/a/a/a/v0/b/w0;)V

    invoke-static {v0, p1, v1}, Ls1/a/a/a/v0/d/a/d0/o/i;->a(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;Ls1/z/b/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/o/j;->j(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_0
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_4

    .line 7
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->X3(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    .line 8
    instance-of v2, v1, Ls1/a/a/a/v0/b/e;

    if-eqz v2, :cond_3

    .line 9
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->C2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    check-cast v0, Ls1/a/a/a/v0/b/e;

    sget-object v3, Ls1/a/a/a/v0/d/a/d0/o/j;->b:Ls1/a/a/a/v0/d/a/d0/o/a;

    invoke-virtual {p0, v2, v0, v3}, Ls1/a/a/a/v0/d/a/d0/o/j;->i(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/k;

    move-result-object v0

    .line 10
    iget-object v2, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 11
    check-cast v2, Ls1/a/a/a/v0/m/l0;

    .line 12
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 14
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->X3(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    check-cast v1, Ls1/a/a/a/v0/b/e;

    sget-object v3, Ls1/a/a/a/v0/d/a/d0/o/j;->c:Ls1/a/a/a/v0/d/a/d0/o/a;

    invoke-virtual {p0, p1, v1, v3}, Ls1/a/a/a/v0/d/a/d0/o/j;->i(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/k;

    move-result-object p1

    .line 15
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 16
    check-cast v1, Ls1/a/a/a/v0/m/l0;

    .line 17
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v2, v1}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/o/k;

    invoke-direct {p1, v2, v1}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    :goto_1
    return-object p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For some reason declaration for upper bound is not a class "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "but \""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" while for lower it\'s \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected declaration kind: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
