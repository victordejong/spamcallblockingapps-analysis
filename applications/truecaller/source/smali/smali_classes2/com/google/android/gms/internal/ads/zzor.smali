.class public final Lcom/google/android/gms/internal/ads/zzor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzou;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzou;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzou;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzou;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzou;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzou;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzou;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzou;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzou;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    const-string v4, "]"

    invoke-static {v2, v3, v0, v1, v4}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
