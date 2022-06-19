.class public final enum Lcom/truecaller/voip/VoipStateReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/VoipStateReason;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/voip/VoipStateReason;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SEARCH_FAILED",
        "GET_PHONE_FAILED",
        "GET_VOIP_ID_FAILED",
        "GET_RTM_TOKEN_FAILED",
        "GET_RTC_TOKEN_FAILED",
        "LOGIN_RTM_FAILED",
        "JOIN_CHANNEL_FAILED",
        "PEER_LEFT_CHANNEL",
        "EMPTY_CHANNEL",
        "CONNECTION_STATE_CHANGED",
        "INVITE_FAILED",
        "INVITE_TIMEOUT",
        "WAKE_UP_TIMEOUT",
        "INVITE_CANCELLED",
        "HUNG_UP",
        "RECEIVED_END",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/VoipStateReason;

.field public static final enum CONNECTION_STATE_CHANGED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum EMPTY_CHANNEL:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum GET_PHONE_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum GET_RTC_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum GET_RTM_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum GET_VOIP_ID_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum HUNG_UP:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum INVITE_CANCELLED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum INVITE_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum INVITE_TIMEOUT:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum JOIN_CHANNEL_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum LOGIN_RTM_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum PEER_LEFT_CHANNEL:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum RECEIVED_END:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum SEARCH_FAILED:Lcom/truecaller/voip/VoipStateReason;

.field public static final enum WAKE_UP_TIMEOUT:Lcom/truecaller/voip/VoipStateReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/truecaller/voip/VoipStateReason;

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "SEARCH_FAILED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->SEARCH_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "GET_PHONE_FAILED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->GET_PHONE_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "GET_VOIP_ID_FAILED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "GET_RTM_TOKEN_FAILED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->GET_RTM_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "GET_RTC_TOKEN_FAILED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->GET_RTC_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "LOGIN_RTM_FAILED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->LOGIN_RTM_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "JOIN_CHANNEL_FAILED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->JOIN_CHANNEL_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "PEER_LEFT_CHANNEL"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->PEER_LEFT_CHANNEL:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "EMPTY_CHANNEL"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->EMPTY_CHANNEL:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "CONNECTION_STATE_CHANGED"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->CONNECTION_STATE_CHANGED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "INVITE_FAILED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->INVITE_FAILED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "INVITE_TIMEOUT"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->INVITE_TIMEOUT:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "WAKE_UP_TIMEOUT"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->WAKE_UP_TIMEOUT:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "INVITE_CANCELLED"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->INVITE_CANCELLED:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "HUNG_UP"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->HUNG_UP:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipStateReason;

    const-string v2, "RECEIVED_END"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipStateReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipStateReason;->RECEIVED_END:Lcom/truecaller/voip/VoipStateReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/VoipStateReason;->$VALUES:[Lcom/truecaller/voip/VoipStateReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/VoipStateReason;
    .locals 1

    const-class v0, Lcom/truecaller/voip/VoipStateReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/VoipStateReason;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/VoipStateReason;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/VoipStateReason;->$VALUES:[Lcom/truecaller/voip/VoipStateReason;

    invoke-virtual {v0}, [Lcom/truecaller/voip/VoipStateReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/VoipStateReason;

    return-object v0
.end method
