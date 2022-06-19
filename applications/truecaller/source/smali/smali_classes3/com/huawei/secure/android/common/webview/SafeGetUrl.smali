.class public Lcom/huawei/secure/android/common/webview/SafeGetUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "SafeGetUrl"

.field private static final d:J = 0xc8L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public static synthetic a(Lcom/huawei/secure/android/common/webview/SafeGetUrl;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getUrlMethod()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/huawei/secure/android/common/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    new-instance v1, Lcom/huawei/secure/android/common/webview/SafeGetUrl$a;

    invoke-direct {v1, p0, v0}, Lcom/huawei/secure/android/common/webview/SafeGetUrl$a;-><init>(Lcom/huawei/secure/android/common/webview/SafeGetUrl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcom/huawei/secure/android/common/util/c;->a(Ljava/lang/Runnable;)V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->a:Ljava/lang/String;

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-void
.end method
