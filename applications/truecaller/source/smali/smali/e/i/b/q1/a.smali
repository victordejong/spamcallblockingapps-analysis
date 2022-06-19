.class public Le/i/b/q1/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/q1/c;

.field public final b:Landroid/content/ComponentName;

.field public final c:Le/i/b/q1/b;


# direct methods
.method public constructor <init>(Le/i/b/q1/c;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/q1/a;->a:Le/i/b/q1/c;

    .line 3
    iput-object p2, p0, Le/i/b/q1/a;->b:Landroid/content/ComponentName;

    .line 4
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object p1

    .line 5
    new-instance p2, Le/i/b/w;

    invoke-direct {p2, p1}, Le/i/b/w;-><init>(Le/i/b/x2;)V

    const-class v0, Le/i/b/q1/b;

    .line 6
    iget-object p1, p1, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Le/i/b/k1;

    invoke-direct {v1, p2}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {p1, v0, v1}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Le/i/b/q1/b;

    .line 8
    iput-object p1, p0, Le/i/b/q1/a;->c:Le/i/b/q1/b;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Le/i/b/q1/a;->c:Le/i/b/q1/b;

    iget-object v0, p0, Le/i/b/q1/a;->b:Landroid/content/ComponentName;

    iget-object v1, p0, Le/i/b/q1/a;->a:Le/i/b/q1/c;

    invoke-virtual {p1, p2, v0, v1}, Le/i/b/q1/b;->a(Ljava/lang/String;Landroid/content/ComponentName;Le/i/b/q1/c;)V

    const/4 p1, 0x1

    return p1
.end method
