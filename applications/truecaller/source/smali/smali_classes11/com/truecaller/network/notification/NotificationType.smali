.class public final enum Lcom/truecaller/network/notification/NotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/network/notification/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/network/notification/NotificationType;

.field public static final enum ACCOUNT_UNSUSPENDED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum ANNOUNCEMENT:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum CALL_ME_BACK:Lcom/truecaller/network/notification/NotificationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CONTACT_DETAILS_SHARED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum CONTACT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum CONTACT_REQUEST_ACCEPTED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum CREDIT:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum CRED_CHANGED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum DEFAULT_SMS_PROMO:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum GENERAL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum GIFT_PREMIUM:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_ANNOUNCEMENT:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_CONTACT_DETAILS_SHARED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_CONTACT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_CONTACT_REQUEST_ACCEPTED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_GENERAL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_PREMIUM_FROM_OFFERWALL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_PROFILE_VIEWED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_SEARCH:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_SHOW_HTML:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum HINT_SHOW_VIEW:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum INVITE_FRIENDS:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum PREMIUM_STATUS_CHANGED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum PROMO_DOWNLOAD_URL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum PROMO_OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum PUSH_CALLER_ID:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum RECEIVE_MID_CALL_REASON:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum REFERRAL_PREMIUM:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SEARCH:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SECONDARY_PHONE_NUMBER_LOST:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SHARE_VIDEO_CALLER_ID:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SHOW_HTML:Lcom/truecaller/network/notification/NotificationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SHOW_VIEW:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SOFTWARE_UPDATE:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SUBSCRIPTION_GRACE:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum SUBSCRIPTION_STATUS_CHANGED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum TC_PAYMENT_CONFIRMATION:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum TC_PAYMENT_CUSTOM:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum TC_PAYMENT_INCOMING:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum TC_PAYMENT_INSTANT:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum TC_PAYMENT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum TRIGGER_INITIALIZE:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum UNSUPPORTED:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum VOIP:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum VOIP_CROSS_DC:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum VOIP_GROUP:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum WEB_SDK:Lcom/truecaller/network/notification/NotificationType;

