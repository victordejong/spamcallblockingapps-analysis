.class public final Le/a/e3/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/e3/k/s/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e3/h/k;->a:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/e3/h/k;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->c:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b;

    .line 4
    monitor-enter v1

    :try_start_0
    const-string v2, "context"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    const-class v2, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;

    const-string v3, "calling-cache.db"

    .line 8
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ln3/c0/f0/a;

    const/4 v3, 0x0

    .line 9
    sget-object v4, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->b:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 10
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    check-cast v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;

    .line 11
    sput-object v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;

    .line 12
    :cond_0
    sget-object v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v1

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->a()Le/a/e3/k/s/a;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot initialize calling cache database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v1

    throw v0
.end method
