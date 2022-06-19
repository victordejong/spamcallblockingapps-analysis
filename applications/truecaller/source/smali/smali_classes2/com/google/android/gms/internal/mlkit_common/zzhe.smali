.class public final Lcom/google/android/gms/internal/mlkit_common/zzhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzhb;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzij<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzfg<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzij;Lcom/google/android/gms/internal/mlkit_common/zzfg;Lcom/google/android/gms/internal/mlkit_common/zzhb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_common/zzij<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_common/zzfg<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_common/zzhb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzc:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_common/zzij;Lcom/google/android/gms/internal/mlkit_common/zzfg;Lcom/google/android/gms/internal/mlkit_common/zzhb;)Lcom/google/android/gms/internal/mlkit_common/zzhe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/mlkit_common/zzij<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_common/zzfg<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_common/zzhb;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_common/zzhe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhe;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzhe;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzij;Lcom/google/android/gms/internal/mlkit_common/zzfg;Lcom/google/android/gms/internal/mlkit_common/zzhb;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzc:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzjd;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/mlkit_common/zzjd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->zzd()Ljava/util/Iterator;

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

    check-cast v2, Lcom/google/android/gms/internal/mlkit_common/zzfn;

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_common/zzfn;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzja;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzja;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzja;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_common/zzfn;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_common/zzfn;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_common/zzge;

    if-eqz v3, :cond_0

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_common/zzfn;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzge;->zza()Lcom/google/android/gms/internal/mlkit_common/zzgc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzgg;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzep;

    move-result-object v1

    .line 21
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_common/zzfn;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzjd;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzc:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzb(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zzc(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzht;->zza(Lcom/google/android/gms/internal/mlkit_common/zzij;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzc:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzht;->zza(Lcom/google/android/gms/internal/mlkit_common/zzfg;Ljava/lang/Object;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->zzf()Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzij;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzc(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzc:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
