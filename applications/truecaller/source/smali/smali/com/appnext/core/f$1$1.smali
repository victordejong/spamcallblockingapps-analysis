.class public final Lcom/appnext/core/f$1$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f$1;->onMarket(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/appnext/core/f$1;


# direct methods
.method public constructor <init>(Lcom/appnext/core/f$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/f$1$1;->do:Lcom/appnext/core/f$1;

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
    iget-object p1, p0, Lcom/appnext/core/f$1$1;->do:Lcom/appnext/core/f$1;

    iget-object p1, p1, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/appnext/core/f$1$1;->do:Lcom/appnext/core/f$1;

    iget-object p1, p1, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    invoke-static {p1}, Lcom/appnext/core/f;->c(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 5
    iget-object p1, p0, Lcom/appnext/core/f$1$1;->do:Lcom/appnext/core/f$1;

    iget-object p1, p1, Lcom/appnext/core/f$1;->dn:Lcom/appnext/core/f;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appnext/core/f;->a(Lcom/appnext/core/f;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "about:blank"

    .line 1
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "AppnextCK$AppnextCK"

    .line 3
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
