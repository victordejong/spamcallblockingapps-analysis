.class public final enum Lcom/truecaller/premium/data/PremiumScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/data/PremiumScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum CUSTOMER_SUPPORT:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum NONE:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum OFFER_WALL:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum OTHER:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum PAID_PREMIUM:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum PARTNER:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum PROMOTION:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum PRO_CAMPAIGNS:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum REFERRALS:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum TC_PAY:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum TC_SUPPORT:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum TESTING:Lcom/truecaller/premium/data/PremiumScope;

.field public static final enum UNRECOGNIZED:Lcom/truecaller/premium/data/PremiumScope;


# instance fields
.field private final scope:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/premium/data/PremiumScope;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "NoneScope"

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/truecaller/premium/data/PremiumScope;->NONE:Lcom/truecaller/premium/data/PremiumScope;

    .line 2
    new-instance v1, Lcom/truecaller/premium/data/PremiumScope;

    const-string v3, "PAID_PREMIUM"

    const/4 v4, 0x1

    const-string v5, "paid_premium"

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/PremiumScope;->PAID_PREMIUM:Lcom/truecaller/premium/data/PremiumScope;

    .line 3
    new-instance v3, Lcom/truecaller/premium/data/PremiumScope;

    const-string v5, "OFFER_WALL"

    const/4 v6, 0x2

    const-string v7, "offerwall"

    invoke-direct {v3, v5, v6, v7}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/truecaller/premium/data/PremiumScope;->OFFER_WALL:Lcom/truecaller/premium/data/PremiumScope;

    .line 4
    new-instance v5, Lcom/truecaller/premium/data/PremiumScope;

    const-string v7, "PROMOTION"

    const/4 v8, 0x3

    const-string v9, "promotion"

    invoke-direct {v5, v7, v8, v9}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/truecaller/premium/data/PremiumScope;->PROMOTION:Lcom/truecaller/premium/data/PremiumScope;

    .line 5
    new-instance v7, Lcom/truecaller/premium/data/PremiumScope;

    const-string v9, "CUSTOMER_SUPPORT"

    const/4 v10, 0x4

    const-string v11, "customer_support"

    invoke-direct {v7, v9, v10, v11}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/truecaller/premium/data/PremiumScope;->CUSTOMER_SUPPORT:Lcom/truecaller/premium/data/PremiumScope;

    .line 6
    new-instance v9, Lcom/truecaller/premium/data/PremiumScope;

    const-string v11, "PRO_CAMPAIGNS"

    const/4 v12, 0x5

    const-string v13, "pro-campaigns"

    invoke-direct {v9, v11, v12, v13}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/truecaller/premium/data/PremiumScope;->PRO_CAMPAIGNS:Lcom/truecaller/premium/data/PremiumScope;

    .line 7
    new-instance v11, Lcom/truecaller/premium/data/PremiumScope;

    const-string v13, "REFERRALS"

    const/4 v14, 0x6

    const-string v15, "referrals"

    invoke-direct {v11, v13, v14, v15}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/truecaller/premium/data/PremiumScope;->REFERRALS:Lcom/truecaller/premium/data/PremiumScope;

    .line 8
    new-instance v13, Lcom/truecaller/premium/data/PremiumScope;

    const-string v15, "PARTNER"

    const/4 v14, 0x7

    const-string v12, "partner"

    invoke-direct {v13, v15, v14, v12}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/truecaller/premium/data/PremiumScope;->PARTNER:Lcom/truecaller/premium/data/PremiumScope;

    .line 9
    new-instance v12, Lcom/truecaller/premium/data/PremiumScope;

    const-string v15, "TC_PAY"

    const/16 v14, 0x8

    const-string v10, "tc-pay"

    invoke-direct {v12, v15, v14, v10}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/truecaller/premium/data/PremiumScope;->TC_PAY:Lcom/truecaller/premium/data/PremiumScope;

    .line 10
    new-instance v10, Lcom/truecaller/premium/data/PremiumScope;

    const-string v15, "TC_SUPPORT"

    const/16 v14, 0x9

    const-string v8, "tc-support"

    invoke-direct {v10, v15, v14, v8}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/truecaller/premium/data/PremiumScope;->TC_SUPPORT:Lcom/truecaller/premium/data/PremiumScope;

    .line 11
    new-instance v8, Lcom/truecaller/premium/data/PremiumScope;

    const-string v15, "TESTING"

    const/16 v14, 0xa

    const-string v6, "testing"

    invoke-direct {v8, v15, v14, v6}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/truecaller/premium/data/PremiumScope;->TESTING:Lcom/truecaller/premium/data/PremiumScope;

    .line 12
    new-instance v6, Lcom/truecaller/premium/data/PremiumScope;

    const-string v15, "OTHER"

    const/16 v14, 0xb

    const-string v4, "Other"

    invoke-direct {v6, v15, v14, v4}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/truecaller/premium/data/PremiumScope;->OTHER:Lcom/truecaller/premium/data/PremiumScope;

    .line 13
    new-instance v4, Lcom/truecaller/premium/data/PremiumScope;

    const-string v15, "UNRECOGNIZED"

    const/16 v14, 0xc

    invoke-direct {v4, v15, v14, v15}, Lcom/truecaller/premium/data/PremiumScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/truecaller/premium/data/PremiumScope;->UNRECOGNIZED:Lcom/truecaller/premium/data/PremiumScope;

    const/16 v15, 0xd

    new-array v15, v15, [Lcom/truecaller/premium/data/PremiumScope;

    aput-object v0, v15, v2

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v3, v15, v0

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v7, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v11, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v10, v15, v0

    const/16 v0, 0xa

    aput-object v8, v15, v0

    const/16 v0, 0xb

    aput-object v6, v15, v0

    aput-object v4, v15, v14

    .line 14
    sput-object v15, Lcom/truecaller/premium/data/PremiumScope;->$VALUES:[Lcom/truecaller/premium/data/PremiumScope;

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

    .line 2
    iput-object p3, p0, Lcom/truecaller/premium/data/PremiumScope;->scope:Ljava/lang/String;

    return-void
.end method

.method public static fromRemote(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumScope;
    .locals 4

    .line 1
    invoke-static {}, Lcom/truecaller/premium/data/PremiumScope;->values()[Lcom/truecaller/premium/data/PremiumScope;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget-object v3, v2, Lcom/truecaller/premium/data/PremiumScope;->scope:Ljava/lang/String;

    invoke-static {v3, p0}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/truecaller/premium/data/PremiumScope;->NONE:Lcom/truecaller/premium/data/PremiumScope;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumScope;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/premium/data/PremiumScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/data/PremiumScope;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/data/PremiumScope;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/premium/data/PremiumScope;->$VALUES:[Lcom/truecaller/premium/data/PremiumScope;

    invoke-virtual {v0}, [Lcom/truecaller/premium/data/PremiumScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/data/PremiumScope;

    return-object v0
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/data/PremiumScope;->scope:Ljava/lang/String;

    return-object v0
.end method
