.class public final enum Lcom/revenuecat/purchases/common/BackendErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/common/BackendErrorCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/common/BackendErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendBadRequest:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendCannotTransferPurchase:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendEmptyAppUserId:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInternalServerError:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidAPIKey:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidAppStoreSharedSecret:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidAppleSubscriptionKey:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidAuthToken:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidPaymentModeOrIntroPriceNotProvided:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidPlatform:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidPlayStoreCredentials:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidReceiptToken:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidSubscriberAttributes:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendInvalidSubscriberAttributesBody:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendPlayStoreGenericError:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendPlayStoreInvalidPackageName:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendPlayStoreQuotaExceeded:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendProductIdForGoogleReceiptNotProvided:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendStoreProblem:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final enum BackendUserIneligibleForPromoOffer:Lcom/revenuecat/purchases/common/BackendErrorCode;

.field public static final Companion:Lcom/revenuecat/purchases/common/BackendErrorCode$Companion;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/revenuecat/purchases/common/BackendErrorCode;

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidPlatform"

    const/4 v3, 0x0

    const/16 v4, 0x1b58

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidPlatform:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendStoreProblem"

    const/4 v3, 0x1

    const/16 v4, 0x1bbd

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendStoreProblem:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendCannotTransferPurchase"

    const/4 v3, 0x2

    const/16 v4, 0x1bbe

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendCannotTransferPurchase:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidReceiptToken"

    const/4 v3, 0x3

    const/16 v4, 0x1bbf

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidReceiptToken:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidAppStoreSharedSecret"

    const/4 v3, 0x4

    const/16 v4, 0x1bc0

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidAppStoreSharedSecret:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidPaymentModeOrIntroPriceNotProvided"

    const/4 v3, 0x5

    const/16 v4, 0x1bc1

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidPaymentModeOrIntroPriceNotProvided:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendProductIdForGoogleReceiptNotProvided"

    const/4 v3, 0x6

    const/16 v4, 0x1bc2

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendProductIdForGoogleReceiptNotProvided:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidPlayStoreCredentials"

    const/4 v3, 0x7

    const/16 v4, 0x1bc3

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidPlayStoreCredentials:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInternalServerError"

    const/16 v3, 0x8

    const/16 v4, 0x1bc6

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInternalServerError:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendEmptyAppUserId"

    const/16 v3, 0x9

    const/16 v4, 0x1c34

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendEmptyAppUserId:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidAuthToken"

    const/16 v3, 0xa

    const/16 v4, 0x1c38

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidAuthToken:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidAPIKey"

    const/16 v3, 0xb

    const/16 v4, 0x1c39

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidAPIKey:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendBadRequest"

    const/16 v3, 0xc

    const/16 v4, 0x1c3a

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendBadRequest:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendPlayStoreQuotaExceeded"

    const/16 v3, 0xd

    const/16 v4, 0x1c3d

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendPlayStoreQuotaExceeded:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendPlayStoreInvalidPackageName"

    const/16 v3, 0xe

    const/16 v4, 0x1c3e

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendPlayStoreInvalidPackageName:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendPlayStoreGenericError"

    const/16 v3, 0xf

    const/16 v4, 0x1c3f

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendPlayStoreGenericError:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendUserIneligibleForPromoOffer"

    const/16 v3, 0x10

    const/16 v4, 0x1c40

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendUserIneligibleForPromoOffer:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidAppleSubscriptionKey"

    const/16 v3, 0x11

    const/16 v4, 0x1c42

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidAppleSubscriptionKey:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidSubscriberAttributes"

    const/16 v3, 0x12

    const/16 v4, 0x1c5f

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidSubscriberAttributes:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/BackendErrorCode;

    const-string v2, "BackendInvalidSubscriberAttributesBody"

    const/16 v3, 0x13

    const/16 v4, 0x1c60

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/BackendErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/revenuecat/purchases/common/BackendErrorCode;->BackendInvalidSubscriberAttributesBody:Lcom/revenuecat/purchases/common/BackendErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/revenuecat/purchases/common/BackendErrorCode;->$VALUES:[Lcom/revenuecat/purchases/common/BackendErrorCode;

    new-instance v0, Lcom/revenuecat/purchases/common/BackendErrorCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/revenuecat/purchases/common/BackendErrorCode$Companion;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/revenuecat/purchases/common/BackendErrorCode;->Companion:Lcom/revenuecat/purchases/common/BackendErrorCode$Companion;

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

    iput p3, p0, Lcom/revenuecat/purchases/common/BackendErrorCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/common/BackendErrorCode;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/common/BackendErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/common/BackendErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/common/BackendErrorCode;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/common/BackendErrorCode;->$VALUES:[Lcom/revenuecat/purchases/common/BackendErrorCode;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/common/BackendErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/common/BackendErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/revenuecat/purchases/common/BackendErrorCode;->value:I

    return v0
.end method
