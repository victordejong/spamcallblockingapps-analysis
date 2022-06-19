.class public final Lcom/facebook/appevents/n0/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/n0/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\"\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0004J\u001c\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;",
        "",
        "()V",
        "build",
        "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
        "json",
        "Lorg/json/JSONObject;",
        "deleteOldFiles",
        "",
        "useCase",
        "",
        "versionId",
        "",
        "download",
        "uri",
        "name",
        "onComplete",
        "Lcom/facebook/appevents/internal/FileDownloadTask$Callback;",
        "execute",
        "handler",
        "master",
        "slaves",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lorg/json/JSONObject;)Lcom/facebook/appevents/n0/h$b;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v1, "use_case"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "asset_uri"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "rules_uri"

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "version_id"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 5
    sget-object v1, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    const-string v2, "thresholds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 6
    const-class v2, Lcom/facebook/appevents/n0/h;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [F

    const/4 v8, 0x0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v9, :cond_5

    :goto_0
    add-int/lit8 v10, v8, 0x1

    .line 10
    :try_start_3
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "jsonArray.getString(i)"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v7, v8
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    if-lt v10, v9, :cond_4

    goto :goto_2

    :cond_4
    move v8, v10

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_4
    invoke-static {p0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 12
    :try_start_5
    invoke-static {p0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_1
    move-object v7, v0

    .line 13
    :cond_5
    :goto_2
    new-instance p0, Lcom/facebook/appevents/n0/h$b;

    const-string v1, "useCase"

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "assetUri"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/appevents/n0/h$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, p0

    :catch_1
    :goto_3
    return-object v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/m0/j$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/appevents/n0/j;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/facebook/appevents/m0/j;

    invoke-direct {p1, p0, v0, p2}, Lcom/facebook/appevents/m0/j;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/appevents/m0/j$a;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 4
    :cond_1
    :goto_0
    check-cast p2, Lcom/facebook/appevents/n0/b;

    invoke-virtual {p2, v0}, Lcom/facebook/appevents/n0/b;->a(Ljava/io/File;)V

    return-void
.end method

.method public static final c(Lcom/facebook/appevents/n0/h$b;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/n0/h$b;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/n0/h$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "master"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slaves"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/n0/h$b;->a:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/facebook/appevents/n0/h$b;->d:I

    .line 3
    invoke-static {}, Lcom/facebook/appevents/n0/j;->a()Ljava/io/File;

    move-result-object v2

    const/16 v3, 0x5f

    if-nez v2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5
    array-length v4, v2

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v4, v2

    move v6, v5

    :cond_3
    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    .line 8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    .line 9
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-static {v8, v0, v5, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v8, v1, v5, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-nez v8, :cond_3

    .line 10
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 11
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/facebook/appevents/n0/h$b;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/facebook/appevents/n0/h$b;->d:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/facebook/appevents/n0/h$b;->b:Ljava/lang/String;

    .line 17
    new-instance v1, Lcom/facebook/appevents/n0/b;

    invoke-direct {v1, p1}, Lcom/facebook/appevents/n0/b;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0, v1}, Lcom/facebook/appevents/n0/h$b$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/m0/j$a;)V

    return-void
.end method
