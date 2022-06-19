.class public final enum Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/ViewActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuSubAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "INCOMING",
        "OUTGOING",
        "MISSED",
        "BLOCKED",
        "FLASH",
        "GROUP_BY_NUMBER",
        "DELETE_ALL_CALLS",
        "DELETE_FLASH_EVENTS",
        "BRING_BACK_HIDDEN_MOST_CALLED_CONTACTS",
        "PASTE",
        "common-analytics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum BLOCKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum BRING_BACK_HIDDEN_MOST_CALLED_CONTACTS:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum DELETE_ALL_CALLS:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum DELETE_FLASH_EVENTS:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum FLASH:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum GROUP_BY_NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum INCOMING:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum MISSED:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum OUTGOING:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

.field public static final enum PASTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "INCOMING"

    const/4 v3, 0x0

    const-string v4, "incoming"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->INCOMING:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "OUTGOING"

    const/4 v3, 0x1

    const-string v4, "outgoing"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->OUTGOING:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "MISSED"

    const/4 v3, 0x2

    const-string v4, "missed"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->MISSED:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "BLOCKED"

    const/4 v3, 0x3

    const-string v4, "blocked"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->BLOCKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "FLASH"

    const/4 v3, 0x4

    const-string v4, "flash"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->FLASH:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "GROUP_BY_NUMBER"

    const/4 v3, 0x5

    const-string v4, "groupByNumber"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->GROUP_BY_NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "DELETE_ALL_CALLS"

    const/4 v3, 0x6

    const-string v4, "deleteAllCalls"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->DELETE_ALL_CALLS:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "DELETE_FLASH_EVENTS"

    const/4 v3, 0x7

    const-string v4, "deleteFlashEvents"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->DELETE_FLASH_EVENTS:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "BRING_BACK_HIDDEN_MOST_CALLED_CONTACTS"

    const/16 v3, 0x8

    const-string v4, "bringBackHiddenMostCalledContacts"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->BRING_BACK_HIDDEN_MOST_CALLED_CONTACTS:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "PASTE"

    const/16 v3, 0x9

    const-string v4, "paste"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->PASTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

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

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->value:Ljava/lang/String;

    return-object v0
.end method
