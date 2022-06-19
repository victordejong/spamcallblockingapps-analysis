.class public final Ls1/a/a/a/v0/k/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/b/a0;

.field public final b:Ls1/a/a/a/v0/b/b0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/e;->a:Ls1/a/a/a/v0/b/a0;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/e;->b:Ls1/a/a/a/v0/b/b0;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;
    .locals 11

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Ls1/a/a/a/v0/e/b;->c:I

    .line 2
    invoke-static {p2, v0}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/e;->a:Ls1/a/a/a/v0/b/a0;

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/e;->b:Ls1/a/a/a/v0/b/b0;

    invoke-static {v1, v0, v2}, Le/q/f/a/d/a;->r0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/b0;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    .line 4
    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    .line 5
    iget-object v2, p1, Ls1/a/a/a/v0/e/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 6
    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->j(Ls1/a/a/a/v0/b/k;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Ls1/a/a/a/v0/j/g;->m(Ls1/a/a/a/v0/b/k;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->p()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/u/i;->C0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/d;

    if-eqz v2, :cond_7

    .line 8
    invoke-interface {v2}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 9
    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    .line 10
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "it"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    move-object v5, v2

    check-cast v5, Ls1/a/a/a/v0/b/b1;

    .line 13
    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p1, Ls1/a/a/a/v0/e/b;->d:Ljava/util/List;

    const-string v1, "proto.argumentList"

    .line 15
    invoke-static {p1, v1}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Ls1/a/a/a/v0/e/b$b;

    .line 18
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget v5, v2, Ls1/a/a/a/v0/e/b$b;->c:I

    .line 20
    invoke-static {p2, v5}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/b1;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 21
    new-instance v7, Ls1/k;

    .line 22
    iget v8, v2, Ls1/a/a/a/v0/e/b$b;->c:I

    .line 23
    invoke-static {p2, v8}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v8

    invoke-interface {v5}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    const-string v9, "parameter.type"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v2, v2, Ls1/a/a/a/v0/e/b$b;->d:Ls1/a/a/a/v0/e/b$b$c;

    const-string v9, "proto.value"

    .line 25
    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v5, v2, p2}, Ls1/a/a/a/v0/k/b/e;->c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v9

    .line 27
    invoke-virtual {p0, v9, v5, v2}, Ls1/a/a/a/v0/k/b/e;->b(Ls1/a/a/a/v0/j/t/g;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, v9

    :cond_3
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v6, "Unexpected argument value: actual type "

    .line 28
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 29
    iget-object v2, v2, Ls1/a/a/a/v0/e/b$b$c;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    .line 30
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "message"

    .line 31
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v6, Ls1/a/a/a/v0/j/t/l$a;

    invoke-direct {v6, v2}, Ls1/a/a/a/v0/j/t/l$a;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_2
    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    :cond_5
    if-eqz v6, :cond_2

    .line 34
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_6
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 36
    :cond_7
    new-instance p1, Ls1/a/a/a/v0/b/f1/d;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p2

    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    invoke-direct {p1, p2, v1, v0}, Ls1/a/a/a/v0/b/f1/d;-><init>(Ls1/a/a/a/v0/m/e0;Ljava/util/Map;Ls1/a/a/a/v0/b/r0;)V

    return-object p1
.end method

.method public final b(Ls1/a/a/a/v0/j/t/g;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/e/b$b$c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Ls1/a/a/a/v0/e/b$b$c;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_6

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    .line 3
    :goto_0
    iget-object p3, p0, Ls1/a/a/a/v0/k/b/e;->a:Ls1/a/a/a/v0/b/a0;

    invoke-virtual {p1, p3}, Ls1/a/a/a/v0/j/t/g;->a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_3

    .line 4
    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/j/t/b;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    iget-object v3, p3, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/e;->a:Ls1/a/a/a/v0/b/a0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/a/g;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    const-string v0, "builtIns.getArrayElementType(expectedType)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p1, Ls1/a/a/a/v0/j/t/b;

    .line 12
    iget-object v0, p1, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ls1/u/i;->E(Ljava/util/Collection;)Ls1/d0/i;

    move-result-object v0

    .line 14
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v0}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    move-object v3, v0

    check-cast v3, Ls1/d0/h;

    .line 16
    iget-boolean v3, v3, Ls1/d0/h;->b:Z

    if-eqz v3, :cond_8

    .line 17
    move-object v3, v0

    check-cast v3, Ls1/u/z;

    invoke-virtual {v3}, Ls1/u/z;->a()I

    move-result v3

    .line 18
    iget-object v4, p1, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 19
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/j/t/g;

    .line 20
    iget-object v5, p3, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/e/b$b$c;

    const-string v5, "value.getArrayElement(i)"

    .line 21
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p2, v3}, Ls1/a/a/a/v0/k/b/e;->b(Ls1/a/a/a/v0/j/t/g;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 22
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_6
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    instance-of p2, p1, Ls1/a/a/a/v0/b/e;

    if-nez p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    check-cast p1, Ls1/a/a/a/v0/b/e;

    if-eqz p1, :cond_8

    .line 25
    sget-object p2, Ls1/a/a/a/v0/a/g;->e:Ls1/a/a/a/v0/f/e;

    .line 26
    sget-object p2, Ls1/a/a/a/v0/a/k$a;->W:Ls1/a/a/a/v0/f/c;

    invoke-static {p1, p2}, Ls1/a/a/a/v0/a/g;->c(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/f/c;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    :goto_2
    move v1, v2

    :cond_9
    :goto_3
    return v1
.end method

.method public final c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/j/t/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/e/b$b$c;",
            "Ls1/a/a/a/v0/e/z/c;",
            ")",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "expectedType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/e/z/b;->M:Ls1/a/a/a/v0/e/z/b$b;

    .line 2
    iget v2, p2, Ls1/a/a/a/v0/e/b$b$c;->m:I

    const-string v3, "Flags.IS_UNSIGNED.get(value.flags)"

    .line 3
    invoke-static {v1, v2, v3}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v1

    .line 4
    iget-object v2, p2, Ls1/a/a/a/v0/e/b$b$c;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 6
    :pswitch_0
    iget-object p2, p2, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    const-string v1, "value.arrayElementList"

    .line 7
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ls1/a/a/a/v0/e/b$b$c;

    .line 11
    iget-object v3, p0, Ls1/a/a/a/v0/k/b/e;->a:Ls1/a/a/a/v0/b/a0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    const-string v4, "builtIns.anyType"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "it"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2, p3}, Ls1/a/a/a/v0/k/b/e;->c(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/e/b$b$c;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "type"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p2, Ls1/a/a/a/v0/j/t/b;

    new-instance p3, Ls1/a/a/a/v0/j/t/h;

    invoke-direct {p3, p1}, Ls1/a/a/a/v0/j/t/h;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-direct {p2, v1, p3}, Ls1/a/a/a/v0/j/t/b;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    goto/16 :goto_4

    .line 15
    :pswitch_1
    new-instance p1, Ls1/a/a/a/v0/j/t/a;

    .line 16
    iget-object p2, p2, Ls1/a/a/a/v0/e/b$b$c;->j:Ls1/a/a/a/v0/e/b;

    const-string v0, "value.annotation"

    .line 17
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p2

    invoke-direct {p1, p2}, Ls1/a/a/a/v0/j/t/a;-><init>(Ls1/a/a/a/v0/b/f1/c;)V

    goto/16 :goto_3

    .line 18
    :pswitch_2
    new-instance p1, Ls1/a/a/a/v0/j/t/k;

    .line 19
    iget v0, p2, Ls1/a/a/a/v0/e/b$b$c;->h:I

    .line 20
    invoke-static {p3, v0}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 21
    iget p2, p2, Ls1/a/a/a/v0/e/b$b$c;->i:I

    .line 22
    invoke-static {p3, p2}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ls1/a/a/a/v0/j/t/k;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    goto/16 :goto_3

    .line 23
    :pswitch_3
    new-instance p1, Ls1/a/a/a/v0/j/t/s;

    .line 24
    iget v0, p2, Ls1/a/a/a/v0/e/b$b$c;->h:I

    .line 25
    invoke-static {p3, v0}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p3

    .line 26
    iget p2, p2, Ls1/a/a/a/v0/e/b$b$c;->l:I

    .line 27
    invoke-direct {p1, p3, p2}, Ls1/a/a/a/v0/j/t/s;-><init>(Ls1/a/a/a/v0/f/a;I)V

    goto/16 :goto_3

    .line 28
    :pswitch_4
    new-instance p1, Ls1/a/a/a/v0/j/t/w;

    .line 29
    iget p2, p2, Ls1/a/a/a/v0/e/b$b$c;->g:I

    .line 30
    invoke-interface {p3, p2}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls1/a/a/a/v0/j/t/w;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :pswitch_5
    new-instance p1, Ls1/a/a/a/v0/j/t/c;

    .line 32
    iget-wide p2, p2, Ls1/a/a/a/v0/e/b$b$c;->d:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 33
    :goto_1
    invoke-direct {p1, p2}, Ls1/a/a/a/v0/j/t/c;-><init>(Z)V

    goto :goto_3

    .line 34
    :pswitch_6
    new-instance p1, Ls1/a/a/a/v0/j/t/j;

    .line 35
    iget-wide p2, p2, Ls1/a/a/a/v0/e/b$b$c;->f:D

    .line 36
    invoke-direct {p1, p2, p3}, Ls1/a/a/a/v0/j/t/j;-><init>(D)V

    goto :goto_3

    .line 37
    :pswitch_7
    new-instance p1, Ls1/a/a/a/v0/j/t/m;

    .line 38
    iget p2, p2, Ls1/a/a/a/v0/e/b$b$c;->e:F

    .line 39
    invoke-direct {p1, p2}, Ls1/a/a/a/v0/j/t/m;-><init>(F)V

    goto :goto_3

    .line 40
    :pswitch_8
    iget-wide p1, p2, Ls1/a/a/a/v0/e/b$b$c;->d:J

    if-eqz v1, :cond_2

    .line 41
    new-instance p3, Ls1/a/a/a/v0/j/t/z;

    .line 42
    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/j/t/z;-><init>(J)V

    goto :goto_2

    :cond_2
    new-instance p3, Ls1/a/a/a/v0/j/t/t;

    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/j/t/t;-><init>(J)V

    :goto_2
    move-object p2, p3

    goto :goto_4

    .line 43
    :pswitch_9
    iget-wide p1, p2, Ls1/a/a/a/v0/e/b$b$c;->d:J

    long-to-int p1, p1

    if-eqz v1, :cond_3

    .line 44
    new-instance p2, Ls1/a/a/a/v0/j/t/y;

    .line 45
    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/y;-><init>(I)V

    goto :goto_4

    :cond_3
    new-instance p2, Ls1/a/a/a/v0/j/t/n;

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/n;-><init>(I)V

    goto :goto_4

    .line 46
    :pswitch_a
    iget-wide p1, p2, Ls1/a/a/a/v0/e/b$b$c;->d:J

    long-to-int p1, p1

    int-to-short p1, p1

    if-eqz v1, :cond_4

    .line 47
    new-instance p2, Ls1/a/a/a/v0/j/t/a0;

    .line 48
    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/a0;-><init>(S)V

    goto :goto_4

    :cond_4
    new-instance p2, Ls1/a/a/a/v0/j/t/v;

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/v;-><init>(S)V

    goto :goto_4

    .line 49
    :pswitch_b
    new-instance p1, Ls1/a/a/a/v0/j/t/e;

    .line 50
    iget-wide p2, p2, Ls1/a/a/a/v0/e/b$b$c;->d:J

    long-to-int p2, p2

    int-to-char p2, p2

    .line 51
    invoke-direct {p1, p2}, Ls1/a/a/a/v0/j/t/e;-><init>(C)V

    :goto_3
    move-object p2, p1

    goto :goto_4

    .line 52
    :pswitch_c
    iget-wide p1, p2, Ls1/a/a/a/v0/e/b$b$c;->d:J

    long-to-int p1, p1

    int-to-byte p1, p1

    if-eqz v1, :cond_5

    .line 53
    new-instance p2, Ls1/a/a/a/v0/j/t/x;

    .line 54
    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/x;-><init>(B)V

    goto :goto_4

    :cond_5
    new-instance p2, Ls1/a/a/a/v0/j/t/d;

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/d;-><init>(B)V

    :goto_4
    return-object p2

    :cond_6
    :goto_5
    const-string p3, "Unsupported annotation argument type: "

    .line 55
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 56
    iget-object p2, p2, Ls1/a/a/a/v0/e/b$b$c;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
