.class public Lcom/nll/nativelibs/callrecording/DeviceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceManufacturer()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method private static getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getNativeCPUCommand()I
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v4, "universal9810"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v5, "universal8895"

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v5, "universal8890"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v5, "universal7880"

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "KIRIN970"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "HI6250"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "MT67"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x7

    if-eqz v3, :cond_3

    const-string v0, "LENOVO"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "HMD GLOBAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    return v5

    :cond_3
    const-string v3, "qcom"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "SAMSUNG"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    return v5

    :cond_4
    const/4 v0, 0x6

    return v0

    :cond_5
    const-string v0, "SONY"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "G8441"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "G8341"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/16 v0, 0x8

    return v0

    :cond_7
    const-string v0, "MOTOROLA"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isNexus()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_8
    return v5

    :cond_9
    :goto_1
    return v4
.end method

.method public static isAndroid71FixRequired()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "7.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "7.1.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isBlackListedFromNativeAudioRecord()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SAMSUNG"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SM-T8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isHuaweiAndroid8AndAbove()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isHuaweiWithApi3()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isHuaweiAndroid8AndAbove()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HUAWEI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "ro.build.hw_emui_api_level"

    .line 3
    invoke-static {v0}, Lcom/nll/nativelibs/callrecording/PropManager;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method private static isMediaTekCPUAndAndroid8OrAbove()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMotorolaWithApi3()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTOROLA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isNexus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNexus()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEXUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static mustUseApi3()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isHuaweiWithApi3()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isMediaTekCPUAndAndroid8OrAbove()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isMotorolaWithApi3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static sleepForAndroid71()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static useNativeAudioRecord()Z
    .locals 14

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isBlackListedFromNativeAudioRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    const/16 v4, 0x19

    if-ne v0, v4, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 3
    :goto_2
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SAMSUNG"

    .line 7
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "universal9810"

    .line 8
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "universal8895"

    .line 9
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "universal8890"

    .line 10
    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "universal7880"

    .line 11
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v12, "qcom"

    .line 12
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    move v13, v3

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v8, :cond_6

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    if-nez v4, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    const-string v8, "MOTOROLA"

    .line 13
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v12, :cond_7

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isNexus()Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v3

    goto :goto_5

    :cond_7
    move v8, v1

    :goto_5
    const-string v9, "HUAWEI"

    .line 14
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isNexus()Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v3

    goto :goto_6

    :cond_8
    move v9, v1

    :goto_6
    const-string v10, "KIRIN970"

    .line 15
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "HI6250"

    .line 16
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v2, :cond_a

    if-eqz v9, :cond_a

    if-nez v10, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    move v9, v3

    goto :goto_7

    :cond_a
    move v9, v1

    :goto_7
    const-string v10, "MT67"

    .line 17
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v2, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    move v0, v3

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    const-string v6, "SONY"

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v12, :cond_e

    if-eqz v2, :cond_e

    const-string v2, "G8441"

    .line 19
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "G8341"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move v2, v3

    goto :goto_9

    :cond_e
    move v2, v1

    :goto_9
    if-nez v4, :cond_f

    if-nez v13, :cond_f

    if-nez v9, :cond_f

    if-nez v0, :cond_f

    if-nez v8, :cond_f

    if-eqz v2, :cond_10

    :cond_f
    move v1, v3

    :cond_10
    return v1
.end method
