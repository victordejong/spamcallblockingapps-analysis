.class public final enum Lcom/truecaller/voip/groupcall/action/InviteError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/groupcall/action/InviteError;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/voip/groupcall/action/InviteError;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VOIP_ID",
        "RTM_ADD",
        "RTM_INVITE",
        "WAKE_UP",
        "NONE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/groupcall/action/InviteError;

.field public static final enum NONE:Lcom/truecaller/voip/groupcall/action/InviteError;

.field public static final enum RTM_ADD:Lcom/truecaller/voip/groupcall/action/InviteError;

.field public static final enum RTM_INVITE:Lcom/truecaller/voip/groupcall/action/InviteError;

.field public static final enum VOIP_ID:Lcom/truecaller/voip/groupcall/action/InviteError;

.field public static final enum WAKE_UP:Lcom/truecaller/voip/groupcall/action/InviteError;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/voip/groupcall/action/InviteError;

    new-instance v1, Lcom/truecaller/voip/groupcall/action/InviteError;

    const-string v2, "VOIP_ID"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/groupcall/action/InviteError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/groupcall/action/InviteError;->VOIP_ID:Lcom/truecaller/voip/groupcall/action/InviteError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/groupcall/action/InviteError;

    const-string v2, "RTM_ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/groupcall/action/InviteError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/groupcall/action/InviteError;->RTM_ADD:Lcom/truecaller/voip/groupcall/action/InviteError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/groupcall/action/InviteError;

    const-string v2, "RTM_INVITE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/groupcall/action/InviteError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/groupcall/action/InviteError;->RTM_INVITE:Lcom/truecaller/voip/groupcall/action/InviteError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/groupcall/action/InviteError;

    const-string v2, "WAKE_UP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/groupcall/action/InviteError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/groupcall/action/InviteError;->WAKE_UP:Lcom/truecaller/voip/groupcall/action/InviteError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/groupcall/action/InviteError;

    const-string v2, "NONE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/voip/groupcall/action/InviteError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/voip/groupcall/action/InviteError;->NONE:Lcom/truecaller/voip/groupcall/action/InviteError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/groupcall/action/InviteError;->$VALUES:[Lcom/truecaller/voip/groupcall/action/InviteError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/groupcall/action/InviteError;
    .locals 1

    const-class v0, Lcom/truecaller/voip/groupcall/action/InviteError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/groupcall/action/InviteError;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/groupcall/action/InviteError;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/groupcall/action/InviteError;->$VALUES:[Lcom/truecaller/voip/groupcall/action/InviteError;

    invoke-virtual {v0}, [Lcom/truecaller/voip/groupcall/action/InviteError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/groupcall/action/InviteError;

    return-object v0
.end method
