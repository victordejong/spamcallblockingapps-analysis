.class public Le/h/a/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/h/a/c/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/h/a/c/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addMultiValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Le/h/a/c/p;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object p2, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object p2, p2, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 6
    invoke-virtual {p2, p1}, Le/h/a/c/f;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public addMultiValuesForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Le/h/a/c/j0;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/h/a/c/p;->c(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public pushChargedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/h/a/c/p;

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_d

    .line 3
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v5}, Le/h/a/c/j0;->c(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_d

    const/4 v6, 0x0

    .line 6
    :try_start_1
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 7
    sget-boolean v0, Le/h/a/c/j0;->a:Z

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v8, v6

    .line 9
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v8, v0, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Le/h/a/c/j0;->c(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 11
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 13
    :goto_3
    iget-object v0, v3, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 14
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Le/h/a/c/a1/c$b;->b:Le/h/a/c/a1/c$b;

    if-nez v5, :cond_2

    .line 17
    iget-object v2, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v0, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 18
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Invalid Charged event: details and or items is null"

    .line 19
    invoke-virtual {v2, v0, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 20
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v7, 0x32

    if-le v3, v7, :cond_3

    const/16 v3, 0x20a

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, -0x1

    .line 21
    invoke-static {v3, v8, v7}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v3

    .line 22
    iget-object v7, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v7

    iget-object v8, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object v8, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    iget-object v9, v3, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v7, v8, v9}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v7, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v7, v3}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 27
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 28
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 29
    :try_start_4
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v10, ""

    const-string v11, "Charged"

    const-string v12, "wzrk_error"

    if-eqz v9, :cond_7

    :try_start_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 31
    iget-object v14, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v14, v9}, Le/h/a/c/a1/c;->c(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v9

    .line 32
    iget-object v14, v9, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 33
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 34
    iget v15, v9, Le/h/a/c/a1/a;->a:I

    if-eqz v15, :cond_4

    .line 35
    invoke-static {v9}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 36
    :cond_4
    :try_start_6
    iget-object v9, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v9, v13, v2}, Le/h/a/c/a1/c;->d(Ljava/lang/Object;Le/h/a/c/a1/c$b;)Le/h/a/c/a1/a;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    :try_start_7
    iget-object v10, v9, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 38
    iget v11, v9, Le/h/a/c/a1/a;->a:I

    if-eqz v11, :cond_5

    .line 39
    invoke-static {v9}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_5
    invoke-virtual {v3, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :catch_3
    const/4 v9, 0x7

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    aput-object v11, v12, v6

    const/4 v11, 0x1

    aput-object v14, v12, v11

    if-eqz v13, :cond_6

    .line 41
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_6
    const/4 v11, 0x2

    aput-object v10, v12, v11

    const/16 v10, 0x1ff

    .line 42
    invoke-static {v10, v9, v12}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v9

    .line 43
    iget-object v10, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v10, v9}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 44
    iget-object v10, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v10}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v10

    iget-object v11, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 45
    iget-object v11, v11, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 46
    iget-object v9, v9, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {v10, v11, v9}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 48
    :cond_7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 49
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 50
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 51
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 52
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 53
    iget-object v6, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v6, v14}, Le/h/a/c/a1/c;->c(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v6

    .line 54
    iget-object v14, v6, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 55
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 56
    iget v1, v6, Le/h/a/c/a1/a;->a:I

    if-eqz v1, :cond_8

    .line 57
    invoke-static {v6}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 58
    :cond_8
    :try_start_8
    iget-object v1, v0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v1, v15, v2}, Le/h/a/c/a1/c;->d(Ljava/lang/Object;Le/h/a/c/a1/c$b;)Le/h/a/c/a1/a;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 59
    :try_start_9
    iget-object v6, v1, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 60
    iget v15, v1, Le/h/a/c/a1/a;->a:I

    if-eqz v15, :cond_9

    .line 61
    invoke-static {v1}, Ln3/g0/y;->l0(Le/h/a/c/a1/a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_9
    invoke-virtual {v9, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v16, 0x0

    goto :goto_8

    :catch_4
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v6, v16

    if-eqz v15, :cond_a

    .line 63
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_a
    move-object v14, v10

    :goto_7
    const/4 v15, 0x1

    aput-object v14, v6, v15

    const/16 v14, 0xf

    const/16 v1, 0x1ff

    .line 64
    invoke-static {v1, v14, v6}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v6

    .line 65
    iget-object v14, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v14}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v14

    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 66
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 67
    iget-object v15, v6, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 68
    invoke-virtual {v14, v1, v15}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, v0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v1, v6}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    :goto_8
    move-object/from16 v1, p0

    move/from16 v6, v16

    goto :goto_6

    :cond_b
    move/from16 v16, v6

    .line 70
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v1, p0

    move/from16 v6, v16

    goto/16 :goto_5

    :cond_c
    const-string v1, "Items"

    .line 71
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "evtName"

    .line 72
    invoke-virtual {v7, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "evtData"

    .line 73
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v1, v0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v0, v0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v7, v2}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    :cond_d
    :goto_9
    return-void
.end method

.method public pushEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Le/h/a/c/p;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pushEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Le/h/a/c/j0;->c(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/h/a/c/p;->p(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public pushProfile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Le/h/a/c/j0;->c(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1

    .line 4
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 6
    invoke-virtual {v0, p1}, Le/h/a/c/f;->o(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeMultiValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-object p2, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 4
    iget-object p2, p2, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 5
    invoke-virtual {p2, p1}, Le/h/a/c/f;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Le/h/a/c/p;->q(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public removeMultiValuesForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Le/h/a/c/j0;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/h/a/c/p;->q(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public removeValueForKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 3
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 4
    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v1

    .line 5
    new-instance v2, Le/h/a/c/h;

    invoke-direct {v2, v0, p1}, Le/h/a/c/h;-><init>(Le/h/a/c/f;Ljava/lang/String;)V

    .line 6
    iget-object p1, v1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v0, Le/h/a/c/y0/j;

    const-string v3, "removeValueForKey"

    invoke-direct {v0, v1, v3, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setMultiValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Le/h/a/c/j0;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    .line 4
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 6
    iget-object v1, v0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v1

    .line 7
    new-instance v2, Le/h/a/c/i;

    invoke-direct {v2, v0, p2, p1}, Le/h/a/c/i;-><init>(Le/h/a/c/f;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 8
    iget-object p1, v1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 9
    new-instance p2, Le/h/a/c/y0/j;

    const-string v0, "setMultiValuesForKey"

    invoke-direct {p2, v1, v0, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 10
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
