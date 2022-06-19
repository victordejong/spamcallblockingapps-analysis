.class public final enum Lcom/truecaller/voip/VoipState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/VoipState;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/voip/VoipState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INITIAL",
        "CONNECTING",
        "INVITING",
        "INVITED",
        "RINGING",
        "NO_ANSWER",
        "ACCEPTED",
        "REJECTED",
        "BUSY",
        "ONGOING",
        "BLOCKED",
        "ENDED",
        "FAILED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/VoipState;

.field public static final enum ACCEPTED:Lcom/truecaller/voip/VoipState;

.field public static final enum BLOCKED:Lcom/truecaller/voip/VoipState;

.field public static final enum BUSY:Lcom/truecaller/voip/VoipState;

.field public static final enum CONNECTING:Lcom/truecaller/voip/VoipState;

.field public static final enum ENDED:Lcom/truecaller/voip/VoipState;

.field public static final enum FAILED:Lcom/truecaller/voip/VoipState;

.field public static final enum INITIAL:Lcom/truecaller/voip/VoipState;

.field public static final enum INVITED:Lcom/truecaller/voip/VoipState;

.field public static final enum INVITING:Lcom/truecaller/voip/VoipState;

.field public static final enum NO_ANSWER:Lcom/truecaller/voip/VoipState;

.field public static final enum ONGOING:Lcom/truecaller/voip/VoipState;

.field public static final enum REJECTED:Lcom/truecaller/voip/VoipState;

.field public static final enum RINGING:Lcom/truecaller/voip/VoipState;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/truecaller/voip/VoipState;

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "INITIAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->INITIAL:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->CONNECTING:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "INVITING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->INVITING:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "INVITED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->INVITED:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "RINGING"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->RINGING:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "NO_ANSWER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->NO_ANSWER:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "ACCEPTED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->ACCEPTED:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "REJECTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->REJECTED:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "BUSY"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->BUSY:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "ONGOING"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "BLOCKED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->BLOCKED:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "ENDED"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/VoipState;

    const-string v2, "FAILED"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/VoipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/VoipState;->$VALUES:[Lcom/truecaller/voip/VoipState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/VoipState;
    .locals 1

    const-class v0, Lcom/truecaller/voip/VoipState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/VoipState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/VoipState;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/VoipState;->$VALUES:[Lcom/truecaller/voip/VoipState;

    invoke-virtual {v0}, [Lcom/truecaller/voip/VoipState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/VoipState;

    return-object v0
.end method
