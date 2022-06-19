.class public final Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread;->checkServerCertificateWithOK(Landroid/webkit/SslErrorHandler;Ljava/lang/String;Landroid/content/Context;Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->a:Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->d:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lu3/f;Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFailure , IO Exception : "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->a:Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;->onCancel(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->d:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_0
    return-void
.end method

.method public onResponse(Lu3/f;Lu3/k0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResponse . proceed"

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->a:Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback;->onProceed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/WebViewSSLCheckThread$a;->d:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_0
    return-void
.end method
