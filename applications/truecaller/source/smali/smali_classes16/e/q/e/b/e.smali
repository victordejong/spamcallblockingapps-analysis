.class public Le/q/e/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Le/q/e/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/q/e/b/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Le/q/e/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/a<",
            "TT;>;",
            "Ljava/lang/Object<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/q/e/b/h;

    new-instance v1, Le/q/e/b/g;

    invoke-direct {v1}, Le/q/e/b/g;-><init>()V

    invoke-direct {v0, v1, p1}, Le/q/e/b/h;-><init>(Le/q/e/b/g;Le/q/e/b/a;)V

    iput-object v0, p0, Le/q/e/b/e;->b:Le/q/e/b/h;

    .line 3
    iget p1, p1, Le/q/e/b/a;->c:I

    .line 4
    iput p1, p0, Le/q/e/b/e;->a:I

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Le/q/e/c/a;->a()Le/q/e/c/a;

    .line 6
    sget-object p1, Le/q/e/c/a;->b:Lorg/json/JSONObject;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Le/q/e/c/a;->a()Le/q/e/c/a;

    .line 8
    sget-object p1, Le/q/e/c/a;->a:Lorg/json/JSONObject;

    .line 9
    :goto_0
    iput-object p1, p0, Le/q/e/b/e;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget v0, p0, Le/q/e/b/e;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/q/e/b/e;->b:Le/q/e/b/h;

    .line 3
    iget-object v1, v0, Le/q/e/b/h;->a:Le/q/e/b/g;

    invoke-virtual {v0, v1}, Le/q/e/b/h;->a(Le/q/e/b/g;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/q/e/b/e;->b:Le/q/e/b/h;

    .line 5
    iget-object v0, v0, Le/q/e/b/h;->b:Le/q/e/b/a;

    .line 6
    iget-object v1, v0, Le/q/e/b/a;->a:Ljava/util/List;

    iget-object v2, v0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Le/q/e/b/a;->c(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method public final b(Le/q/e/b/f;Le/q/e/b/d;Lorg/json/JSONObject;Z)Le/q/e/b/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/f<",
            "TT;>;",
            "Le/q/e/b/d<",
            "TT;>;",
            "Lorg/json/JSONObject;",
            "Z)",
            "Le/q/e/b/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "attributes"

    .line 3
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v2

    move-object v5, v3

    move-object v6, v5

    .line 4
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 5
    :try_start_0
    iget v7, p0, Le/q/e/b/e;->a:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 6
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    move v8, v2

    .line 7
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 8
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface {p1, v5}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_0

    const-string v9, "acc_num"

    .line 10
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v6, "upi_acc"

    .line 11
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v7, "amt"

    .line 12
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    invoke-interface {p1, v5}, Le/q/e/b/f;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x1

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move-object v6, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 15
    :cond_3
    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_4
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-interface {p1, v5}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 20
    :catch_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_6
    iput-object v1, p2, Le/q/e/b/d;->f:Ljava/util/List;

    .line 23
    iput-object v0, p2, Le/q/e/b/d;->e:Ljava/util/List;

    return-object p2
.end method

.method public c(Le/q/e/b/f;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/f<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "GRM_BANK"

    const-string v1, "GRM_UPI"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :try_start_0
    iget-object v6, p0, Le/q/e/b/e;->c:Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v6, Le/q/e/b/d;

    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Le/q/e/b/f;->d()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1}, Le/q/e/b/f;->c()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Le/q/e/b/d;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 4
    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v7

    .line 5
    iput-object v7, v6, Le/q/e/b/d;->d:Ljava/lang/String;

    .line 6
    iget-object v7, p0, Le/q/e/b/e;->c:Lorg/json/JSONObject;

    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 7
    invoke-virtual {p0, p1, v6, v7, v4}, Le/q/e/b/e;->b(Le/q/e/b/f;Le/q/e/b/d;Lorg/json/JSONObject;Z)Le/q/e/b/d;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Le/q/e/b/e;->a:I

    if-eqz v6, :cond_3

    .line 10
    new-instance v6, Le/q/e/b/d;

    invoke-interface {p1}, Le/q/e/b/f;->d()Ljava/lang/Object;

    move-result-object v7

    .line 11
    invoke-interface {p1}, Le/q/e/b/f;->c()J

    move-result-wide v8

    invoke-direct {v6, v1, v7, v8, v9}, Le/q/e/b/d;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 12
    iput-object v1, v6, Le/q/e/b/d;->d:Ljava/lang/String;

    .line 13
    iget-object v7, p0, Le/q/e/b/e;->c:Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 15
    invoke-virtual {p0, p1, v6, v1, v3}, Le/q/e/b/e;->b(Le/q/e/b/f;Le/q/e/b/d;Lorg/json/JSONObject;Z)Le/q/e/b/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "Error while createPruneDataTemplate: "

    .line 17
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/s0/g;->z0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/e/b/d;

    .line 19
    iget-object v6, p0, Le/q/e/b/e;->b:Le/q/e/b/h;

    invoke-virtual {v6, v2}, Le/q/e/b/h;->b(Le/q/e/b/d;)V

    goto :goto_2

    :cond_4
    const-string v1, "trx_type"

    const-string v2, "ref_id"

    .line 20
    :try_start_1
    iget-object v6, p0, Le/q/e/b/e;->c:Lorg/json/JSONObject;

    if-nez v6, :cond_5

    goto/16 :goto_8

    .line 21
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v8, Le/q/e/b/d;

    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Le/q/e/b/f;->d()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1}, Le/q/e/b/f;->c()J

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Le/q/e/b/d;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 24
    :try_start_2
    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v9

    .line 25
    iput-object v9, v8, Le/q/e/b/d;->d:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Le/q/e/b/f;->a()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x4d9222c9

    const/4 v13, 0x2

    if-eq v11, v12, :cond_8

    const v12, -0xb942743

    if-eq v11, v12, :cond_7

    const v12, 0x49f14b99

    if-eq v11, v12, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_7
    const-string v0, "GRM_EVENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v3

    goto :goto_4

    :cond_8
    const-string v0, "GRM_TRAVEL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_9

    move v4, v13

    goto :goto_4

    :cond_9
    :goto_3
    move v4, v10

    :goto_4
    const-string v0, "booking_id"

    const-string v9, "pnr_id"

    const-string v10, ""

    if-eqz v4, :cond_d

    if-eq v4, v3, :cond_c

    if-eq v4, v13, :cond_a

    move-object p1, v5

    goto :goto_6

    .line 27
    :cond_a
    :try_start_3
    invoke-interface {p1, v9}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v5, v0

    goto :goto_5

    :cond_b
    const-string v0, "alert_id"

    .line 29
    invoke-interface {p1, v0}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v5, p1

    :goto_5
    move-object p1, v5

    move-object v5, v9

    goto :goto_6

    .line 31
    :cond_c
    invoke-interface {p1, v0}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object v5, v0

    goto :goto_6

    .line 33
    :cond_d
    invoke-interface {p1, v2}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object v5, v2

    .line 35
    :cond_e
    iget v2, p0, Le/q/e/b/e;->a:I

    if-nez v2, :cond_f

    .line 36
    invoke-interface {p1, v1}, Le/q/e/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 38
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object p1, v0

    :cond_10
    :goto_6
    if-eqz v5, :cond_11

    .line 40
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iput-object v7, v8, Le/q/e/b/d;->f:Ljava/util/List;

    .line 43
    iput-object v6, v8, Le/q/e/b/d;->e:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_11
    move-object v5, v8

    goto :goto_8

    :catch_1
    move-exception p1

    move-object v5, v8

    goto :goto_7

    :catch_2
    move-exception p1

    :goto_7
    const-string v0, "Error while createPruneDataTemplateID: "

    .line 44
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->z0(Ljava/lang/String;)V

    :goto_8
    if-eqz v5, :cond_12

    .line 45
    iget-object p1, v5, Le/q/e/b/d;->f:Ljava/util/List;

    if-eqz p1, :cond_12

    .line 46
    iget-object p1, p0, Le/q/e/b/e;->b:Le/q/e/b/h;

    invoke-virtual {p1, v5}, Le/q/e/b/h;->b(Le/q/e/b/d;)V

    :cond_12
    return-void
.end method
