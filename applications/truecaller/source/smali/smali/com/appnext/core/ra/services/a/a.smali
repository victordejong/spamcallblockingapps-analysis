.class public abstract Lcom/appnext/core/ra/services/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aM:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/core/ra/services/a/a;->aM:Landroid/content/Context;

    return-void
.end method

.method private static a(Lcom/appnext/core/ra/services/a$a;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public abstract F(Ljava/lang/String;)Z
.end method

.method public abstract G(Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/appnext/core/ra/b/a;)V
.end method

.method public final aW()V
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/core/ra/services/a$a;->SendRA:Lcom/appnext/core/ra/services/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/ra/services/a/a;->G(Ljava/lang/String;)V

    return-void
.end method

.method public final c(J)V
    .locals 10

    .line 1
    sget-object v1, Lcom/appnext/core/ra/services/a$a;->SendRA:Lcom/appnext/core/ra/services/a$a;

    .line 2
    new-instance v9, Lcom/appnext/core/ra/b/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    invoke-static {v1}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/services/a$a;)Landroid/os/Bundle;

    move-result-object v3

    const-wide/32 v6, 0x1d4c0

    const/4 v8, 0x1

    move-object v0, v9

    move-wide v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/appnext/core/ra/b/a;-><init>(Lcom/appnext/core/ra/services/a$a;ILandroid/os/Bundle;JJZ)V

    .line 3
    invoke-virtual {p0, v9}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/b/a;)V

    return-void
.end method

.method public final d(J)V
    .locals 10

    .line 20
    :try_start_0
    sget-object v1, Lcom/appnext/core/ra/services/a$a;->DownloadingConfig:Lcom/appnext/core/ra/services/a$a;

    .line 21
    new-instance v9, Lcom/appnext/core/ra/b/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    invoke-static {v1}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/services/a$a;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v8, 0x1

    move-object v0, v9

    move-wide v4, p1

    move-wide v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/appnext/core/ra/b/a;-><init>(Lcom/appnext/core/ra/services/a$a;ILandroid/os/Bundle;JJZ)V

    .line 22
    invoke-virtual {p0, v9}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "RecentAppsServiceLogic$scheduleDownloadingConfig"

    .line 23
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    sget-object v3, Lcom/appnext/core/ra/services/a$a;->StoreRa:Lcom/appnext/core/ra/services/a$a;

    .line 2
    invoke-static {v3}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/services/a$a;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "more_data"

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    .line 9
    rem-long/2addr v6, v8

    long-to-int v0, v6

    .line 10
    new-instance v11, Lcom/appnext/core/ra/b/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int v4, v2, v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/appnext/core/ra/b/a;-><init>(Lcom/appnext/core/ra/services/a$a;ILandroid/os/Bundle;JJZ)V

    .line 11
    sget-object v13, Lcom/appnext/core/ra/services/a$a;->DownloadingConfig:Lcom/appnext/core/ra/services/a$a;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appnext/core/ra/services/a/a;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v1, v11}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/b/a;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v13}, Lcom/appnext/core/ra/services/a/a;->a(Lcom/appnext/core/ra/services/a$a;)Landroid/os/Bundle;

    move-result-object v15

    .line 14
    new-instance v0, Lcom/appnext/core/ra/b/a;

    invoke-virtual {v13}, Ljava/lang/Enum;->hashCode()I

    move-result v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lcom/appnext/core/ra/b/a;-><init>(Lcom/appnext/core/ra/services/a$a;ILandroid/os/Bundle;JJZ)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1, v2}, Lcom/appnext/core/ra/services/a/a;->d(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "RecentAppsServiceLogic$storeRA"

    .line 19
    invoke-static {v2, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public abstract d(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/core/ra/b/a;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/services/a/a;->aM:Landroid/content/Context;

    return-object v0
.end method
