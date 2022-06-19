.class public Le/h/a/c/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/f;->o(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Le/h/a/c/f;


# direct methods
.method public constructor <init>(Le/h/a/c/f;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/f$c;->b:Le/h/a/c/f;

    iput-object p2, p0, Le/h/a/c/f$c;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/f$c;->b:Le/h/a/c/f;

    iget-object v1, p0, Le/h/a/c/f$c;->a:Ljava/util/Map;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 8
    iget-object v7, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v7, v5}, Le/h/a/c/a1/c;->c(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v5

    .line 9
    iget-object v7, v5, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11
    iget v8, v5, Le/h/a/c/a1/a;->a:I

    if-eqz v8, :cond_1

    .line 12
    iget-object v8, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v8, v5}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 13
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x200

    if-eqz v5, :cond_2

    new-array v5, v9, [Ljava/lang/String;

    .line 14
    invoke-static {v10, v8, v5}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v5

    .line 15
    iget-object v6, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v6, v5}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 16
    iget-object v6, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v6}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v6

    iget-object v7, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 17
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 18
    iget-object v5, v5, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v7, v5}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    .line 20
    :try_start_1
    iget-object v11, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    sget-object v12, Le/h/a/c/a1/c$b;->a:Le/h/a/c/a1/c$b;

    invoke-virtual {v11, v6, v12}, Le/h/a/c/a1/c;->d(Ljava/lang/Object;Le/h/a/c/a1/c$b;)Le/h/a/c/a1/a;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    iget-object v8, v6, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 22
    iget v11, v6, Le/h/a/c/a1/a;->a:I

    if-eqz v11, :cond_3

    .line 23
    iget-object v11, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v11, v6}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    :cond_3
    const-string v6, "Phone"

    .line 24
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_7

    .line 25
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 26
    iget-object v6, v0, Le/h/a/c/f;->i:Le/h/a/c/b0;

    invoke-virtual {v6}, Le/h/a/c/b0;->h()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 27
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const-string v11, "+"

    .line 28
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v8, v5, v9

    .line 29
    invoke-static {v10, v11, v5}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v5

    .line 30
    iget-object v11, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v11, v5}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 31
    iget-object v11, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v11}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v11

    iget-object v12, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object v12, v12, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 33
    iget-object v5, v5, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v11, v12, v5}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_5
    iget-object v5, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v5}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v5

    iget-object v11, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 36
    iget-object v11, v11, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 37
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile phone is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " device country code is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "null"

    .line 38
    :goto_1
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v5, v11, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 40
    :try_start_4
    iget-object v6, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    const/4 v7, 0x5

    new-array v8, v9, [Ljava/lang/String;

    .line 41
    invoke-static {v10, v7, v8}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v7

    invoke-virtual {v6, v7}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 42
    iget-object v6, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v6}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v6

    iget-object v7, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 43
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid phone number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :cond_7
    :goto_2
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :catchall_0
    const/4 v11, 0x3

    new-array v8, v8, [Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 47
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    const-string v6, ""

    :goto_3
    aput-object v6, v8, v9

    aput-object v7, v8, v5

    .line 48
    invoke-static {v10, v11, v8}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v5

    .line 49
    iget-object v6, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v6, v5}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 50
    iget-object v6, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v6}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v6

    iget-object v7, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 51
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 52
    iget-object v5, v5, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {v6, v7, v5}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_9
    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v4, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 55
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructed custom profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 58
    iget-object v1, v0, Le/h/a/c/f;->j:Le/h/a/c/f0;

    .line 59
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Le/h/a/c/f0;->n(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    .line 60
    :cond_a
    iget-object v1, v0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    invoke-virtual {v1, v2}, Le/h/a/c/n0/a;->b(Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 61
    :catchall_1
    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v0, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 62
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method
