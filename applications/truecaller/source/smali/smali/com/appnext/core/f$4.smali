.class public final Lcom/appnext/core/f$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;->a(Lcom/appnext/core/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic dn:Lcom/appnext/core/f;


# direct methods
.method public constructor <init>(Lcom/appnext/core/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->g(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->g(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 5
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appnext/core/f;->b(Lcom/appnext/core/f;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "browser_fallback_url"

    const-string v1, "market_referrer"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return v2

    .line 1
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "redirect url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/"

    .line 2
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "market://"

    .line 3
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v3, "about:blank"

    .line 4
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    const-string v3, "http://"

    .line 5
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_c

    const-string v3, "https://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "intent://"

    .line 6
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7
    :try_start_0
    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 8
    iget-object v3, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {v3}, Lcom/appnext/core/f;->d(Lcom/appnext/core/f;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v5, 0x10000

    .line 9
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10
    iget-object p2, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p2}, Lcom/appnext/core/f;->e(Lcom/appnext/core/f;)V

    .line 11
    iget-object p2, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p2}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 12
    iget-object p2, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p2}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_3
    return v4

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "market://details?id="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&referrer="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p2}, Lcom/appnext/core/f;->e(Lcom/appnext/core/f;)V

    .line 18
    iget-object p2, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p2}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 19
    iget-object p2, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p2}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_6
    return v4

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->e(Lcom/appnext/core/f;)V

    .line 21
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appnext/core/f$a;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    return v4

    :catchall_0
    return v2

    .line 23
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    :try_start_2
    iget-object v1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {v1}, Lcom/appnext/core/f;->d(Lcom/appnext/core/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 28
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->e(Lcom/appnext/core/f;)V

    .line 29
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1, p2}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_a
    return v4

    .line 32
    :cond_b
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v2

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {v0, p2}, Lcom/appnext/core/f;->b(Lcom/appnext/core/f;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/f;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 34
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->e(Lcom/appnext/core/f;)V

    .line 35
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 36
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_d
    const/high16 p1, 0x10000000

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    iget-object p1, p0, Lcom/appnext/core/f$4;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->d(Lcom/appnext/core/f;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 39
    :cond_e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v4
.end method
