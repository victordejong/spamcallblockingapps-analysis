.class public final Ls1/a/a/a/v0/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/h$a;)Z
    .locals 12

    sget-object v0, Ls1/a/a/a/v0/m/h$a$c;->a:Ls1/a/a/a/v0/m/h$a$c;

    const-string v1, "$this$hasNotNullSupertype"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "supertypesPolicy"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/h;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/h;->K(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 2
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/h;->I()V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    .line 4
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 5
    iget-object v4, p0, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    .line 6
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 8
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_d

    .line 9
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-gt v5, v6, :cond_c

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/m/n1/i;

    const-string v6, "current"

    .line 11
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    move-object v6, p0

    check-cast v6, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v6, v5}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    goto :goto_2

    :cond_6
    move-object v7, p2

    .line 13
    :goto_2
    invoke-static {v7, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    .line 14
    invoke-virtual {v6, v5}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v5

    invoke-virtual {v6, v5}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/m/n1/h;

    .line 15
    invoke-virtual {v7, p0, v8}, Ls1/a/a/a/v0/m/h$a;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v8

    .line 16
    invoke-virtual {p0, v8}, Ls1/a/a/a/v0/m/h;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6, v8}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    invoke-virtual {p0, v8}, Ls1/a/a/a/v0/m/h;->K(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    move v9, v3

    goto :goto_5

    :cond_a
    move v9, v2

    :goto_5
    if-eqz v9, :cond_b

    .line 17
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/h;->D()V

    :goto_6
    move v2, v3

    goto :goto_7

    .line 18
    :cond_b
    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    const-string p0, "Too many supertypes for type: "

    const-string p2, ". Supertypes = "

    .line 19
    invoke-static {p0, p1, p2}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_d
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/h;->D()V

    :goto_7
    return v2
.end method
