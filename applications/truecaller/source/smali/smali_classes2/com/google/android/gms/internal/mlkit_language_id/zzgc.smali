.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzgp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzhh<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzee<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzhh<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzee<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzfz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Lcom/google/android/gms/internal/mlkit_language_id/zzgc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzhh<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzee<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzfz;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgc<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzib;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzd()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_language_id/zzel;

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzel;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzhy;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhy;->zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzhy;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzel;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzel;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_language_id/zzfc;

    if-eqz v3, :cond_0

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzel;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzfc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfc;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfe;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    move-result-object v1

    .line 21
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzel;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzb(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzee;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzf()Z

    move-result p1

    return p1
.end method

.method public final zzd(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzc(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
