.class public final Le/m/a/h/a/d/o;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Le/m/a/h/a/d/q;


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/q;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/d/o;->c:Le/m/a/h/a/d/q;

    iput-object p2, p0, Le/m/a/h/a/d/o;->b:Landroid/os/IBinder;

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/d/o;->c:Le/m/a/h/a/d/q;

    iget-object v0, v0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/d/r;->i:Le/m/a/h/a/d/n;

    .line 2
    iget-object v2, p0, Le/m/a/h/a/d/o;->b:Landroid/os/IBinder;

    .line 3
    invoke-interface {v1, v2}, Le/m/a/h/a/d/n;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 4
    iput-object v1, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 5
    iget-object v0, p0, Le/m/a/h/a/d/o;->c:Le/m/a/h/a/d/q;

    iget-object v0, v0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 6
    iget-object v1, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    .line 7
    invoke-virtual {v1, v4, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v1, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 8
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Le/m/a/h/a/d/r;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    .line 9
    invoke-virtual {v0, v1, v4, v3}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    :goto_0
    iget-object v0, p0, Le/m/a/h/a/d/o;->c:Le/m/a/h/a/d/q;

    iget-object v0, v0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 11
    iput-boolean v2, v0, Le/m/a/h/a/d/r;->g:Z

    .line 12
    iget-object v0, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/m/a/h/a/d/o;->c:Le/m/a/h/a/d/q;

    iget-object v0, v0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 15
    iget-object v0, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
