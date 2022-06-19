.class public Lcom/freshchat/consumer/sdk/service/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)Z
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "profilePicUrl"

    const-string v3, "serviceAccount"

    const-string v4, "channelAlias"

    const-string v5, "flowMessages"

    const-string v6, "flowBusinessHourType"

    const-string v7, "serviceAccountId"

    const-string v8, "flowVersionId"

    const-string v9, "flowId"

    const-string v10, "operatingHoursId"

    const-string v11, "channelId"

    const-string v12, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    :try_start_0
    new-instance v14, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v14, v1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    const-string v15, "channels"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v13

    move-object/from16 v16, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_c

    :try_start_2
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    move/from16 v19, v13

    move/from16 v20, v14

    :try_start_3
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v21, v15

    :try_start_4
    new-instance v15, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-direct {v15}, Lcom/freshchat/consumer/sdk/beans/Channel;-><init>()V

    invoke-virtual {v15, v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setId(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v15
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v22, v11

    :try_start_5
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/freshchat/consumer/sdk/beans/Channel;->setName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "position"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setPosition(I)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "type"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setChannelType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "iconUrl"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setIconUrl(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "defaultChannel"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v11, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setDefault(Z)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "restricted"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v11, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setRestricted(Z)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "hidden"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v11, v15}, Lcom/freshchat/consumer/sdk/beans/Channel;->setHidden(Z)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    const-string v15, "updated"

    move-wide/from16 v23, v13

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setUpdatedAt(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v11

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setOperatingHoursId(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_0
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/freshchat/consumer/sdk/beans/Channel;->setFlowId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/freshchat/consumer/sdk/beans/Channel;->setFlowVersionId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_2
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/freshchat/consumer/sdk/beans/Channel;->setServiceAccountId(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_3
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/freshchat/consumer/sdk/beans/Channel;->setFlowBusinessHourType(Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_4
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/freshchat/consumer/sdk/beans/Channel;->setFlowMessagesJson(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_5
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/freshchat/consumer/sdk/beans/Channel;->setChannelAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;

    :cond_6
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/freshchat/consumer/sdk/beans/Participant;

    invoke-direct {v14}, Lcom/freshchat/consumer/sdk/beans/Participant;-><init>()V

    const-string v15, "firstName"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/freshchat/consumer/sdk/beans/Participant;->setFirstName(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/freshchat/consumer/sdk/beans/Participant;->setFirstName(Ljava/lang/String;)V

    :cond_7
    const-string v15, "id"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/freshchat/consumer/sdk/beans/Participant;->setAlias(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/freshchat/consumer/sdk/beans/Participant;->setProfilePicUrl(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v13, "welcomeMessage"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13}, Lcom/freshchat/consumer/sdk/service/d/c;->b(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v13

    move-wide/from16 v14, v23

    invoke-virtual {v13, v14, v15}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v23, v1

    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {v13, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "_welcome_message"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    const-string v1, "agent"

    invoke-virtual {v13, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserAlias(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserType(I)V

    invoke-virtual {v11, v13}, Lcom/freshchat/consumer/sdk/beans/Channel;->setLatestOrWelcomeMessage(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Channel;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_a
    move-object/from16 v23, v1

    :goto_1
    move-object/from16 v1, v17

    :try_start_7
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "tags"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v13, v22

    :try_start_8
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v14, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CHANNEL:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-static {v0, v11, v14}, Lcom/freshchat/consumer/sdk/service/d/f;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v11
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v11, :cond_b

    move-object/from16 v11, v18

    :try_start_9
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_b
    move-object/from16 v11, v18

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v23, v1

    :goto_2
    move-object/from16 v1, v17

    :goto_3
    move-object/from16 v11, v18

    move-object/from16 v13, v22

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v23, v1

    move-object v13, v11

    goto :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v23, v1

    move-object v13, v11

    move-object/from16 v21, v15

    :goto_4
    move-object/from16 v1, v17

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v23, v1

    move/from16 v19, v13

    move/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v1, v17

    move-object v13, v11

    :goto_5
    move-object/from16 v11, v18

    :goto_6
    :try_start_a
    const-string v14, "FRESHCHAT"

    const-string v15, "Exception occurred"

    invoke-static {v14, v15, v0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object v11, v13

    move/from16 v13, v19

    move-object/from16 v15, v21

    move-object/from16 v1, v23

    goto/16 :goto_0

    :cond_c
    move-object/from16 v23, v1

    move-object/from16 v1, v17

    move-object/from16 v11, v18

    new-instance v0, Lcom/freshchat/consumer/sdk/c/j;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    :try_start_b
    invoke-direct {v0, v2}, Lcom/freshchat/consumer/sdk/c/j;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CHANNEL:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-virtual {v0, v4}, Lcom/freshchat/consumer/sdk/c/j;->a(Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)V

    move-object/from16 v4, v16

    invoke-virtual {v4, v1, v11}, Lcom/freshchat/consumer/sdk/c/c;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/freshchat/consumer/sdk/c/h;

    invoke-direct {v0, v2}, Lcom/freshchat/consumer/sdk/c/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/c/h;->g(Ljava/util/List;)Ljava/util/List;

    :cond_d
    invoke-static/range {p0 .. p1}, Lcom/freshchat/consumer/sdk/service/d/a;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)V

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v13
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_8
    move-object/from16 v2, p0

    goto :goto_8

    :cond_e
    move-object v2, v1

    goto :goto_9

    :catch_9
    move-object v2, v1

    :catch_a
    :goto_8
    const-string v0, "FRESHCHAT_WARNING"

    const-string v1, "Error processing channels"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    const/4 v13, 0x0

    :goto_a
    invoke-static/range {p0 .. p0}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;)V

    return v13
.end method

.method private static b(Lcom/freshchat/consumer/sdk/b/e;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/b/e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bB()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)V
    .locals 5

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/d/a;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bH()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bD()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "contentLocale"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "FRESHCHAT_WARNING"

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Channels content locale exception - "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "lastModifiedAt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->B(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/b/e;->D(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/service/d/a;->b(Lcom/freshchat/consumer/sdk/b/e;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/e/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v2

    const/16 v3, 0x19a

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/e/f;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/freshchat/consumer/sdk/b/a/a;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/freshchat/consumer/sdk/b/a/a;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v2}, Lcom/freshchat/consumer/sdk/service/d/a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/a/a;)Z

    move-result p0

    move v0, p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bH()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/b/e;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private static w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    return-object p0
.end method
