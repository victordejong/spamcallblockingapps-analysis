.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzgv;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzhb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_language_id/zzhb;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzgq;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzgq;Lcom/google/android/gms/internal/mlkit_language_id/zzgt;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzgq;Lcom/google/android/gms/internal/mlkit_language_id/zzgt;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgv;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzgq;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgs;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzgq;Lcom/google/android/gms/internal/mlkit_language_id/zzgt;)V

    return-object v0
.end method
