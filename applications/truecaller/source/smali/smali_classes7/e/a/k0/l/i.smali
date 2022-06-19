.class public final Le/a/k0/l/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/l/h;


# instance fields
.field public a:Ljava/util/Timer;

.field public b:Le/a/k0/l/h$a;

.field public final c:Le/a/p5/v0/b;


# direct methods
.method public constructor <init>(Le/a/p5/v0/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "telephonyManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/l/i;->c:Le/a/p5/v0/b;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Le/a/k0/l/h$a;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/k0/l/i;->stop()V

    .line 2
    iput-object p1, p0, Le/a/k0/l/i;->b:Le/a/k0/l/h$a;

    const-string p1, "SafeRecordingCloser"

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0x3a98

    const/4 v0, 0x0

    .line 3
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 4
    new-instance v1, Le/a/k0/l/i$a;

    invoke-direct {v1, p0}, Le/a/k0/l/i$a;-><init>(Le/a/k0/l/i;)V

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput-object v6, p0, Le/a/k0/l/i;->a:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/k0/l/i;->b:Le/a/k0/l/h$a;

    .line 2
    iget-object v1, p0, Le/a/k0/l/i;->a:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    iput-object v0, p0, Le/a/k0/l/i;->a:Ljava/util/Timer;

    return-void
.end method
