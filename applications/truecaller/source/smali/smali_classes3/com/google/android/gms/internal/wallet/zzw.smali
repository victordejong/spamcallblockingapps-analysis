.class public final Lcom/google/android/gms/internal/wallet/zzw;
.super Lcom/google/android/gms/internal/wallet/zzx;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzx;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wallet/zzw;->zza:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    return-void
.end method


# virtual methods
.method public final zzb(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wallet/zzw;->zza:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result p3

    if-eqz p3, :cond_2

    :try_start_0
    iget p1, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    .line 5
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/ConnectionResult;->q2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    new-instance p3, Landroid/content/Intent;

    .line 6
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    .line 8
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    const/16 p2, 0x198

    if-ne p1, p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    :goto_1
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    .line 9
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move p1, p2

    .line 10
    :goto_2
    iget p2, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    invoke-virtual {v0, p2, p3, v1}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    .line 12
    :cond_5
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wallet/zzw;->zza:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result p3

    if-eqz p3, :cond_2

    :try_start_0
    iget p1, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    .line 5
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/ConnectionResult;->q2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    new-instance p3, Landroid/content/Intent;

    .line 6
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    .line 8
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    const/16 p2, 0x198

    if-ne p1, p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    :goto_1
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    .line 9
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move p1, p2

    .line 10
    :goto_2
    iget p2, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    invoke-virtual {v0, p2, p3, v1}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    .line 12
    :cond_5
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final zzf(IZLandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/wallet/zzw;->zza:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .line 3
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    .line 4
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget p2, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, -0x1

    .line 6
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zzg(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "Bundle should not be null"

    .line 1
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/wallet/zzw;->zza:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    .line 3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 4
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget p1, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    .line 6
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/ConnectionResult;->q2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 7
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    new-instance p1, Landroid/content/Intent;

    .line 8
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/16 p2, 0x19d

    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    .line 9
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p2, p0, Lcom/google/android/gms/internal/wallet/zzw;->zzb:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    invoke-virtual {v0, p2, p1, v1}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x1

    .line 11
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
