.class public final Lcom/google/android/gms/internal/mlkit_translate/zzlr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzma<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzlk;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzms<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzjt<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzms;Lcom/google/android/gms/internal/mlkit_translate/zzjt;Lcom/google/android/gms/internal/mlkit_translate/zzlk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_translate/zzms<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzjt<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzlk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzc:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_translate/zzms;Lcom/google/android/gms/internal/mlkit_translate/zzjt;Lcom/google/android/gms/internal/mlkit_translate/zzlk;)Lcom/google/android/gms/internal/mlkit_translate/zzlr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/mlkit_translate/zzms<",
            "**>;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzjt<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzlk;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzlr<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzlr;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzms;Lcom/google/android/gms/internal/mlkit_translate/zzjt;Lcom/google/android/gms/internal/mlkit_translate/zzlk;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzc:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_translate/zznm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/mlkit_translate/zznm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zzd()Ljava/util/Iterator;

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

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzjw;

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzjw;->zzc()Lcom/google/android/gms/internal/mlkit_translate/zznn;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zznn;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zznn;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzjw;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzjw;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_translate/zzkr;

    if-eqz v3, :cond_0

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzjw;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzkr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzkr;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzkp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzkt;->zzc()Lcom/google/android/gms/internal/mlkit_translate/zziy;

    move-result-object v1

    .line 21
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zznm;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzjw;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zznm;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_translate/zznm;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzc:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zzc(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzc:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzmc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzms;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzc:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzmc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzjt;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzms;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzms;->zzb(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzlr;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzjt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zzf()Z

    move-result p1

    return p1
.end method
