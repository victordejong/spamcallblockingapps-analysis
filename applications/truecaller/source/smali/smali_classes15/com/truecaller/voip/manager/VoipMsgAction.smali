.class public final enum Lcom/truecaller/voip/manager/VoipMsgAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/manager/VoipMsgAction;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/voip/manager/VoipMsgAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "USER_JOINED",
        "INTERRUPTED",
        "REJOINED",
        "LOST",
        "USER_MUTE_CHANGED",
        "OFFLINE",
        "STATS_RECEIVED",
        "JOINED",
        "JOIN_FAILED",
        "ERROR",
        "LEFT_CHANNEL",
        "NEW_TOKEN_REQUIRED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum ERROR:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum INTERRUPTED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum JOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum JOIN_FAILED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum LEFT_CHANNEL:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum LOST:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum NEW_TOKEN_REQUIRED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum NONE:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum OFFLINE:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum REJOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum STATS_RECEIVED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum USER_JOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

.field public static final enum USER_MUTE_CHANGED:Lcom/truecaller/voip/manager/VoipMsgAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/truecaller/voip/manager/VoipMsgAction;

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->NONE:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "USER_JOINED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->USER_JOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "INTERRUPTED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->INTERRUPTED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "REJOINED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->REJOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "LOST"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->LOST:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "USER_MUTE_CHANGED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->USER_MUTE_CHANGED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "OFFLINE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->OFFLINE:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "STATS_RECEIVED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->STATS_RECEIVED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "JOINED"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->JOINED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "JOIN_FAILED"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->JOIN_FAILED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "ERROR"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->ERROR:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "LEFT_CHANNEL"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->LEFT_CHANNEL:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/manager/VoipMsgAction;

    const-string v2, "NEW_TOKEN_REQUIRED"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/manager/VoipMsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/manager/VoipMsgAction;->NEW_TOKEN_REQUIRED:Lcom/truecaller/voip/manager/VoipMsgAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/manager/VoipMsgAction;->$VALUES:[Lcom/truecaller/voip/manager/VoipMsgAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/manager/VoipMsgAction;
    .locals 1

    const-class v0, Lcom/truecaller/voip/manager/VoipMsgAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/manager/VoipMsgAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/manager/VoipMsgAction;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/manager/VoipMsgAction;->$VALUES:[Lcom/truecaller/voip/manager/VoipMsgAction;

    invoke-virtual {v0}, [Lcom/truecaller/voip/manager/VoipMsgAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/manager/VoipMsgAction;

    return-object v0
.end method
