.class public final Le/a/i/c/a/f$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/f;->setBannerAd(Le/a/i/c/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Le/a/i/c/a/f;

.field public final synthetic c:Le/a/i/c/a/e;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Le/a/i/c/a/f;IILe/a/i/c/a/e;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/f$a;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Le/a/i/c/a/f$a;->b:Le/a/i/c/a/f;

    iput-object p5, p0, Le/a/i/c/a/f$a;->c:Le/a/i/c/a/e;

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/i/c/a/f$a;->c:Le/a/i/c/a/e;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/c/a/f$a;->b:Le/a/i/c/a/f;

    .line 3
    iget-object v1, p0, Le/a/i/c/a/f$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "it.url.toString()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Le/a/i/c/a/e;->g()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Le/a/i/c/a/e;->j()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v1, p2, v2, p1}, Le/a/i/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/i/c/a/f$a;->b:Le/a/i/c/a/f;

    iget-object p2, p0, Le/a/i/c/a/f$a;->c:Le/a/i/c/a/e;

    .line 9
    iget-boolean v0, p1, Le/a/i/c/a/f;->c:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p2}, Le/a/i/c/a/b;->e()V

    :cond_1
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p1, Le/a/i/c/a/f;->c:Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
