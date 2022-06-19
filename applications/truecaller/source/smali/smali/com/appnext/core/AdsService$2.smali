.class public final Lcom/appnext/core/AdsService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/AdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cZ:Lcom/appnext/core/AdsService;


# direct methods
.method public constructor <init>(Lcom/appnext/core/AdsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/appnext/core/AdsService;->aq()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/l;

    .line 4
    iget-object v3, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    iget-object v4, v2, Lcom/appnext/core/l;->dV:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v4, v2, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    iget-object v3, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-virtual {v3, v2}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/l;)V

    .line 8
    invoke-static {}, Lcom/appnext/core/AdsService;->aq()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-virtual {v1}, Landroid/app/IntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 10
    iget-object v2, v2, Lcom/appnext/core/l;->dV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-virtual {v2, v1}, Landroid/app/IntentService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-static {v0}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcom/appnext/core/AdsService;->aq()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-static {v0}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-static {v1}, Lcom/appnext/core/AdsService;->b(Lcom/appnext/core/AdsService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-static {v0}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->cZ:Lcom/appnext/core/AdsService;

    invoke-static {v0, v1}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AdsService$checkPackRunnable"

    .line 17
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
