.class public abstract Lcom/tenor/android/core/util/AbstractNetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBatchSize:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchSize(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->updateBatchSize(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-static {v3}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->parseIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getNetworkSubtypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "UNKNOWN"

    :goto_0
    return-object p0
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "UNKNOWN"

    :goto_0
    return-object p0
.end method

.method private static getNetworkTypeNameCompat(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x11

    const-string v1, "UNKNOWN"

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    move-object p0, v1

    goto :goto_0

    :pswitch_0
    const-string p0, "ETHERNET"

    goto :goto_0

    :pswitch_1
    const-string p0, "DUMMY"

    goto :goto_0

    :pswitch_2
    const-string p0, "BLUETOOTH"

    goto :goto_0

    :pswitch_3
    const-string p0, "WIMAX"

    goto :goto_0

    :pswitch_4
    const-string p0, "MOBILE_HIPRI"

    goto :goto_0

    :pswitch_5
    const-string p0, "MOBILE_DUN"

    goto :goto_0

    :pswitch_6
    const-string p0, "MOBILE_SUPL"

    goto :goto_0

    :pswitch_7
    const-string p0, "MOBILE_MMS"

    goto :goto_0

    :pswitch_8
    const-string p0, "WIFI"

    goto :goto_0

    :pswitch_9
    const-string p0, "MOBILE"

    goto :goto_0

    :cond_0
    const-string p0, "VPN"

    :goto_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    const-string v1, "IWLAN"

    goto :goto_1

    :pswitch_b
    const-string v1, "TD_SCDMA"

    goto :goto_1

    :pswitch_c
    const-string v1, "GSM"

    goto :goto_1

    :pswitch_d
    const-string v1, "HSPAP"

    goto :goto_1

    :pswitch_e
    const-string v1, "EHRPD"

    goto :goto_1

    :pswitch_f
    const-string v1, "LTE"

    goto :goto_1

    :pswitch_10
    const-string v1, "EVDO_B"

    goto :goto_1

    :pswitch_11
    const-string v1, "IDEN"

    goto :goto_1

    :pswitch_12
    const-string v1, "HSPA"

    goto :goto_1

    :pswitch_13
    const-string v1, "HSUPA"

    goto :goto_1

    :pswitch_14
    const-string v1, "HSDPA"

    goto :goto_1

    :pswitch_15
    const-string v1, "1xRTT"

    goto :goto_1

    :pswitch_16
    const-string v1, "EVDO_A"

    goto :goto_1

    :pswitch_17
    const-string v1, "EVDO_0"

    goto :goto_1

    :pswitch_18
    const-string v1, "CDMA"

    goto :goto_1

    :pswitch_19
    const-string v1, "UMTS"

    goto :goto_1

    :pswitch_1a
    const-string v1, "EDGE"

    goto :goto_1

    :pswitch_1b
    const-string v1, "GPRS"

    :goto_1
    const-string p1, "-"

    .line 3
    invoke-static {p0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static getNetworkTypeNameCompat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {v0, p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkTypeNameCompat(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static isCellularConnected(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFastNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {v0, p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->isNetworkConnected(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNetworkConnected(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3a

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x25

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input: "

    const-string v2, " is neither IPv4, nor IPv6"

    invoke-static {v1, p0, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateBatchSize(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x6

    if-nez p0, :cond_0

    .line 1
    sput v0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractNetworkUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-ne v1, v2, :cond_2

    .line 5
    sput v3, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 8
    :pswitch_0
    sput v0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    goto :goto_0

    .line 9
    :pswitch_1
    sput v3, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xc

    .line 10
    sput p0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    goto :goto_0

    .line 11
    :cond_3
    sput v0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    .line 12
    :goto_0
    sget p0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    return p0

    .line 13
    :cond_4
    :goto_1
    sput v0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static updateBatchSize(F)V
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_0

    const/16 p0, 0x18

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-le p0, v0, :cond_1

    const/16 p0, 0xc

    goto :goto_0

    :cond_1
    const/4 p0, 0x6

    .line 14
    :goto_0
    sput p0, Lcom/tenor/android/core/util/AbstractNetworkUtils;->sBatchSize:I

    return-void
.end method
