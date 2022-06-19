.class public final enum Lcom/revenuecat/purchases/PurchasesErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/PurchasesErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum IneligibleError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum InsufficientPermissionsError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum InvalidAppUserIdError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum InvalidAppleSubscriptionKeyError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum InvalidCredentialsError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum InvalidReceiptError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum InvalidSubscriberAttributesError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum MissingReceiptFileError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum NetworkError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum OperationAlreadyInProgressError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum PaymentPendingError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum ProductAlreadyPurchasedError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum ProductNotAvailableForPurchaseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum PurchaseCancelledError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum PurchaseInvalidError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum PurchaseNotAllowedError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum ReceiptAlreadyInUseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum ReceiptInUseByOtherSubscriberError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum StoreProblemError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum UnexpectedBackendResponseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum UnknownBackendError:Lcom/revenuecat/purchases/PurchasesErrorCode;

.field public static final enum UnknownError:Lcom/revenuecat/purchases/PurchasesErrorCode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/revenuecat/purchases/PurchasesErrorCode;

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "UnknownError"

    const/4 v3, 0x0

    const-string v4, "Unknown error."

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->UnknownError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "PurchaseCancelledError"

    const/4 v3, 0x1

    const-string v4, "Purchase was cancelled."

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->PurchaseCancelledError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "StoreProblemError"

    const/4 v3, 0x2

    const-string v4, "There was a problem with the Play Store."

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->StoreProblemError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "PurchaseNotAllowedError"

    const/4 v3, 0x3

    const-string v4, "The device or user is not allowed to make the purchase."

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->PurchaseNotAllowedError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "PurchaseInvalidError"

    const/4 v3, 0x4

    const-string v4, "One or more of the arguments provided are invalid."

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->PurchaseInvalidError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "ProductNotAvailableForPurchaseError"

    const/4 v3, 0x5

    const-string v4, "The product is not available for purchase."

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->ProductNotAvailableForPurchaseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "ProductAlreadyPurchasedError"

    const/4 v3, 0x6

    const-string v4, "This product is already active for the user."

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->ProductAlreadyPurchasedError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "ReceiptAlreadyInUseError"

    const/4 v3, 0x7

    const-string v4, "There is already another active subscriber using the same receipt."

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->ReceiptAlreadyInUseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "InvalidReceiptError"

    const/16 v3, 0x8

    const-string v4, "The receipt is not valid."

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->InvalidReceiptError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "MissingReceiptFileError"

    const/16 v3, 0x9

    const-string v4, "The receipt is missing."

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->MissingReceiptFileError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "NetworkError"

    const/16 v3, 0xa

    const-string v4, "Error performing request."

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->NetworkError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "InvalidCredentialsError"

    const/16 v3, 0xb

    const-string v4, "There was a credentials issue. Check the underlying error for more details."

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->InvalidCredentialsError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "UnexpectedBackendResponseError"

    const/16 v3, 0xc

    const-string v4, "Received malformed response from the backend."

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->UnexpectedBackendResponseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "ReceiptInUseByOtherSubscriberError"

    const/16 v3, 0xd

    const-string v4, "The receipt is in use by other subscriber."

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->ReceiptInUseByOtherSubscriberError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "InvalidAppUserIdError"

    const/16 v3, 0xe

    const-string v4, "The app user id is not valid."

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->InvalidAppUserIdError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "OperationAlreadyInProgressError"

    const/16 v3, 0xf

    const-string v4, "The operation is already in progress."

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->OperationAlreadyInProgressError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "UnknownBackendError"

    const/16 v3, 0x10

    const-string v4, "There was an unknown backend error."

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->UnknownBackendError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "InvalidAppleSubscriptionKeyError"

    const/16 v3, 0x11

    const-string v4, "Apple Subscription Key is invalid or not present. In order to provide subscription offers, you must first generate a subscription key. Please see https://docs.revenuecat.com/docs/ios-subscription-offers for more info."

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->InvalidAppleSubscriptionKeyError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "IneligibleError"

    const/16 v3, 0x12

    const-string v4, "The User is ineligible for that action."

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->IneligibleError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "InsufficientPermissionsError"

    const/16 v3, 0x13

    const-string v4, "App does not have sufficient permissions to make purchases."

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->InsufficientPermissionsError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "PaymentPendingError"

    const/16 v3, 0x14

    const-string v4, "The payment is pending."

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->PaymentPendingError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v2, "InvalidSubscriberAttributesError"

    const/16 v3, 0x15

    const-string v4, "One or more of the attributes sent could not be saved."

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PurchasesErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->InvalidSubscriberAttributesError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/revenuecat/purchases/PurchasesErrorCode;->$VALUES:[Lcom/revenuecat/purchases/PurchasesErrorCode;

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

    iput-object p3, p0, Lcom/revenuecat/purchases/PurchasesErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/PurchasesErrorCode;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/PurchasesErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/PurchasesErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/PurchasesErrorCode;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/PurchasesErrorCode;->$VALUES:[Lcom/revenuecat/purchases/PurchasesErrorCode;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/PurchasesErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/PurchasesErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
