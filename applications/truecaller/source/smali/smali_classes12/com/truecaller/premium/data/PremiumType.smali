.class public final enum Lcom/truecaller/premium/data/PremiumType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/data/PremiumType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/data/PremiumType;

.field public static final enum GOLD:Lcom/truecaller/premium/data/PremiumType;

.field public static final enum PREMIUM:Lcom/truecaller/premium/data/PremiumType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/premium/data/PremiumType;

    const-string v1, "PREMIUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/premium/data/PremiumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    .line 2
    new-instance v1, Lcom/truecaller/premium/data/PremiumType;

    const-string v3, "GOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/premium/data/PremiumType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/PremiumType;->GOLD:Lcom/truecaller/premium/data/PremiumType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/truecaller/premium/data/PremiumType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/truecaller/premium/data/PremiumType;->$VALUES:[Lcom/truecaller/premium/data/PremiumType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/premium/data/PremiumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/data/PremiumType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/data/PremiumType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/premium/data/PremiumType;->$VALUES:[Lcom/truecaller/premium/data/PremiumType;

    invoke-virtual {v0}, [Lcom/truecaller/premium/data/PremiumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/data/PremiumType;

    return-object v0
.end method
