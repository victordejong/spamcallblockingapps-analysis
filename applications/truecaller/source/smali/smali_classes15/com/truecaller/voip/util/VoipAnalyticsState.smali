.class public final enum Lcom/truecaller/voip/util/VoipAnalyticsState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/util/VoipAnalyticsState;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/voip/util/VoipAnalyticsState;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "INITIATED",
        "CONNECTING",
        "CONNECTED",
        "WAKE_UP_SENT",
        "WAKE_UP_RECEIVED",
        "INIT_FAILED",
        "INVITED",
        "BUSY",
        "BLOCKED",
        "RINGING",
        "FAILED",
        "ACCEPTED",
        "REJECTED",
        "ON_HOLD",
        "RESUMED",
        "CANCELLED",
        "END",
        "RECONNECTING",
        "RECONNECTED",
        "DISCONNECTED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum ACCEPTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum BLOCKED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum BUSY:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum CANCELLED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum CONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum CONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum DISCONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum END:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum INITIATED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum INVITED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum ON_HOLD:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum RECONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum RECONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum RESUMED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum RINGING:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum WAKE_UP_RECEIVED:Lcom/truecaller/voip/util/VoipAnalyticsState;

.field public static final enum WAKE_UP_SENT:Lcom/truecaller/voip/util/VoipAnalyticsState;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/truecaller/voip/util/VoipAnalyticsState;

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "INITIATED"

    const/4 v3, 0x0

    const-string v4, "Initiated"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INITIATED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "CONNECTING"

    const/4 v3, 0x1

    const-string v4, "Connecting"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->CONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "CONNECTED"

    const/4 v3, 0x2

    const-string v4, "Connected"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->CONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "WAKE_UP_SENT"

    const/4 v3, 0x3

    const-string v4, "WakeUpSent"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->WAKE_UP_SENT:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "WAKE_UP_RECEIVED"

    const/4 v3, 0x4

    const-string v4, "WakeUpReceived"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->WAKE_UP_RECEIVED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "INIT_FAILED"

    const/4 v3, 0x5

    const-string v4, "InitFailed"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "INVITED"

    const/4 v3, 0x6

    const-string v4, "Invited"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INVITED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "BUSY"

    const/4 v3, 0x7

    const-string v4, "Busy"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->BUSY:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "BLOCKED"

    const/16 v3, 0x8

    const-string v4, "Blocked"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->BLOCKED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "RINGING"

    const/16 v3, 0x9

    const-string v4, "Ringing"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RINGING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "FAILED"

    const/16 v3, 0xa

    const-string v4, "Failed"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "ACCEPTED"

    const/16 v3, 0xb

    const-string v4, "Accepted"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->ACCEPTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "REJECTED"

    const/16 v3, 0xc

    const-string v4, "Rejected"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "ON_HOLD"

    const/16 v3, 0xd

    const-string v4, "OnHold"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->ON_HOLD:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "RESUMED"

    const/16 v3, 0xe

    const-string v4, "Resumed"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RESUMED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "CANCELLED"

    const/16 v3, 0xf

    const-string v4, "Cancelled"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->CANCELLED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "END"

    const/16 v3, 0x10

    const-string v4, "End"

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->END:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "RECONNECTING"

    const/16 v3, 0x11

    const-string v4, "Reconnecting"

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RECONNECTING:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "RECONNECTED"

    const/16 v3, 0x12

    const-string v4, "Reconnected"

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->RECONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipAnalyticsState;

    const-string v2, "DISCONNECTED"

    const/16 v3, 0x13

    const-string v4, "Disconnected"

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/util/VoipAnalyticsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->DISCONNECTED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/util/VoipAnalyticsState;->$VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsState;

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

    iput-object p3, p0, Lcom/truecaller/voip/util/VoipAnalyticsState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/util/VoipAnalyticsState;
    .locals 1

    const-class v0, Lcom/truecaller/voip/util/VoipAnalyticsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/util/VoipAnalyticsState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/util/VoipAnalyticsState;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsState;->$VALUES:[Lcom/truecaller/voip/util/VoipAnalyticsState;

    invoke-virtual {v0}, [Lcom/truecaller/voip/util/VoipAnalyticsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/util/VoipAnalyticsState;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/util/VoipAnalyticsState;->value:Ljava/lang/String;

    return-object v0
.end method
