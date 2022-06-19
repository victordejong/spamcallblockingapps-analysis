.class public final Lcom/google/android/gms/internal/mlkit_common/zzhx;
.super Lcom/google/android/gms/internal/mlkit_common/zzid;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzid;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzhs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzhs;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhs;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzid;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzhs;Lcom/google/android/gms/internal/mlkit_common/zzhv;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzhs;Lcom/google/android/gms/internal/mlkit_common/zzhv;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzhx;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzhs;)V

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
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhs;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzhu;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzhs;Lcom/google/android/gms/internal/mlkit_common/zzhv;)V

    return-object v0
.end method
