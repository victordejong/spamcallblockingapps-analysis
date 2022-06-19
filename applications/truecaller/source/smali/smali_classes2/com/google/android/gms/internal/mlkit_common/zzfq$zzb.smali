.class public Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;
.super Lcom/google/android/gms/internal/mlkit_common/zzej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_common/zzej<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/mlkit_common/zzfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzej;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 3
    sget v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zze;->zzd:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_common/zzhm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzhm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzhr;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 2
    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zze;->zze:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;)Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzeg;)Lcom/google/android/gms/internal/mlkit_common/zzej;
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;)Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;)Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-object p0
.end method

.method public final synthetic zzb()Lcom/google/android/gms/internal/mlkit_common/zzej;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;

    return-object v0
.end method

.method public zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zze;->zzd:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    return-void
.end method

.method public zzd()Lcom/google/android/gms/internal/mlkit_common/zzfq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_common/zzhm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzhm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzhr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zzb(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_common/zzfq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zzi()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzig;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzig;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzhb;)V

    .line 4
    throw v1
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/mlkit_common/zzhb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zze()Lcom/google/android/gms/internal/mlkit_common/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Lcom/google/android/gms/internal/mlkit_common/zzfq;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzn()Lcom/google/android/gms/internal/mlkit_common/zzhb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    return-object v0
.end method
