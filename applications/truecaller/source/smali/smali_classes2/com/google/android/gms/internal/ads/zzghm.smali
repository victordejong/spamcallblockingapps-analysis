.class public final Lcom/google/android/gms/internal/ads/zzghm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzghz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzghi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghi;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgfn;->zza(Lcom/google/android/gms/internal/ads/zzghi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghi;)Lcom/google/android/gms/internal/ads/zzghm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghi;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzghm<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzghm;-><init>(Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghi;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zzaM()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzghh;->zzak()Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzF(Lcom/google/android/gms/internal/ads/zzgio;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzE(Lcom/google/android/gms/internal/ads/zzgfn;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgio;->zzp(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzgfm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzght;",
            "Lcom/google/android/gms/internal/ads/zzgfm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    move-result-object v3

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzb()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_b

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzc()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzghm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    ushr-int/lit8 v4, v4, 0x3

    .line 4
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgfn;->zzf(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzghi;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzgfn;->zzg(Lcom/google/android/gms/internal/ads/zzght;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgfr;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;)Z

    move-result v4

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzd()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 9
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzb()I

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzc()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzr()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzghm;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    .line 12
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/ads/zzgfn;->zzf(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzghi;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 13
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzgfn;->zzg(Lcom/google/android/gms/internal/ads/zzght;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgfr;)V

    goto :goto_2

    .line 14
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzq()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v7

    goto :goto_2

    .line 15
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzd()Z

    move-result v8

    if-nez v8, :cond_4

    .line 16
    :goto_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzc()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    if-eqz v7, :cond_0

    if-eqz v6, :cond_9

    .line 17
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzgfn;->zzh(Lcom/google/android/gms/internal/ads/zzgex;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgfr;)V

    goto :goto_0

    .line 18
    :cond_9
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzgio;->zze(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgex;)V

    goto :goto_0

    .line 19
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzh()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_b
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    throw p2
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgej;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zza()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zzb()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object p3

    .line 3
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    .line 4
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfx;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzb:Lcom/google/android/gms/internal/ads/zzgio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzgfi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzghm;->zzd:Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
