.class public final enum Lcom/truecaller/voip/manager/rtm/RtmMsgAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/manager/rtm/RtmMsgAction;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/voip/manager/rtm/RtmMsgAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INVITE",
        "INVITE_SECURE",
        "REJECT",
        "BUSY",
        "ON_HOLD",
        "RESUMED",
        "END",
        "UNSUPPORTED",
        "ONLINE",
        "RINGING",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum BUSY:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum END:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum INVITE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum INVITE_SECURE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum ONLINE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum ON_HOLD:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum REJECT:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum RESUMED:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum RINGING:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

.field public static final enum UNSUPPORTED:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "INVITE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->INVITE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "INVITE_SECURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->INVITE_SECURE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "REJECT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->REJECT:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "BUSY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->BUSY:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "ON_HOLD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->ON_HOLD:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "RESUMED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->RESUMED:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "END"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->END:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "UNSUPPORTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->UNSUPPORTED:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "ONLINE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->ONLINE:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    const-string v2, "RINGING"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->RINGING:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->$VALUES:[Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/manager/rtm/RtmMsgAction;
    .locals 1

    const-class v0, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/manager/rtm/RtmMsgAction;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->$VALUES:[Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    invoke-virtual {v0}, [Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    return-object v0
.end method
