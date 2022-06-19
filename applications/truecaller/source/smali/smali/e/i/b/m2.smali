.class public Le/i/b/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/criteo/publisher/CriteoBannerAdListener;

.field public final c:Lcom/criteo/publisher/Criteo;

.field public final d:Le/i/b/f3/c;

.field public final e:Le/i/b/w1/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Le/i/b/f3/c;Le/i/b/w1/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/i/b/m2;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoBannerView;->getCriteoBannerAdListener()Lcom/criteo/publisher/CriteoBannerAdListener;

    move-result-object p1

    iput-object p1, p0, Le/i/b/m2;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    .line 4
    iput-object p2, p0, Le/i/b/m2;->c:Lcom/criteo/publisher/Criteo;

    .line 5
    iput-object p3, p0, Le/i/b/m2;->d:Le/i/b/f3/c;

    .line 6
    iput-object p4, p0, Le/i/b/m2;->e:Le/i/b/w1/c;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/v2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/m2;->e:Le/i/b/w1/c;

    new-instance v1, Le/i/b/o2/a;

    iget-object v2, p0, Le/i/b/m2;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    iget-object v3, p0, Le/i/b/m2;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3, p1}, Le/i/b/o2/a;-><init>(Lcom/criteo/publisher/CriteoBannerAdListener;Ljava/lang/ref/Reference;Le/i/b/v2;)V

    .line 2
    iget-object p1, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/i/b/m2;->e:Le/i/b/w1/c;

    new-instance v1, Le/i/b/o2/b;

    iget-object v2, p0, Le/i/b/m2;->a:Ljava/lang/ref/WeakReference;

    .line 2
    iget-object v3, p0, Le/i/b/m2;->d:Le/i/b/f3/c;

    invoke-virtual {v3}, Le/i/b/f3/c;->a()Landroid/content/ComponentName;

    move-result-object v3

    .line 3
    new-instance v4, Le/i/b/q1/a;

    new-instance v5, Le/i/b/k2;

    invoke-direct {v5, p0}, Le/i/b/k2;-><init>(Le/i/b/m2;)V

    invoke-direct {v4, v5, v3}, Le/i/b/q1/a;-><init>(Le/i/b/q1/c;Landroid/content/ComponentName;)V

    .line 4
    iget-object v3, p0, Le/i/b/m2;->c:Lcom/criteo/publisher/Criteo;

    invoke-virtual {v3}, Lcom/criteo/publisher/Criteo;->getConfig()Le/i/b/u2/x;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3, p1}, Le/i/b/o2/b;-><init>(Ljava/lang/ref/Reference;Landroid/webkit/WebViewClient;Le/i/b/u2/x;Ljava/lang/String;)V

    .line 5
    iget-object p1, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
