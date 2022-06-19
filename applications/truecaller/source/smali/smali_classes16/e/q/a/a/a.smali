.class public Le/q/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/a/c/i/a/a;

.field public b:Le/q/a/a/b/a;

.field public c:Le/q/a/a/b/b;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Le/a/c/i/a/a;Le/q/a/a/b/a;Le/q/a/a/b/b;Le/q/a/a/b/c;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    .line 3
    iput-object p3, p0, Le/q/a/a/a;->c:Le/q/a/a/b/b;

    .line 4
    iput-object p1, p0, Le/q/a/a/a;->a:Le/a/c/i/a/a;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/q/a/a/a;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Le/q/a/d/c;Le/q/a/d/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/q/c/a/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Le/q/a/d/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Le/q/a/d/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " and "

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p1}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Le/q/a/a/a;->c:Le/q/a/a/b/b;

    invoke-virtual {p1}, Le/q/a/d/c;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/q/a/a/b/b;->c(Ljava/lang/Long;)Le/q/a/d/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Le/q/a/d/b;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Le/q/a/d/c;->g()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v2}, Le/q/a/d/b;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2}, Le/q/a/d/c;->g()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Le/q/a/a/a;->a:Le/a/c/i/a/a;

    .line 8
    invoke-virtual {p1}, Le/q/a/d/c;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Le/q/a/d/c;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Le/a/c/r/e/a/b;

    invoke-direct {v2, v0, v3, v1, v4}, Le/a/c/r/e/a/b;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Le/q/a/d/c;->o(Z)V

    .line 12
    invoke-virtual {p1, p2}, Le/q/a/d/c;->p(Le/q/a/d/c;)V

    .line 13
    invoke-virtual {p2, p1}, Le/q/a/d/c;->b(Le/q/a/d/c;)V

    .line 14
    invoke-virtual {p2}, Le/q/a/d/c;->i()J

    move-result-wide v3

    invoke-virtual {p1}, Le/q/a/d/c;->i()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {p2, v5, v6}, Le/q/a/d/c;->s(J)V

    .line 15
    iget-object v1, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    const/4 v3, 0x2

    new-array v3, v3, [Le/q/a/d/c;

    aput-object p1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/q/a/a/b/a;->e(Ljava/util/List;)[J

    .line 16
    iget-object v0, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Le/q/a/a/b/a;->f(Le/q/a/d/c;Le/q/a/d/c;)V

    .line 17
    iget-object p1, p0, Le/q/a/a/a;->c:Le/q/a/a/b/b;

    invoke-virtual {p1, v2}, Le/q/a/a/b/b;->a(Le/q/a/d/b;)V

    :goto_0
    return-void

    .line 18
    :cond_1
    new-instance p1, Le/q/c/a/b;

    const-string p2, "This card is already mapped to another card"

    invoke-direct {p1, p2}, Le/q/c/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance v0, Le/q/c/a/b;

    const-string v1, "The account types do not match. Please check and try again - "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/q/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    new-instance v0, Le/q/c/a/b;

    const-string v1, "The addresses of the cards do not match. Please check and try again -"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/q/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/q/a/d/c;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p3, :cond_0

    const-string v3, ""

    .line 3
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    :cond_0
    sget-object p3, Le/q/a/c/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    sget-object p3, Le/q/a/c/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p3, Le/q/a/c/b;

    invoke-direct {p3}, Le/q/a/c/b;-><init>()V

    .line 7
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 8
    :cond_2
    iget-object v2, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {v2, p1, p2}, Le/q/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 11
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/q/a/d/c;

    .line 12
    iget-object p2, p0, Le/q/a/a/a;->c:Le/q/a/a/b/b;

    .line 13
    invoke-virtual {p1}, Le/q/a/d/c;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/q/a/a/b/b;->b(Ljava/lang/Long;)Le/q/a/d/b;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    iget-object p1, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {p2}, Le/q/a/d/b;->c()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/q/a/a/b/a;->a(Ljava/lang/Long;)Le/q/a/d/c;

    move-result-object p1

    .line 15
    :cond_4
    invoke-virtual {p1}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {p1}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/q/a/c/a;->a(Ljava/lang/String;)I

    move-result p2

    .line 17
    invoke-static {p3}, Le/q/a/c/a;->a(Ljava/lang/String;)I

    move-result v0

    if-le v0, p2, :cond_5

    .line 18
    invoke-virtual {p1, p3}, Le/q/a/d/c;->n(Ljava/lang/String;)V

    .line 19
    :cond_5
    iget-object p2, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {p2, p1}, Le/q/a/a/b/a;->d(Le/q/a/d/c;)J

    move-result-wide p2

    .line 20
    invoke-virtual {p1, p2, p3}, Le/q/a/d/c;->q(J)V

    .line 21
    invoke-virtual {p1}, Le/q/a/d/c;->k()J

    .line 22
    iget-object p2, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {p2, p1}, Le/q/a/a/b/a;->d(Le/q/a/d/c;)J

    move-result-wide p2

    .line 23
    invoke-virtual {p1, p2, p3}, Le/q/a/d/c;->q(J)V

    return-object p1

    .line 24
    :cond_6
    :try_start_0
    iget-object v0, p0, Le/q/a/a/a;->a:Le/a/c/i/a/a;

    .line 25
    iget-object v1, p0, Le/q/a/a/a;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Le/q/c/a/a; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_8

    .line 26
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 27
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    iget-object v3, p0, Le/q/a/a/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_7

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    new-instance v1, Le/q/c/a/a;

    invoke-direct {v1, v0}, Le/q/c/a/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object v2, p1

    .line 31
    :goto_1
    invoke-virtual {v0, p1, p3, p2, v2}, Le/a/c/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/q/a/d/c;

    move-result-object p1
    :try_end_2
    .catch Le/q/c/a/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 32
    :catch_1
    iget-object v0, p0, Le/q/a/a/a;->a:Le/a/c/i/a/a;

    invoke-virtual {v0, p1, p3, p2, p1}, Le/a/c/i/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/q/a/d/c;

    move-result-object p1

    .line 33
    :goto_2
    move-object p2, p1

    check-cast p2, Le/a/c/r/e/a/c;

    .line 34
    iget-wide v0, p2, Le/a/c/r/e/a/c;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p2, Le/a/c/r/e/a/c;->h:J

    .line 35
    iget-object p2, p0, Le/q/a/a/a;->b:Le/q/a/a/b/a;

    invoke-virtual {p2, p1}, Le/q/a/a/b/a;->d(Le/q/a/d/c;)J

    move-result-wide p2

    .line 36
    move-object v0, p1

    check-cast v0, Le/a/c/r/e/a/c;

    .line 37
    iput-wide p2, v0, Le/a/c/r/e/a/c;->a:J

    return-object p1
.end method
