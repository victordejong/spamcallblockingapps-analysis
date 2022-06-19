.class public final enum Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum ALREADY_REFERRED:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum CANNOT_GRANT_PREMIUM:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum INVALID_CODE:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum OLD_PROFILE:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum QUOTA_OVER:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum SELF_REFERRAL:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum SUCCESS:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

.field public static final enum WAS_REFERRER:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v1, "ALREADY_REFERRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->ALREADY_REFERRED:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 2
    new-instance v1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v3, "QUOTA_OVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->QUOTA_OVER:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 3
    new-instance v3, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->SUCCESS:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 4
    new-instance v5, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v7, "OLD_PROFILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->OLD_PROFILE:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 5
    new-instance v7, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v9, "SELF_REFERRAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->SELF_REFERRAL:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 6
    new-instance v9, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v11, "CANNOT_GRANT_PREMIUM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->CANNOT_GRANT_PREMIUM:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 7
    new-instance v11, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v13, "INVALID_CODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->INVALID_CODE:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 8
    new-instance v13, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const-string v15, "WAS_REFERRER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->WAS_REFERRER:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->$VALUES:[Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->$VALUES:[Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    invoke-virtual {v0}, [Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    return-object v0
.end method
