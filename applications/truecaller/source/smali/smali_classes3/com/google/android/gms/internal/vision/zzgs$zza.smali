.class public Lcom/google/android/gms/internal/vision/zzgs$zza;
.super Lcom/google/android/gms/internal/vision/zzew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzgs$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzew<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzwa:Lcom/google/android/gms/internal/vision/zzgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public zzwb:Lcom/google/android/gms/internal/vision/zzgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public zzwc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzew;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwa:Lcom/google/android/gms/internal/vision/zzgs;

    .line 3
    sget v0, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwo:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzgs;Lcom/google/android/gms/internal/vision/zzgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzir;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/vision/zzft;Lcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzft;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfy()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzft;)Lcom/google/android/gms/internal/vision/zzfy;

    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 16
    :cond_1
    throw p1
.end method

.method private final zzb([BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs$zza;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfy()V

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    const/4 v5, 0x0

    add-int/lit8 v6, p3, 0x0

    new-instance v7, Lcom/google/android/gms/internal/vision/zzfb;

    invoke-direct {v7, p4}, Lcom/google/android/gms/internal/vision/zzfb;-><init>(Lcom/google/android/gms/internal/vision/zzgd;)V

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzfb;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzhc; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 7
    throw p1
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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwa:Lcom/google/android/gms/internal/vision/zzgs;

    .line 2
    sget v1, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwp:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zza;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzgb()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzgs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzgs;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzet;)Lcom/google/android/gms/internal/vision/zzew;
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzft;Lcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzew;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzb(Lcom/google/android/gms/internal/vision/zzft;Lcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzew;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzb([BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfy()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-object p0
.end method

.method public final synthetic zzdn()Lcom/google/android/gms/internal/vision/zzew;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zza;

    return-object v0
.end method

.method public zzfy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    sget v1, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwo:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    return-void
.end method

.method public zzfz()Lcom/google/android/gms/internal/vision/zzgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzin;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/zzir;->zzg(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    return-object v0
.end method

.method public final zzga()Lcom/google/android/gms/internal/vision/zzgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzgb()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/vision/zzjk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Lcom/google/android/gms/internal/vision/zzic;)V

    .line 4
    throw v1
.end method

.method public synthetic zzgb()Lcom/google/android/gms/internal/vision/zzic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfz()Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzgc()Lcom/google/android/gms/internal/vision/zzic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzga()Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzgd()Lcom/google/android/gms/internal/vision/zzic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwa:Lcom/google/android/gms/internal/vision/zzgs;

    return-object v0
.end method
