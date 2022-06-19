.class public final Ls1/a/a/a/v0/k/b/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Integer;",
            "Ls1/a/a/a/v0/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Integer;",
            "Ls1/a/a/a/v0/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/k/b/l;

.field public final e:Ls1/a/a/a/v0/k/b/c0;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/k/b/c0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    and-int/lit8 p7, p7, 0x20

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p6, v0

    :cond_0
    const-string p7, "c"

    .line 1
    invoke-static {p1, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "typeParameterProtos"

    invoke-static {p3, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "debugName"

    invoke-static {p4, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "containerPresentableName"

    invoke-static {p5, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/c0;->e:Ls1/a/a/a/v0/k/b/c0;

    iput-object p4, p0, Ls1/a/a/a/v0/k/b/c0;->f:Ljava/lang/String;

    iput-object p5, p0, Ls1/a/a/a/v0/k/b/c0;->g:Ljava/lang/String;

    iput-boolean p6, p0, Ls1/a/a/a/v0/k/b/c0;->h:Z

    .line 3
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 5
    new-instance p4, Ls1/a/a/a/v0/k/b/b0;

    invoke-direct {p4, p0}, Ls1/a/a/a/v0/k/b/b0;-><init>(Ls1/a/a/a/v0/k/b/c0;)V

    invoke-interface {p2, p4}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/c0;->a:Ls1/z/b/l;

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 8
    new-instance p2, Ls1/a/a/a/v0/k/b/d0;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/k/b/d0;-><init>(Ls1/a/a/a/v0/k/b/c0;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/c0;->b:Ls1/z/b/l;

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls1/a/a/a/v0/e/s;

    .line 13
    iget p4, p3, Ls1/a/a/a/v0/e/s;->d:I

    .line 14
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-instance p5, Ls1/a/a/a/v0/k/b/g0/m;

    iget-object p6, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    invoke-direct {p5, p6, p3, v0}, Ls1/a/a/a/v0/k/b/g0/m;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/s;I)V

    invoke-interface {p1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/c0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 3
    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    .line 4
    iget-boolean p1, p1, Ls1/a/a/a/v0/f/a;->c:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->h:Ls1/a/a/a/v0/k/b/t;

    .line 8
    invoke-interface {p1}, Ls1/a/a/a/v0/k/b/t;->a()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;
    .locals 7

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/a/f;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/a/f;->f(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ls1/u/i;->t(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Ls1/a/a/a/v0/m/y0;

    .line 8
    invoke-interface {v5}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    .line 9
    invoke-static/range {v0 .. v6}, Ls1/a/a/a/v0/a/f;->a(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result p1

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;
    .locals 13

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Ls1/a/a/a/v0/e/q;->i:I

    .line 3
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/k/b/c0;->a(I)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget v0, p1, Ls1/a/a/a/v0/e/q;->l:I

    .line 6
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/k/b/c0;->a(I)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Ls1/a/a/a/v0/k/b/e0;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/k/b/e0;-><init>(Ls1/a/a/a/v0/k/b/c0;Ls1/a/a/a/v0/e/q;)V

    .line 8
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->m()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/c0;->a:Ls1/z/b/l;

    .line 9
    iget v5, p1, Ls1/a/a/a/v0/e/q;->i:I

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/h;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget v2, p1, Ls1/a/a/a/v0/e/q;->i:I

    .line 12
    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/k/b/e0;->a(I)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v2, "(classifierDescriptors(p\u2026assName)).typeConstructor"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 13
    :cond_4
    iget v2, p1, Ls1/a/a/a/v0/e/q;->c:I

    and-int/lit8 v5, v2, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-eqz v5, :cond_7

    .line 14
    iget v0, p1, Ls1/a/a/a/v0/e/q;->j:I

    .line 15
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/k/b/c0;->f(I)Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    if-eqz v0, :cond_6

    goto/16 :goto_7

    :cond_6
    const-string v0, "Unknown type parameter "

    .line 16
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    iget v2, p1, Ls1/a/a/a/v0/e/q;->j:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please try recompiling module containing \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/c0;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->e(Ljava/lang/String;)Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v2, "ErrorUtils.createErrorTy\u2026\\\"\"\n                    )"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const/16 v5, 0x40

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_8

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    if-eqz v2, :cond_c

    .line 20
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 21
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 22
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 23
    iget v5, p1, Ls1/a/a/a/v0/e/q;->k:I

    .line 24
    invoke-interface {v0, v5}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/c0;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v7}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v7

    invoke-virtual {v7}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_a
    move-object v6, v1

    :goto_4
    check-cast v6, Ls1/a/a/a/v0/b/w0;

    if-eqz v6, :cond_b

    .line 26
    invoke-interface {v6}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object v0, v5

    goto :goto_5

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deserialized type parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->e(Ljava/lang/String;)Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    :goto_5
    const-string v2, "parameter?.typeConstruct\u2026ter $name in $container\")"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 27
    :cond_c
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->p()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/c0;->b:Ls1/z/b/l;

    .line 28
    iget v5, p1, Ls1/a/a/a/v0/e/q;->l:I

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/h;

    if-eqz v2, :cond_d

    goto :goto_6

    .line 30
    :cond_d
    iget v2, p1, Ls1/a/a/a/v0/e/q;->l:I

    .line 31
    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/k/b/e0;->a(I)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v2, "(typeAliasDescriptors(pr\u2026iasName)).typeConstructor"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string v0, "Unknown type"

    .line 32
    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->e(Ljava/lang/String;)Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v2, "ErrorUtils.createErrorTy\u2026nstructor(\"Unknown type\")"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :goto_7
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/m/x;->j(Ls1/a/a/a/v0/b/k;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/a/a/a/v0/m/x;->h(Ljava/lang/String;Ls1/a/a/a/v0/m/v0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string p2, "ErrorUtils.createErrorTy\u2026.toString(), constructor)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 35
    :cond_f
    new-instance v5, Ls1/a/a/a/v0/k/b/g0/a;

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 36
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 37
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 38
    new-instance v6, Ls1/a/a/a/v0/k/b/c0$b;

    invoke-direct {v6, p0, p1}, Ls1/a/a/a/v0/k/b/c0$b;-><init>(Ls1/a/a/a/v0/k/b/c0;Ls1/a/a/a/v0/e/q;)V

    invoke-direct {v5, v2, v6}, Ls1/a/a/a/v0/k/b/g0/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    .line 39
    new-instance v2, Ls1/a/a/a/v0/k/b/c0$a;

    invoke-direct {v2, p0}, Ls1/a/a/a/v0/k/b/c0$a;-><init>(Ls1/a/a/a/v0/k/b/c0;)V

    .line 40
    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/k/b/c0$a;->a(Ls1/a/a/a/v0/e/q;)Ljava/util/List;

    move-result-object v2

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v3

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v11, "typeTable"

    if-eqz v8, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_1a

    .line 43
    check-cast v8, Ls1/a/a/a/v0/e/q$b;

    .line 44
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v10

    const-string v12, "constructor.parameters"

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/b/w0;

    .line 45
    iget-object v10, v8, Ls1/a/a/a/v0/e/q$b;->c:Ls1/a/a/a/v0/e/q$b$c;

    .line 46
    sget-object v12, Ls1/a/a/a/v0/e/q$b$c;->e:Ls1/a/a/a/v0/e/q$b$c;

    if-ne v10, v12, :cond_11

    if-nez v7, :cond_10

    .line 47
    new-instance v7, Ls1/a/a/a/v0/m/p0;

    iget-object v8, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 48
    iget-object v8, v8, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 49
    iget-object v8, v8, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    .line 50
    invoke-interface {v8}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v8

    invoke-direct {v7, v8}, Ls1/a/a/a/v0/m/p0;-><init>(Ls1/a/a/a/v0/a/g;)V

    goto/16 :goto_c

    .line 51
    :cond_10
    new-instance v8, Ls1/a/a/a/v0/m/q0;

    invoke-direct {v8, v7}, Ls1/a/a/a/v0/m/q0;-><init>(Ls1/a/a/a/v0/b/w0;)V

    move-object v7, v8

    goto/16 :goto_c

    :cond_11
    const-string v7, "typeArgumentProto.projection"

    .line 52
    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "projection"

    .line 53
    invoke-static {v10, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_15

    if-eq v7, v4, :cond_14

    const/4 v12, 0x2

    if-eq v7, v12, :cond_13

    const/4 p1, 0x3

    if-eq v7, p1, :cond_12

    .line 55
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_13
    sget-object v7, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    goto :goto_9

    .line 57
    :cond_14
    sget-object v7, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    goto :goto_9

    .line 58
    :cond_15
    sget-object v7, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    .line 59
    :goto_9
    iget-object v10, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 60
    iget-object v10, v10, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v12, "$this$type"

    .line 61
    invoke-static {v8, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v8}, Ls1/a/a/a/v0/e/q$b;->d()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 63
    iget-object v8, v8, Ls1/a/a/a/v0/e/q$b;->d:Ls1/a/a/a/v0/e/q;

    goto :goto_b

    .line 64
    :cond_16
    iget v11, v8, Ls1/a/a/a/v0/e/q$b;->b:I

    const/4 v12, 0x4

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_17

    move v11, v4

    goto :goto_a

    :cond_17
    move v11, v3

    :goto_a
    if-eqz v11, :cond_18

    .line 65
    iget v8, v8, Ls1/a/a/a/v0/e/q$b;->e:I

    .line 66
    invoke-virtual {v10, v8}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v8

    goto :goto_b

    :cond_18
    move-object v8, v1

    :goto_b
    if-eqz v8, :cond_19

    .line 67
    new-instance v10, Ls1/a/a/a/v0/m/a1;

    invoke-virtual {p0, v8}, Ls1/a/a/a/v0/k/b/c0;->e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    invoke-direct {v10, v7, v8}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    move-object v7, v10

    goto :goto_c

    .line 68
    :cond_19
    new-instance v7, Ls1/a/a/a/v0/m/a1;

    const-string v8, "No type recorded"

    invoke-static {v8}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v8

    invoke-direct {v7, v8}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    .line 69
    :goto_c
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto/16 :goto_8

    .line 70
    :cond_1a
    invoke-static {}, Ls1/u/i;->N0()V

    throw v1

    .line 71
    :cond_1b
    invoke-static {v6}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v6

    if-eqz p2, :cond_1e

    .line 73
    instance-of p2, v6, Ls1/a/a/a/v0/b/v0;

    if-eqz p2, :cond_1e

    .line 74
    sget-object p2, Ls1/a/a/a/v0/m/f0;->a:Ls1/a/a/a/v0/m/f0;

    check-cast v6, Ls1/a/a/a/v0/b/v0;

    invoke-static {v6, v2}, Ls1/a/a/a/v0/m/f0;->b(Ls1/a/a/a/v0/b/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    const-string v0, "$this$isNullable"

    .line 75
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p2}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 77
    iget-boolean v0, p1, Ls1/a/a/a/v0/e/q;->e:Z

    if-eqz v0, :cond_1c

    goto :goto_d

    :cond_1c
    move v0, v3

    goto :goto_e

    :cond_1d
    :goto_d
    move v0, v4

    .line 78
    :goto_e
    invoke-virtual {p2, v0}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    .line 79
    sget-object v2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    invoke-interface {p2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    invoke-static {v5, p2}, Ls1/u/i;->j0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Ls1/a/a/a/v0/b/f1/h$a;->a(Ljava/util/List;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    goto/16 :goto_17

    .line 80
    :cond_1e
    sget-object p2, Ls1/a/a/a/v0/e/z/b;->a:Ls1/a/a/a/v0/e/z/b$b;

    .line 81
    iget v6, p1, Ls1/a/a/a/v0/e/q;->q:I

    const-string v7, "Flags.SUSPEND_TYPE.get(proto.flags)"

    .line 82
    invoke-static {p2, v6, v7}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 83
    iget-boolean v8, p1, Ls1/a/a/a/v0/e/q;->e:Z

    .line 84
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr p2, v6

    if-eqz p2, :cond_20

    if-eq p2, v4, :cond_1f

    goto/16 :goto_15

    .line 85
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    if-ltz p2, :cond_2b

    .line 86
    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v6

    invoke-virtual {v6, p2}, Ls1/a/a/a/v0/a/g;->v(I)Ls1/a/a/a/v0/b/e;

    move-result-object p2

    const-string v6, "functionTypeConstructor.\u2026getSuspendFunction(arity)"

    invoke-static {p2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v6

    const-string p2, "functionTypeConstructor.\u2026on(arity).typeConstructor"

    invoke-static {v6, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v7, v2

    .line 87
    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    goto/16 :goto_16

    :cond_20
    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v6, v0

    move-object v7, v2

    .line 88
    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    const-string v5, "$this$isFunctionType"

    .line 89
    invoke-static {p2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v5

    invoke-interface {v5}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-static {v5}, Ls1/a/a/a/v0/a/f;->c(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/o/c;

    move-result-object v5

    goto :goto_f

    :cond_21
    move-object v5, v1

    :goto_f
    sget-object v6, Ls1/a/a/a/v0/a/o/c;->c:Ls1/a/a/a/v0/a/o/c;

    if-ne v5, v6, :cond_22

    move v5, v4

    goto :goto_10

    :cond_22
    move v5, v3

    :goto_10
    if-nez v5, :cond_23

    goto/16 :goto_15

    .line 91
    :cond_23
    iget-object v5, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 92
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 93
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 94
    invoke-interface {v5}, Ls1/a/a/a/v0/k/b/k;->c()Z

    move-result v5

    .line 95
    invoke-static {p2}, Ls1/a/a/a/v0/a/f;->f(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/y0;

    if-eqz v6, :cond_2b

    invoke-interface {v6}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    if-eqz v6, :cond_2b

    const-string v7, "funType.getValueParamete\u2026ll()?.type ?: return null"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v6}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v7

    invoke-interface {v7}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-static {v7}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v7

    goto :goto_11

    :cond_24
    move-object v7, v1

    .line 97
    :goto_11
    invoke-virtual {v6}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v4, :cond_2c

    .line 98
    invoke-static {v7, v4}, Ls1/a/a/a/v0/a/l;->a(Ls1/a/a/a/v0/f/b;Z)Z

    move-result v8

    if-nez v8, :cond_25

    .line 99
    invoke-static {v7, v3}, Ls1/a/a/a/v0/a/l;->a(Ls1/a/a/a/v0/f/b;Z)Z

    move-result v8

    if-nez v8, :cond_25

    goto :goto_16

    .line 100
    :cond_25
    invoke-virtual {v6}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/y0;

    invoke-interface {v6}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    const-string v8, "continuationArgumentType.arguments.single().type"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v8, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 102
    iget-object v8, v8, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 103
    instance-of v9, v8, Ls1/a/a/a/v0/b/a;

    if-nez v9, :cond_26

    move-object v8, v1

    :cond_26
    check-cast v8, Ls1/a/a/a/v0/b/a;

    if-eqz v8, :cond_27

    .line 104
    invoke-static {v8}, Ls1/a/a/a/v0/j/v/b;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v8

    goto :goto_12

    :cond_27
    move-object v8, v1

    :goto_12
    sget-object v9, Ls1/a/a/a/v0/k/b/a0;->a:Ls1/a/a/a/v0/f/b;

    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 105
    invoke-virtual {p0, p2, v6}, Ls1/a/a/a/v0/k/b/c0;->b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    goto :goto_16

    .line 106
    :cond_28
    iget-boolean v8, p0, Ls1/a/a/a/v0/k/b/c0;->h:Z

    if-nez v8, :cond_2a

    if-eqz v5, :cond_29

    xor-int/2addr v5, v4

    invoke-static {v7, v5}, Ls1/a/a/a/v0/a/l;->a(Ls1/a/a/a/v0/f/b;Z)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_13

    :cond_29
    move v5, v3

    goto :goto_14

    :cond_2a
    :goto_13
    move v5, v4

    :goto_14
    iput-boolean v5, p0, Ls1/a/a/a/v0/k/b/c0;->h:Z

    .line 107
    invoke-virtual {p0, p2, v6}, Ls1/a/a/a/v0/k/b/c0;->b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    goto :goto_16

    :cond_2b
    :goto_15
    move-object p2, v1

    :cond_2c
    :goto_16
    if-eqz p2, :cond_2d

    goto :goto_17

    .line 108
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad suspend function in metadata with constructor: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p2, v2}, Ls1/a/a/a/v0/m/x;->g(Ljava/lang/String;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    const-string v0, "ErrorUtils.createErrorTy\u2026      arguments\n        )"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    .line 110
    :cond_2e
    iget-boolean v8, p1, Ls1/a/a/a/v0/e/q;->e:Z

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v6, v0

    move-object v7, v2

    .line 111
    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    .line 112
    :goto_17
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 113
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v2, "$this$abbreviatedType"

    .line 114
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->l()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 116
    iget-object v1, p1, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    goto :goto_19

    .line 117
    :cond_2f
    iget v2, p1, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v5, 0x800

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_30

    goto :goto_18

    :cond_30
    move v4, v3

    :goto_18
    if-eqz v4, :cond_31

    .line 118
    iget v1, p1, Ls1/a/a/a/v0/e/q;->p:I

    .line 119
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v1

    :cond_31
    :goto_19
    if-eqz v1, :cond_32

    .line 120
    invoke-virtual {p0, v1, v3}, Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {p2, v0}, Ls1/a/a/a/v0/m/o0;->d(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    .line 121
    :cond_32
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->m()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 122
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 123
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 124
    iget p1, p1, Ls1/a/a/a/v0/e/q;->i:I

    .line 125
    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    .line 126
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 127
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 128
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->t:Ls1/a/a/a/v0/b/g1/e;

    .line 129
    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/b/g1/e;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1

    :cond_33
    return-object p2
.end method

.method public final e(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/m/e0;
    .locals 7

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Ls1/a/a/a/v0/e/q;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 4
    iget v1, p1, Ls1/a/a/a/v0/e/q;->f:I

    .line 5
    invoke-interface {v0, v1}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v3}, Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    .line 7
    iget-object v4, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    const-string v5, "$this$flexibleUpperBound"

    .line 9
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeTable"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    iget-object v2, p1, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    goto :goto_1

    .line 12
    :cond_1
    iget v5, p1, Ls1/a/a/a/v0/e/q;->c:I

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 13
    iget v2, p1, Ls1/a/a/a/v0/e/q;->h:I

    .line 14
    invoke-virtual {v4, v2}, Ls1/a/a/a/v0/e/z/e;->a(I)Ls1/a/a/a/v0/e/q;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 15
    :goto_1
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v2, v3}, Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    .line 17
    iget-object v3, p0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 18
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 19
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/j;->k:Ls1/a/a/a/v0/k/b/q;

    .line 20
    invoke-interface {v3, p1, v0, v1, v2}, Ls1/a/a/a/v0/k/b/q;->a(Ls1/a/a/a/v0/e/q;Ljava/lang/String;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    return-object p1

    .line 21
    :cond_4
    invoke-virtual {p0, p1, v3}, Ls1/a/a/a/v0/k/b/c0;->d(Ls1/a/a/a/v0/e/q;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public final f(I)Ls1/a/a/a/v0/m/v0;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/c0;->e:Ls1/a/a/a/v0/k/b/c0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/k/b/c0;->f(I)Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/c0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/c0;->e:Ls1/a/a/a/v0/k/b/c0;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, ". Child of "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/c0;->e:Ls1/a/a/a/v0/k/b/c0;

    iget-object v2, v2, Ls1/a/a/a/v0/k/b/c0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
