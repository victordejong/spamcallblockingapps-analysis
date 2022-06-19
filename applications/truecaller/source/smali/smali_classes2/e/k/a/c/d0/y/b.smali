.class public Le/k/a/c/d0/y/b;
.super Le/k/a/c/d0/d;
.source "SourceFile"


# instance fields
.field public final y:Le/k/a/c/d0/d;

.field public final z:[Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/d;[Le/k/a/c/d0/u;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Le/k/a/c/d0/d;->q:Z

    invoke-direct {p0, p1, v0}, Le/k/a/c/d0/d;-><init>(Le/k/a/c/d0/d;Z)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/b;->y:Le/k/a/c/d0/d;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    return-void
.end method


# virtual methods
.method public D0(Le/k/a/c/d0/y/c;)Le/k/a/c/d0/d;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/b;

    iget-object v1, p0, Le/k/a/c/d0/y/b;->y:Le/k/a/c/d0/d;

    invoke-virtual {v1, p1}, Le/k/a/c/d0/d;->D0(Le/k/a/c/d0/y/c;)Le/k/a/c/d0/d;

    move-result-object p1

    iget-object v1, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    invoke-direct {v0, p1, v1}, Le/k/a/c/d0/y/b;-><init>(Le/k/a/c/d0/d;[Le/k/a/c/d0/u;)V

    return-object v0
.end method

.method public E0(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/d0/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Le/k/a/c/d0/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/d0/y/b;

    iget-object v1, p0, Le/k/a/c/d0/y/b;->y:Le/k/a/c/d0/d;

    invoke-virtual {v1, p1, p2}, Le/k/a/c/d0/d;->E0(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/d0/d;

    move-result-object p1

    iget-object p2, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    invoke-direct {v0, p1, p2}, Le/k/a/c/d0/y/b;-><init>(Le/k/a/c/d0/d;[Le/k/a/c/d0/u;)V

    return-object v0
.end method

.method public F0(Z)Le/k/a/c/d0/d;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/b;

    iget-object v1, p0, Le/k/a/c/d0/y/b;->y:Le/k/a/c/d0/d;

    invoke-virtual {v1, p1}, Le/k/a/c/d0/d;->F0(Z)Le/k/a/c/d0/d;

    move-result-object p1

    iget-object v1, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    invoke-direct {v0, p1, v1}, Le/k/a/c/d0/y/b;-><init>(Le/k/a/c/d0/d;[Le/k/a/c/d0/u;)V

    return-object v0
.end method

.method public G0(Le/k/a/c/d0/y/v;)Le/k/a/c/d0/d;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/b;

    iget-object v1, p0, Le/k/a/c/d0/y/b;->y:Le/k/a/c/d0/d;

    invoke-virtual {v1, p1}, Le/k/a/c/d0/d;->G0(Le/k/a/c/d0/y/v;)Le/k/a/c/d0/d;

    move-result-object p1

    iget-object v1, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    invoke-direct {v0, p1, v1}, Le/k/a/c/d0/y/b;-><init>(Le/k/a/c/d0/d;[Le/k/a/c/d0/u;)V

    return-object v0
.end method

.method public J0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v3

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Le/k/a/c/d0/d;->d:Le/k/a/c/i;

    .line 4
    invoke-static {v1}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v5, "Cannot deserialize a POJO (of type %s) from non-Array representation (token: %s): type/property designed to be serialized as JSON Array"

    move-object v1, p2

    move-object v4, p1

    .line 5
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/g;->I(Le/k/a/c/i;Le/k/a/b/m;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2
    iget-boolean v0, p0, Le/k/a/c/d0/d;->k:Z

    const-string v2, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_9

    .line 3
    iget-boolean v0, p0, Le/k/a/c/d0/d;->j:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/d;->w0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {v0, p2}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Le/k/a/b/j;->t2(Ljava/lang/Object;)V

    .line 7
    iget-object v5, p0, Le/k/a/c/d0/d;->m:[Le/k/a/c/d0/y/h0;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {p0, p2, v0}, Le/k/a/c/d0/d;->C0(Le/k/a/c/g;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-boolean v5, p0, Le/k/a/c/d0/d;->r:Z

    if-eqz v5, :cond_2

    .line 10
    iget-object v5, p2, Le/k/a/c/g;->f:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 11
    :goto_0
    iget-object v6, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    .line 12
    array-length v7, v6

    move v8, v3

    .line 13
    :goto_1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v9

    sget-object v10, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v9, v10, :cond_3

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_3
    if-ne v8, v7, :cond_6

    .line 14
    iget-boolean v5, p0, Le/k/a/c/d0/d;->q:Z

    if-eqz v5, :cond_5

    .line 15
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    .line 16
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p2

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne p2, v1, :cond_4

    goto :goto_2

    :goto_3
    return-object p1

    :cond_5
    new-array p1, v4, [Ljava/lang/Object;

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    .line 18
    invoke-virtual {p2, p0, v10, v2, p1}, Le/k/a/c/g;->f0(Le/k/a/c/j;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 19
    :cond_6
    aget-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    if-eqz v9, :cond_8

    if-eqz v5, :cond_7

    .line 20
    invoke-virtual {v9, v5}, Le/k/a/c/d0/u;->C(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 21
    :cond_7
    :try_start_0
    invoke-virtual {v9, p1, p2, v0}, Le/k/a/c/d0/u;->i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    iget-object v2, v9, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 23
    iget-object v2, v2, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p1, v0, v2, p2}, Le/k/a/c/d0/d;->H0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Le/k/a/c/g;)V

    throw v1

    .line 25
    :cond_8
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    goto :goto_1

    .line 26
    :cond_9
    iget-object v0, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {v0, p2}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Le/k/a/b/j;->t2(Ljava/lang/Object;)V

    .line 28
    iget-object v5, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    .line 29
    array-length v6, v5

    move v7, v3

    .line 30
    :goto_4
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v8

    sget-object v9, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v8, v9, :cond_a

    return-object v0

    :cond_a
    if-ne v7, v6, :cond_d

    .line 31
    iget-boolean v5, p0, Le/k/a/c/d0/d;->q:Z

    if-nez v5, :cond_c

    sget-object v5, Le/k/a/c/h;->g:Le/k/a/c/h;

    invoke-virtual {p2, v5}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    new-array p1, v4, [Ljava/lang/Object;

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    .line 33
    invoke-virtual {p2, p0, v9, v2, p1}, Le/k/a/c/g;->f0(Le/k/a/c/j;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 34
    :cond_c
    :goto_5
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    .line 35
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p2

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne p2, v1, :cond_c

    return-object v0

    .line 36
    :cond_d
    aget-object v8, v5, v7

    if-eqz v8, :cond_e

    .line 37
    :try_start_1
    invoke-virtual {v8, p1, p2, v0}, Le/k/a/c/d0/u;->i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 38
    iget-object v2, v8, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 39
    iget-object v2, v2, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1, v0, v2, p2}, Le/k/a/c/d0/d;->H0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Le/k/a/c/g;)V

    throw v1

    .line 41
    :cond_e
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 42
    :cond_f
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/y/b;->J0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    throw v1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Le/k/a/b/j;->t2(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/d;->m:[Le/k/a/c/d0/y/h0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p2, p3}, Le/k/a/c/d0/d;->C0(Le/k/a/c/g;Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    .line 7
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    sget-object v6, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v5, v6, :cond_1

    return-object p3

    :cond_1
    if-ne v4, v2, :cond_4

    .line 8
    iget-boolean v0, p0, Le/k/a/c/d0/d;->q:Z

    if-nez v0, :cond_3

    sget-object v0, Le/k/a/c/h;->g:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    const-string p3, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    .line 10
    invoke-virtual {p2, p0, v6, p3, p1}, Le/k/a/c/g;->f0(Le/k/a/c/j;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    .line 12
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p2

    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne p2, v0, :cond_3

    return-object p3

    .line 13
    :cond_4
    aget-object v5, v0, v4

    if-eqz v5, :cond_5

    .line 14
    :try_start_0
    invoke-virtual {v5, p1, p2, p3}, Le/k/a/c/d0/u;->i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    iget-object v0, v5, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 16
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p3, v0, p2}, Le/k/a/c/d0/d;->H0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Le/k/a/c/g;)V

    throw v1

    .line 18
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/y/b;->J0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    throw v1
.end method

.method public final n0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/d;->i:Le/k/a/c/d0/y/y;

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/d;->w:Le/k/a/c/d0/y/v;

    .line 3
    new-instance v2, Le/k/a/c/d0/y/b0;

    iget v3, v0, Le/k/a/c/d0/y/y;->a:I

    invoke-direct {v2, p1, p2, v3, v1}, Le/k/a/c/d0/y/b0;-><init>(Le/k/a/b/j;Le/k/a/c/g;ILe/k/a/c/d0/y/v;)V

    .line 4
    iget-object v1, p0, Le/k/a/c/d0/y/b;->z:[Le/k/a/c/d0/u;

    .line 5
    array-length v3, v1

    .line 6
    iget-boolean v4, p0, Le/k/a/c/d0/d;->r:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p2, Le/k/a/c/g;->f:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/4 v6, 0x0

    move-object v7, v5

    move v8, v6

    .line 8
    :goto_1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v9

    sget-object v10, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v9, v10, :cond_9

    if-ge v8, v3, :cond_1

    .line 9
    aget-object v9, v1, v8

    goto :goto_2

    :cond_1
    move-object v9, v5

    :goto_2
    if-nez v9, :cond_2

    .line 10
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    goto/16 :goto_3

    :cond_2
    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v9, v4}, Le/k/a/c/d0/u;->C(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 12
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    .line 13
    :try_start_0
    invoke-virtual {v9, p1, p2, v7}, Le/k/a/c/d0/u;->i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    iget-object v0, v9, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 15
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1, v7, v0, p2}, Le/k/a/c/d0/d;->H0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Le/k/a/c/g;)V

    throw v5

    .line 17
    :cond_4
    iget-object v10, v9, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 18
    iget-object v10, v10, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v10}, Le/k/a/c/d0/y/y;->c(Ljava/lang/String;)Le/k/a/c/d0/u;

    move-result-object v11

    .line 20
    invoke-virtual {v2, v10}, Le/k/a/c/d0/y/b0;->d(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v11, :cond_7

    .line 21
    invoke-virtual {v11, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v11, v9}, Le/k/a/c/d0/y/b0;->b(Le/k/a/c/d0/u;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 22
    :try_start_1
    invoke-virtual {v0, p2, v2}, Le/k/a/c/d0/y/y;->a(Le/k/a/c/g;Le/k/a/c/d0/y/b0;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    invoke-virtual {p1, v7}, Le/k/a/b/j;->t2(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, p0, Le/k/a/c/d0/d;->d:Le/k/a/c/i;

    .line 25
    iget-object v11, v10, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v9, v11, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    invoke-static {v10}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    .line 27
    invoke-static {v7}, Le/k/a/c/n0/g;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "Cannot support implicit polymorphic deserialization for POJOs-as-Arrays style: nominal type %s, actual type %s"

    .line 28
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v10, p1}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    :catch_1
    move-exception p1

    .line 29
    iget-object v0, p0, Le/k/a/c/d0/d;->d:Le/k/a/c/i;

    .line 30
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 31
    invoke-virtual {p0, p1, v0, v10, p2}, Le/k/a/c/d0/d;->H0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Le/k/a/c/g;)V

    throw v5

    .line 32
    :cond_7
    invoke-virtual {v9, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v10

    .line 33
    new-instance v11, Le/k/a/c/d0/y/a0$c;

    iget-object v12, v2, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    invoke-direct {v11, v12, v10, v9}, Le/k/a/c/d0/y/a0$c;-><init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;Le/k/a/c/d0/u;)V

    iput-object v11, v2, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez v7, :cond_a

    .line 34
    :try_start_2
    invoke-virtual {v0, p2, v2}, Le/k/a/c/d0/y/y;->a(Le/k/a/c/g;Le/k/a/c/d0/y/b0;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 35
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/d;->I0(Ljava/lang/Throwable;Le/k/a/c/g;)Ljava/lang/Object;

    throw v5

    :cond_a
    :goto_4
    return-object v7
.end method

.method public q(Le/k/a/c/n0/s;)Le/k/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/s;",
            ")",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/b;->y:Le/k/a/c/d0/d;

    invoke-virtual {v0, p1}, Le/k/a/c/j;->q(Le/k/a/c/n0/s;)Le/k/a/c/j;

    move-result-object p1

    return-object p1
.end method

.method public r0()Le/k/a/c/d0/d;
    .locals 0

    return-object p0
.end method
