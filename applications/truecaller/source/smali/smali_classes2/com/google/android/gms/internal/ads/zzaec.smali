.class public final Lcom/google/android/gms/internal/ads/zzaec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaeb;

.field private zzc:Lcom/google/android/gms/internal/ads/zzahv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzalp;

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaeb;Lcom/google/android/gms/internal/ads/zzaku;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Lcom/google/android/gms/internal/ads/zzaeb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzamh;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:Z

    return-void
.end method


# virtual methods
.method public final zzA()Lcom/google/android/gms/internal/ads/zzahf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzalp;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamh;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamh;->zza()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamh;->zzb()V

    return-void
.end method

.method public final zzc(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamh;->zzc(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzahv;->zzi()Lcom/google/android/gms/internal/ads/zzalp;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamh;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    .line 7
    throw p1

    :cond_1
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:Z

    :cond_0
    return-void
.end method

.method public final zzf(Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahv;->zzw()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahv;->zzx()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:Lcom/google/android/gms/internal/ads/zzahv;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzahv;->zzak()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzy()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamh;->zzy()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamh;->zzb()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamh;->zza()V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzamh;->zzc(J)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamh;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzamh;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Lcom/google/android/gms/internal/ads/zzahf;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamh;->zza()V

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamh;->zzy()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzy()J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final zzy()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzahf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzA()Lcom/google/android/gms/internal/ads/zzahf;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzamh;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzamh;->zzz(Lcom/google/android/gms/internal/ads/zzahf;)V

    return-void
.end method
