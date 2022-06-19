.class public final enum Lcom/truecaller/premium/util/PremiumProStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/util/PremiumProStatus;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/premium/util/PremiumProStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "CHURNED",
        "GOLD_CHURNED",
        "PREMIUM_MONTHLY",
        "PREMIUM_BASIC_MONTHLY",
        "PREMIUM_QUARTERLY",
        "PREMIUM_HALF_YEARLY",
        "PREMIUM_YEARLY",
        "PREMIUM_UNKNOWN",
        "PREMIUM_CONSUMABLE",
        "GOLD",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum CHURNED:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum GOLD:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum GOLD_CHURNED:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum NONE:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_BASIC_MONTHLY:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_CONSUMABLE:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_HALF_YEARLY:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_MONTHLY:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_QUARTERLY:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_UNKNOWN:Lcom/truecaller/premium/util/PremiumProStatus;

.field public static final enum PREMIUM_YEARLY:Lcom/truecaller/premium/util/PremiumProStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/premium/util/PremiumProStatus;

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->NONE:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "CHURNED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->CHURNED:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "GOLD_CHURNED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->GOLD_CHURNED:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_MONTHLY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_MONTHLY:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_BASIC_MONTHLY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_BASIC_MONTHLY:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_QUARTERLY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_QUARTERLY:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_HALF_YEARLY"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_HALF_YEARLY:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_YEARLY"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_YEARLY:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_UNKNOWN"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_UNKNOWN:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "PREMIUM_CONSUMABLE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_CONSUMABLE:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/PremiumProStatus;

    const-string v2, "GOLD"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/PremiumProStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/PremiumProStatus;->GOLD:Lcom/truecaller/premium/util/PremiumProStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->$VALUES:[Lcom/truecaller/premium/util/PremiumProStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/util/PremiumProStatus;
    .locals 1

    const-class v0, Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/util/PremiumProStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/util/PremiumProStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->$VALUES:[Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, [Lcom/truecaller/premium/util/PremiumProStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/util/PremiumProStatus;

    return-object v0
.end method
