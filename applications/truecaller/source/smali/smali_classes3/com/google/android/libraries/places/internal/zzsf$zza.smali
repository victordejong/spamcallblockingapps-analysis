.class public Lcom/google/android/libraries/places/internal/zzsf$zza;
.super Lcom/google/android/libraries/places/internal/zzqv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/zzsf$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/zzqv<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/libraries/places/internal/zzsf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public zzb:Z

.field private final zzc:Lcom/google/android/libraries/places/internal/zzsf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzsf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzqv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzc:Lcom/google/android/libraries/places/internal/zzsf;

    .line 3
    sget v0, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zzd:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/libraries/places/internal/zzsf;Lcom/google/android/libraries/places/internal/zzsf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzue;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzc:Lcom/google/android/libraries/places/internal/zzsf;

    .line 2
    sget v1, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zze:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf$zza;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzf()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzsf;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza(Lcom/google/android/libraries/places/internal/zzsf;)Lcom/google/android/libraries/places/internal/zzsf$zza;

    return-object v0
.end method

.method public final synthetic zza()Lcom/google/android/libraries/places/internal/zzqv;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf$zza;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzqw;)Lcom/google/android/libraries/places/internal/zzqv;
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza(Lcom/google/android/libraries/places/internal/zzsf;)Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzsf;)Lcom/google/android/libraries/places/internal/zzsf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza(Lcom/google/android/libraries/places/internal/zzsf;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-object p0
.end method

.method public zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    sget v1, Lcom/google/android/libraries/places/internal/zzsf$zzd;->zzd:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzsf;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    .line 4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza(Lcom/google/android/libraries/places/internal/zzsf;Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    return-void
.end method

.method public final zzc()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzsf;Z)Z

    move-result v0

    return v0
.end method

.method public zzd()Lcom/google/android/libraries/places/internal/zzsf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzud;->zza()Lcom/google/android/libraries/places/internal/zzud;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzud;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzue;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzb:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zza:Lcom/google/android/libraries/places/internal/zzsf;

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzsf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzf()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zzux;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzux;-><init>(Lcom/google/android/libraries/places/internal/zzto;)V

    .line 4
    throw v1
.end method

.method public synthetic zzf()Lcom/google/android/libraries/places/internal/zzto;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzd()Lcom/google/android/libraries/places/internal/zzsf;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/libraries/places/internal/zzto;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zze()Lcom/google/android/libraries/places/internal/zzsf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/libraries/places/internal/zzto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzc:Lcom/google/android/libraries/places/internal/zzsf;

    return-object v0
.end method
