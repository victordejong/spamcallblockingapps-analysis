.class public final enum Lcom/truecaller/incallui/service/CallState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/incallui/service/CallState;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/incallui/service/CallState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "STATE_SELECT_PHONE_ACCOUNT",
        "STATE_CONNECTING",
        "STATE_DIALING",
        "STATE_RINGING",
        "STATE_ACTIVE",
        "STATE_HOLDING",
        "STATE_DISCONNECTED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_CONNECTING:Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_HOLDING:Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

.field public static final enum STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/truecaller/incallui/service/CallState;

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_SELECT_PHONE_ACCOUNT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_CONNECTING:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_DIALING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_RINGING"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_ACTIVE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_HOLDING"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_HOLDING:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/service/CallState;

    const-string v2, "STATE_DISCONNECTED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/service/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/incallui/service/CallState;->$VALUES:[Lcom/truecaller/incallui/service/CallState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/incallui/service/CallState;
    .locals 1

    const-class v0, Lcom/truecaller/incallui/service/CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/incallui/service/CallState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/incallui/service/CallState;
    .locals 1

    sget-object v0, Lcom/truecaller/incallui/service/CallState;->$VALUES:[Lcom/truecaller/incallui/service/CallState;

    invoke-virtual {v0}, [Lcom/truecaller/incallui/service/CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/incallui/service/CallState;

    return-object v0
.end method
