.class public final synthetic Le/m/a/h/a/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Le/m/a/h/a/d/r;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/d/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/d/i;->a:Le/m/a/h/a/d/r;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    iget-object v0, p0, Le/m/a/h/a/d/i;->a:Le/m/a/h/a/d/r;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reportBinderDeath"

    .line 2
    invoke-virtual {v1, v4, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Le/m/a/h/a/d/r;->j:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/d/m;

    if-eqz v1, :cond_0

    iget-object v3, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "calling onBinderDied"

    .line 4
    invoke-virtual {v3, v4, v2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    invoke-interface {v1}, Le/m/a/h/a/d/m;->zza()V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "%s : Binder has died."

    .line 7
    invoke-virtual {v1, v2, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/d/h;

    .line 9
    new-instance v3, Landroid/os/RemoteException;

    iget-object v4, v0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " : Binder has died."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Le/m/a/h/a/d/h;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    :goto_1
    invoke-virtual {v0}, Le/m/a/h/a/d/r;->d()V

    return-void
.end method
