.class public final Ls1/a/a/a/v0/m/l1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/l1/r$a;
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/l1/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/r;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/l1/r;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/l1/r;->a:Ls1/a/a/a/v0/m/l1/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ls1/z/b/p;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/m/l0;",
            ">;",
            "Ls1/z/b/p<",
            "-",
            "Ls1/a/a/a/v0/m/l0;",
            "-",
            "Ls1/a/a/a/v0/m/l0;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/l0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "filteredTypes.iterator()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/m/l0;

    if-eq v5, v1, :cond_3

    const-string v6, "lower"

    .line 7
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "upper"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v5, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v4

    :goto_3
    if-eqz v3, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final b(Ljava/util/List;)Ls1/a/a/a/v0/m/l0;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/l0;",
            ">;)",
            "Ls1/a/a/a/v0/m/l0;"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    instance-of v4, v4, Ls1/a/a/a/v0/m/c0;

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    invoke-interface {v4}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "type.constructor.supertypes"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Ls1/a/a/a/v0/m/e0;

    const-string v7, "it"

    .line 9
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ls1/a/a/a/v0/f/d;->X3(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v6

    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v3}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v6

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Ls1/a/a/a/v0/m/l1/r$a;->a:Ls1/a/a/a/v0/m/l1/r$a;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/m/i1;

    .line 14
    invoke-virtual {p1, v4}, Ls1/a/a/a/v0/m/l1/r$a;->a(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/l1/r$a;

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_4
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 17
    check-cast v4, Ls1/a/a/a/v0/m/l0;

    .line 18
    sget-object v6, Ls1/a/a/a/v0/m/l1/r$a;->d:Ls1/a/a/a/v0/m/l1/r$a;

    if-ne p1, v6, :cond_6

    .line 19
    instance-of v6, v4, Ls1/a/a/a/v0/m/l1/g;

    if-eqz v6, :cond_5

    check-cast v4, Ls1/a/a/a/v0/m/l1/g;

    const-string v6, "$this$withNotNullProjection"

    .line 20
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v6, Ls1/a/a/a/v0/m/l1/g;

    .line 22
    iget-object v8, v4, Ls1/a/a/a/v0/m/l1/g;->b:Ls1/a/a/a/v0/m/n1/b;

    .line 23
    iget-object v9, v4, Ls1/a/a/a/v0/m/l1/g;->c:Ls1/a/a/a/v0/m/l1/i;

    .line 24
    iget-object v10, v4, Ls1/a/a/a/v0/m/l1/g;->d:Ls1/a/a/a/v0/m/i1;

    .line 25
    iget-object v11, v4, Ls1/a/a/a/v0/m/l1/g;->e:Ls1/a/a/a/v0/b/f1/h;

    .line 26
    iget-boolean v12, v4, Ls1/a/a/a/v0/m/l1/g;->f:Z

    const/4 v13, 0x1

    move-object v7, v6

    .line 27
    invoke-direct/range {v7 .. v13}, Ls1/a/a/a/v0/m/l1/g;-><init>(Ls1/a/a/a/v0/m/n1/b;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/b/f1/h;ZZ)V

    move-object v4, v6

    .line 28
    :cond_5
    invoke-static {v4, v5}, Ls1/a/a/a/v0/m/o0;->c(Ls1/a/a/a/v0/m/l0;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    .line 29
    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v3, :cond_8

    invoke-static {v2}, Ls1/u/i;->A0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    goto/16 :goto_7

    .line 31
    :cond_8
    new-instance p1, Ls1/a/a/a/v0/m/l1/s;

    invoke-direct {p1, v2}, Ls1/a/a/a/v0/m/l1/s;-><init>(Ljava/util/Set;)V

    .line 32
    new-instance p1, Ls1/a/a/a/v0/m/l1/t;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/m/l1/t;-><init>(Ls1/a/a/a/v0/m/l1/r;)V

    invoke-virtual {p0, v2, p1}, Ls1/a/a/a/v0/m/l1/r;->a(Ljava/util/Collection;Ls1/z/b/p;)Ljava/util/Collection;

    move-result-object p1

    .line 33
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    move-object v1, v3

    goto/16 :goto_6

    .line 36
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 39
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/m/l0;

    check-cast v1, Ls1/a/a/a/v0/m/l0;

    if-eqz v1, :cond_d

    if-nez v4, :cond_a

    goto :goto_5

    .line 41
    :cond_a
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v6

    .line 42
    invoke-virtual {v4}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v7

    .line 43
    instance-of v8, v6, Ls1/a/a/a/v0/j/t/o;

    if-eqz v8, :cond_b

    instance-of v9, v7, Ls1/a/a/a/v0/j/t/o;

    if-eqz v9, :cond_b

    .line 44
    check-cast v6, Ls1/a/a/a/v0/j/t/o;

    check-cast v7, Ls1/a/a/a/v0/j/t/o;

    .line 45
    iget-object v1, v6, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    iget-object v4, v7, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    .line 46
    invoke-static {v1, v4}, Ls1/u/i;->f1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 47
    new-instance v4, Ls1/a/a/a/v0/j/t/o;

    .line 48
    iget-wide v7, v6, Ls1/a/a/a/v0/j/t/o;->a:J

    .line 49
    iget-object v6, v6, Ls1/a/a/a/v0/j/t/o;->b:Ls1/a/a/a/v0/b/a0;

    .line 50
    invoke-direct {v4, v7, v8, v6, v1}, Ls1/a/a/a/v0/j/t/o;-><init>(JLs1/a/a/a/v0/b/a0;Ljava/util/Set;)V

    .line 51
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 52
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 54
    invoke-static {v1, v4, v5}, Ls1/a/a/a/v0/m/f0;->d(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/j/t/o;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    goto :goto_4

    :cond_b
    if-eqz v8, :cond_c

    .line 55
    check-cast v6, Ls1/a/a/a/v0/j/t/o;

    .line 56
    iget-object v1, v6, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    .line 57
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v4

    goto :goto_4

    .line 58
    :cond_c
    instance-of v4, v7, Ls1/a/a/a/v0/j/t/o;

    if-eqz v4, :cond_d

    check-cast v7, Ls1/a/a/a/v0/j/t/o;

    .line 59
    iget-object v4, v7, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    .line 60
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    :goto_5
    move-object v1, v3

    goto :goto_4

    .line 61
    :cond_e
    check-cast v1, Ls1/a/a/a/v0/m/l0;

    :goto_6
    if-eqz v1, :cond_f

    move-object p1, v1

    goto :goto_7

    .line 62
    :cond_f
    new-instance v0, Ls1/a/a/a/v0/m/l1/u;

    sget-object v1, Ls1/a/a/a/v0/m/l1/k;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 63
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    .line 65
    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/l1/u;-><init>(Ls1/a/a/a/v0/m/l1/l;)V

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/m/l1/r;->a(Ljava/util/Collection;Ls1/z/b/p;)Ljava/util/Collection;

    move-result-object p1

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    invoke-static {p1}, Ls1/u/i;->A0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    goto :goto_7

    .line 68
    :cond_10
    new-instance p1, Ls1/a/a/a/v0/m/c0;

    invoke-direct {p1, v2}, Ls1/a/a/a/v0/m/c0;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/c0;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_7
    return-object p1

    .line 69
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
