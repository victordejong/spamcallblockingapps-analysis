.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzib;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzea;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    .line 3
    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzed;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzea;)Lcom/google/android/gms/internal/mlkit_language_id/zzed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzed;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzed;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzea;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 3
    sget v0, Lcom/google/android/gms/internal/mlkit_language_id/zzia;->zza:I

    return v0
.end method

.method public final zza(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    return-void
.end method

.method public final zza(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ID)V

    return-void
.end method

.method public final zza(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IF)V

    return-void
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(II)V

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IJ)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/mlkit_language_id/zzfq;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzfq<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 41
    iget-object v5, p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzhv;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhv;ILjava/lang/Object;)I

    move-result v3

    iget-object v5, p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfq;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhv;

    .line 42
    invoke-static {v5, v2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhv;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v3

    .line 43
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget-object v4, p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzhv;

    invoke-static {v1, v4, v6, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzea;Lcom/google/android/gms/internal/mlkit_language_id/zzhv;ILjava/lang/Object;)V

    .line 46
    iget-object v3, p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfq;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhv;

    invoke-static {v1, v3, v2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzea;Lcom/google/android/gms/internal/mlkit_language_id/zzhv;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzfz;)V

    return-void
.end method

.method public final zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzfz;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILjava/lang/String;)V

    return-void
.end method

.method public final zza(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfg;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 27
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfg;

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfg;->zza(I)Ljava/lang/Object;

    move-result-object v2

    .line 30
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILjava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 33
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 18
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 22
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 24
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 25
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IZ)V

    return-void
.end method

.method public final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    return-void
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(II)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(IJ)V

    return-void
.end method

.method public final zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzed;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    const/4 p2, 0x4

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    return-void
.end method

.method public final zzb(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzdn;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzi(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 14
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 16
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzc(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(II)V

    return-void
.end method

.method public final zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IJ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 10
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 11
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 12
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(II)V

    return-void
.end method

.method public final zzd(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(IJ)V

    return-void
.end method

.method public final zzd(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 9
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zze(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(II)V

    return-void
.end method

.method public final zze(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IJ)V

    return-void
.end method

.method public final zze(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 9
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzf(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(II)V

    return-void
.end method

.method public final zzf(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 2
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 6
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzh(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzk(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzi(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzk(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzj(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzh(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzm(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzh(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zza(II)V

    move p1, v0

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(I)V

    .line 5
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzed;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzea;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
