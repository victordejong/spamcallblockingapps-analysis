.class public final Le/a/w2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Lcom/appsflyer/AppsFlyerLib;

.field public static final c:Le/a/w2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Le/a/w2/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/w2/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wJYG2WUjyTWG6qPciQfyAC"

    invoke-virtual {v1, v4, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    const-string p0, "AppsFlyerLib.getInstance\u2026ionContext)\n            }"

    .line 6
    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Le/a/w2/b;->b:Lcom/appsflyer/AppsFlyerLib;

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    :cond_0
    sget-object p0, Le/a/w2/b;->b:Lcom/appsflyer/AppsFlyerLib;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "instance"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
