.class public final Lcom/appnext/core/webview/AppnextWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/webview/AppnextWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic dH:Ljava/lang/String;

.field public final synthetic ds:Ljava/lang/String;

.field public final synthetic fu:Lcom/appnext/core/webview/AppnextWebView;

.field public final synthetic fv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/webview/AppnextWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$2;->fu:Lcom/appnext/core/webview/AppnextWebView;

    iput-object p2, p0, Lcom/appnext/core/webview/AppnextWebView$2;->ds:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/webview/AppnextWebView$2;->fv:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/webview/AppnextWebView$2;->dH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView$2;->ds:Ljava/lang/String;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/appnext/core/g;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$2;->fv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$2;->dH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/appnext/core/webview/AppnextWebView$2;->fu:Lcom/appnext/core/webview/AppnextWebView;

    invoke-static {v1}, Lcom/appnext/core/webview/AppnextWebView;->c(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/appnext/core/webview/WebAppInterface;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/adswatched/a;->o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/webview/AppnextWebView$2;->dH:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/appnext/core/adswatched/a;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
