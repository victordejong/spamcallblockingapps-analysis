.class public final Lcom/google/android/gms/internal/ads/zzuc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:[Lcom/google/android/gms/internal/ads/zzox;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Ljava/util/List;

    .line 4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzafv;

    .line 5
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 8
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 9
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_2
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzakt;->zzb(ZLjava/lang/Object;)V

    .line 11
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzafv;->zza:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaft;

    .line 12
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 13
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 14
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    .line 15
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzH(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    .line 16
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzD:I

    .line 17
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzaf(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    .line 18
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v3

    .line 20
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    .line 21
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzamf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zznm;->zza(JLcom/google/android/gms/internal/ads/zzamf;[Lcom/google/android/gms/internal/ads/zzox;)V

    return-void
.end method
