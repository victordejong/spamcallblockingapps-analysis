.class public Lcom/freshchat/consumer/sdk/c/a/a;
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
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "_id"

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, " PRIMARY KEY "

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v9, "category_id"

    const-string v10, "INTEGER"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "REFERENCES categories"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "title"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "content"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "position"

    const-string v6, "INTEGER"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "updated_at"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/ColDef;

    const-string v2, "article_alias"

    const/4 v6, 0x3

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/freshchat/consumer/sdk/beans/ColDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Lcom/freshchat/consumer/sdk/beans/ColDef;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/ColDef;

    return-object v0
.end method

.method public cP()Ljava/lang/String;
    .locals 1

    const-string v0, "articles"

    return-object v0
.end method
