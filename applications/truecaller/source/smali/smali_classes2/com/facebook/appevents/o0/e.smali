.class public final Lcom/facebook/appevents/o0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/o0/e$c;,
        Lcom/facebook/appevents/o0/e$a;,
        Lcom/facebook/appevents/o0/e$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0007J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;",
        "",
        "()V",
        "RECEIVER_SERVICE_ACTION",
        "",
        "RECEIVER_SERVICE_PACKAGE",
        "RECEIVER_SERVICE_PACKAGE_WAKIZASHI",
        "TAG",
        "isServiceAvailable",
        "",
        "Ljava/lang/Boolean;",
        "getVerifiedServiceIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "sendCustomEvents",
        "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;",
        "applicationId",
        "appEvents",
        "",
        "Lcom/facebook/appevents/AppEvent;",
        "sendEvents",
        "eventType",
        "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;",
        "sendInstallEvent",
        "EventType",
        "RemoteServiceConnection",
        "ServiceResult",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/o0/e;

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/o0/e;

    invoke-direct {v0}, Lcom/facebook/appevents/o0/e;-><init>()V

    sput-object v0, Lcom/facebook/appevents/o0/e;->a:Lcom/facebook/appevents/o0/e;

    .line 1
    const-class v0, Lcom/facebook/appevents/o0/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteServiceWrapper::class.java.simpleName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/o0/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    const-string v0, "com.facebook.wakizashi"

    const-string v1, "com.facebook.katana"

    const-string v2, "ReceiverService"

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 4
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5
    sget-object v7, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/y;

    invoke-static {p1, v1}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v5

    .line 6
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    sget-object v2, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/y;

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v4

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final b(Lcom/facebook/appevents/o0/e$a;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/o0/e$c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/o0/e$a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/r;",
            ">;)",
            "Lcom/facebook/appevents/o0/e$c;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/appevents/o0/e$c;->c:Lcom/facebook/appevents/o0/e$c;

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/o0/e$c;->b:Lcom/facebook/appevents/o0/e$c;

    .line 2
    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/o0/e;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4
    new-instance v5, Lcom/facebook/appevents/o0/e$b;

    invoke-direct {v5}, Lcom/facebook/appevents/o0/e$b;-><init>()V

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_4

    .line 6
    :try_start_1
    iget-object v4, v5, Lcom/facebook/appevents/o0/e$b;->a:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    invoke-virtual {v4, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 7
    iget-object v4, v5, Lcom/facebook/appevents/o0/e$b;->b:Landroid/os/IBinder;

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v4}, Le/j/x0/a/a$a;->m1(Landroid/os/IBinder;)Le/j/x0/a/a;

    move-result-object v1

    .line 9
    sget-object v4, Lcom/facebook/appevents/o0/d;->a:Lcom/facebook/appevents/o0/d;

    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/o0/d;->a(Lcom/facebook/appevents/o0/e$a;Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {v1, p1}, Le/j/x0/a/a;->u0(Landroid/os/Bundle;)I

    const-string p2, "Successfully sent events to the remote service: "

    .line 11
    invoke-static {p2, p1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    sget-boolean p1, Le/j/f0;->i:Z

    .line 13
    :cond_1
    sget-object v1, Lcom/facebook/appevents/o0/e$c;->a:Lcom/facebook/appevents/o0/e$c;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_2
    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_3
    sget-object p2, Lcom/facebook/appevents/o0/e;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    :goto_0
    sget-object p1, Le/j/f0;->a:Le/j/f0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    :try_start_5
    sget-object p2, Lcom/facebook/appevents/o0/e;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    :try_start_6
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 20
    :goto_1
    sget-boolean p1, Le/j/f0;->i:Z

    goto :goto_3

    .line 21
    :goto_2
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 22
    sget-object p2, Le/j/f0;->a:Le/j/f0;

    .line 23
    sget-boolean p2, Le/j/f0;->i:Z

    .line 24
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    .line 25
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
