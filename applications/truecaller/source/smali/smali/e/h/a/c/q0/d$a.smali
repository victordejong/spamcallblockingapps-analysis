.class public Le/h/a/c/q0/d$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/q0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/q0/d;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/d$a;->a:Le/h/a/c/q0/d;

    .line 2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const-string p1, "wzrk_c2a"

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p2, v1}, Ln3/g0/y;->X(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "__dl__"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 6
    aget-object p2, v3, v1

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    aget-object p2, v3, v0

    .line 8
    :cond_0
    iget-object p1, p0, Le/h/a/c/q0/d$a;->a:Le/h/a/c/q0/d;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1}, Le/h/a/c/q0/a;->SA()Le/h/a/c/q0/c0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    iget-object p1, p1, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v3, p1, v2, v1}, Le/h/a/c/q0/c0;->P7(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 11
    :cond_1
    iget-object p1, p0, Le/h/a/c/q0/d$a;->a:Le/h/a/c/q0/d;

    invoke-virtual {p1, p2, v2}, Le/h/a/c/q0/a;->QA(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method
