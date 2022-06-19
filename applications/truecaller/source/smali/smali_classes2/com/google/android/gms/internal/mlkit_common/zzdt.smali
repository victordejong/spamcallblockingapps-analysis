.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_common/zzbg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzbg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzbg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V

    return-void
.end method
