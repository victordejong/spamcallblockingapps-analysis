.class public final Lcom/appnext/core/result/ResultPageActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/result/ResultPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appnext/core/result/ResultPageActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$a;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object p1

    new-instance p2, Lcom/appnext/core/result/ResultPageActivity$a$1;

    invoke-direct {p2, p0}, Lcom/appnext/core/result/ResultPageActivity$a$1;-><init>(Lcom/appnext/core/result/ResultPageActivity$a;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "WebInterface$onPageFinished"

    .line 3
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "http"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
