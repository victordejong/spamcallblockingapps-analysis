.class public Lio/agora/rtc/internal/CommonUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;,
        Lio/agora/rtc/internal/CommonUtility$MobileType;
    }
.end annotation


# static fields
.field private static final PREFIX_URI:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "CommonUtility"

.field private static final VIDEO_SOURCE_TYPE_CUSTOMIZED:I = 0x2

.field private static final VIDEO_SOURCE_TYPE_DEFAULT:I = 0x1

.field private static final VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED:I = 0x3

.field private static final VIDEO_SOURCE_TYPE_NULL:I

.field private static mApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private batteryPercentage:I

.field private gatewayIp:Ljava/lang/String;

.field private localIpv4:Ljava/lang/String;

.field private localIpv6:Ljava/lang/String;

.field private volatile mAccessible:Z

.field private mAudioOnly:Z

.field private mBridgeHandle:J

.field private mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoEnabled:Z

.field private mMobileType:I

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationObserver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

.field private mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

.field private mVideoSourceType:I

.field private shouldGetIp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 4
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 5
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 6
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    const/16 v3, 0xff

    .line 9
    iput v3, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    .line 10
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 11
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mLocalVideoEnabled:Z

    const/4 v2, 0x1

    .line 12
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mVideoSourceType:I

    .line 13
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 14
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->localIpv4:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->localIpv6:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->gatewayIp:Ljava/lang/String;

    .line 17
    iput-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->shouldGetIp:Z

    .line 18
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    .line 19
    iput-boolean p4, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    .line 20
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 21
    iput-wide p2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 22
    :try_start_0
    new-instance p2, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-direct {p2, p0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object p2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    const-string p2, "phone"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 24
    iget-object p3, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    const/16 p4, 0x120

    invoke-virtual {p2, p3, p4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 25
    sget-object p3, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string p4, "Unable to create PhoneStateListener, "

    invoke-static {p3, p4, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/CommonUtility;->monitorConnectionEvent(Z)V

    .line 27
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/CommonUtility;->monitorPowerChange(Z)V

    .line 28
    invoke-direct {p0, p1, v2}, Lio/agora/rtc/internal/CommonUtility;->monitorOrientationChange(Landroid/content/Context;Z)V

    .line 29
    iput-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 30
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string p2, "[init] done!"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/internal/CommonUtility;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->checkOrientation(I)V

    return-void
.end method

.method public static synthetic access$100(Lio/agora/rtc/internal/CommonUtility;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    return p0
.end method

.method public static synthetic access$200(Lio/agora/rtc/internal/CommonUtility;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->updateViewOrientation()V

    return-void
.end method

.method public static synthetic access$300(Lio/agora/rtc/internal/CommonUtility;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static canGetDefaultContext()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v0, 0x1

    return v0
.end method

.method private static checkAccessNetworkState(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static checkAccessWifiState(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private checkOrientation(I)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x122

    const/16 v1, 0xc8

    const/16 v2, 0xfa

    const/16 v3, 0x6e

    const/16 v4, 0xa0

    const/16 v5, 0x46

    const/16 v6, 0x14

    const/16 v7, 0x154

    if-gt p1, v7, :cond_4

    if-lt p1, v6, :cond_4

    if-le p1, v5, :cond_2

    if-lt p1, v3, :cond_4

    :cond_2
    if-le p1, v4, :cond_3

    if-lt p1, v1, :cond_4

    :cond_3
    if-le p1, v2, :cond_5

    if-ge p1, v0, :cond_5

    .line 3
    :cond_4
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->updateViewOrientation()V

    :cond_5
    if-gt p1, v7, :cond_9

    if-ge p1, v6, :cond_6

    goto :goto_0

    :cond_6
    if-le p1, v5, :cond_7

    if-ge p1, v3, :cond_7

    .line 4
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const/16 p1, 0xb4

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyGravityOriChange(JI)I

    goto :goto_1

    :cond_7
    if-le p1, v4, :cond_8

    if-ge p1, v1, :cond_8

    .line 5
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const/16 p1, 0x5a

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyGravityOriChange(JI)I

    goto :goto_1

    :cond_8
    if-le p1, v2, :cond_a

    if-ge p1, v0, :cond_a

    .line 6
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyGravityOriChange(JI)I

    goto :goto_1

    .line 7
    :cond_9
    :goto_0
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const/16 p1, 0x10e

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyGravityOriChange(JI)I

    :cond_a
    :goto_1
    return-void
.end method

.method private checkVoipPermissions(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, -0x9

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    const-string p2, "android.permission.INTERNET"

    .line 8
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string p2, "Do not have Internet permission!"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    .line 11
    sget-object p2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v0, "Do not have enough permission! "

    invoke-static {p2, v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private checkVoipPermissions(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.INTERNET"

    .line 3
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 4
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 5
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lio/agora/rtc/internal/CommonUtility;->mVideoSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mLocalVideoEnabled:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lio/agora/rtc/utils/CameraUtils;->checkCameraPermission(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, " is not granted"

    invoke-static {p2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disableOrientationListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 5
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "[disableOrientationListener] done!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "[disableOrientationListener] mOrientationListener is null!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doGetNetworkInfo(Landroid/content/Context;)Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 1
    iget-boolean v1, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;

    invoke-direct {v1}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;-><init>()V

    .line 3
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->checkAccessNetworkState(Landroid/content/Context;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 4
    iput-object v3, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 5
    iput-object v3, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 6
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 7
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 8
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    .line 9
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    return-object v1

    .line 10
    :cond_1
    iget-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->shouldGetIp:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Lio/agora/rtc/internal/CommonUtility;->getLocalHost(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    iput-object v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp4:Ljava/lang/String;

    .line 13
    :cond_2
    invoke-static {v4}, Lio/agora/rtc/internal/CommonUtility;->getLocalHost(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 14
    iput-object v5, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp6:Ljava/lang/String;

    .line 15
    :cond_3
    iput-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->localIpv4:Ljava/lang/String;

    .line 16
    iput-object v5, p0, Lio/agora/rtc/internal/CommonUtility;->localIpv6:Ljava/lang/String;

    .line 17
    iput-boolean v4, p0, Lio/agora/rtc/internal/CommonUtility;->shouldGetIp:Z

    goto :goto_0

    .line 18
    :cond_4
    iget-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->localIpv4:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 19
    iput-object v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp4:Ljava/lang/String;

    .line 20
    :cond_5
    iget-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->localIpv6:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 21
    iput-object v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp6:Ljava/lang/String;

    .line 22
    :cond_6
    :goto_0
    invoke-static {p1}, Lio/agora/rtc/internal/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result v5

    iput v5, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    iput v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    .line 25
    :cond_7
    invoke-static {}, Lio/agora/rtc/internal/Connectivity;->getDnsList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->dnsList:Ljava/util/ArrayList;

    .line 26
    iget v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_c

    .line 27
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->checkAccessWifiState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    iput-object v3, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 29
    iput-object v3, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 30
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 31
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 32
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    .line 33
    iput v4, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    return-object v1

    :cond_8
    const-string v0, "wifi"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 35
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->gatewayIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 37
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->gatewayIp:Ljava/lang/String;

    .line 39
    iput-object v0, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp4:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_9
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->gatewayIp:Ljava/lang/String;

    iput-object v0, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp4:Ljava/lang/String;

    .line 41
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 42
    iput-object v3, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 43
    iput-object v3, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    const/4 v2, 0x5

    .line 45
    invoke-static {v0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 46
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    .line 47
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    .line 48
    iput p1, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_b

    const/16 p1, 0x65

    .line 49
    iput p1, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    goto :goto_2

    :cond_b
    const/16 v0, 0x960

    if-lt p1, v0, :cond_e

    const/16 p1, 0x64

    .line 50
    iput p1, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    goto :goto_2

    .line 51
    :cond_c
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    if-eqz p1, :cond_d

    .line 52
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->gatewayIp:Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getRssi()I

    move-result p1

    iput p1, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 54
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getLevel()I

    move-result p1

    iput p1, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 55
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getAsuLevel()I

    move-result p1

    iput p1, v1, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 56
    :cond_d
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->gatewayIp:Ljava/lang/String;

    :catch_0
    :cond_e
    :goto_2
    return-object v1

    :cond_f
    :goto_3
    return-object v0
.end method

.method private enableOrientationListener(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lio/agora/rtc/internal/CommonUtility$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lio/agora/rtc/internal/CommonUtility$1;-><init>(Lio/agora/rtc/internal/CommonUtility;Landroid/content/Context;I)V

    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 4
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    .line 5
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v0, "[enableOrientationListener] done!"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create OrientationEventListener, "

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static getAppPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAssetsCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssetsCacheFile filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :try_start_0
    const-string v1, "wm_image_cache"

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 11
    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 13
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 16
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 17
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 19
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    return-object p1
.end method

.method public static getContextInfo(Landroid/content/Context;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;-><init>()V

    .line 2
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->buildDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 3
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 4
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getSystemInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->getAppPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    const-string p0, ""

    .line 8
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 17
    :cond_4
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 19
    :cond_5
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    .line 21
    :cond_6
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 23
    :cond_7
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->marshall()[B

    move-result-object p0

    return-object p0
.end method

.method public static getLocalHost(Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 3
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 6
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_5

    .line 7
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_5

    .line 8
    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    if-nez v2, :cond_4

    .line 9
    invoke-virtual {v5}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_4
    invoke-virtual {v5}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_5

    .line 11
    invoke-virtual {v5}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_2

    .line 12
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2

    .line 13
    check-cast v4, Ljava/net/Inet6Address;

    if-nez v2, :cond_6

    .line 14
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_6
    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 16
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    :catch_0
    :cond_8
    return-object v0
.end method

.method public static getLocalHostList()[Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    const/4 v4, 0x1

    .line 7
    invoke-static {v3, v4}, Lio/agora/rtc/internal/CommonUtility;->inetAddressToIpAddress(Ljava/net/InetAddress;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    :catch_0
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRandomUUID()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static inetAddressToIpAddress(Ljava/net/InetAddress;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/net/Inet4Address;

    .line 4
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/net/Inet6Address;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    check-cast p0, Ljava/net/Inet6Address;

    .line 7
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSimulatorProperty()Z
    .locals 11

    const-string v0, "android"

    const-string v1, ""

    .line 1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "ro.hardware"

    .line 2
    invoke-static {v5}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "intel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    :cond_0
    move v5, v4

    goto :goto_0

    .line 4
    :catch_0
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v6, "get property hardware fail."

    invoke-static {v5, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v5, v3

    .line 5
    :goto_0
    sget-object v6, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hardware = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", suspectCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v7, "os.arch"

    .line 6
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 7
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "i686"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v9, "asus"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arch = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 9
    :catch_1
    sget-object v2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v6, "get property arch fail."

    invoke-static {v2, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le v2, v6, :cond_b

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ttvm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    add-int/lit8 v5, v5, 0xa

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    :try_start_2
    const-string v1, "ro.build.flavor"

    .line 13
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "vbox"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "sdk_gphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 15
    sget-object v2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildFlavor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 16
    :catch_2
    sget-object v1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v2, "get property buildFlavor fail."

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    :try_start_3
    const-string v1, "ro.product.board"

    .line 17
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "goldfish"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v2, v6

    if-eqz v2, :cond_9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 19
    sget-object v2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "productBoard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 20
    :catch_3
    sget-object v1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v2, "get property productBoard fail."

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    :try_start_4
    const-string v1, "ro.board.platform"

    .line 21
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 23
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boardPlatform = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 24
    :catch_4
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "get property boardPlatform fail."

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    if-lez v5, :cond_c

    move v3, v4

    :cond_c
    return v3
.end method

.method private monitorOrientationChange(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->enableOrientationListener(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->regiseterBroadcaster(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->disableOrientationListener()V

    .line 5
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->unregisterBroadcaster(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private native nativeAudioRoutingPhoneChanged(JZII)V
.end method

.method private native nativeNotifyGravityOriChange(JI)I
.end method

.method private native nativeNotifyNetworkChange(J[B)I
.end method

.method private native nativeNotifyOrientationChange(JI)I
.end method

.method private regiseterBroadcaster(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Lio/agora/rtc/internal/CommonUtility$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/CommonUtility$2;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v0, "[regiseterBroadcaster] done!"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterBroadcaster(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v0, "[unregisterBroadcaster] done!"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateViewOrientation()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAudioOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "[updateViewOrientation] display is null!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 6
    iget v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 8
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    invoke-direct {p0, v2, v3, v1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    goto :goto_0

    .line 9
    :cond_5
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 10
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    invoke-direct {p0, v2, v3, v1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    goto :goto_0

    .line 11
    :cond_6
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 12
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    invoke-direct {p0, v2, v3, v1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 14
    iget-wide v1, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    :goto_0
    return-void

    .line 15
    :cond_8
    :goto_1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "[updateViewOrientation] mContext is null or mAccessible is false!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 2
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 3
    iget-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "phone"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 5
    iget-object v3, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorConnectionEvent(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorPowerChange(Z)V

    .line 9
    invoke-direct {p0, v1, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorOrientationChange(Landroid/content/Context;Z)V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 11
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "[destroy] done!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAndroidVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBatteryLifePercent()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    return v0

    :cond_0
    const/16 v0, 0xff

    return v0
.end method

.method public getFrontCameraIndex(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtc/internal/DeviceUtils;->selectFrontCamera(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getNetworkInfo()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->doGetNetworkInfo(Landroid/content/Context;)Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->marshall()[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getNetworkType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->checkAccessNetworkState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getNumberOfCameras(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtc/internal/DeviceUtils;->getNumberOfCameras(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public isSimulator()I
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "netease"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 3
    :goto_0
    :try_start_2
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manufacturer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v3, v0

    :catch_1
    move v4, v1

    .line 4
    :catch_2
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v6, "get manufacturer info fail."

    invoke-static {v5, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_1
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->isSimulatorProperty()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 6
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    const-string v7, "welldo"

    if-le v5, v6, :cond_4

    const-string v0, "nokia"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "Nokia_N1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "N1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    if-lez v4, :cond_6

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "unknown"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-lez v4, :cond_6

    .line 11
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public isSpeakerphoneEnabled(Landroid/content/Context;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p1

    return p1
.end method

.method public monitorConnectionEvent(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-nez p1, :cond_2

    .line 2
    :try_start_0
    new-instance p1, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    invoke-direct {p1, p0}, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create ConnectionChangeBroadcastReceiver, "

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method public monitorPowerChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    if-nez p1, :cond_2

    .line 2
    :try_start_0
    new-instance p1, Lio/agora/rtc/internal/PowerConnectionReceiver;

    invoke-direct {p1, p0}, Lio/agora/rtc/internal/PowerConnectionReceiver;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create PowerConnectionReceiver, "

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyNetworkChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->shouldGetIp:Z

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/internal/CommonUtility;->getNetworkInfo()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v1, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyNetworkChange(J[B)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onPhoneStateChanged(ZII)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/CommonUtility;->nativeAudioRoutingPhoneChanged(JZII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPowerChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLocalVideoEnableState(Z)V
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalVideoEnableState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility;->mLocalVideoEnabled:Z

    return-void
.end method

.method public updateVideoSourceType(I)V
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoSourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lio/agora/rtc/internal/CommonUtility;->mVideoSourceType:I

    return-void
.end method
