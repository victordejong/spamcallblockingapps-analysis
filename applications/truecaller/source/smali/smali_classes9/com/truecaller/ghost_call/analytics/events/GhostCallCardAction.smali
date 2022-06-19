.class public final enum Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PickContactClick",
        "NameChanged",
        "NumberChanged",
        "PhotoChanged",
        "CallCancelled",
        "ghost-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

.field public static final enum CallCancelled:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

.field public static final enum NameChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

.field public static final enum NumberChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

.field public static final enum PhotoChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

.field public static final enum PickContactClick:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    new-instance v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    const-string v2, "PickContactClick"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->PickContactClick:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    const-string v2, "NameChanged"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->NameChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    const-string v2, "NumberChanged"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->NumberChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    const-string v2, "PhotoChanged"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->PhotoChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    const-string v2, "CallCancelled"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->CallCancelled:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->$VALUES:[Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;
    .locals 1

    const-class v0, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;
    .locals 1

    sget-object v0, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->$VALUES:[Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    invoke-virtual {v0}, [Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    return-object v0
.end method
