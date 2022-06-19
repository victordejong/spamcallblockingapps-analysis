.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Le/m/a/f/d/c;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzf;->a:Le/m/a/f/d/c;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzf;->a:Le/m/a/f/d/c;

    .line 1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "MessengerIpcClient"

    const/4 v3, 0x3

    .line 2
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/f/d/f;

    if-nez v2, :cond_0

    .line 5
    monitor-exit v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    invoke-virtual {v0}, Le/m/a/f/d/c;->c()V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzq;

    const-string v0, "Not supported by GmsCore"

    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/cloudmessaging/zzq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v2, p1}, Le/m/a/f/d/f;->c(Lcom/google/android/gms/cloudmessaging/zzq;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2, p1}, Le/m/a/f/d/f;->a(Landroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
