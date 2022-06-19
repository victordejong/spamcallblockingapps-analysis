.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Date;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhr;

.field private final zzd:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Date;ILcom/google/android/gms/internal/mlkit_translate/zzhr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zza:Ljava/util/Date;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zzb:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_translate/zzhr;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhr;->zzb()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhu;-><init>(Ljava/util/Date;ILcom/google/android/gms/internal/mlkit_translate/zzhr;Ljava/lang/String;)V

    return-object v0
.end method

.method public static zza(Ljava/util/Date;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhu;-><init>(Ljava/util/Date;ILcom/google/android/gms/internal/mlkit_translate/zzhr;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzhr;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    return-object v0
.end method
