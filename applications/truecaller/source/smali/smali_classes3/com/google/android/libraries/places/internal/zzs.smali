.class public final Lcom/google/android/libraries/places/internal/zzs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:J


# instance fields
.field private final zzb:Landroid/net/wifi/WifiManager;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzs;->zza:J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzs;->zzb:Landroid/net/wifi/WifiManager;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzs;->zzc:Lcom/google/android/libraries/places/internal/zzb;

    return-void
.end method

.method public static final synthetic zza(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 25
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzq;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzs;->zzb:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzs;->zzb:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzr;->zza:Ljava/util/Comparator;

    .line 5
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzgo;->zza(Ljava/util/Comparator;)Lcom/google/android/libraries/places/internal/zzgo;

    move-result-object v1

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzs;->zzb:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_2
    :goto_0
    if-ge v5, v3, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/net/wifi/ScanResult;

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    .line 10
    iget-object v8, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v8, 0x3e8

    .line 12
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/zzs;->zzc:Lcom/google/android/libraries/places/internal/zzb;

    invoke-interface {v10}, Lcom/google/android/libraries/places/internal/zzb;->zza()J

    move-result-wide v10

    mul-long/2addr v10, v8

    .line 13
    iget-wide v8, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long/2addr v10, v8

    .line 14
    sget-wide v8, Lcom/google/android/libraries/places/internal/zzs;->zza:J

    cmp-long v8, v10, v8

    if-lez v8, :cond_4

    move v8, v7

    goto :goto_1

    :cond_4
    move v8, v4

    .line 15
    :goto_1
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_7

    const/16 v10, 0x5f

    .line 16
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_6

    .line 17
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_nomap"

    .line 18
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "_optout"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move v9, v7

    goto :goto_2

    :cond_6
    move v9, v4

    :goto_2
    if-nez v8, :cond_8

    if-nez v9, :cond_8

    goto :goto_4

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null SSID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    move v7, v4

    :goto_4
    if-eqz v7, :cond_2

    .line 20
    new-instance v7, Lcom/google/android/libraries/places/internal/zzq;

    invoke-direct {v7, v2, v6}, Lcom/google/android/libraries/places/internal/zzq;-><init>(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)V

    .line 21
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_9
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzgi;->zza(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    .line 23
    :cond_a
    :goto_5
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzgi;->zza()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    .line 24
    :cond_b
    :goto_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzgi;->zza()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0
.end method
