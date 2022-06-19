.class public final enum Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "BACK",
        "MIC_ON",
        "MIC_OFF",
        "AUDIO_ROUTE_ON",
        "AUDIO_ROUTE_OFF",
        "SPEAKER_ON",
        "SPEAKER_OFF",
        "ACCEPT",
        "REJECT",
        "REJECT_WITH_MESSAGE",
        "DISMISS",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum ACCEPT:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum AUDIO_ROUTE_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum AUDIO_ROUTE_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum BACK:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum DISMISS:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum MIC_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum MIC_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum REJECT:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum REJECT_WITH_MESSAGE:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum SPEAKER_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

.field public static final enum SPEAKER_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "BACK"

    const/4 v3, 0x0

    const-string v4, "Back"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->BACK:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "MIC_ON"

    const/4 v3, 0x1

    const-string v4, "MicOn"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->MIC_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "MIC_OFF"

    const/4 v3, 0x2

    const-string v4, "MicOff"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->MIC_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "AUDIO_ROUTE_ON"

    const/4 v3, 0x3

    const-string v4, "AudioRouteOn"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->AUDIO_ROUTE_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "AUDIO_ROUTE_OFF"

    const/4 v3, 0x4

    const-string v4, "AudioRouteOff"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->AUDIO_ROUTE_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "SPEAKER_ON"

    const/4 v3, 0x5

    const-string v4, "SpeakerOn"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->SPEAKER_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "SPEAKER_OFF"

    const/4 v3, 0x6

    const-string v4, "SpeakerOff"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->SPEAKER_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "ACCEPT"

    const/4 v3, 0x7

    const-string v4, "Accept"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->ACCEPT:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "REJECT"

    const/16 v3, 0x8

    const-string v4, "Reject"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->REJECT:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "REJECT_WITH_MESSAGE"

    const/16 v3, 0x9

    const-string v4, "RejectWithMessage"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->REJECT_WITH_MESSAGE:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    const-string v2, "DISMISS"

    const/16 v3, 0xa

    const-string v4, "Dismiss"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->DISMISS:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->$VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

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

    iput-object p3, p0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;
    .locals 1

    const-class v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->$VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-virtual {v0}, [Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->value:Ljava/lang/String;

    return-object v0
.end method
