.class public final Lcom/google/android/gms/internal/mlkit_common/zzex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzfc;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzex;->zzb:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zza([B)Lcom/google/android/gms/internal/mlkit_common/zzfc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfc;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/mlkit_common/zzeo;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzex;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zzep;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzez;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzex;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzez;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzfc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfc;

    return-object v0
.end method
