.class public Lio/agora/rtc/RtcEngineConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/RtcEngineConfig$AreaCode;,
        Lio/agora/rtc/RtcEngineConfig$LogConfig;
    }
.end annotation


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mAreaCode:I

.field public mContext:Landroid/content/Context;

.field public mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

.field public mLogConfig:Lio/agora/rtc/RtcEngineConfig$LogConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAppId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAreaCode:I

    .line 6
    new-instance v0, Lio/agora/rtc/RtcEngineConfig$LogConfig;

    invoke-direct {v0}, Lio/agora/rtc/RtcEngineConfig$LogConfig;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mLogConfig:Lio/agora/rtc/RtcEngineConfig$LogConfig;

    return-void
.end method
