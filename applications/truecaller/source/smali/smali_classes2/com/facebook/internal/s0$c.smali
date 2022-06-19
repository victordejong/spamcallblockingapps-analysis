.class public final Lcom/facebook/internal/s0$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J(\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/internal/WebDialog$DialogWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "(Lcom/facebook/internal/WebDialog;)V",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "error",
        "Landroid/net/http/SslError;",
        "shouldOverrideUrlLoading",
        "",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/internal/s0;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 3
    iget-boolean p2, p1, Lcom/facebook/internal/s0;->j:Z

    if-nez p2, :cond_1

    .line 4
    iget-object p1, p1, Lcom/facebook/internal/s0;->e:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 7
    iget-object p1, p1, Lcom/facebook/internal/s0;->g:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 10
    iget-object p1, p1, Lcom/facebook/internal/s0;->d:Landroid/webkit/WebView;

    if-nez p1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 13
    iget-object p1, p1, Lcom/facebook/internal/s0;->f:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_3
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p1, Lcom/facebook/internal/s0;->k:Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Webview loading URL: "

    .line 1
    invoke-static {v0, p2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    .line 3
    sget-boolean v0, Le/j/f0;->i:Z

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 6
    iget-boolean p2, p1, Lcom/facebook/internal/s0;->j:Z

    if-nez p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/facebook/internal/s0;->e:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    new-instance v0, Le/j/b0;

    invoke-direct {v0, p3, p2, p4}, Le/j/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/internal/s0;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    new-instance p2, Le/j/b0;

    const/4 p3, 0x0

    const/16 v0, -0xb

    invoke-direct {p2, p3, v0, p3}, Le/j/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/internal/s0;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Redirect URL: "

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    .line 3
    sget-boolean p1, Le/j/f0;->i:Z

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^/(v\\d+\\.\\d+/)??dialog/.*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 7
    iget-object v0, v0, Lcom/facebook/internal/s0;->b:Ljava/lang/String;

    const/4 v3, 0x2

    .line 8
    invoke-static {p2, v0, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    invoke-virtual {p1, p2}, Lcom/facebook/internal/s0;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "error_type"

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v0, "error_msg"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "error_message"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "error_description"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "error_code"

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    .line 16
    invoke-static {v2}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 17
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    move v2, v3

    .line 18
    :goto_1
    invoke-static {p2}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    invoke-static {v0}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v2, v3, :cond_5

    .line 20
    iget-object p2, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    .line 21
    iget-object v0, p2, Lcom/facebook/internal/s0;->c:Lcom/facebook/internal/s0$d;

    if-eqz v0, :cond_9

    iget-boolean v2, p2, Lcom/facebook/internal/s0;->i:Z

    if-nez v2, :cond_9

    .line 22
    iput-boolean v1, p2, Lcom/facebook/internal/s0;->i:Z

    const/4 v2, 0x0

    .line 23
    invoke-interface {v0, p1, v2}, Lcom/facebook/internal/s0$d;->a(Landroid/os/Bundle;Le/j/c0;)V

    .line 24
    invoke-virtual {p2}, Lcom/facebook/internal/s0;->dismiss()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    const-string p1, "access_denied"

    .line 25
    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "OAuthAccessDeniedException"

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    invoke-virtual {p1}, Lcom/facebook/internal/s0;->cancel()V

    goto :goto_2

    :cond_7
    const/16 p1, 0x1069

    if-ne v2, p1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    invoke-virtual {p1}, Lcom/facebook/internal/s0;->cancel()V

    goto :goto_2

    .line 28
    :cond_8
    new-instance p1, Lcom/facebook/FacebookRequestError;

    invoke-direct {p1, v2, p2, v0}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    new-instance v2, Le/j/h0;

    invoke-direct {v2, p1, v0}, Le/j/h0;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/facebook/internal/s0;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    return v1

    :cond_a
    const-string v0, "fbconnect://cancel"

    .line 30
    invoke-static {p2, v0, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    invoke-virtual {p1}, Lcom/facebook/internal/s0;->cancel()V

    return v1

    :cond_b
    if-nez p1, :cond_d

    const-string p1, "touch"

    .line 32
    invoke-static {p2, p1, v2, v3}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    .line 33
    :cond_c
    :try_start_1
    iget-object p1, p0, Lcom/facebook/internal/s0$c;->a:Lcom/facebook/internal/s0;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move v1, v2

    :goto_3
    return v1

    :cond_d
    :goto_4
    return v2
.end method
