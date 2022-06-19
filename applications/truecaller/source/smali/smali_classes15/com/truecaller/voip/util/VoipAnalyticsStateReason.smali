.class public final enum Lcom/truecaller/voip/util/VoipAnalyticsStateReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/util/VoipAnalyticsStateReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008%\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/voip/util/VoipAnalyticsStateReason;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "GET_PHONE_FAILED",
        "WAKE_UP_SENT_FAILED",
        "WAKE_UP_TIMEOUT",
        "SEARCH_FAILED",
        "GET_VOIP_ID_FAILED",
        "GET_RTM_FAILED",
        "GET_RTC_FAILED",
        "JOIN_RTC_FAILED",
        "JOIN_RTM_FAILED",
        "JOIN_RTM_CHANNEL_FAILED",
        "RECEIVED_END",
        "PRESSED_END",
        "REMOTE_LEFT_CHANNEL",
        "POLL_FAILED",
        "INVITE_TIMEOUT",
        "RING_TIMEOUT",
        "GET_CALL_INFO_FAILED",
        "CREATE_RTM_CHANNEL_FAILED",
        "CREATE_CHANNEL_FAILED",
        "LAST_ON_CALL",
        "BLOCKED",
        "REJECTED",
        "BUSY",
        "CANCELLED",
        "ALL_MEMBERS_RINGING",
        "SET_RINGING_FAILED",
        "INVITED_STATE_NOT_RECEIVED",
        "SET_JOINED_FAILED",
        "DELETED_ON_REMOTE",
        "CONNECTION_LOST",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum ALL_MEMBERS_RINGING:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum BLOCKED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum BUSY:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum CANCELLED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum CONNECTION_LOST:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum CREATE_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum CREATE_RTM_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum DELETED_ON_REMOTE:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum GET_CALL_INFO_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum GET_PHONE_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum GET_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum GET_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum GET_VOIP_ID_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum INVITED_STATE_NOT_RECEIVED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum INVITE_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum JOIN_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum JOIN_RTM_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum JOIN_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum LAST_ON_CALL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum POLL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum PRESSED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum RECEIVED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum REMOTE_LEFT_CHANNEL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum RING_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum SEARCH_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum SET_JOINED_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum SET_RINGING_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum WAKE_UP_SENT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

.field public static final enum WAKE_UP_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "GET_PHONE_FAILED"

    const/4 v3, 0x0

    const-string v4, "GetPhoneFailed"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_PHONE_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "WAKE_UP_SENT_FAILED"

    const/4 v3, 0x1

    const-string v4, "WakeUpSendFailed"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->WAKE_UP_SENT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "WAKE_UP_TIMEOUT"

    const/4 v3, 0x2

    const-string v4, "WakeUpTimeout"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->WAKE_UP_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "SEARCH_FAILED"

    const/4 v3, 0x3

    const-string v4, "SearchFailed"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->SEARCH_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "GET_VOIP_ID_FAILED"

    const/4 v3, 0x4

    const-string v4, "GetVoipIdFailed"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "GET_RTM_FAILED"

    const/4 v3, 0x5

    const-string v4, "GetRtmFailed"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "GET_RTC_FAILED"

    const/4 v3, 0x6

    const-string v4, "GetRtcFailed"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "JOIN_RTC_FAILED"

    const/4 v3, 0x7

    const-string v4, "JoinRtcFailed"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTC_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "JOIN_RTM_FAILED"

    const/16 v3, 0x8

    const-string v4, "JoinRtmFailed"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "JOIN_RTM_CHANNEL_FAILED"

    const/16 v3, 0x9

    const-string v4, "JoinRtmChannelFailed"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTM_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "RECEIVED_END"

    const/16 v3, 0xa

    const-string v4, "ReceivedEnd"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->RECEIVED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "PRESSED_END"

    const/16 v3, 0xb

    const-string v4, "PressedEnd"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->PRESSED_END:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "REMOTE_LEFT_CHANNEL"

    const/16 v3, 0xc

    const-string v4, "RemoteLeftChannel"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->REMOTE_LEFT_CHANNEL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "POLL_FAILED"

    const/16 v3, 0xd

    const-string v4, "PollFailed"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->POLL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "INVITE_TIMEOUT"

    const/16 v3, 0xe

    const-string v4, "InviteTimeout"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->INVITE_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "RING_TIMEOUT"

    const/16 v3, 0xf

    const-string v4, "RingTimeout"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->RING_TIMEOUT:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "GET_CALL_INFO_FAILED"

    const/16 v3, 0x10

    const-string v4, "GetCallInfoFailed"

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_CALL_INFO_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "CREATE_RTM_CHANNEL_FAILED"

    const/16 v3, 0x11

    const-string v4, "CreateRtmChannelFailed"

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CREATE_RTM_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "CREATE_CHANNEL_FAILED"

    const/16 v3, 0x12

    const-string v4, "CreateChannelFailed"

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CREATE_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "LAST_ON_CALL"

    const/16 v3, 0x13

    const-string v4, "LastOnCall"

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->LAST_ON_CALL:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "BLOCKED"

    const/16 v3, 0x14

    const-string v4, "Blocked"

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->BLOCKED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "REJECTED"

    const/16 v3, 0x15

    const-string v4, "Rejected"

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "BUSY"

    const/16 v3, 0x16

    const-string v4, "Busy"

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->BUSY:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "CANCELLED"

    const/16 v3, 0x17

    const-string v4, "Cancelled"

    .line 24
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CANCELLED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "ALL_MEMBERS_RINGING"

    const/16 v3, 0x18

    const-string v4, "AllMembersRinging"

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->ALL_MEMBERS_RINGING:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "SET_RINGING_FAILED"

    const/16 v3, 0x19

    const-string v4, "SetRingingFailed"

    .line 26
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->SET_RINGING_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "INVITED_STATE_NOT_RECEIVED"

    const/16 v3, 0x1a

    const-string v4, "InvitedStateNotReceived"

    .line 27
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->INVITED_STATE_NOT_RECEIVED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "SET_JOINED_FAILED"

    const/16 v3, 0x1b

    const-string v4, "SetJoinedFailed"

    .line 28
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->SET_JOINED_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "DELETED_ON_REMOTE"

    const/16 v3, 0x1c

    const-string v4, "DeletedOnRemote"

    .line 29
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->DELETED_ON_REMOTE:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const-string v2, "CONNECTION_LOST"

    const/16 v3, 0x1d

    const-string v4, "ConnectionLost"

    .line 30
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CONNECTION_LOST:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->$VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/util/VoipAnalyticsStateReason;
    .locals 1

    const-class v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/util/VoipAnalyticsStateReason;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->$VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {v0}, [Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->value:Ljava/lang/String;

    return-object v0
.end method
