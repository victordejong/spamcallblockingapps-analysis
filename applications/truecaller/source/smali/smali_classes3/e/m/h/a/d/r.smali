.class public final synthetic Le/m/h/a/d/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/h/a/d/b;


# direct methods
.method public constructor <init>(Le/m/h/a/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/r;->a:Le/m/h/a/d/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/h/a/d/r;->a:Le/m/h/a/d/b;

    .line 1
    iget-object v1, v0, Le/m/h/a/d/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Le/m/h/a/d/b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "%s has not been closed"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;

    move-result-object v2

    iget-object v3, v0, Le/m/h/a/d/b;->f:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    .line 5
    iget-object v2, v0, Le/m/h/a/d/b;->e:Lcom/google/android/gms/internal/mlkit_common/zzds;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzbg;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V

    .line 6
    :cond_0
    iget-object v0, v0, Le/m/h/a/d/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
