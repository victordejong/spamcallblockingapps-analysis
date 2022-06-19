.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhk;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhj;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzad$zza;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method
