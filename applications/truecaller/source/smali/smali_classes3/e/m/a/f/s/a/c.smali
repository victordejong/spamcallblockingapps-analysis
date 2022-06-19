.class public final Le/m/a/f/s/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/android/gms/wallet/callback/CallbackInput;

.field public final b:Ljava/lang/String;

.field public final c:Le/m/a/f/s/a/b;

.field public final synthetic d:Le/m/a/f/s/a/d;


# direct methods
.method public constructor <init>(Le/m/a/f/s/a/d;Lcom/google/android/gms/wallet/callback/CallbackInput;Landroid/os/Messenger;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/s/a/c;->d:Le/m/a/f/s/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/a/f/s/a/c;->a:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iput-object p4, p0, Le/m/a/f/s/a/c;->b:Ljava/lang/String;

    new-instance p1, Le/m/a/f/s/a/b;

    .line 1
    invoke-direct {p1, p3, p5}, Le/m/a/f/s/a/b;-><init>(Landroid/os/Messenger;I)V

    iput-object p1, p0, Le/m/a/f/s/a/c;->c:Le/m/a/f/s/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "BaseCallbackTaskService"

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Le/m/a/f/s/a/c;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Running Callback Task w/ tag %s"

    .line 2
    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/a/f/s/a/c;->d:Le/m/a/f/s/a/d;

    iget-object v3, p0, Le/m/a/f/s/a/c;->b:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/f/s/a/c;->a:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iget-object v5, p0, Le/m/a/f/s/a/c;->c:Le/m/a/f/s/a/b;

    .line 4
    invoke-virtual {v0, v3, v4, v5}, Le/m/a/f/s/a/d;->a(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v3, p0, Le/m/a/f/s/a/c;->c:Le/m/a/f/s/a/b;

    .line 6
    invoke-static {}, Lcom/google/android/gms/wallet/callback/CallbackOutput;->o2()Lcom/google/android/gms/wallet/callback/zzj;

    move-result-object v4

    iget-object v5, p0, Le/m/a/f/s/a/c;->a:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iget v5, v5, Lcom/google/android/gms/wallet/callback/CallbackInput;->a:I

    iget-object v6, v4, Lcom/google/android/gms/wallet/callback/zzj;->a:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput v5, v6, Lcom/google/android/gms/wallet/callback/CallbackOutput;->a:I

    const/4 v5, 0x5

    iput v5, v6, Lcom/google/android/gms/wallet/callback/CallbackOutput;->b:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/wallet/callback/zzj;->a:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput-object v5, v4, Lcom/google/android/gms/wallet/callback/CallbackOutput;->d:Ljava/lang/String;

    .line 8
    monitor-enter v3

    :try_start_1
    iget-object v5, v3, Le/m/a/f/s/a/b;->a:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    :try_start_2
    iget v5, v4, Lcom/google/android/gms/wallet/callback/CallbackOutput;->b:I

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    const-string v6, "Callback Response Status must be set - status value must be non-zero."

    .line 9
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iput v2, v5, Landroid/os/Message;->what:I

    iget v2, v3, Le/m/a/f/s/a/b;->b:I

    iput v2, v5, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    .line 11
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "extra_callback_output"

    .line 12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 13
    invoke-interface {v4, v7, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 14
    invoke-virtual {v7}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 15
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 17
    invoke-virtual {v5, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, v3, Le/m/a/f/s/a/b;->a:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v3, Le/m/a/f/s/a/b;->a:Landroid/os/Messenger;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 19
    :catch_0
    monitor-exit v3

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    monitor-exit v3

    .line 21
    :goto_2
    throw v0

    :catchall_1
    move-exception v0

    .line 22
    monitor-exit v3

    throw v0
.end method
