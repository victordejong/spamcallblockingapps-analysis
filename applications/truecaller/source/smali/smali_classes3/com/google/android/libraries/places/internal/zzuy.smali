.class public final Lcom/google/android/libraries/places/internal/zzuy;
.super Lcom/google/android/libraries/places/internal/zzuw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzuw<",
        "Lcom/google/android/libraries/places/internal/zzuz;",
        "Lcom/google/android/libraries/places/internal/zzuz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzuw;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzsf;->zzb:Lcom/google/android/libraries/places/internal/zzuz;

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzvq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzuz;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzuz;->zzb(Lcom/google/android/libraries/places/internal/zzvq;)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p2, Lcom/google/android/libraries/places/internal/zzuz;

    .line 5
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzsf;->zzb:Lcom/google/android/libraries/places/internal/zzuz;

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/libraries/places/internal/zzuz;

    check-cast p2, Lcom/google/android/libraries/places/internal/zzuz;

    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzuz;->zza()Lcom/google/android/libraries/places/internal/zzuz;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzuz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzuz;->zza(Lcom/google/android/libraries/places/internal/zzuz;Lcom/google/android/libraries/places/internal/zzuz;)Lcom/google/android/libraries/places/internal/zzuz;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzsf;->zzb:Lcom/google/android/libraries/places/internal/zzuz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzuz;->zzb()V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzvq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/libraries/places/internal/zzuz;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzuz;->zza(Lcom/google/android/libraries/places/internal/zzvq;)V

    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzuz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzuz;->zzc()I

    move-result p1

    return p1
.end method

.method public final synthetic zzd(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzuz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzuz;->zzd()I

    move-result p1

    return p1
.end method
