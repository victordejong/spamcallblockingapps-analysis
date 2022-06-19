.class public final Ls1/a/a/a/z$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/k0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/z;


# direct methods
.method public constructor <init>(Ls1/a/a/a/z;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/z$d;->b:Ls1/a/a/a/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ls1/a/a/a/z$d;->b:Ls1/a/a/a/z;

    .line 2
    iget-object v2, v1, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    .line 3
    iget-object v3, v1, Ls1/a/a/a/z;->e:Ljava/lang/String;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/z;->f:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "signature"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v4, Ls1/a/a/a/n;->b:Ls1/f0/h;

    invoke-virtual {v4, v1}, Ls1/f0/h;->c(Ljava/lang/CharSequence;)Ls1/f0/f;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 7
    check-cast v4, Ls1/f0/g;

    const-string v1, "match"

    .line 8
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ls1/f0/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ls1/a/a/a/n;->h(I)Ls1/a/a/a/v0/b/k0;

    move-result-object v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 11
    :cond_0
    new-instance v3, Ls1/a/a/a/i0;

    const-string v4, "Local property #"

    const-string v5, " not found in "

    invoke-static {v4, v1, v5}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_1
    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    const-string v6, "Name.identifier(name)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ls1/a/a/a/n;->l(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;

    move-result-object v4

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ls1/a/a/a/v0/b/k0;

    .line 15
    sget-object v10, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    invoke-static {v9}, Ls1/a/a/a/q0;->c(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/f;

    move-result-object v9

    invoke-virtual {v9}, Ls1/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v8, ") not resolved in "

    const-string v9, "\' (JVM signature: "

    const-string v10, "Property \'"

    if-nez v4, :cond_a

    .line 17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_9

    .line 18
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 20
    move-object v12, v11

    check-cast v12, Ls1/a/a/a/v0/b/k0;

    .line 21
    invoke-interface {v12}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v12

    .line 22
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 23
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_4
    check-cast v13, Ljava/util/List;

    .line 26
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_5
    sget-object v7, Ls1/a/a/a/q;->a:Ls1/a/a/a/q;

    invoke-static {v4, v7}, Le/q/f/a/d/a;->l3(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const-string v7, "properties\n             \u2026                }).values"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v4}, Ls1/u/i;->P(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    .line 29
    check-cast v4, Ljava/util/List;

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_6

    const-string v1, "mostVisibleProperties"

    .line 31
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/b/k0;

    goto :goto_4

    .line 32
    :cond_6
    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ls1/a/a/a/n;->l(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Ls1/a/a/a/p;->b:Ls1/a/a/a/p;

    const/16 v18, 0x1e

    const-string v12, "\n"

    invoke-static/range {v11 .. v18}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    .line 33
    new-instance v6, Ls1/a/a/a/i0;

    .line 34
    invoke-static {v10, v3, v9, v1, v8}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_8

    const-string v2, " no members found"

    goto :goto_3

    :cond_8
    const/16 v2, 0xa

    invoke-static {v2, v4}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v6, v1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v6

    .line 37
    :cond_9
    invoke-static {v7}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/b/k0;

    :goto_4
    return-object v3

    .line 38
    :cond_a
    new-instance v4, Ls1/a/a/a/i0;

    invoke-static {v10, v3, v9, v1, v8}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v4
.end method
