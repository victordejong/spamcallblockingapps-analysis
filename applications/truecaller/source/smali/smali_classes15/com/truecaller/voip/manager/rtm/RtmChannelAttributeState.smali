.class public final enum Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Added",
        "Joined",
        "Invited",
        "Ringing",
        "Declined",
        "TimedOut",
        "OnHold",
        "Busy",
        "ClockSkew",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum Added:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum Busy:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum ClockSkew:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum Declined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum Invited:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum Joined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum OnHold:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum Ringing:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

.field public static final enum TimedOut:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "Added"

    const/4 v3, 0x0

    const-string v4, "ADDED"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Added:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "Joined"

    const/4 v3, 0x1

    const-string v4, "JOINED"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Joined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "Invited"

    const/4 v3, 0x2

    const-string v4, "INVITED"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Invited:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "Ringing"

    const/4 v3, 0x3

    const-string v4, "RINGING"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Ringing:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "Declined"

    const/4 v3, 0x4

    const-string v4, "DECLINED"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Declined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "TimedOut"

    const/4 v3, 0x5

    const-string v4, "TIMED_OUT"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->TimedOut:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "OnHold"

    const/4 v3, 0x6

    const-string v4, "ON_HOLD"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->OnHold:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "Busy"

    const/4 v3, 0x7

    const-string v4, "BUSY"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Busy:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v2, "ClockSkew"

    const/16 v3, 0x8

    .line 9
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->ClockSkew:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->$VALUES:[Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

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

    iput-object p3, p0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;
    .locals 1

    const-class v0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->$VALUES:[Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v0}, [Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->value:Ljava/lang/String;

    return-object v0
.end method
