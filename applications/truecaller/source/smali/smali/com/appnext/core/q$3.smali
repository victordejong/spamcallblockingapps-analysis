.class public final Lcom/appnext/core/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ep:Lcom/appnext/core/q;


# direct methods
.method public constructor <init>(Lcom/appnext/core/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 8

    const-string v0, "UserAction$error"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    const-string v2, "admin.appnext.com"

    const-string v3, "applink"

    invoke-static {v2, v3}, Lcom/appnext/core/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v3}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/appnext/core/q$a;->d()Lcom/appnext/core/AppnextAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v4}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/appnext/core/q$a;->c()Lcom/appnext/core/Ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v5}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v5

    invoke-interface {v5}, Lcom/appnext/core/q$a;->c()Lcom/appnext/core/Ad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SetDOpenV1"

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/appnext/core/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {v0, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/appnext/core/q$a;->e()Lcom/appnext/core/SettingsManager;

    move-result-object v1

    const-string v2, "urlApp_protection"

    invoke-virtual {v1, v2}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v2, "error_no_market"

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    iget-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v3}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/appnext/core/q$a;->d()Lcom/appnext/core/AppnextAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 5
    :catchall_1
    :try_start_3
    iget-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v1, p1}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 7
    :catchall_2
    :try_start_5
    iget-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/q$a;->d()Lcom/appnext/core/AppnextAd;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/appnext/core/q$a;->c()Lcom/appnext/core/Ad;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 3
    iget-object v2, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appnext/core/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    const-string v2, "admin.appnext.com"

    const-string v4, "applink"

    invoke-static {v2, v4}, Lcom/appnext/core/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v7

    const-string v9, "SetROpenV1"

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/appnext/core/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "UserAction$onMarket"

    .line 7
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const-string v1, "market://"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "error_no_market"

    if-eqz v1, :cond_3

    .line 9
    :try_start_1
    iget-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    iget-object v0, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 13
    :catchall_1
    iget-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {v0, p1}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 15
    :catchall_2
    iget-object p1, p0, Lcom/appnext/core/q$3;->ep:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
