.class public final enum Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/live/LiveTranscoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

.field public static final enum H264:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

.field public static final enum H265:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    const-string v1, "H264"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->H264:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    .line 2
    new-instance v1, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    const-string v4, "H265"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->H265:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    new-array v4, v5, [Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->$VALUES:[Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;
    .locals 1

    .line 1
    const-class v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->$VALUES:[Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    invoke-virtual {v0}, [Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    return-object v0
.end method
