.class public final Lcom/appnext/base/moments/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Lorg/json/JSONObject;)Lcom/appnext/base/moments/a/a/c;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "data"

    const-string v2, "status"

    const-string v3, "service_key"

    const-string v4, "sample_type"

    const-string v5, "sample"

    const-string v6, "cycle_type"

    const-string v7, "cycle"

    const-string v8, "key"

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return-object v9

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_0

    :cond_1
    move-object/from16 v16, v9

    .line 2
    :goto_0
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    goto :goto_1

    :cond_2
    move-object v14, v9

    .line 3
    :goto_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_2

    :cond_3
    move-object v15, v9

    .line 4
    :goto_2
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_3

    :cond_4
    move-object v12, v9

    .line 5
    :goto_3
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_4

    :cond_5
    move-object v13, v9

    .line 6
    :goto_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_5

    :cond_6
    move-object/from16 v17, v9

    .line 7
    :goto_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_6

    :cond_7
    move-object v11, v9

    .line 8
    :goto_6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_7

    :cond_8
    move-object/from16 v18, v9

    .line 9
    :goto_7
    new-instance v0, Lcom/appnext/base/moments/a/a/c;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/appnext/base/moments/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v9
.end method
