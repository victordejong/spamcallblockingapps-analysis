.class public Le/i/b/o2/b;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/i/b/u2/x;

.field public final e:Landroid/webkit/WebViewClient;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;Landroid/webkit/WebViewClient;Le/i/b/u2/x;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Landroid/webkit/WebView;",
            ">;",
            "Landroid/webkit/WebViewClient;",
            "Le/i/b/u2/x;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/o2/b;->c:Ljava/lang/ref/Reference;

    .line 3
    iput-object p2, p0, Le/i/b/o2/b;->e:Landroid/webkit/WebViewClient;

    .line 4
    iput-object p3, p0, Le/i/b/o2/b;->d:Le/i/b/u2/x;

    .line 5
    iput-object p4, p0, Le/i/b/o2/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/i/b/o2/b;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Le/i/b/o2/b;->d:Le/i/b/u2/x;

    .line 3
    iget-object v0, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 4
    invoke-virtual {v0}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<html><body style=\'text-align:center; margin:0px; padding:0px; horizontal-align:center;\'><script src=\"%%displayUrl%%\"></script></body></html>"

    .line 5
    invoke-static {v0, v2}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Le/i/b/o2/b;->d:Le/i/b/u2/x;

    .line 7
    iget-object v2, v2, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 8
    invoke-virtual {v2}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%%displayUrl%%"

    .line 9
    invoke-static {v2, v3}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    iget-object v3, p0, Le/i/b/o2/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 12
    iget-object v0, p0, Le/i/b/o2/b;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v2, ""

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, ""

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
