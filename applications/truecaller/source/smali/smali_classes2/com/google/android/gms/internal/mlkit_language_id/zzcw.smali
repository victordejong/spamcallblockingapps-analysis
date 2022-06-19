.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id/zzcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;Lcom/google/android/gms/internal/mlkit_language_id/zzaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcw;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcw;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;->zzb(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;Lcom/google/android/gms/internal/mlkit_language_id/zzaj;)V

    return-void
.end method
