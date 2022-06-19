.class public final Le/m/a/f/s/a/a;
.super Lcom/google/android/gms/internal/wallet/zzh;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/a/f/s/a/d;


# direct methods
.method public constructor <init>(Le/m/a/f/s/a/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/s/a/a;->a:Le/m/a/f/s/a/d;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/wallet/zzh;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_callback_input"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/google/android/gms/wallet/callback/CallbackInput;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/wallet/callback/CallbackInput;

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message_task_tag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Le/m/a/f/s/a/c;

    iget-object v3, p0, Le/m/a/f/s/a/a;->a:Le/m/a/f/s/a/d;

    .line 9
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v7, p1, Landroid/os/Message;->arg1:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le/m/a/f/s/a/c;-><init>(Le/m/a/f/s/a/d;Lcom/google/android/gms/wallet/callback/CallbackInput;Landroid/os/Messenger;Ljava/lang/String;I)V

    iget-object p1, p0, Le/m/a/f/s/a/a;->a:Le/m/a/f/s/a/d;

    iget-object p1, p1, Le/m/a/f/s/a/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
