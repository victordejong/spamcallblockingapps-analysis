.class public Lcom/freshchat/consumer/sdk/c/g;
.super Lcom/freshchat/consumer/sdk/c/b;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.freshchat.consumer.sdk.c.g"

.field private static final el:[Ljava/lang/String;

.field public static final kP:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private ek:Lcom/freshchat/consumer/sdk/c/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a/j;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/c/a/j;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->cR()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const-string v0, "SELECT CONV._id, CONV.channel_id,initiated_time FROM conversations AS CONV  JOIN custsat AS CSAT  ON (CONV._id=CSAT.conv_id AND CSAT._status="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->asInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/g;->kP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/g;->context:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/c/g;->f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/c/f;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageFragments(Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-void
.end method

.method private static c(Lcom/freshchat/consumer/sdk/beans/Message;)Landroid/content/ContentValues;
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getChannelId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "channel_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "message_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMarketingId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "marketing_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getConversationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "conv_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->isRead()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "uploaded"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getShouldTranslate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "should_translate"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getFlowStepId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "flow_step_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "user_name"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserProfilePic()Ljava/lang/String;

    move-result-object v1

    const-string v3, "user_profile_pic"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "should_delete"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "[]"

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/freshchat/consumer/sdk/c/l;

    invoke-direct {v3}, Lcom/freshchat/consumer/sdk/c/l;-><init>()V

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const-string v2, "reply_fragments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{}"

    :try_start_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const-string v2, "internal_meta"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "responded"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyTo()Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "replyTo"

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyTo()Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string p0, "extras_json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method private cA()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cB()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method private cB()Landroid/database/Cursor;
    .locals 8

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const-string v1, "message"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "created_at"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private cG()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/freshchat/consumer/sdk/c/g;->kP:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/c/g;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CONV.channel_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "initiated_time"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_0
    const/4 v5, 0x0

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;J)Z

    move-result v5

    :cond_1
    if-nez v5, :cond_2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method private cy()Lcom/freshchat/consumer/sdk/c/f;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/c/g;->ek:Lcom/freshchat/consumer/sdk/c/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/c/f;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/c/g;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/c/g;->ek:Lcom/freshchat/consumer/sdk/c/f;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/c/g;->ek:Lcom/freshchat/consumer/sdk/c/f;

    return-object v0
.end method

.method private f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Message;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "replyTo"

    const-string v4, "id"

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/c/b;->d(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "channel_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v0, "conv_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "message_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "marketing_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v0, "created_at"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v0, "user_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "user_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v0, "uploaded"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v16, v3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "read"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v17, 0x0

    move-object/from16 v18, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move/from16 v19, v4

    goto :goto_0

    :cond_0
    move/from16 v19, v17

    :goto_0
    const-string v0, "reply_fragments"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "responded"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v21, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v3, v17

    :goto_1
    const-string v4, "should_translate"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "flow_step_id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    const-string v4, "user_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    const-string v4, "user_profile_pic"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v24, v4

    const-string v4, "[]"

    invoke-static {v0, v4}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v4, Lcom/freshchat/consumer/sdk/c/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v25, v3

    move-object/from16 v3, p0

    :try_start_1
    invoke-direct {v4, v3}, Lcom/freshchat/consumer/sdk/c/n;-><init>(Lcom/freshchat/consumer/sdk/c/g;)V

    invoke-virtual {v4}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v25, v3

    :goto_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move/from16 v25, v3

    goto :goto_3

    :cond_3
    move/from16 v25, v3

    move-object/from16 v24, v4

    :goto_3
    move-object/from16 v3, v23

    :goto_4
    const-string v0, "internal_meta"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    invoke-direct {v4}, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;-><init>()V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v23

    move-object/from16 v26, v4

    const-string v4, "{}"

    if-eqz v23, :cond_4

    invoke-static {v0, v4}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v23, v4

    :try_start_2
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v4

    const-class v1, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    invoke-virtual {v4, v0, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    move-object/from16 v23, v4

    :goto_5
    move-object/from16 v4, v26

    :goto_6
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;-><init>()V

    invoke-virtual {v0, v5}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->alias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->createdMillis(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->channelId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageType(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->marketingId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->hostConversationId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserType(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->read(Z)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->uploadState(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->replyFragments(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->internalMeta(Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move/from16 v3, v25

    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->isResponded(Z)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->setShouldTranslate(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->setFlowStepId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->setMessageUserName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->setMessageUserProfilePic(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->build()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v1

    :try_start_3
    const-string v0, "extras_json"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, v23

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setId(J)V

    :cond_5
    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->in()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/beans/Message;->setReplyTo(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_7
    return-object v1
.end method

.method private n(J)Z
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "created_at"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "marketing_id =0  AND uploaded=1 AND user_type=0 AND channel_id = ?"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return v1

    :goto_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method private o(J)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "message"

    const-string v5, "created_at"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "marketing_id =0 AND channel_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v7, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "created_at DESC "

    const-string v11, "1"

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-wide v0

    :goto_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method


# virtual methods
.method public A(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message_type IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "responded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "channel_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "message"

    sget-object v7, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public B(J)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/c/f;->z(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/c/g;->X(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    return-object p1
.end method

.method public E(J)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display!=-1 AND uploaded=0 AND user_type=0 AND channel_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "message"

    sget-object v6, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return v0

    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public F(J)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "should_delete"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to delete marked messages. "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FRESHCHAT"

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public J(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "should_delete"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    const-string v3, ","

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "message"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public X(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 10

    const-string v0, "Message by alias "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "message"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/c/g;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/freshchat/consumer/sdk/c/g;->f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/freshchat/consumer/sdk/c/f;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageFragments(Ljava/util/List;)V

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public a(Ljava/util/List;J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;J)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cA()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/g;->cz()Ljava/util/Set;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getMarketingId()J

    move-result-wide v5

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v3, Lcom/freshchat/consumer/sdk/c/g;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring duplicate message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Lcom/freshchat/consumer/sdk/c/g;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate marketing message "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p2, p3}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :goto_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->d(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "conv_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_id"

    invoke-static {v0, v1, v2, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "marketing_id"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "message_type"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_id"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "user_type"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "created_at"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "read"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "uploaded"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "reply_fragments"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "internal_meta"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "extras_json"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "responded"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "should_translate"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flow_step_id"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "user_name"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_profile_pic"

    invoke-static {v0, v3, v1, p1, v2}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "should_delete"

    invoke-static {v0, v2, v1, p1, v3}, Le/d/c/a/a;->z1(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Integer;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(JJ)Z
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/g;->o(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long p3, v5, p3

    if-gez p3, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/g;->n(J)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/Message;Z)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/Message;Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->isUploaded()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/c/g;->context:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/freshchat/consumer/sdk/j/bc;->e(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    :cond_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/aj;->D(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    return v1

    :cond_2
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_3
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/c/g;->c(Lcom/freshchat/consumer/sdk/beans/Message;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object v3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result p2

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/freshchat/consumer/sdk/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    const-string p2, "message"

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object p2, Lcom/freshchat/consumer/sdk/c/g;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted message into DB with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_5

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    move v0, v1

    :goto_2
    :try_start_3
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    return v0

    :goto_4
    if-eqz p3, :cond_7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    throw p2
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT _id FROM message EXCEPT SELECT DISTINCT fragments._id FROM fragments"

    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->d(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    const-string v6, ","

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v3, "FRESHCHAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clean up empty messages. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :goto_1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    throw p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/Message;Z)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "rawJsonOfUnsupportedType"

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "reply_fragments LIKE ?"

    const-string v3, "message"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const-string v2, "%rawJsonOfUnsupportedType%"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "reply_fragments"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-void

    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/freshchat/consumer/sdk/c/g;->f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v6, Lcom/freshchat/consumer/sdk/c/o;

    invoke-direct {v6, p0}, Lcom/freshchat/consumer/sdk/c/o;-><init>(Lcom/freshchat/consumer/sdk/c/g;)V

    invoke-virtual {v6}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ab;->io()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/freshchat/consumer/sdk/beans/Message;->setReplyFragments(Ljava/util/List;)V

    invoke-virtual {p0, p1, v4}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/freshchat/consumer/sdk/beans/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_4
    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_3
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-void

    :goto_4
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public cC()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "display!=-1 AND uploaded=0 AND user_type=0"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "message"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/freshchat/consumer/sdk/c/g;->f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/freshchat/consumer/sdk/c/f;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageFragments(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method public cD()J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT MAX(created_at) as MAX_TIME FROM message WHERE user_type !=? "

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v4

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-wide v0

    :goto_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method public cF()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "channel_id"

    const-string v5, "COUNT(1)"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "display!=-1 AND read=0"

    const/4 v6, 0x0

    const-string v7, "channel_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cG()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_3
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method public cz()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cB()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "marketing_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    sget-object v1, Lcom/freshchat/consumer/sdk/c/g;->TAG:Ljava/lang/String;

    const-string v2, "Returning marketing IDs of size "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method public gr()I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_type!= 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :goto_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v1
.end method

.method public i(J)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "marketing_id"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "message"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "marketing_id > 0 AND read=0 AND channel_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    :cond_1
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v1

    :goto_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public j(J)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "message"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const-string v5, "marketing_id=?"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/c/g;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message by marketing ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    move v0, v10

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public jN()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "user_id"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "message"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "uploaded=1 AND user_type=0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v1

    :goto_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method public k(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/freshchat/consumer/sdk/c/f;->h(J)Ljava/util/Map;

    move-result-object v2

    const-string v6, "display!=-1 AND channel_id=?"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "message"

    sget-object v5, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "created_at"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/freshchat/consumer/sdk/c/g;->f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p2, v3}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageFragments(Ljava/util/List;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p1
.end method

.method public l(J)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "message"

    sget-object v3, Lcom/freshchat/consumer/sdk/c/g;->el:[Ljava/lang/String;

    const-string v4, "channel_id=? AND display != -1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "created_at DESC"

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/c/g;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/g;->f(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/g;->cy()Lcom/freshchat/consumer/sdk/c/f;

    move-result-object p2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/freshchat/consumer/sdk/c/f;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageFragments(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_2
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    move-object v0, p1

    :goto_1
    return-object v0

    :goto_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/b;->c(Landroid/database/Cursor;)V

    throw p2
.end method

.method public m(J)I
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "message"

    const-string v5, "read=0 AND channel_id=?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public p(J)Z
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/c/g;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/c;->cv()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/freshchat/consumer/sdk/c/g;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
