.class public final Lcom/google/android/gms/internal/mlkit_translate/zzel;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzeh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzel;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzel;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzel;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzek;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzek;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzel;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzel;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzel;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->zza:I

    return v0
.end method
