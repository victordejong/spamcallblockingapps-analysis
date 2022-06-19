.class public final enum Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/UserInteractionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008$\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "SUGGESTED_NAME",
        "CALLED",
        "SMS",
        "ADDED_TAG",
        "SAVED_CONTACT",
        "EDITED_CONTACT",
        "WARNED_FRIENDS",
        "BLOCKED",
        "UNBLOCKED",
        "RATED_US",
        "OPENED_DETAIL_VIEW",
        "MANUALLY_DISMISSED",
        "LIST_ITEM_CLICKED",
        "POSITIVE_BUTTON",
        "NEGATIVE_BUTTON",
        "OPEN_APP",
        "PAYMENT",
        "RECHARGE",
        "CHANGE_PASSWORD",
        "FLASH_BUTTON",
        "REQUEST_MONEY",
        "GET_PAYMENT_LINK",
        "SEND_PAY_REQUEST",
        "CREATE_SMS_SHORTCUT",
        "CREATE_SMS_SHORTCUT_DISMISSED",
        "VIEWED",
        "ACCEPTED",
        "IM_PROMO_CLICKED",
        "IM_PROMO_DISMISSED",
        "common-analytics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum ACCEPTED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum ADDED_TAG:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum BLOCKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum CALLED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum CHANGE_PASSWORD:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum CREATE_SMS_SHORTCUT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum CREATE_SMS_SHORTCUT_DISMISSED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum EDITED_CONTACT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum FLASH_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum GET_PAYMENT_LINK:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum IM_PROMO_CLICKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum IM_PROMO_DISMISSED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum LIST_ITEM_CLICKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum MANUALLY_DISMISSED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum NEGATIVE_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum OPENED_DETAIL_VIEW:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum OPEN_APP:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum PAYMENT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum POSITIVE_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum RATED_US:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum RECHARGE:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum REQUEST_MONEY:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum SAVED_CONTACT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum SEND_PAY_REQUEST:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum SMS:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum SUGGESTED_NAME:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum UNBLOCKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum VIEWED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

.field public static final enum WARNED_FRIENDS:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "SUGGESTED_NAME"

    const/4 v3, 0x0

    const-string v4, "suggestedName"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SUGGESTED_NAME:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "CALLED"

    const/4 v3, 0x1

    const-string v4, "called"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->CALLED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "SMS"

    const/4 v3, 0x2

    const-string v4, "sms"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SMS:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "ADDED_TAG"

    const/4 v3, 0x3

    const-string v4, "addedTag"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->ADDED_TAG:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "SAVED_CONTACT"

    const/4 v3, 0x4

    const-string v4, "savedContact"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SAVED_CONTACT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "EDITED_CONTACT"

    const/4 v3, 0x5

    const-string v4, "editedContact"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->EDITED_CONTACT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "WARNED_FRIENDS"

    const/4 v3, 0x6

    const-string v4, "warnedFriends"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->WARNED_FRIENDS:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "BLOCKED"

    const/4 v3, 0x7

    const-string v4, "blocked"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->BLOCKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "UNBLOCKED"

    const/16 v3, 0x8

    const-string v4, "unblocked"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->UNBLOCKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "RATED_US"

    const/16 v3, 0x9

    const-string v4, "ratedUs"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->RATED_US:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "OPENED_DETAIL_VIEW"

    const/16 v3, 0xa

    const-string v4, "openedDetailView"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->OPENED_DETAIL_VIEW:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "MANUALLY_DISMISSED"

    const/16 v3, 0xb

    const-string v4, "manuallyDismissed"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->MANUALLY_DISMISSED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "LIST_ITEM_CLICKED"

    const/16 v3, 0xc

    const-string v4, "listItemClicked"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->LIST_ITEM_CLICKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "POSITIVE_BUTTON"

    const/16 v3, 0xd

    const-string v4, "positiveButton"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->POSITIVE_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "NEGATIVE_BUTTON"

    const/16 v3, 0xe

    const-string v4, "negativeButton"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->NEGATIVE_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "OPEN_APP"

    const/16 v3, 0xf

    const-string v4, "openApp"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->OPEN_APP:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "PAYMENT"

    const/16 v3, 0x10

    const-string v4, "payment"

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->PAYMENT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "RECHARGE"

    const/16 v3, 0x11

    const-string v4, "recharge"

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->RECHARGE:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "CHANGE_PASSWORD"

    const/16 v3, 0x12

    const-string v4, "changePassword"

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->CHANGE_PASSWORD:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "FLASH_BUTTON"

    const/16 v3, 0x13

    const-string v4, "flashButton"

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->FLASH_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "REQUEST_MONEY"

    const/16 v3, 0x14

    const-string v4, "requestMoney"

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->REQUEST_MONEY:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "GET_PAYMENT_LINK"

    const/16 v3, 0x15

    const-string v4, "getPayLink"

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->GET_PAYMENT_LINK:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "SEND_PAY_REQUEST"

    const/16 v3, 0x16

    const-string v4, "sendPayRequest"

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SEND_PAY_REQUEST:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "CREATE_SMS_SHORTCUT"

    const/16 v3, 0x17

    const-string v4, "createSMSShortcut"

    .line 24
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->CREATE_SMS_SHORTCUT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "CREATE_SMS_SHORTCUT_DISMISSED"

    const/16 v3, 0x18

    const-string v4, "smsShortcutDismissed"

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->CREATE_SMS_SHORTCUT_DISMISSED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "VIEWED"

    const/16 v3, 0x19

    const-string v4, "viewed"

    .line 26
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->VIEWED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "ACCEPTED"

    const/16 v3, 0x1a

    const-string v4, "accepted"

    .line 27
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->ACCEPTED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "IM_PROMO_CLICKED"

    const/16 v3, 0x1b

    const-string v4, "imPromoClicked"

    .line 28
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->IM_PROMO_CLICKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const-string v2, "IM_PROMO_DISMISSED"

    const/16 v3, 0x1c

    const-string v4, "imPromoDismissed"

    .line 29
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->IM_PROMO_DISMISSED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->$VALUES:[Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

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

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->$VALUES:[Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->value:Ljava/lang/String;

    return-object v0
.end method
