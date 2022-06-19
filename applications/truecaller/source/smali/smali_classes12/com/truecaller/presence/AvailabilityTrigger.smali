.class public final enum Lcom/truecaller/presence/AvailabilityTrigger;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/presence/AvailabilityTrigger;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/truecaller/presence/AvailabilityTrigger;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "RECURRING_TASK",
        "USER_ACTION",
        "presence_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/presence/AvailabilityTrigger;

.field public static final enum RECURRING_TASK:Lcom/truecaller/presence/AvailabilityTrigger;

.field public static final enum USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/presence/AvailabilityTrigger;

    new-instance v1, Lcom/truecaller/presence/AvailabilityTrigger;

    const-string v2, "RECURRING_TASK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/presence/AvailabilityTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/presence/AvailabilityTrigger;->RECURRING_TASK:Lcom/truecaller/presence/AvailabilityTrigger;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/presence/AvailabilityTrigger;

    const-string v2, "USER_ACTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/presence/AvailabilityTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/presence/AvailabilityTrigger;->USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/presence/AvailabilityTrigger;->$VALUES:[Lcom/truecaller/presence/AvailabilityTrigger;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/presence/AvailabilityTrigger;
    .locals 1

    const-class v0, Lcom/truecaller/presence/AvailabilityTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/presence/AvailabilityTrigger;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/presence/AvailabilityTrigger;
    .locals 1

    sget-object v0, Lcom/truecaller/presence/AvailabilityTrigger;->$VALUES:[Lcom/truecaller/presence/AvailabilityTrigger;

    invoke-virtual {v0}, [Lcom/truecaller/presence/AvailabilityTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/presence/AvailabilityTrigger;

    return-object v0
.end method
