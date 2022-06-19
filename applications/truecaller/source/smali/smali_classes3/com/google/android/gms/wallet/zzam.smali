.class public final synthetic Lcom/google/android/gms/wallet/zzam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/wallet/zzab;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/wallet/zzab;->zzq(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
