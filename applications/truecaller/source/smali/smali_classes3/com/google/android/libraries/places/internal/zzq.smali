.class public final Lcom/google/android/libraries/places/internal/zzq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:Lcom/google/android/libraries/places/internal/zzp;

.field private final zzd:Z

.field private final zze:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)V
    .locals 6

    .line 1
    iget-object v2, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget v4, p2, Landroid/net/wifi/ScanResult;->level:I

    iget v5, p2, Landroid/net/wifi/ScanResult;->frequency:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzq;-><init>(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "[ESS]"

    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[IBSS]"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".*WPA[0-9]*-PSK.*"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p3, Lcom/google/android/libraries/places/internal/zzp;->zzb:Lcom/google/android/libraries/places/internal/zzp;

    goto :goto_1

    :cond_1
    const-string v0, ".*WPA[0-9]*-EAP.*"

    .line 7
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 8
    sget-object p3, Lcom/google/android/libraries/places/internal/zzp;->zzc:Lcom/google/android/libraries/places/internal/zzp;

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    sget-object p3, Lcom/google/android/libraries/places/internal/zzp;->zza:Lcom/google/android/libraries/places/internal/zzp;

    goto :goto_1

    .line 10
    :cond_3
    sget-object p3, Lcom/google/android/libraries/places/internal/zzp;->zzd:Lcom/google/android/libraries/places/internal/zzp;

    :goto_1
    move-object v3, p3

    if-eqz p1, :cond_4

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    move v4, p1

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v5, p5

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzq;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/zzp;ZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/zzp;ZI)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzq;->zza:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzq;->zzb:I

    .line 17
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzq;->zzc:Lcom/google/android/libraries/places/internal/zzp;

    .line 18
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/zzq;->zzd:Z

    .line 19
    iput p5, p0, Lcom/google/android/libraries/places/internal/zzq;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzq;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzq;->zzb:I

    return v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzq;->zzc:Lcom/google/android/libraries/places/internal/zzp;

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzq;->zzd:Z

    return v0
.end method

.method public final zze()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzq;->zze:I

    return v0
.end method
