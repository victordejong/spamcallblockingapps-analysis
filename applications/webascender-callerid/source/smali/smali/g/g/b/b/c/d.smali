.class public final Lg/g/b/b/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/b/e/a/d;)Lg/g/b/c/n;
    .locals 21

    const-string v0, "$this$toPostEventData"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lg/g/b/c/l;->values()[Lg/g/b/c/l;

    move-result-object v2

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    .line 4
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0, v4}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    sget-object v7, Lg/g/b/c/l;->PHONE_CALL:Lg/g/b/c/l;

    :goto_2
    move-object v9, v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lg/g/b/c/k;->values()[Lg/g/b/c/k;

    move-result-object v2

    .line 8
    array-length v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    .line 9
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0, v4}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v6, v7

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    move-object v10, v6

    goto :goto_5

    .line 10
    :cond_5
    sget-object v0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    move-object v10, v0

    .line 11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->g()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->b()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->c()I

    move-result v13

    .line 14
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->l()Z

    move-result v14

    .line 15
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->j()Z

    move-result v15

    .line 16
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->k()Z

    move-result v16

    .line 17
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->i()J

    move-result-wide v17

    .line 18
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->h()Ljava/lang/String;

    move-result-object v19

    .line 19
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/d;->a()I

    move-result v20

    .line 20
    new-instance v0, Lg/g/b/c/n;

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Lg/g/b/c/n;-><init>(Lg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;IZZZJLjava/lang/String;I)V

    return-object v0
.end method

.method public static final b(Lg/g/b/c/n;)Lg/g/b/b/e/a/d;
    .locals 14

    const-string v0, "$this$toRoomPostEventData"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/e/a/d;

    .line 2
    invoke-virtual {p0}, Lg/g/b/c/n;->h()Lg/g/b/c/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lg/g/b/c/n;->c()Lg/g/b/c/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lg/g/b/c/n;->e()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lg/g/b/c/n;->b()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lg/g/b/c/n;->d()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lg/g/b/c/n;->k()Z

    move-result v7

    .line 8
    invoke-virtual {p0}, Lg/g/b/c/n;->i()Z

    move-result v8

    .line 9
    invoke-virtual {p0}, Lg/g/b/c/n;->j()Z

    move-result v9

    .line 10
    invoke-virtual {p0}, Lg/g/b/c/n;->g()J

    move-result-wide v10

    .line 11
    invoke-virtual {p0}, Lg/g/b/c/n;->f()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual {p0}, Lg/g/b/c/n;->a()I

    move-result v13

    move-object v1, v0

    .line 13
    invoke-direct/range {v1 .. v13}, Lg/g/b/b/e/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZJLjava/lang/String;I)V

    return-object v0
.end method
