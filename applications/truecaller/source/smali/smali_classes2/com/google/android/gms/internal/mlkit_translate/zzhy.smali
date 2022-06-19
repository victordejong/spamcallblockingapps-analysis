.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

.field private final zzb:Ljava/util/Date;

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zzb:Ljava/util/Date;

    iput-wide p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zzb:Ljava/util/Date;

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zzc:J

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhy;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object v0

    return-object v0
.end method
