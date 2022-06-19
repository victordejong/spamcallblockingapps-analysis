.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/graphics/Point;

.field public j:Landroid/view/WindowInsets;

.field public final k:Lcom/mopub/common/privacy/PersonalInfoManager;

.field public final l:Lcom/mopub/common/privacy/ConsentData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->k:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->l:Lcom/mopub/common/privacy/ConsentData;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->getConsentData()Lcom/mopub/common/privacy/ConsentData;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->l:Lcom/mopub/common/privacy/ConsentData;

    :goto_0
    return-void
.end method


# virtual methods
.method public i(Lcom/mopub/common/ClientMetadata;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->f:Ljava/lang/String;

    const-string v1, "id"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nv"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->d()V

    .line 6
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->e()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 8
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 9
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 10
    invoke-virtual {p0, v1}, Lcom/mopub/common/BaseUrlGenerator;->h([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bundle"

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->g:Ljava/lang/String;

    const-string v2, "q"

    .line 15
    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "user_data_q"

    .line 19
    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ll"

    invoke-virtual {p0, v5, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lla"

    invoke-virtual {p0, v5, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    long-to-int v1, v5

    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "llf"

    .line 28
    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "llsdk"

    const-string v2, "1"

    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3
    :goto_1
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "z"

    .line 31
    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "o"

    .line 33
    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/AdUrlGenerator;->i:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/mopub/common/AdUrlGenerator;->j:Landroid/view/WindowInsets;

    if-eqz v2, :cond_4

    .line 35
    iget v6, v2, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 36
    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_5
    move v2, v3

    .line 37
    :goto_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    const-string v9, "ch"

    const-string v10, "cw"

    const-string v11, ""

    if-lt v7, v8, :cond_6

    if-eqz v5, :cond_6

    .line 38
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 39
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    .line 40
    iget v7, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 41
    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v12

    sub-int/2addr v8, v12

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    sub-int/2addr v8, v5

    .line 42
    invoke-static {v11}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 44
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_4
    invoke-static {v11}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "w"

    invoke-virtual {p0, v5, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc"

    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v2, v11

    goto :goto_5

    .line 51
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 52
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v5, "mcc"

    .line 53
    invoke-virtual {p0, v5, v2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_8

    goto :goto_6

    .line 54
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :goto_6
    const-string v0, "mnc"

    .line 56
    invoke-virtual {p0, v0, v11}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso"

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ct"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "av"

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/mopub/common/MoPub;->SDK_VERSION:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/mopub/common/MoPub;->g:Lcom/mopub/common/AdapterConfigurationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    goto/16 :goto_9

    .line 69
    :cond_9
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v0, Lcom/mopub/common/AdapterConfigurationManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_8

    .line 73
    :cond_a
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/common/AdapterConfiguration;

    .line 74
    :try_start_0
    invoke-interface {v5, p1}, Lcom/mopub/common/AdapterConfiguration;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_7

    .line 76
    :cond_b
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "token"

    .line 77
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v2, :cond_c

    .line 78
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v6

    .line 79
    :cond_c
    invoke-interface {v5}, Lcom/mopub/common/AdapterConfiguration;->getMoPubNetworkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 80
    :catch_0
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "JSON parsing failed for MoPub network name: "

    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 81
    invoke-interface {v5}, Lcom/mopub/common/AdapterConfiguration;->getMoPubNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 82
    invoke-static {v6, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    :goto_8
    move-object v2, v1

    :cond_e
    if-nez v2, :cond_f

    goto :goto_9

    .line 83
    :cond_f
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    const-string p1, "abt"

    .line 84
    invoke-virtual {p0, p1, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->c()V

    .line 86
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->k:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz p1, :cond_10

    .line 87
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    :cond_10
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->l:Lcom/mopub/common/privacy/ConsentData;

    if-eqz p1, :cond_11

    .line 89
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentData;->isForceGdprApplies()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    :cond_11
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->k:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz p1, :cond_12

    .line 91
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "current_consent_status"

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_12
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->l:Lcom/mopub/common/privacy/ConsentData;

    if-eqz p1, :cond_13

    .line 95
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consented_privacy_policy_version"

    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_13
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->l:Lcom/mopub/common/privacy/ConsentData;

    if-eqz p1, :cond_14

    .line 98
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_14
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mopub/network/RequestRateTracker;->getRecordForAdUnit(Ljava/lang/String;)Lcom/mopub/network/RequestRateTracker$TimeRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 101
    iget v0, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    if-ge v0, v4, :cond_15

    goto :goto_a

    .line 102
    :cond_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backoff_ms"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mReason:Ljava/lang/String;

    const-string v0, "backoff_reason"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_16
    :goto_a
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 v3, 0x4

    .line 105
    :cond_17
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "getOmidVersion() must be called on the UI thread."

    .line 106
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkUiThread(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/iab/omid/library/mopub/Omid;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "vver"

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->f:Ljava/lang/String;

    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->g:Ljava/lang/String;

    return-object p0
.end method

.method public withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->i:Landroid/graphics/Point;

    return-object p0
.end method

.method public withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Ljava/lang/String;

    return-object p0
.end method

.method public withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->j:Landroid/view/WindowInsets;

    return-object p0
.end method