.field public static final enum WHO_VIEWED_ME:Lcom/truecaller/network/notification/NotificationType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 53

    .line 1
    new-instance v0, Lcom/truecaller/network/notification/NotificationType;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/network/notification/NotificationType;->UNSUPPORTED:Lcom/truecaller/network/notification/NotificationType;

    .line 2
    new-instance v1, Lcom/truecaller/network/notification/NotificationType;

    const-string v2, "ANNOUNCEMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/network/notification/NotificationType;->ANNOUNCEMENT:Lcom/truecaller/network/notification/NotificationType;

    .line 3
    new-instance v2, Lcom/truecaller/network/notification/NotificationType;

    const-string v4, "GENERAL"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/network/notification/NotificationType;->GENERAL:Lcom/truecaller/network/notification/NotificationType;

    .line 4
    new-instance v4, Lcom/truecaller/network/notification/NotificationType;

    const-string v6, "SOFTWARE_UPDATE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v7}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/network/notification/NotificationType;->SOFTWARE_UPDATE:Lcom/truecaller/network/notification/NotificationType;

    .line 5
    new-instance v6, Lcom/truecaller/network/notification/NotificationType;

    const-string v8, "OPEN_URL"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/truecaller/network/notification/NotificationType;->OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

    .line 6
    new-instance v8, Lcom/truecaller/network/notification/NotificationType;

    const-string v10, "SHOW_HTML"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11, v11}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/truecaller/network/notification/NotificationType;->SHOW_HTML:Lcom/truecaller/network/notification/NotificationType;

    .line 7
    new-instance v10, Lcom/truecaller/network/notification/NotificationType;

    const-string v12, "SHOW_VIEW"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13, v13}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/network/notification/NotificationType;->SHOW_VIEW:Lcom/truecaller/network/notification/NotificationType;

    .line 8
    new-instance v12, Lcom/truecaller/network/notification/NotificationType;

    const-string v14, "CONTACT_REQUEST"

    const/4 v15, 0x7

    const/16 v13, 0x9

    invoke-direct {v12, v14, v15, v13}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/truecaller/network/notification/NotificationType;->CONTACT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

    .line 9
    new-instance v14, Lcom/truecaller/network/notification/NotificationType;

    const-string v15, "CONTACT_REQUEST_ACCEPTED"

    const/16 v11, 0x8

    const/16 v9, 0xa

    invoke-direct {v14, v15, v11, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/truecaller/network/notification/NotificationType;->CONTACT_REQUEST_ACCEPTED:Lcom/truecaller/network/notification/NotificationType;

    .line 10
    new-instance v11, Lcom/truecaller/network/notification/NotificationType;

    const-string v15, "CONTACT_DETAILS_SHARED"

    const/16 v7, 0xb

    invoke-direct {v11, v15, v13, v7}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/network/notification/NotificationType;->CONTACT_DETAILS_SHARED:Lcom/truecaller/network/notification/NotificationType;

    .line 11
    new-instance v15, Lcom/truecaller/network/notification/NotificationType;

    const-string v13, "PREMIUM_STATUS_CHANGED"

    const/16 v5, 0xc

    invoke-direct {v15, v13, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/truecaller/network/notification/NotificationType;->PREMIUM_STATUS_CHANGED:Lcom/truecaller/network/notification/NotificationType;

    .line 12
    new-instance v13, Lcom/truecaller/network/notification/NotificationType;

    const-string v9, "SEARCH"

    const/16 v3, 0xd

    invoke-direct {v13, v9, v7, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/network/notification/NotificationType;->SEARCH:Lcom/truecaller/network/notification/NotificationType;

    .line 13
    new-instance v9, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "PROMO_OPEN_URL"

    const/16 v3, 0xe

    invoke-direct {v9, v7, v5, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/network/notification/NotificationType;->PROMO_OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

    .line 14
    new-instance v7, Lcom/truecaller/network/notification/NotificationType;

    const-string v5, "PROMO_DOWNLOAD_URL"

    const/16 v3, 0xf

    move-object/from16 v16, v9

    const/16 v9, 0xd

    invoke-direct {v7, v5, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/network/notification/NotificationType;->PROMO_DOWNLOAD_URL:Lcom/truecaller/network/notification/NotificationType;

    .line 15
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v9, "INVITE_FRIENDS"

    const/16 v3, 0x12

    move-object/from16 v17, v7

    const/16 v7, 0xe

    invoke-direct {v5, v9, v7, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->INVITE_FRIENDS:Lcom/truecaller/network/notification/NotificationType;

    .line 16
    new-instance v7, Lcom/truecaller/network/notification/NotificationType;

    const-string v9, "TRIGGER_INITIALIZE"

    const/16 v3, 0x15

    move-object/from16 v18, v5

    const/16 v5, 0xf

    invoke-direct {v7, v9, v5, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/network/notification/NotificationType;->TRIGGER_INITIALIZE:Lcom/truecaller/network/notification/NotificationType;

    .line 17
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v9, "CALL_ME_BACK"

    const/16 v3, 0x10

    move-object/from16 v19, v7

    const/16 v7, 0x17

    invoke-direct {v5, v9, v3, v7}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->CALL_ME_BACK:Lcom/truecaller/network/notification/NotificationType;

    .line 18
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v9, "HINT_ANNOUNCEMENT"

    const/16 v7, 0x11

    move-object/from16 v20, v5

    const/16 v5, 0x65

    invoke-direct {v3, v9, v7, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->HINT_ANNOUNCEMENT:Lcom/truecaller/network/notification/NotificationType;

    .line 19
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_GENERAL"

    const/16 v9, 0x66

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v5, v7, v3, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->HINT_GENERAL:Lcom/truecaller/network/notification/NotificationType;

    .line 20
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_PREMIUM_FROM_OFFERWALL"

    const/16 v9, 0x13

    move-object/from16 v22, v5

    const/16 v5, 0x67

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->HINT_PREMIUM_FROM_OFFERWALL:Lcom/truecaller/network/notification/NotificationType;

    .line 21
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_OPEN_URL"

    const/16 v9, 0x14

    move-object/from16 v23, v3

    const/16 v3, 0x68

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->HINT_OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

    .line 22
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_SHOW_HTML"

    const/16 v9, 0x69

    move-object/from16 v24, v5

    const/16 v5, 0x15

    invoke-direct {v3, v7, v5, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->HINT_SHOW_HTML:Lcom/truecaller/network/notification/NotificationType;

    .line 23
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_SHOW_VIEW"

    const/16 v9, 0x16

    move-object/from16 v25, v3

    const/16 v3, 0x6a

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->HINT_SHOW_VIEW:Lcom/truecaller/network/notification/NotificationType;

    .line 24
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_PROFILE_VIEWED"

    const/16 v9, 0x6b

    move-object/from16 v26, v5

    const/16 v5, 0x17

    invoke-direct {v3, v7, v5, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->HINT_PROFILE_VIEWED:Lcom/truecaller/network/notification/NotificationType;

    .line 25
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_CONTACT_REQUEST"

    const/16 v9, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0x6d

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->HINT_CONTACT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

    .line 26
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_CONTACT_REQUEST_ACCEPTED"

    const/16 v9, 0x19

    move-object/from16 v28, v5

    const/16 v5, 0x6e

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->HINT_CONTACT_REQUEST_ACCEPTED:Lcom/truecaller/network/notification/NotificationType;

    .line 27
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_CONTACT_DETAILS_SHARED"

    const/16 v9, 0x1a

    move-object/from16 v29, v3

    const/16 v3, 0x6f

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->HINT_CONTACT_DETAILS_SHARED:Lcom/truecaller/network/notification/NotificationType;

    .line 28
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "HINT_SEARCH"

    const/16 v9, 0x1b

    move-object/from16 v30, v5

    const/16 v5, 0x70

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->HINT_SEARCH:Lcom/truecaller/network/notification/NotificationType;

    .line 29
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "WEB_SDK"

    const/16 v9, 0x1c

    move-object/from16 v31, v3

    const/16 v3, 0x19

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->WEB_SDK:Lcom/truecaller/network/notification/NotificationType;

    .line 30
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "REFERRAL_PREMIUM"

    const/16 v9, 0x1d

    move-object/from16 v32, v5

    const/16 v5, 0x1a

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->REFERRAL_PREMIUM:Lcom/truecaller/network/notification/NotificationType;

    .line 31
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "TC_PAYMENT_REQUEST"

    move-object/from16 v33, v3

    const/16 v3, 0x1e

    invoke-direct {v5, v7, v3, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->TC_PAYMENT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

    .line 32
    new-instance v7, Lcom/truecaller/network/notification/NotificationType;

    const-string v9, "TC_PAYMENT_INCOMING"

    move-object/from16 v34, v5

    const/16 v5, 0x1f

    invoke-direct {v7, v9, v5, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/network/notification/NotificationType;->TC_PAYMENT_INCOMING:Lcom/truecaller/network/notification/NotificationType;

    .line 33
    new-instance v9, Lcom/truecaller/network/notification/NotificationType;

    const-string v3, "TC_PAYMENT_CONFIRMATION"

    move-object/from16 v35, v7

    const/16 v7, 0x20

    invoke-direct {v9, v3, v7, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/network/notification/NotificationType;->TC_PAYMENT_CONFIRMATION:Lcom/truecaller/network/notification/NotificationType;

    .line 34
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "TC_PAYMENT_INSTANT"

    const/16 v5, 0x21

    move-object/from16 v36, v9

    const/16 v9, 0x29

    invoke-direct {v3, v7, v5, v9}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->TC_PAYMENT_INSTANT:Lcom/truecaller/network/notification/NotificationType;

    .line 35
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "TC_PAYMENT_CUSTOM"

    const/16 v9, 0x22

    move-object/from16 v37, v3

    const/16 v3, 0x20

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->TC_PAYMENT_CUSTOM:Lcom/truecaller/network/notification/NotificationType;

    .line 36
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "WHO_VIEWED_ME"

    const/16 v9, 0x23

    move-object/from16 v38, v5

    const/16 v5, 0x21

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->WHO_VIEWED_ME:Lcom/truecaller/network/notification/NotificationType;

    .line 37
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "PUSH_CALLER_ID"

    const/16 v9, 0x24

    move-object/from16 v39, v3

    const/16 v3, 0x13

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->PUSH_CALLER_ID:Lcom/truecaller/network/notification/NotificationType;

    .line 38
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "SUBSCRIPTION_GRACE"

    const/16 v9, 0x25

    move-object/from16 v40, v5

    const/16 v5, 0x22

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->SUBSCRIPTION_GRACE:Lcom/truecaller/network/notification/NotificationType;

    .line 39
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "SUBSCRIPTION_STATUS_CHANGED"

    const/16 v9, 0x26

    move-object/from16 v41, v3

    const/16 v3, 0x24

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->SUBSCRIPTION_STATUS_CHANGED:Lcom/truecaller/network/notification/NotificationType;

    .line 40
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "VOIP"

    const/16 v9, 0x27

    move-object/from16 v42, v5

    const/16 v5, 0x26

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->VOIP:Lcom/truecaller/network/notification/NotificationType;

    .line 41
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "VOIP_CROSS_DC"

    const/16 v9, 0x28

    move-object/from16 v43, v3

    const/16 v3, 0x2b

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->VOIP_CROSS_DC:Lcom/truecaller/network/notification/NotificationType;

    .line 42
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "VOIP_GROUP"

    const/16 v9, 0x29

    move-object/from16 v44, v5

    const/16 v5, 0x30

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->VOIP_GROUP:Lcom/truecaller/network/notification/NotificationType;

    .line 43
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "CREDIT"

    const/16 v9, 0x2a

    move-object/from16 v45, v3

    const/16 v3, 0x27

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->CREDIT:Lcom/truecaller/network/notification/NotificationType;

    .line 44
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "ACCOUNT_UNSUSPENDED"

    const/16 v9, 0x2b

    move-object/from16 v46, v5

    const/16 v5, 0x2e

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->ACCOUNT_UNSUSPENDED:Lcom/truecaller/network/notification/NotificationType;

    .line 45
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "CRED_CHANGED"

    const/16 v9, 0x2c

    move-object/from16 v47, v3

    const/16 v3, 0x31

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->CRED_CHANGED:Lcom/truecaller/network/notification/NotificationType;

    .line 46
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "DEFAULT_SMS_PROMO"

    const/16 v9, 0x2d

    move-object/from16 v48, v5

    const/16 v5, 0x32

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->DEFAULT_SMS_PROMO:Lcom/truecaller/network/notification/NotificationType;

    .line 47
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "SECONDARY_PHONE_NUMBER_LOST"

    const/16 v9, 0x2e

    move-object/from16 v49, v3

    const/16 v3, 0x33

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->SECONDARY_PHONE_NUMBER_LOST:Lcom/truecaller/network/notification/NotificationType;

    .line 48
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "GIFT_PREMIUM"

    const/16 v9, 0x2f

    move-object/from16 v50, v5

    const/16 v5, 0x34

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->GIFT_PREMIUM:Lcom/truecaller/network/notification/NotificationType;

    .line 49
    new-instance v5, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "SHARE_VIDEO_CALLER_ID"

    const/16 v9, 0x30

    move-object/from16 v51, v3

    const/16 v3, 0x37

    invoke-direct {v5, v7, v9, v3}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->SHARE_VIDEO_CALLER_ID:Lcom/truecaller/network/notification/NotificationType;

    .line 50
    new-instance v3, Lcom/truecaller/network/notification/NotificationType;

    const-string v7, "RECEIVE_MID_CALL_REASON"

    const/16 v9, 0x31

    move-object/from16 v52, v5

    const/16 v5, 0x39

    invoke-direct {v3, v7, v9, v5}, Lcom/truecaller/network/notification/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationType;->RECEIVE_MID_CALL_REASON:Lcom/truecaller/network/notification/NotificationType;

    const/16 v5, 0x32

    new-array v5, v5, [Lcom/truecaller/network/notification/NotificationType;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v11, v5, v0

    const/16 v0, 0xa

    aput-object v15, v5, v0

    const/16 v0, 0xb

    aput-object v13, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v29, v5, v0

    const/16 v0, 0x1a

    aput-object v30, v5, v0

    const/16 v0, 0x1b

    aput-object v31, v5, v0

    const/16 v0, 0x1c

    aput-object v32, v5, v0

    const/16 v0, 0x1d

    aput-object v33, v5, v0

    const/16 v0, 0x1e

    aput-object v34, v5, v0

    const/16 v0, 0x1f

    aput-object v35, v5, v0

    const/16 v0, 0x20

    aput-object v36, v5, v0

    const/16 v0, 0x21

    aput-object v37, v5, v0

    const/16 v0, 0x22

    aput-object v38, v5, v0

    const/16 v0, 0x23

    aput-object v39, v5, v0

    const/16 v0, 0x24

    aput-object v40, v5, v0

    const/16 v0, 0x25

    aput-object v41, v5, v0

    const/16 v0, 0x26

    aput-object v42, v5, v0

    const/16 v0, 0x27

    aput-object v43, v5, v0

    const/16 v0, 0x28

    aput-object v44, v5, v0

    const/16 v0, 0x29

    aput-object v45, v5, v0

    const/16 v0, 0x2a

    aput-object v46, v5, v0

    const/16 v0, 0x2b

    aput-object v47, v5, v0

    const/16 v0, 0x2c

    aput-object v48, v5, v0

    const/16 v0, 0x2d

    aput-object v49, v5, v0

    const/16 v0, 0x2e

    aput-object v50, v5, v0

    const/16 v0, 0x2f

    aput-object v51, v5, v0

    const/16 v0, 0x30

    aput-object v52, v5, v0

    const/16 v0, 0x31

    aput-object v3, v5, v0

    .line 51
    sput-object v5, Lcom/truecaller/network/notification/NotificationType;->$VALUES:[Lcom/truecaller/network/notification/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/network/notification/NotificationType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/truecaller/network/notification/NotificationType;
    .locals 4

    .line 2
    invoke-static {}, Lcom/truecaller/network/notification/NotificationType;->values()[Lcom/truecaller/network/notification/NotificationType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    iget v3, v2, Lcom/truecaller/network/notification/NotificationType;->value:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/truecaller/network/notification/NotificationType;->UNSUPPORTED:Lcom/truecaller/network/notification/NotificationType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/network/notification/NotificationType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/network/notification/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/network/notification/NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/network/notification/NotificationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/network/notification/NotificationType;->$VALUES:[Lcom/truecaller/network/notification/NotificationType;

    invoke-virtual {v0}, [Lcom/truecaller/network/notification/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/network/notification/NotificationType;

    return-object v0
.end method
