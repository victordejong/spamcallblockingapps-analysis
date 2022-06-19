.class public final synthetic Le/h/a/c/w0/d;
.super Ljava/lang/Object;
.source "INotificationRenderer.java"


# direct methods
.method public static a(Le/h/a/c/w0/e;Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;Lorg/json/JSONArray;)Ln3/k/a/q;
    .locals 17
    .param p0, "_this"    # Le/h/a/c/w0/e;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "dl"

    const-string v0, "com.clevertap.android.sdk.pushnotification.CTNotificationIntentService"

    .line 1
    invoke-static/range {p1 .. p1}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    move-result-object v6

    .line 2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v6, Le/h/a/c/h0;->p:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 4
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v1, v0}, Le/h/a/c/j0;->l(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v4, :cond_c

    .line 8
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v8, 0x0

    .line 9
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_c

    .line 10
    :try_start_2
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "l"

    .line 11
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-interface/range {p0 .. p0}, Le/h/a/c/w0/e;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    .line 14
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ac"

    const/4 v14, 0x1

    .line 15
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 17
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_2

    .line 18
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v15, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v11, v15, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 19
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1f

    if-ge v7, v11, :cond_3

    if-eqz v13, :cond_3

    if-eqz v6, :cond_3

    move v7, v14

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const-string v11, "pt_dismiss_on_click"

    .line 21
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v15, "true"

    if-nez v7, :cond_4

    .line 22
    :try_start_5
    invoke-static/range {p2 .. p2}, Le/h/a/c/w0/h;->c(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v14, "remind"

    .line 23
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    .line 24
    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v13, :cond_4

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    :cond_4
    if-nez v7, :cond_5

    .line 25
    invoke-static/range {p2 .. p2}, Le/h/a/c/w0/h;->c(Landroid/os/Bundle;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v11, :cond_5

    .line 26
    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v13, :cond_5

    if-eqz v6, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    move v14, v7

    :goto_4
    if-eqz v14, :cond_6

    .line 27
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.clevertap.PUSH_EVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "ct_type"

    const-string v15, "com.clevertap.ACTION_BUTTON_CLICK"

    .line 29
    invoke-virtual {v7, v11, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 31
    invoke-virtual {v7, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 32
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 33
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v7, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_5

    .line 34
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    :cond_8
    :goto_5
    if-eqz v7, :cond_9

    .line 36
    invoke-virtual {v7, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v10, "wzrk_acts"

    .line 37
    invoke-virtual {v7, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v10, "actionId"

    .line 38
    invoke-virtual {v7, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "autoCancel"

    .line 39
    invoke-virtual {v7, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "wzrk_c2a"

    .line 40
    invoke-virtual {v7, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "notificationId"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v11, p3

    .line 41
    :try_start_6
    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v10, 0x24000000

    .line 42
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_6

    :cond_9
    move/from16 v11, p3

    .line 43
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v10, v12

    add-int/2addr v10, v8

    const/high16 v12, 0xc000000

    if-eqz v14, :cond_a

    .line 44
    invoke-static {v1, v10, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_7

    .line 45
    :cond_a
    invoke-static {v1, v10, v7, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 46
    :goto_7
    invoke-virtual {v3, v0, v9, v7}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v11, p3

    goto :goto_a

    :catchall_2
    move-exception v0

    move/from16 v11, p3

    .line 47
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_c
    return-object v3
.end method
