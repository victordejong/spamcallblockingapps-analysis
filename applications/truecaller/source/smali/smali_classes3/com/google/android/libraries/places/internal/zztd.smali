.class public final Lcom/google/android/libraries/places/internal/zztd;
.super Lcom/google/android/libraries/places/internal/zzsy;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzsy;-><init>(Lcom/google/android/libraries/places/internal/zztb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zztb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zztd;-><init>()V

    return-void
.end method

.method private static zzb(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/zzsp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzvc;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzsp;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/zztd;->zzb(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzsp;->zzb()V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 3
    invoke-static {p1, p3, p4}, Lcom/google/android/libraries/places/internal/zztd;->zzb(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object v0

    .line 4
    invoke-static {p2, p3, p4}, Lcom/google/android/libraries/places/internal/zztd;->zzb(Ljava/lang/Object;J)Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object p2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzsp;->zza()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 8
    invoke-interface {v0, v2}, Lcom/google/android/libraries/places/internal/zzsp;->zzb(I)Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 10
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/libraries/places/internal/zzvc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
