.class public final Lcom/amazon/device/ads/DtbDeviceData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final LOG_TAG:Ljava/lang/String; = "DtbDeviceData"

.field private static deviceDataInstance:Lcom/amazon/device/ads/DtbDeviceData;


# instance fields
.field private bad_mac:Z

.field private bad_serial:Z

.field private bad_udid:Z

.field private deviceInfoJson:Lorg/json/JSONObject;

.field private deviceParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private optionalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;

.field private sha1_mac:Ljava/lang/String;

.field private sha1_serial:Ljava/lang/String;

.field private sha1_udid:Ljava/lang/String;

.field private ua:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_serial:Z

    .line 3
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_udid:Z

    .line 4
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_mac:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_udid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_serial:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->ua:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->screenSize:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->orientation:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceInfoJson:Lorg/json/JSONObject;

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DtbDeviceData;->getMacAddress(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DtbDeviceData;->getUdid(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getSerial()V

    .line 17
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getOrientation()V

    .line 18
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getScreenSize()V

    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getDeviceInfoJson()V

    .line 20
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getUserAgent()V

    .line 21
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->buildDeviceParams()V

    .line 22
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->buildOptionalParams()V

    return-void
.end method

.method private buildDeviceParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    const-string v1, "dt"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    const-string v1, "app"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    const-string v1, "aud"

    const-string v2, "3p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->ua:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceInfoJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    const-string v2, "dinfo"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private buildOptionalParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    const-string v2, "sha1_mac"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_udid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    const-string v2, "sha1_udid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_serial:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    const-string v2, "sha1_serial"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_mac:Z

    const-string v1, "true"

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    const-string v2, "badMac"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_serial:Z

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    const-string v2, "badSerial"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_udid:Z

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    const-string v2, "badUdid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getDeviceDataInstance()Lcom/amazon/device/ads/DtbDeviceData;
    .locals 2

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->deviceDataInstance:Lcom/amazon/device/ads/DtbDeviceData;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/amazon/device/ads/DtbDeviceData;

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/device/ads/DtbDeviceData;->deviceDataInstance:Lcom/amazon/device/ads/DtbDeviceData;

    goto :goto_0

    :cond_0
    const-string v0, "Invalid intialization of Device Data. Context is null"

    .line 5
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debugError(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->deviceDataInstance:Lcom/amazon/device/ads/DtbDeviceData;

    return-object v0

    :cond_2
    const-string v0, "unable to initialize advertising info without setting app context"

    .line 8
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debugError(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDeviceInfoJson()V
    .locals 12

    const-string v0, "Android"

    .line 1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getConnectionType()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getScreenPpi()I

    move-result v8

    .line 9
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_0

    .line 10
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const-string v10, "motorola"

    .line 11
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "MB502"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 13
    iget v10, v10, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 14
    :goto_1
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    const-string v11, "os"

    .line 15
    invoke-virtual {p0, v0, v11}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model"

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "make"

    .line 17
    invoke-virtual {p0, v2, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hwv"

    .line 18
    invoke-virtual {p0, v4, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osVersion"

    .line 19
    invoke-virtual {p0, v3, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country"

    .line 20
    invoke-virtual {p0, v5, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "carrier"

    .line 21
    invoke-virtual {p0, v9, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    .line 22
    invoke-virtual {p0, v6, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->screenSize:Ljava/lang/String;

    const-string v1, "screenSize"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scalingFactor"

    .line 24
    invoke-virtual {p0, v10, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ppi"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->orientation:Ljava/lang/String;

    const-string v1, "orientation"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connectionType"

    .line 27
    invoke-virtual {p0, v7, v0}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 28
    :catch_0
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unsupported encoding"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :catch_1
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JSONException while producing deviceInfoJson"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private getMacAddress(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Unable to get WIFI Manager: "

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "wifi"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})"

    .line 6
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 7
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iput-object v2, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_mac:Z

    goto :goto_3

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DtbDeviceData;->generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    goto :goto_3

    .line 12
    :cond_4
    :goto_2
    iput-object v2, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_mac:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    sget-object v1, Lcom/amazon/device/ads/DtbDeviceData;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object v2, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    goto :goto_3

    :catch_1
    move-exception p1

    .line 16
    sget-object v1, Lcom/amazon/device/ads/DtbDeviceData;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object v2, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_mac:Ljava/lang/String;

    goto :goto_3

    .line 18
    :catch_2
    iput-boolean v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_mac:Z

    :goto_3
    return-void
.end method

.method private getOrientation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbDeviceDataRetriever;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->orientation:Ljava/lang/String;

    return-void
.end method

.method private getScreenPpi()I
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 3
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v1

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 5
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v7, v0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v5

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-int v0, v3

    return v0
.end method

.method private getScreenSize()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->orientation:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbDeviceDataRetriever;->getScreenSize(Landroid/util/DisplayMetrics;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->screenSize:Ljava/lang/String;

    return-void
.end method

.method private getSerial()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2
    const-class v2, Landroid/os/Build;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/DtbCommonUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_serial:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_serial:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 6
    :catch_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_serial:Z

    :catch_1
    :goto_1
    return-void
.end method

.method private getUdid(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android_id"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "9774d56d682e549c"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DtbDeviceData;->generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_udid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/amazon/device/ads/DtbDeviceData;->sha1_udid:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_udid:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->bad_udid:Z

    :goto_1
    return-void
.end method

.method private getUserAgent()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->ua:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Unable to Get User Agent, Setting it to default"

    .line 2
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;)V

    const-string v0, "Android"

    .line 3
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->ua:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getConnectionType()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v0, 0x6

    if-eq v2, v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "13"

    return-object v0

    :cond_2
    const-string v0, "Wifi"

    return-object v0

    .line 5
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getDeviceParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getUserAgent()V

    .line 3
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->buildDeviceParams()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOptionalParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->optionalParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getParamsJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getOrientation()V

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->orientation:Ljava/lang/String;

    const-string v1, "orientation"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->getScreenSize()V

    .line 4
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->screenSize:Ljava/lang/String;

    const-string v1, "screenSize"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->placeProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceInfoJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getParamsJsonGetSafe()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceInfoJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceInfoJson:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 7
    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Error converting to JsonGetSafe"

    .line 8
    invoke-static {v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public placeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->deviceInfoJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
