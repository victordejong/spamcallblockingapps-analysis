.class public final Lcom/google/android/gms/internal/vision/zzdk;
.super Lcom/google/android/gms/internal/vision/zzdj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/zzdj<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient size:I

.field private final transient zzlw:Lcom/google/android/gms/internal/vision/zzdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzdg<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient zzlx:[Ljava/lang/Object;

.field private final transient zzly:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzdg;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzdg<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzdj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzdk;->zzlw:Lcom/google/android/gms/internal/vision/zzdg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzdk;->zzlx:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzdk;->zzly:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/vision/zzdk;->size:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzdk;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/vision/zzdk;->size:I

    return p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/vision/zzdk;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzdk;->zzlx:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdk;->zzlw:Lcom/google/android/gms/internal/vision/zzdg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/vision/zzdg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzdk;->zzby()Lcom/google/android/gms/internal/vision/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdk;->size:I

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzdj;->zzcc()Lcom/google/android/gms/internal/vision/zzdf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzdf;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzby()Lcom/google/android/gms/internal/vision/zzdr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzdr<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzdj;->zzcc()Lcom/google/android/gms/internal/vision/zzdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzdf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzdr;

    return-object v0
.end method

.method public final zzch()Lcom/google/android/gms/internal/vision/zzdf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzdf<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzdn;-><init>(Lcom/google/android/gms/internal/vision/zzdk;)V

    return-object v0
.end method
