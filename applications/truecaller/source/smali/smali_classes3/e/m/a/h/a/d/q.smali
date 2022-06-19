.class public final Le/m/a/h/a/d/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Le/m/a/h/a/d/r;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/d/r;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    .line 2
    invoke-virtual {v0, p1, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    new-instance v0, Le/m/a/h/a/d/o;

    .line 3
    invoke-direct {v0, p0, p2}, Le/m/a/h/a/d/o;-><init>(Le/m/a/h/a/d/q;Landroid/os/IBinder;)V

    .line 4
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    .line 2
    invoke-virtual {v0, p1, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    new-instance v0, Le/m/a/h/a/d/p;

    .line 3
    invoke-direct {v0, p0}, Le/m/a/h/a/d/p;-><init>(Le/m/a/h/a/d/q;)V

    .line 4
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
