.class public final Lcom/appnext/core/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;I)V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/f$b;

    .line 4
    iget-object v0, v0, Lcom/appnext/core/f$b;->dw:Lcom/appnext/core/f$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/appnext/core/f$a;->error(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->b(Lcom/appnext/core/f;)V

    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .locals 5

    const-string v0, "AppnextCK$AppnextCK"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;I)V

    .line 2
    iget-object v1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v1}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v1}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/f$b;

    .line 4
    iget-object v1, v1, Lcom/appnext/core/f$b;->dw:Lcom/appnext/core/f$a;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_1
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v3}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v3}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://admin.appnext.com/tools/navtac.html?bid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v3}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/core/f$b;

    iget-object v3, v3, Lcom/appnext/core/f$b;->dx:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&guid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "admin.appnext.com"

    const-string v4, "applink"

    invoke-static {v3, v4}, Lcom/appnext/core/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {v4}, Lcom/appnext/core/f;->d(Lcom/appnext/core/f;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v3}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 10
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 12
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 13
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v2, Lcom/appnext/core/f$1$1;

    invoke-direct {v2, p0}, Lcom/appnext/core/f$1$1;-><init>(Lcom/appnext/core/f$1;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    const-string v2, "about:blank"

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "store url: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->e(Lcom/appnext/core/f;)V

    .line 18
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->b(Lcom/appnext/core/f;)V

    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iget-object p1, p0, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->b(Lcom/appnext/core/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
