.class public final enum Lcom/truecaller/calling/ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/ActionType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/calling/ActionType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/calling/ActionType;",
        "",
        "",
        "eventAction",
        "Ljava/lang/String;",
        "getEventAction",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "SMS",
        "FLASH",
        "PROFILE",
        "CELLULAR_CALL",
        "CELLULAR_VIDEO_CALL",
        "WHATSAPP_CALL",
        "WHATSAPP_VIDEO_CALL",
        "VOIP_CALL",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/calling/ActionType;

.field public static final enum CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

.field public static final enum CELLULAR_VIDEO_CALL:Lcom/truecaller/calling/ActionType;

.field public static final Companion:Lcom/truecaller/calling/ActionType$a;

.field public static final enum FLASH:Lcom/truecaller/calling/ActionType;

.field public static final enum PROFILE:Lcom/truecaller/calling/ActionType;

.field public static final enum SMS:Lcom/truecaller/calling/ActionType;

.field public static final enum VOIP_CALL:Lcom/truecaller/calling/ActionType;

.field public static final enum WHATSAPP_CALL:Lcom/truecaller/calling/ActionType;

.field public static final enum WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/ActionType;


# instance fields
.field private final eventAction:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/calling/ActionType;

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "SMS"

    const/4 v3, 0x0

    const-string v4, "ItemEvent.ACTION_SMS"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->SMS:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "FLASH"

    const/4 v3, 0x1

    const-string v4, "ItemEvent.ACTION_FLASH"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->FLASH:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "PROFILE"

    const/4 v3, 0x2

    const-string v4, "ItemEvent.ACTION_OPEN_PROFILE"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "CELLULAR_CALL"

    const/4 v3, 0x3

    const-string v4, "ItemEvent.ACTION_CELLULAR_CALL"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "CELLULAR_VIDEO_CALL"

    const/4 v3, 0x4

    const-string v4, "ItemEvent.ACTION_CELLULAR_VIDEO_CALL"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->CELLULAR_VIDEO_CALL:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "WHATSAPP_CALL"

    const/4 v3, 0x5

    const-string v4, "ItemEvent.ACTION_WHATSAPP_CALL"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->WHATSAPP_CALL:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "WHATSAPP_VIDEO_CALL"

    const/4 v3, 0x6

    const-string v4, "ItemEvent.ACTION_WHATSAPP_VIDEO_CALL"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/ActionType;

    const-string v2, "VOIP_CALL"

    const/4 v3, 0x7

    const-string v4, "ItemEvent.ACTION_VOIP_CALL"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/calling/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/calling/ActionType;->VOIP_CALL:Lcom/truecaller/calling/ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/calling/ActionType;->$VALUES:[Lcom/truecaller/calling/ActionType;

    new-instance v0, Lcom/truecaller/calling/ActionType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/calling/ActionType$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/calling/ActionType;->Companion:Lcom/truecaller/calling/ActionType$a;

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

    iput-object p3, p0, Lcom/truecaller/calling/ActionType;->eventAction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/calling/ActionType;
    .locals 1

    const-class v0, Lcom/truecaller/calling/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/calling/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/calling/ActionType;
    .locals 1

    sget-object v0, Lcom/truecaller/calling/ActionType;->$VALUES:[Lcom/truecaller/calling/ActionType;

    invoke-virtual {v0}, [Lcom/truecaller/calling/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/calling/ActionType;

    return-object v0
.end method


# virtual methods
.method public final getEventAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/ActionType;->eventAction:Ljava/lang/String;

    return-object v0
.end method
