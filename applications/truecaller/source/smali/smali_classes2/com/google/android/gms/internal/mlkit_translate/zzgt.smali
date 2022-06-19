.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzgt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgt;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgt;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgt;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzgt;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzgs;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method
