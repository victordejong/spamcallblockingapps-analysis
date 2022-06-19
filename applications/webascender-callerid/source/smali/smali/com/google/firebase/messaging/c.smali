.class Lcom/google/firebase/messaging/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/firebase/messaging/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/t;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/messaging/c;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/t;

    return-void
.end method

.method private b()Z
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/m;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0xa

    .line 4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v3, "activity"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 7
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_2

    .line 10
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private c(Lcom/google/firebase/messaging/a$a;)V
    .locals 3

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Showing notification"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v1, "notification"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p1, Lcom/google/firebase/messaging/a$a;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/firebase/messaging/a$a;->c:I

    iget-object p1, p1, Lcom/google/firebase/messaging/a$a;->a:Landroidx/core/app/j$e;

    .line 4
    invoke-virtual {p1}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private d()Lcom/google/firebase/messaging/q;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/t;

    const-string v1, "gcm.n.image"

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/t;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/messaging/q;->c(Ljava/lang/String;)Lcom/google/firebase/messaging/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/messaging/c;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/q;->f(Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object v0
.end method

.method private e(Landroidx/core/app/j$e;Lcom/google/firebase/messaging/q;)V
    .locals 5

    const-string v0, "FirebaseMessaging"

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/firebase/messaging/q;->e()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1, v1}, Landroidx/core/app/j$e;->r(Landroid/graphics/Bitmap;)Landroidx/core/app/j$e;

    .line 3
    new-instance v2, Landroidx/core/app/j$b;

    invoke-direct {v2}, Landroidx/core/app/j$b;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/core/app/j$b;->h(Landroid/graphics/Bitmap;)Landroidx/core/app/j$b;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/core/app/j$b;->g(Landroid/graphics/Bitmap;)Landroidx/core/app/j$b;

    invoke-virtual {p1, v2}, Landroidx/core/app/j$e;->B(Landroidx/core/app/j$f;)Landroidx/core/app/j$e;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to download image in time, showing notification without it"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p2}, Lcom/google/firebase/messaging/q;->close()V

    return-void

    :catch_1
    const-string p1, "Interrupted while downloading image, showing notification without it"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p2}, Lcom/google/firebase/messaging/q;->close()V

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1a

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to download image: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/t;

    const-string v1, "gcm.n.noui"

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/t;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/messaging/c;->d()Lcom/google/firebase/messaging/q;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/t;

    .line 4
    invoke-static {v2, v3}, Lcom/google/firebase/messaging/a;->d(Landroid/content/Context;Lcom/google/firebase/messaging/t;)Lcom/google/firebase/messaging/a$a;

    move-result-object v2

    iget-object v3, v2, Lcom/google/firebase/messaging/a$a;->a:Landroidx/core/app/j$e;

    .line 5
    invoke-direct {p0, v3, v0}, Lcom/google/firebase/messaging/c;->e(Landroidx/core/app/j$e;Lcom/google/firebase/messaging/q;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/google/firebase/messaging/c;->c(Lcom/google/firebase/messaging/a$a;)V

    return v1
.end method
