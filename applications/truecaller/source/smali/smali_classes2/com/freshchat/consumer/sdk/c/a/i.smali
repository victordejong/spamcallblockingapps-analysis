.class public Lcom/freshchat/consumer/sdk/c/a/i;
.super Lcom/freshchat/consumer/sdk/c/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public cO()[Lcom/freshchat/consumer/sdk/beans/ColDef;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "_id"

    const-string v3, "TEXT"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "frag_type"

    const-string v6, "INTEGER"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "content"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "content_type"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "position"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "extras_json"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v7, "uploaded"

    const-string v8, "INTEGER"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, " DEFAULT 0"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Lcom/freshchat/consumer/sdk/beans/ColDef;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/ColDef;

    return-object v0
.end method

.method public cP()Ljava/lang/String;
    .locals 1

    const-string v0, "fragments"

    return-object v0
.end method

.method public cU()Ljava/lang/String;
    .locals 1

    const-string v0, " PRIMARY KEY (_id,position)"

    return-object v0
.end method
