.class public Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzdh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzdh<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzdh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    .line 3
    sget v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zze;->zzd:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    .line 2
    sget v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zze;->zze:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_language_id/zzde;)Lcom/google/android/gms/internal/mlkit_language_id/zzdh;
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-object p0
.end method

.method public final synthetic zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzdh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    return-object v0
.end method

.method public zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    sget v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zze;->zzd:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-void
.end method

.method public zzd()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zzb(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzi()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhe;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)V

    .line 4
    throw v1
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzd()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zze()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzn()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-object v0
.end method
