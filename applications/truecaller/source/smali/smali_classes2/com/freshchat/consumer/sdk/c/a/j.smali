.class public Lcom/freshchat/consumer/sdk/c/a/j;
.super Lcom/freshchat/consumer/sdk/c/a/c;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.freshchat.consumer.sdk.c.a.j"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public cO()[Lcom/freshchat/consumer/sdk/beans/ColDef;
    .locals 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "_id"

    const-string v3, "TEXT"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, " PRIMARY KEY "

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "channel_id"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "conv_id"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "marketing_id"

    const-string v5, "INTEGER"

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "user_id"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v7, "user_type"

    const-string v8, "INTEGER"

    const/4 v9, 0x0

    const/4 v14, 0x1

    const-string v11, " DEFAULT 0"

    move-object v6, v1

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "read"

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "created_at"

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v11, "uploaded"

    const-string v12, "INTEGER"

    const/4 v2, 0x1

    const-string v15, " DEFAULT 0"

    move-object v10, v1

    move v13, v2

    invoke-direct/range {v10 .. v15}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v6, "display"

    const-string v7, "INTEGER"

    const/4 v11, 0x1

    const/4 v9, 0x1

    const-string v10, " DEFAULT 0"

    move-object v5, v1

    move v8, v11

    invoke-direct/range {v5 .. v10}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, "reply_fragments"

    const/4 v6, 0x4

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, "extras_json"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, " DEFAULT "

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_NORMAL:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v6, "message_type"

    const-string v7, "INTEGER"

    const/4 v12, 0x6

    move-object v5, v1

    move v8, v2

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, "internal_meta"

    const/4 v6, 0x6

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v6, "responded"

    const-string v7, "INTEGER"

    const-string v10, " DEFAULT 0"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v9, "should_translate"

    const-string v10, "INTEGER"

    const/4 v12, 0x7

    const-string v13, " DEFAULT 0"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, "flow_step_id"

    const/16 v6, 0x8

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, "user_name"

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v5, "user_profile_pic"

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v6, "should_delete"

    const-string v7, "INTEGER"

    const/16 v9, 0x8

    const-string v10, " DEFAULT 0"

    move-object v5, v1

    move v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/freshchat/consumer/sdk/beans/ColDef;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/ColDef;

    return-object v0
.end method

.method public cP()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    return-object v0
.end method
