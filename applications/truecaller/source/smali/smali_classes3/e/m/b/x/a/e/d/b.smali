.class public abstract Le/m/b/x/a/e/d/b;
.super Le/m/b/x/a/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/b/x/a/e/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/m/b/x/a/e/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/b/x/a/e/d/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object v6, v0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v1, Le/m/b/x/b/d0/a;

    .line 2
    iget-object v2, p1, Le/m/b/x/a/e/a;->e:Le/m/b/x/d/s;

    .line 3
    check-cast v2, Le/m/b/x/c/e;

    .line 4
    iget-object v2, v2, Le/m/b/x/c/e;->a:Le/m/b/x/c/c;

    .line 5
    invoke-direct {v1, v2, p4}, Le/m/b/x/b/d0/a;-><init>(Le/m/b/x/c/c;Ljava/lang/Object;)V

    .line 6
    iget-object v2, p1, Le/m/b/x/a/e/a;->e:Le/m/b/x/d/s;

    .line 7
    check-cast v2, Le/m/b/x/c/e;

    .line 8
    iget-object v2, v2, Le/m/b/x/c/e;->b:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "data"

    .line 10
    :goto_0
    iput-object v0, v1, Le/m/b/x/b/d0/a;->e:Ljava/lang/String;

    move-object v6, v1

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 11
    invoke-direct/range {v2 .. v7}, Le/m/b/x/a/e/c;-><init>(Le/m/b/x/a/e/a;Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/g;Ljava/lang/Class;)V

    .line 12
    iput-object p4, p0, Le/m/b/x/a/e/d/b;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/x/a/e/d/b;->q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l()Le/m/b/x/a/e/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/e/d/b;->p()Le/m/b/x/a/e/d/a;

    move-result-object v0

    return-object v0
.end method

.method public n(Le/m/b/x/b/q;)Ljava/io/IOException;
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/e/d/b;->p()Le/m/b/x/a/e/d/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/m/b/x/a/e/a;->e:Le/m/b/x/d/s;

    .line 3
    check-cast v0, Le/m/b/x/c/e;

    .line 4
    iget-object v0, v0, Le/m/b/x/c/e;->a:Le/m/b/x/c/c;

    .line 5
    sget v1, Le/m/b/x/a/c/b;->b:I

    .line 6
    new-instance v1, Le/m/b/x/b/r$a;

    .line 7
    iget v2, p1, Le/m/b/x/b/q;->f:I

    .line 8
    iget-object v3, p1, Le/m/b/x/b/q;->g:Ljava/lang/String;

    .line 9
    iget-object v4, p1, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 10
    iget-object v4, v4, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    .line 11
    invoke-direct {v1, v2, v3, v4}, Le/m/b/x/b/r$a;-><init>(ILjava/lang/String;Le/m/b/x/b/k;)V

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Le/m/b/x/b/q;->e()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "application/json; charset=UTF-8"

    .line 14
    iget-object v4, p1, Le/m/b/x/b/q;->c:Ljava/lang/String;

    .line 15
    sget-object v5, Le/m/b/x/b/m;->e:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    .line 16
    new-instance v5, Le/m/b/x/b/m;

    invoke-direct {v5, v3}, Le/m/b/x/b/m;-><init>(Ljava/lang/String;)V

    new-instance v3, Le/m/b/x/b/m;

    invoke-direct {v3, v4}, Le/m/b/x/b/m;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5, v3}, Le/m/b/x/b/m;->b(Le/m/b/x/b/m;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {p1}, Le/m/b/x/b/q;->b()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v3, :cond_7

    .line 19
    :try_start_1
    invoke-virtual {p1}, Le/m/b/x/b/q;->b()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/m/b/x/c/c;->b(Ljava/io/InputStream;)Le/m/b/x/c/f;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    move-object v3, v0

    check-cast v3, Le/m/b/x/c/j/c;

    .line 21
    iget-object v3, v3, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    if-nez v3, :cond_1

    .line 22
    invoke-virtual {v0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    const-string v3, "error"

    .line 23
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/m/b/x/c/f;->I(Ljava/util/Set;)Ljava/lang/String;

    .line 24
    move-object v3, v0

    check-cast v3, Le/m/b/x/c/j/c;

    .line 25
    iget-object v3, v3, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 26
    sget-object v4, Le/m/b/x/c/i;->f:Le/m/b/x/c/i;

    if-ne v3, v4, :cond_2

    .line 27
    move-object v3, v0

    check-cast v3, Le/m/b/x/c/j/c;

    .line 28
    iget-object v3, v3, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_2
    move-object v3, v0

    check-cast v3, Le/m/b/x/c/j/c;

    .line 30
    iget-object v3, v3, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 31
    sget-object v4, Le/m/b/x/c/i;->c:Le/m/b/x/c/i;

    if-ne v3, v4, :cond_3

    .line 32
    const-class v3, Le/m/b/x/a/c/a;

    invoke-virtual {v0, v3}, Le/m/b/x/c/f;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/b/x/a/c/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-virtual {v3}, Le/m/b/x/c/b;->k()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_1
    if-nez v2, :cond_8

    .line 34
    :try_start_4
    check-cast v0, Le/m/b/x/c/j/c;

    .line 35
    iget-object v0, v0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    move-object v4, v3

    move-object v3, v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v2

    move-object v3, v0

    .line 36
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_4

    .line 37
    :try_start_6
    invoke-virtual {p1}, Le/m/b/x/b/q;->d()V

    goto :goto_7

    :cond_4
    if-nez v3, :cond_9

    .line 38
    check-cast v0, Le/m/b/x/c/j/c;

    .line 39
    iget-object v0, v0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V

    goto :goto_7

    :catchall_2
    move-exception v4

    :goto_3
    if-eqz v0, :cond_5

    if-nez v3, :cond_6

    .line 40
    check-cast v0, Le/m/b/x/c/j/c;

    .line 41
    iget-object v0, v0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V

    goto :goto_4

    .line 42
    :cond_5
    invoke-virtual {p1}, Le/m/b/x/b/q;->d()V

    .line 43
    :cond_6
    :goto_4
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_5

    .line 44
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Le/m/b/x/b/q;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v3, v2

    move-object v2, v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v3, v2

    .line 45
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 46
    :cond_9
    :goto_7
    invoke-static {p1}, Le/m/b/x/b/r;->a(Le/m/b/x/b/q;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 47
    invoke-static {v2}, Ln3/g0/y;->isNullOrEmpty1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 48
    sget-object v0, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iput-object v2, v1, Le/m/b/x/b/r$a;->d:Ljava/lang/String;

    .line 50
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    iput-object p1, v1, Le/m/b/x/b/r$a;->e:Ljava/lang/String;

    .line 52
    new-instance p1, Le/m/b/x/a/c/b;

    invoke-direct {p1, v1, v3}, Le/m/b/x/a/c/b;-><init>(Le/m/b/x/b/r$a;Le/m/b/x/a/c/a;)V

    return-object p1
.end method

.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/x/a/e/d/b;->q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;

    move-result-object p1

    return-object p1
.end method

.method public p()Le/m/b/x/a/e/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 2
    check-cast v0, Le/m/b/x/a/e/d/a;

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Le/m/b/x/a/e/d/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/a/e/c;->o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;

    move-result-object p1

    check-cast p1, Le/m/b/x/a/e/d/b;

    return-object p1
.end method
