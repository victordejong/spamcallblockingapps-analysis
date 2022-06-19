.class final Lcom/android/billingclient/api/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Lcom/android/billingclient/api/e;

.field final synthetic d:Lcom/android/billingclient/api/d;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/v;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/v;->b:Z

    iput-object p2, p0, Lcom/android/billingclient/api/v;->c:Lcom/android/billingclient/api/e;

    return-void
.end method

.method static synthetic b(Lcom/android/billingclient/api/v;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/v;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/e;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/v;->c:Lcom/android/billingclient/api/e;

    return-object p0
.end method

.method static synthetic d(Lcom/android/billingclient/api/v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/billingclient/api/v;->b:Z

    return p0
.end method

.method static synthetic e(Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/v;->f(Lcom/android/billingclient/api/g;)V

    return-void
.end method

.method private final f(Lcom/android/billingclient/api/g;)V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    new-instance v1, Lcom/android/billingclient/api/s;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/s;-><init>(Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/g;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->s(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/v;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/billingclient/api/v;->c:Lcom/android/billingclient/api/e;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/billingclient/api/v;->b:Z

    .line 1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 1
    invoke-static {p1, v0}, Lg/f/a/d/c/k/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 2
    invoke-static {p2}, Lg/f/a/d/c/k/c;->q(Landroid/os/IBinder;)Lg/f/a/d/c/k/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/d;->w(Lcom/android/billingclient/api/d;Lg/f/a/d/c/k/d;)Lg/f/a/d/c/k/d;

    iget-object p1, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    new-instance p2, Lcom/android/billingclient/api/t;

    .line 3
    invoke-direct {p2, p0}, Lcom/android/billingclient/api/t;-><init>(Lcom/android/billingclient/api/v;)V

    new-instance v0, Lcom/android/billingclient/api/u;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/u;-><init>(Lcom/android/billingclient/api/v;)V

    const-wide/16 v1, 0x7530

    .line 4
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/billingclient/api/d;->J(Lcom/android/billingclient/api/d;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 5
    invoke-static {p1}, Lcom/android/billingclient/api/d;->K(Lcom/android/billingclient/api/d;)Lcom/android/billingclient/api/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/v;->f(Lcom/android/billingclient/api/g;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 1
    invoke-static {p1, v0}, Lg/f/a/d/c/k/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/billingclient/api/d;->w(Lcom/android/billingclient/api/d;Lg/f/a/d/c/k/d;)Lg/f/a/d/c/k/d;

    iget-object p1, p0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/android/billingclient/api/d;->x(Lcom/android/billingclient/api/d;I)I

    iget-object p1, p0, Lcom/android/billingclient/api/v;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/v;->c:Lcom/android/billingclient/api/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/billingclient/api/e;->onBillingServiceDisconnected()V

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
