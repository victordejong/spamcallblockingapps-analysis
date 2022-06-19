.class public final enum Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/referral/ReferralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferralLaunchContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum AFTER_CALL:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum AFTER_CALL_SAVE_CONTACT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum CONTACTS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum CONTACT_DETAILS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum HOME_SCREEN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum INBOX_OVERFLOW:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum NAVIGATION_DRAWER:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum PREMIUM_TAB_V2:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum UNKNOWN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public static final enum USER_BUSY_PROMPT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->UNKNOWN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 2
    new-instance v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "HOME_SCREEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->HOME_SCREEN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 3
    new-instance v3, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v5, "INBOX_OVERFLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->INBOX_OVERFLOW:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 4
    new-instance v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v7, "CONTACT_DETAILS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->CONTACT_DETAILS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 5
    new-instance v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v9, "CONTACTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->CONTACTS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 6
    new-instance v9, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v11, "USER_BUSY_PROMPT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->USER_BUSY_PROMPT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 7
    new-instance v11, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v13, "AFTER_CALL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 8
    new-instance v13, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v15, "AFTER_CALL_SAVE_CONTACT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_SAVE_CONTACT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 9
    new-instance v15, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v14, "NAVIGATION_DRAWER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->NAVIGATION_DRAWER:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 10
    new-instance v14, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v12, "PUSH_NOTIFICATION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 11
    new-instance v12, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v10, "DEEP_LINK"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 12
    new-instance v10, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v8, "AFTER_CALL_PROMO"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 13
    new-instance v8, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v6, "SEARCH_SCREEN_PROMO"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 14
    new-instance v6, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v4, "BOTTOM_BAR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 15
    new-instance v4, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v2, "PROMO_POPUP"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 16
    new-instance v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v6, "PREMIUM_TAB_V2"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PREMIUM_TAB_V2:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->$VALUES:[Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->$VALUES:[Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v0}, [Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    return-object v0
.end method
