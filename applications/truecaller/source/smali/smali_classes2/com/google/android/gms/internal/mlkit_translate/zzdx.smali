.class public final Lcom/google/android/gms/internal/mlkit_translate/zzdx;
.super Lcom/google/android/gms/internal/mlkit_translate/zzds;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzeh<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzds;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzds;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzdu;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zza(Ljava/lang/String;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzds;

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    return-object p1
.end method

.method public final zzg()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzds;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzeh;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
