.class public final synthetic Le/m/h/b/b/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final a:Le/m/h/b/b/e/x;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/d;->a:Le/m/h/b/b/e/x;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    iget-object v0, p0, Le/m/h/b/b/e/d;->a:Le/m/h/b/b/e/x;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v0, v0, Le/m/h/b/b/e/x;->a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah$zza;

    move-result-object v2

    .line 7
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah$zza;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzah;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgs;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method
