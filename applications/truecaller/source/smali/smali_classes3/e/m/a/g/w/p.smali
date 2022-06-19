.class public Le/m/a/g/w/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/g/w/p$c;,
        Le/m/a/g/w/p$b;
    }
.end annotation


# static fields
.field public static e:Le/m/a/g/w/p;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public c:Le/m/a/g/w/p$c;

.field public d:Le/m/a/g/w/p$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/a/g/w/p;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Le/m/a/g/w/p$a;

    invoke-direct {v2, p0}, Le/m/a/g/w/p$a;-><init>(Le/m/a/g/w/p;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Le/m/a/g/w/p;->b:Landroid/os/Handler;

    return-void
.end method

.method public static b()Le/m/a/g/w/p;
    .locals 1

    .line 1
    sget-object v0, Le/m/a/g/w/p;->e:Le/m/a/g/w/p;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/m/a/g/w/p;

    invoke-direct {v0}, Le/m/a/g/w/p;-><init>()V

    sput-object v0, Le/m/a/g/w/p;->e:Le/m/a/g/w/p;

    .line 3
    :cond_0
    sget-object v0, Le/m/a/g/w/p;->e:Le/m/a/g/w/p;

    return-object v0
.end method


# virtual methods
.method public final a(Le/m/a/g/w/p$c;I)Z
    .locals 2

    .line 1
    iget-object v0, p1, Le/m/a/g/w/p$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/g/w/p$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/a/g/w/p;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p2}, Le/m/a/g/w/p$b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Le/m/a/g/w/p$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/w/p$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final d(Le/m/a/g/w/p$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/w/p;->d:Le/m/a/g/w/p$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/g/w/p$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public e(Le/m/a/g/w/p$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/w/p;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/m/a/g/w/p;->c(Le/m/a/g/w/p$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    iget-boolean v1, p1, Le/m/a/g/w/p$c;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Le/m/a/g/w/p$c;->c:Z

    .line 4
    iget-object v1, p0, Le/m/a/g/w/p;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Le/m/a/g/w/p$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/w/p;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/m/a/g/w/p;->c(Le/m/a/g/w/p$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    iget-boolean v1, p1, Le/m/a/g/w/p$c;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Le/m/a/g/w/p$c;->c:Z

    .line 4
    invoke-virtual {p0, p1}, Le/m/a/g/w/p;->g(Le/m/a/g/w/p$c;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(Le/m/a/g/w/p$c;)V
    .locals 4

    .line 1
    iget v0, p1, Le/m/a/g/w/p$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xabe

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2
    :goto_0
    iget-object v1, p0, Le/m/a/g/w/p;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Le/m/a/g/w/p;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/w/p;->d:Le/m/a/g/w/p$c;

    if-eqz v0, :cond_1

    .line 2
    iput-object v0, p0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Le/m/a/g/w/p;->d:Le/m/a/g/w/p$c;

    .line 4
    iget-object v0, v0, Le/m/a/g/w/p$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/g/w/p$b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Le/m/a/g/w/p$b;->show()V

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Le/m/a/g/w/p;->c:Le/m/a/g/w/p$c;

    :cond_1
    :goto_0
    return-void
.end method
