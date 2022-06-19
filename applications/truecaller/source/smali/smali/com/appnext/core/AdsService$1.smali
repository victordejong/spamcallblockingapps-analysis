.class public final Lcom/appnext/core/AdsService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cY:Lcom/appnext/core/l;

.field public final synthetic cZ:Lcom/appnext/core/AdsService;


# direct methods
.method public constructor <init>(Lcom/appnext/core/AdsService;Lcom/appnext/core/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AdsService$1;->cZ:Lcom/appnext/core/AdsService;

    iput-object p2, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "guid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "zone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cZ:Lcom/appnext/core/AdsService;

    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Lcom/appnext/core/g;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adsID"

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isApk"

    const-string v2, "0"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "bannerid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "placementid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "vid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "tid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osid"

    const-string v2, "100"

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v1, v1, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    const-string v2, "auid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cZ:Lcom/appnext/core/AdsService;

    invoke-virtual {v1}, Landroid/app/IntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/AdsService$1;->cY:Lcom/appnext/core/l;

    iget-object v2, v2, Lcom/appnext/core/l;->dV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const-string v1, "installer"

    .line 15
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->cZ:Lcom/appnext/core/AdsService;

    invoke-virtual {v1}, Landroid/app/IntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://admin.appnext.com/AdminService.asmx/SetOpenV1"

    invoke-static {v1, v2, v0}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
