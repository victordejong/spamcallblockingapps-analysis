.class public Le/i/b/o2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Lcom/criteo/publisher/CriteoInterstitial;

.field public final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoInterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/i/b/w1/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/CriteoInterstitialAdListener;Le/i/b/w1/c;)V
    .locals 3

    const-string v0, "interstitial"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "runOnUiThreadExecutor"

    invoke-static {p3, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listenerRef"

    invoke-static {v2, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/o2/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    iput-object v2, p0, Le/i/b/o2/d;->c:Ljava/lang/ref/Reference;

    iput-object p3, p0, Le/i/b/o2/d;->d:Le/i/b/w1/c;

    .line 4
    const-class p1, Le/i/b/o2/d;

    invoke-static {p1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object p1

    const-string p2, "LoggerFactory.getLogger(javaClass)"

    invoke-static {p1, p2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/i/b/o2/d;->a:Le/i/b/q2/h;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/v2;)V
    .locals 12

    const-string v0, "code"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/o2/d;->a:Le/i/b/q2/h;

    .line 2
    sget-object v1, Le/i/b/v2;->a:Le/i/b/v2;

    const-string v2, "$this$adUnit"

    const/4 v3, 0x0

    const-string v4, "Interstitial("

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v1, p0, Le/i/b/o2/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    .line 4
    new-instance v11, Le/i/b/q2/f;

    .line 5
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, v1, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 8
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is loaded"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    move-object v5, v11

    .line 9
    invoke-direct/range {v5 .. v10}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, v11}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Le/i/b/v2;->b:Le/i/b/v2;

    if-eq p1, v1, :cond_2

    sget-object v1, Le/i/b/v2;->c:Le/i/b/v2;

    if-ne p1, v1, :cond_4

    .line 12
    :cond_2
    iget-object v1, p0, Le/i/b/o2/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    .line 13
    new-instance v11, Le/i/b/q2/f;

    .line 14
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    .line 15
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v3, v1, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 17
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") failed to load"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    move-object v5, v11

    .line 18
    invoke-direct/range {v5 .. v10}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v0, v11}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 20
    :cond_4
    :goto_0
    iget-object v0, p0, Le/i/b/o2/d;->d:Le/i/b/w1/c;

    new-instance v1, Le/i/b/o2/d$a;

    invoke-direct {v1, p0, p1}, Le/i/b/o2/d$a;-><init>(Le/i/b/o2/d;Le/i/b/v2;)V

    .line 21
    iget-object p1, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
