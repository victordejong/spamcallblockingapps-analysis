.class public Lcom/appnext/base/moments/operations/imp/sals;
.super Lcom/appnext/base/moments/operations/c;
.source "SourceFile"


# virtual methods
.method public getData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/a/a/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://cdn.appnext.com/tools/services/4.7.3/plist.json"

    const v3, 0xea60

    invoke-static {v1, v2, v0, v3}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/moments/a/a;->R()Lcom/appnext/base/moments/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/moments/a/b/a;->ag()V

    .line 3
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/moments/a/a;->R()Lcom/appnext/base/moments/a/b/a;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/appnext/base/moments/a/b/a;->a(Lorg/json/JSONArray;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v2, "sals$getData"

    .line 5
    invoke-static {v2, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
