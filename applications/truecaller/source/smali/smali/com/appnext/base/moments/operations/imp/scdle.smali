.class public Lcom/appnext/base/moments/operations/imp/scdle;
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

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/moments/a/a;->T()Lcom/appnext/base/moments/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/moments/a/b/c;->ai()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/base/moments/a/a/c;

    .line 3
    invoke-virtual {v1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object v2

    .line 4
    const-class v3, Lcom/appnext/base/moments/operations/imp/scdle;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/appnext/base/moments/a/a/c;->ac()Ljava/lang/String;

    move-result-object v2

    const-string v3, "once"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/moments/services/b/a;->b(Landroid/content/Context;)Lcom/appnext/base/moments/services/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appnext/base/moments/services/b/a;->c(Lcom/appnext/base/moments/a/a/c;)V

    .line 7
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/base/moments/services/b/a;->b(Landroid/content/Context;)Lcom/appnext/base/moments/services/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/appnext/base/moments/services/b/a;->a(Lcom/appnext/base/moments/a/a/c;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "scdle$getData"

    .line 8
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
