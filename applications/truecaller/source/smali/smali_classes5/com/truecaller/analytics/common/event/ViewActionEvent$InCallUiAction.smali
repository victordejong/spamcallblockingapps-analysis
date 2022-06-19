.class public final enum Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/ViewActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallUiAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "INCALLUI_CALL",
        "FULL_SCREEN_PROFILE_PICTURE",
        "MUTE",
        "UNMUTE",
        "OPEN_KEYPAD",
        "HOLD",
        "UNHOLD",
        "HANG_UP",
        "ACCEPT",
        "REJECT",
        "REJECT_WITH_MESSAGE",
        "ADD_CALL",
        "AUDIO_ROUTE",
        "MERGE",
        "SWAP",
        "NOTIFICATION",
        "ANSWER",
        "DECLINE",
        "SPEAKER_ON",
        "SPEAKER_OFF",
        "VOIP",
        "BUBBLE",
        "common-analytics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum ACCEPT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum ADD_CALL:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum ANSWER:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum AUDIO_ROUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum BUBBLE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum DECLINE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum FULL_SCREEN_PROFILE_PICTURE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum HANG_UP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum HOLD:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum INCALLUI_CALL:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum MERGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum MUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum NOTIFICATION:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum OPEN_KEYPAD:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum REJECT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum REJECT_WITH_MESSAGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum SPEAKER_OFF:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum SPEAKER_ON:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum SWAP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum UNHOLD:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum UNMUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

.field public static final enum VOIP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "INCALLUI_CALL"

    const/4 v3, 0x0

    const-string v4, "InCallUICall"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->INCALLUI_CALL:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "FULL_SCREEN_PROFILE_PICTURE"

    const/4 v3, 0x1

    const-string v4, "fullPicInCallUI"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->FULL_SCREEN_PROFILE_PICTURE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "MUTE"

    const/4 v3, 0x2

    const-string v4, "Mute"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->MUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "UNMUTE"

    const/4 v3, 0x3

    const-string v4, "Unmute"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->UNMUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "OPEN_KEYPAD"

    const/4 v3, 0x4

    const-string v4, "OpenKeypad"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->OPEN_KEYPAD:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "HOLD"

    const/4 v3, 0x5

    const-string v4, "Hold"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->HOLD:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "UNHOLD"

    const/4 v3, 0x6

    const-string v4, "Unhold"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->UNHOLD:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "HANG_UP"

    const/4 v3, 0x7

    const-string v4, "Hangup"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->HANG_UP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "ACCEPT"

    const/16 v3, 0x8

    const-string v4, "Accept"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->ACCEPT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "REJECT"

    const/16 v3, 0x9

    const-string v4, "Reject"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->REJECT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "REJECT_WITH_MESSAGE"

    const/16 v3, 0xa

    const-string v4, "RejectWithMessage"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->REJECT_WITH_MESSAGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "ADD_CALL"

    const/16 v3, 0xb

    const-string v4, "AddCall"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->ADD_CALL:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "AUDIO_ROUTE"

    const/16 v3, 0xc

    const-string v4, "AudioRoute"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->AUDIO_ROUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "MERGE"

    const/16 v3, 0xd

    const-string v4, "Merge"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->MERGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "SWAP"

    const/16 v3, 0xe

    const-string v4, "Swap"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->SWAP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "NOTIFICATION"

    const/16 v3, 0xf

    const-string v4, "Notification"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->NOTIFICATION:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "ANSWER"

    const/16 v3, 0x10

    const-string v4, "Answer"

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->ANSWER:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "DECLINE"

    const/16 v3, 0x11

    const-string v4, "Decline"

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->DECLINE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "SPEAKER_ON"

    const/16 v3, 0x12

    const-string v4, "SpeakerOn"

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->SPEAKER_ON:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "SPEAKER_OFF"

    const/16 v3, 0x13

    const-string v4, "SpeakerOff"

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->SPEAKER_OFF:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "VOIP"

    const/16 v3, 0x14

    const-string v4, "SwitchToVoip"

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->VOIP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    const-string v2, "BUBBLE"

    const/16 v3, 0x15

    const-string v4, "CallingBubbleClicked"

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->BUBBLE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

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

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->value:Ljava/lang/String;

    return-object v0
.end method
