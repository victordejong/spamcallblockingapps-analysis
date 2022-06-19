.class public Lio/agora/rtc/RtcEngineConfig$LogConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/RtcEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogConfig"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public fileSize:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig$LogConfig;->filePath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/agora/rtc/RtcEngineConfig$LogConfig;->fileSize:I

    .line 4
    sget-object v0, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_INFO:Lio/agora/rtc/Constants$LogLevel;

    invoke-static {v0}, Lio/agora/rtc/Constants$LogLevel;->getValue(Lio/agora/rtc/Constants$LogLevel;)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/RtcEngineConfig$LogConfig;->level:I

    return-void
.end method
