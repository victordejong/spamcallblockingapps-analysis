.class public final Le/m/h/b/b/e/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/h/b/b/e/n$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

.field public final b:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;Le/m/h/b/b/e/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/n;->a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 3
    iput-object p2, p0, Le/m/h/b/b/e/n;->b:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v0

    iget-object v1, p0, Le/m/h/b/b/e/n;->b:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object p1

    return-object p1
.end method

.method public final b(JLjava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbt;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-virtual {p0, p1}, Le/m/h/b/b/e/n;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;

    .line 7
    iget p2, p2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;->a:I

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zzc(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    .line 9
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, p1, p2}, Le/m/h/b/b/e/n;->c(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/n;->a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgs;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v0

    iget-object v1, p0, Le/m/h/b/b/e/n;->b:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Le/m/h/b/b/e/n;->c(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p0, v0, v1}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method
