.class public Le/q/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/q/f/a/b;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/q/f/a/f/e;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Le/q/f/a/b;

    invoke-direct {v0}, Le/q/f/a/b;-><init>()V

    iput-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/f/a/f/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v1, v0, Le/q/f/a/b;->d:Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    invoke-virtual {v0}, Le/q/f/a/b;->k()V

    .line 6
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    invoke-virtual {v0}, Le/q/f/a/b;->d()V

    .line 7
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    invoke-virtual {v0}, Le/q/f/a/b;->e()I

    move-result v0

    .line 8
    iget-object v1, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v2, Le/q/f/a/e/e/a;

    invoke-direct {v2, v0}, Le/q/f/a/e/e/a;-><init>(I)V

    iput-object v2, v1, Le/q/f/a/b;->a:Le/q/f/a/e/e/a;

    .line 9
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/f/a/f/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/json/JSONArray;

    move v11, v4

    .line 14
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 15
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Le/q/f/a/b;->e:Le/q/f/a/c/d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Le/q/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;Le/q/f/a/c/d;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 16
    :cond_1
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONArray;

    invoke-interface {p1}, Le/q/f/a/f/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    .line 18
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Le/q/f/a/b;->f:Le/q/f/a/c/d;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v6, "LOCATION"

    const-string v10, "loc"

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Le/q/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;Le/q/f/a/c/d;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/f/a/f/e;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Le/q/f/a/b;->f:Le/q/f/a/c/d;

    const-string v6, "AIRPORT"

    const-string v10, "loc"

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Le/q/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;Le/q/f/a/c/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/f/a/f/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lorg/json/JSONArray;

    move v12, v4

    .line 30
    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v12, v5, :cond_4

    .line 31
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Le/q/f/a/b;->g:Le/q/f/a/c/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Le/q/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;Le/q/f/a/c/d;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 32
    :cond_5
    invoke-interface {p1}, Le/q/f/a/f/e;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/q/f/a/a;->b:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Le/q/f/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/q/f/a/b;->f(Lorg/json/JSONObject;)V

    .line 34
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/f/a/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/q/f/a/b;->j(Lorg/json/JSONObject;)V

    .line 35
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/f/a/f/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "handles"

    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v4

    .line 38
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 39
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    iget-object v8, v0, Le/q/f/a/b;->l:Le/q/f/a/c/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v5 .. v10}, Le/q/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;Le/q/f/a/c/d;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 41
    :cond_6
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    invoke-virtual {v0}, Le/q/f/a/b;->g()V

    .line 42
    iget-object v0, p0, Le/q/f/a/a;->a:Le/q/f/a/b;

    .line 43
    iget-object v1, v0, Le/q/f/a/b;->j:Ljava/util/HashMap;

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GRM_DELIVERY"

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/f/a/c/c;

    iget-object v1, v1, Le/q/f/a/c/c;->f:Lorg/json/JSONArray;

    if-eqz v1, :cond_7

    move v2, v4

    move v3, v2

    .line 46
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v5, :cond_7

    .line 47
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 48
    iget-object v6, v0, Le/q/f/a/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    aget-object v5, v5, v4

    invoke-virtual {v0, v5, v3}, Le/q/f/a/b;->c(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_1
    move-exception v5

    .line 50
    :try_start_2
    invoke-static {v5}, Le/q/f/a/g/e;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 51
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :try_start_3
    invoke-interface {p1}, Le/q/f/a/f/e;->m()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    .line 53
    invoke-static {p1}, Le/q/f/a/g/e;->a(Ljava/lang/Exception;)V

    :cond_7
    :goto_8
    return-void
.end method
