.class public final Lcom/google/android/gms/common/api/internal/zabw;
.super Lcom/google/android/gms/common/api/internal/zap;
.source "SourceFile"


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 7

    .line 1
    iget-object p2, p1, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "Error connecting to Google Play services"

    :cond_0
    move-object v3, p2

    .line 2
    new-instance p2, Lcom/google/android/gms/common/api/ApiException;

    new-instance v6, Lcom/google/android/gms/common/api/Status;

    .line 3
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 4
    iget-object v4, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v5, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 6
    invoke-direct {p2, v6}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->Dh()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zap;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 3
    sget v3, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->e(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    throw v1

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    .line 7
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 8
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method
