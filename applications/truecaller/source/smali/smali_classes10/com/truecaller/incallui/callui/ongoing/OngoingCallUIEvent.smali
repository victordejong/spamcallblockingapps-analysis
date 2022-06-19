.class public final enum Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MUTE_CLICK",
        "UNMUTE_CLICK",
        "KEYPAD_CLICK",
        "HOLD_CLICK",
        "UNHOLD_CLICK",
        "HANG_UP_CLICK",
        "ADD_CALL_CLICK",
        "AUDIO_ROUTE_CLICK",
        "MERGE_CLICK",
        "SWAP_CLICK",
        "VOIP_CLICK",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum ADD_CALL_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum AUDIO_ROUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum HANG_UP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum HOLD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum KEYPAD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum MERGE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum MUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum SWAP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum UNHOLD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum UNMUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

.field public static final enum VOIP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "MUTE_CLICK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->MUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "UNMUTE_CLICK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->UNMUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "KEYPAD_CLICK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->KEYPAD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "HOLD_CLICK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->HOLD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "UNHOLD_CLICK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->UNHOLD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "HANG_UP_CLICK"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->HANG_UP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "ADD_CALL_CLICK"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->ADD_CALL_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "AUDIO_ROUTE_CLICK"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->AUDIO_ROUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "MERGE_CLICK"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->MERGE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "SWAP_CLICK"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->SWAP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    const-string v2, "VOIP_CLICK"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->VOIP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->$VALUES:[Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;
    .locals 1

    const-class v0, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;
    .locals 1

    sget-object v0, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->$VALUES:[Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-virtual {v0}, [Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    return-object v0
.end method
