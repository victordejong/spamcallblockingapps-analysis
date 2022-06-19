.class public final Le/m/a/c/k1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/k1/b$d;,
        Le/m/a/c/k1/b$b;,
        Le/m/a/c/k1/b$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/c/k1/b$c;

.field public final c:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field public final d:Landroid/os/Handler;

.field public e:Le/m/a/c/k1/b$b;

.field public f:I

.field public g:Le/m/a/c/k1/b$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/c/k1/b$c;Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/m/a/c/k1/b;->b:Le/m/a/c/k1/b$c;

    .line 4
    iput-object p3, p0, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Le/m/a/c/q1/d0;->j()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/m/a/c/k1/b;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Le/m/a/c/k1/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    iget-object v1, p0, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget v1, p0, Le/m/a/c/k1/b;->f:I

    if-eq v1, v0, :cond_0

    .line 3
    iput v0, p0, Le/m/a/c/k1/b;->f:I

    .line 4
    iget-object v1, p0, Le/m/a/c/k1/b;->b:Le/m/a/c/k1/b$c;

    check-cast v1, Le/m/a/c/j1/a;

    .line 5
    iget-object v1, v1, Le/m/a/c/j1/a;->a:Le/m/a/c/j1/g;

    .line 6
    invoke-virtual {v1, p0, v0}, Le/m/a/c/j1/g;->b(Le/m/a/c/k1/b;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    iget-object v1, p0, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Le/m/a/c/k1/b;->f:I

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    iget-object v1, p0, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 4
    iget v1, v1, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v5, 0x18

    if-lt v1, v5, :cond_1

    .line 6
    iget-object v1, p0, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 7
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v5, Le/m/a/c/k1/b$d;

    invoke-direct {v5, p0, v4}, Le/m/a/c/k1/b$d;-><init>(Le/m/a/c/k1/b;Le/m/a/c/k1/b$a;)V

    iput-object v5, p0, Le/m/a/c/k1/b;->g:Le/m/a/c/k1/b$d;

    .line 10
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_1
    iget-object v1, p0, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 13
    iget v1, v1, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    :cond_4
    iget-object v1, p0, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 17
    iget v1, v1, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    .line 18
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    :cond_7
    :goto_4
    new-instance v1, Le/m/a/c/k1/b$b;

    invoke-direct {v1, p0, v4}, Le/m/a/c/k1/b$b;-><init>(Le/m/a/c/k1/b;Le/m/a/c/k1/b$a;)V

    iput-object v1, p0, Le/m/a/c/k1/b;->e:Le/m/a/c/k1/b$b;

    .line 23
    iget-object v2, p0, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    iget-object v3, p0, Le/m/a/c/k1/b;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 24
    iget v0, p0, Le/m/a/c/k1/b;->f:I

    return v0
.end method
