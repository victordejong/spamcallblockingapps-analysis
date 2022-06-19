.class public final enum Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/referral/ReferralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedeemCodeContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

.field public static final enum GO_PRO:Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    const-string v1, "GO_PRO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;->GO_PRO:Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;->$VALUES:[Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;->$VALUES:[Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    invoke-virtual {v0}, [Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    return-object v0
.end method
