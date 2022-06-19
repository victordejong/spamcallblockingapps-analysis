.class public final enum Lcom/truecaller/premium/PremiumAlertType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/PremiumAlertType;",
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
        "Lcom/truecaller/premium/PremiumAlertType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PAYMENT_FAILED",
        "SUBSCRIPTION_CANCELLED",
        "SUBSCRIPTION_PAUSED",
        "CONSUMABLE_LOST",
        "PENDING_PURCHASE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/PremiumAlertType;

.field public static final enum CONSUMABLE_LOST:Lcom/truecaller/premium/PremiumAlertType;

.field public static final enum PAYMENT_FAILED:Lcom/truecaller/premium/PremiumAlertType;

.field public static final enum PENDING_PURCHASE:Lcom/truecaller/premium/PremiumAlertType;

.field public static final enum SUBSCRIPTION_CANCELLED:Lcom/truecaller/premium/PremiumAlertType;

.field public static final enum SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/PremiumAlertType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/premium/PremiumAlertType;

    new-instance v1, Lcom/truecaller/premium/PremiumAlertType;

    const-string v2, "PAYMENT_FAILED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/PremiumAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/PremiumAlertType;->PAYMENT_FAILED:Lcom/truecaller/premium/PremiumAlertType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/PremiumAlertType;

    const-string v2, "SUBSCRIPTION_CANCELLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/PremiumAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/PremiumAlertType;->SUBSCRIPTION_CANCELLED:Lcom/truecaller/premium/PremiumAlertType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/PremiumAlertType;

    const-string v2, "SUBSCRIPTION_PAUSED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/PremiumAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/PremiumAlertType;->SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/PremiumAlertType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/PremiumAlertType;

    const-string v2, "CONSUMABLE_LOST"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/PremiumAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/PremiumAlertType;->CONSUMABLE_LOST:Lcom/truecaller/premium/PremiumAlertType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/PremiumAlertType;

    const-string v2, "PENDING_PURCHASE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/PremiumAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/PremiumAlertType;->PENDING_PURCHASE:Lcom/truecaller/premium/PremiumAlertType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/PremiumAlertType;->$VALUES:[Lcom/truecaller/premium/PremiumAlertType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/PremiumAlertType;
    .locals 1

    const-class v0, Lcom/truecaller/premium/PremiumAlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/PremiumAlertType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/PremiumAlertType;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/PremiumAlertType;->$VALUES:[Lcom/truecaller/premium/PremiumAlertType;

    invoke-virtual {v0}, [Lcom/truecaller/premium/PremiumAlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/PremiumAlertType;

    return-object v0
.end method
