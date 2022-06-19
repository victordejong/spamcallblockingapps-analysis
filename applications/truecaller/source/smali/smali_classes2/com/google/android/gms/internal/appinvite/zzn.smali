.class public final Lcom/google/android/gms/internal/appinvite/zzn;
.super Lcom/google/android/gms/internal/appinvite/zze;
.source "SourceFile"


# instance fields
.field private final synthetic zzq:Lcom/google/android/gms/internal/appinvite/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/appinvite/zzk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/appinvite/zzn;->zzq:Lcom/google/android/gms/internal/appinvite/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/appinvite/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/appinvite/zzn;->zzq:Lcom/google/android/gms/internal/appinvite/zzk;

    new-instance v1, Lcom/google/android/gms/internal/appinvite/zzp;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/appinvite/zzp;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    if-eqz p2, :cond_0

    const-string p1, "com.google.android.gms.appinvite.REFERRAL_BUNDLE"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/appinvite/zzn;->zzq:Lcom/google/android/gms/internal/appinvite/zzk;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/appinvite/zzk;->zza(Lcom/google/android/gms/internal/appinvite/zzk;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/appinvite/zzn;->zzq:Lcom/google/android/gms/internal/appinvite/zzk;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/appinvite/zzk;->zzb(Lcom/google/android/gms/internal/appinvite/zzk;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/appinvite/zzn;->zzq:Lcom/google/android/gms/internal/appinvite/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/appinvite/zzk;->zzb(Lcom/google/android/gms/internal/appinvite/zzk;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
