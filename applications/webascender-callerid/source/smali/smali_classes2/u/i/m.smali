.class public final Lu/i/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/b$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/b$b<",
        "Lu/j/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lu/j/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lu/i/b$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu/i/m;->b(Lu/i/b$a;)Lu/j/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lu/i/b$a;)Lu/j/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lu/j/c;->g()Lu/j/c$a;

    move-result-object v0

    iput-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lu/j/c$a;->e()Lu/j/c$a;

    .line 4
    :goto_0
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "traceId"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->o(Ljava/lang/String;)Lu/j/c$a;

    goto :goto_1

    :cond_2
    const-string v1, "id"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->i(Ljava/lang/String;)Lu/j/c$a;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lu/i/b$a;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_1

    :cond_4
    const-string v1, "name"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->j(Ljava/lang/String;)Lu/j/c$a;

    goto :goto_1

    :cond_5
    const-string v1, "parentId"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->l(Ljava/lang/String;)Lu/j/c$a;

    goto :goto_1

    :cond_6
    const-string v1, "timestamp"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/b$a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->m(J)Lu/j/c$a;

    goto :goto_1

    :cond_7
    const-string v1, "duration"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/b$a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->g(J)Lu/j/c$a;

    goto :goto_1

    :cond_8
    const-string v1, "annotations"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {p1}, Lu/i/b$a;->a()V

    .line 23
    :goto_2
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lu/i/m;->c(Lu/i/b$a;)V

    goto :goto_2

    .line 24
    :cond_9
    invoke-virtual {p1}, Lu/i/b$a;->c()V

    goto/16 :goto_1

    :cond_a
    const-string v1, "binaryAnnotations"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 26
    invoke-virtual {p1}, Lu/i/b$a;->a()V

    .line 27
    :goto_3
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lu/i/m;->d(Lu/i/b$a;)V

    goto :goto_3

    .line 28
    :cond_b
    invoke-virtual {p1}, Lu/i/b$a;->c()V

    goto/16 :goto_1

    :cond_c
    const-string v1, "debug"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    invoke-virtual {p1}, Lu/i/b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu/i/m;->a:Lu/j/c$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lu/j/c$a;->f(Ljava/lang/Boolean;)Lu/j/c$a;

    goto/16 :goto_1

    .line 31
    :cond_d
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto/16 :goto_1

    .line 32
    :cond_e
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    .line 33
    iget-object p1, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/j/c$a;->d()Lu/j/c;

    move-result-object p1

    return-object p1
.end method

.method c(Lu/i/b$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lu/i/b$a;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v4, "value"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v4, "endpoint"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lu/i/b$a;->m()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    sget-object v2, Lu/i/r;->b:Lu/i/b$b;

    invoke-interface {v2, p1}, Lu/i/b$b;->a(Lu/i/b$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/f;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    .line 12
    iget-object p1, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4, v1, v2}, Lu/j/c$a;->a(JLjava/lang/String;Lu/f;)Lu/j/c$a;

    return-void

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete annotation at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/i/b$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d(Lu/i/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lu/i/b$a;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_0

    :cond_0
    const-string v5, "key"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v5, "value"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {p1}, Lu/i/b$a;->n()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lu/i/b$a;->l()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {p1}, Lu/i/b$a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_0

    :cond_4
    const-string v5, "endpoint"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    sget-object v3, Lu/i/r;->b:Lu/i/b$b;

    invoke-interface {v3, p1}, Lu/i/b$b;->a(Lu/i/b$a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/f;

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    if-eqz v1, :cond_7

    .line 18
    iget-object p1, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1, v0, v1, v3}, Lu/j/c$a;->b(Ljava/lang/String;Ljava/lang/String;Lu/f;)Lu/j/c$a;

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    const-string p1, "sa"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "ca"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "ma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 21
    :cond_8
    iget-object p1, p0, Lu/i/m;->a:Lu/j/c$a;

    invoke-virtual {p1, v0, v3}, Lu/j/c$a;->c(Ljava/lang/String;Lu/f;)Lu/j/c$a;

    :cond_9
    :goto_1
    return-void

    .line 22
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No key at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/i/b$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lu/i/h;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/i/h;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lu/j/d;->c()Lu/j/d;

    move-result-object v0

    .line 3
    new-instance v2, Lu/i/b$a;

    invoke-direct {v2, p1}, Lu/i/b$a;-><init>(Lu/i/h;)V

    .line 4
    :try_start_0
    invoke-virtual {v2}, Lu/i/b$a;->a()V

    .line 5
    invoke-virtual {v2}, Lu/i/b$a;->f()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lu/i/b$a;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Lu/i/m;->b(Lu/i/b$a;)Lu/j/c;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1, p2}, Lu/j/d;->b(Lu/j/c;Ljava/util/Collection;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2}, Lu/i/b$a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "List<Span>"

    .line 10
    invoke-static {p2, p1}, Lu/i/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method
