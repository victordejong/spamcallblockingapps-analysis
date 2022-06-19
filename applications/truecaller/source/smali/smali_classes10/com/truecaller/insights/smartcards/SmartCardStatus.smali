.class public final enum Lcom/truecaller/insights/smartcards/SmartCardStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/smartcards/SmartCardStatus;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008/\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085\u00a8\u00066"
    }
    d2 = {
        "Lcom/truecaller/insights/smartcards/SmartCardStatus;",
        "",
        "",
        "key",
        "Ljava/lang/String;",
        "getKey",
        "()Ljava/lang/String;",
        "",
        "label",
        "I",
        "getLabel",
        "()I",
        "color",
        "getColor",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;II)V",
        "DeliveryConfirmed",
        "DeliveryPacked",
        "DeliveryShipped",
        "DeliveryArrivingSoon",
        "DeliveryArrivingToday",
        "DeliveryArrivingTomorrow",
        "DeliveryArrivingEarly",
        "DeliveryDelayInArrival",
        "DeliveryDelivered",
        "DeliveryCancelled",
        "DeliveryReturnPickup",
        "DeliveryExchange",
        "DeliveryPickupComplete",
        "DeliveryReadyForPickup",
        "DeliveryNotDelivered",
        "BillPaid",
        "BillRecharged",
        "BillOverdue",
        "BillDue",
        "BillDueToday",
        "Travelled",
        "TravelConfirmed",
        "TravelCancelled",
        "TravelRescheduled",
        "TravelDelayed",
        "OtpDelivery",
        "UpdateChequeStatus",
        "UpdateTransactionSuccess",
        "UpdateTransactionPending",
        "UpdateTransactionProcessing",
        "UpdatePaymentReceived",
        "UpdateTransactionFailed",
        "UpdateLoanApproved",
        "UpdateLoanDue",
        "UpdateLoanOverdue",
        "UpdateLoanClosed",
        "UpdateBeneficiaryCredited",
        "UpdateTransactionTransfer",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum BillDue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum BillDueToday:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum BillOverdue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum BillPaid:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum BillRecharged:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryArrivingEarly:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryArrivingSoon:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryArrivingToday:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryArrivingTomorrow:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryCancelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryDelayInArrival:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryExchange:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryNotDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryPacked:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryPickupComplete:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryReadyForPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryReturnPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum DeliveryShipped:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum OtpDelivery:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum TravelCancelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum TravelConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum TravelDelayed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum TravelRescheduled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum Travelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateBeneficiaryCredited:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateChequeStatus:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateLoanApproved:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateLoanClosed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateLoanDue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateLoanOverdue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdatePaymentReceived:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateTransactionFailed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateTransactionPending:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateTransactionProcessing:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateTransactionSuccess:Lcom/truecaller/insights/smartcards/SmartCardStatus;

.field public static final enum UpdateTransactionTransfer:Lcom/truecaller/insights/smartcards/SmartCardStatus;


# instance fields
.field private final color:I

.field private final key:Ljava/lang/String;

.field private final label:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x26

    new-array v0, v0, [Lcom/truecaller/insights/smartcards/SmartCardStatus;

    new-instance v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 1
    sget v5, Lcom/truecaller/insights/R$string;->delivery_confirmed:I

    sget v14, Lcom/truecaller/insights/R$attr;->smart_card_status_neutral:I

    const-string v2, "DeliveryConfirmed"

    const/4 v3, 0x0

    const-string v4, "Confirmed"

    move-object v1, v7

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 2
    sget v12, Lcom/truecaller/insights/R$string;->delivery_packed:I

    const-string v9, "DeliveryPacked"

    const/4 v10, 0x1

    const-string v11, "Packed"

    move-object v8, v1

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryPacked:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 3
    sget v12, Lcom/truecaller/insights/R$string;->delivery_shipped:I

    const-string v9, "DeliveryShipped"

    const/4 v10, 0x2

    const-string v11, "Shipped"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryShipped:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 4
    sget v12, Lcom/truecaller/insights/R$string;->delivery_arriving_soon:I

    const-string v9, "DeliveryArrivingSoon"

    const/4 v10, 0x3

    const-string v11, "Arriving soon"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingSoon:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 5
    sget v12, Lcom/truecaller/insights/R$string;->delivery_arriving_today:I

    const-string v9, "DeliveryArrivingToday"

    const/4 v10, 0x4

    const-string v11, "Arriving today"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingToday:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 6
    sget v12, Lcom/truecaller/insights/R$string;->delivery_arriving_tomorrow:I

    const-string v9, "DeliveryArrivingTomorrow"

    const/4 v10, 0x5

    const-string v11, "Arriving tomorrow"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingTomorrow:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 7
    sget v12, Lcom/truecaller/insights/R$string;->delivery_arriving_early:I

    const-string v9, "DeliveryArrivingEarly"

    const/4 v10, 0x6

    const-string v11, "Arriving early"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingEarly:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 8
    sget v7, Lcom/truecaller/insights/R$string;->delivery_delay_in_arrival:I

    sget v2, Lcom/truecaller/insights/R$attr;->smart_card_status_negative:I

    const-string v4, "DeliveryDelayInArrival"

    const/4 v5, 0x7

    const-string v6, "Delay in arrival"

    move-object v3, v1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryDelayInArrival:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 9
    sget v8, Lcom/truecaller/insights/R$string;->delivery_delivered:I

    sget v3, Lcom/truecaller/insights/R$attr;->smart_card_status_positive:I

    const-string v5, "DeliveryDelivered"

    const/16 v6, 0x8

    const-string v7, "Delivered"

    move-object v4, v1

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 10
    sget v12, Lcom/truecaller/insights/R$string;->delivery_cancelled:I

    const-string v9, "DeliveryCancelled"

    const/16 v10, 0x9

    const-string v11, "Cancelled"

    move-object v8, v1

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryCancelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 11
    sget v9, Lcom/truecaller/insights/R$string;->delivery_return_pickup:I

    sget v4, Lcom/truecaller/insights/R$attr;->smart_card_status_action_required:I

    const-string v6, "DeliveryReturnPickup"

    const/16 v7, 0xa

    const-string v8, "Return pickup"

    move-object v5, v1

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryReturnPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 12
    sget v19, Lcom/truecaller/insights/R$string;->delivery_exchange:I

    const-string v16, "DeliveryExchange"

    const/16 v17, 0xb

    const-string v18, "Exchange"

    move-object v15, v1

    move/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryExchange:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 13
    sget v19, Lcom/truecaller/insights/R$string;->delivery_pickup_complete:I

    const-string v16, "DeliveryPickupComplete"

    const/16 v17, 0xc

    const-string v18, "Pickup complete"

    move-object v15, v1

    move/from16 v20, v3

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryPickupComplete:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0xc

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 14
    sget v19, Lcom/truecaller/insights/R$string;->delivery_ready_for_pickup:I

    const-string v16, "DeliveryReadyForPickup"

    const/16 v17, 0xd

    const-string v18, "Ready for pickup"

    move-object v15, v1

    move/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryReadyForPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 15
    sget v12, Lcom/truecaller/insights/R$string;->delivery_not_delivered:I

    const-string v9, "DeliveryNotDelivered"

    const/16 v10, 0xe

    const-string v11, "Not delivered"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryNotDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 16
    sget v19, Lcom/truecaller/insights/R$string;->bill_paid:I

    const-string v16, "BillPaid"

    const/16 v17, 0xf

    const-string v18, "Paid"

    move-object v15, v1

    move/from16 v20, v3

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillPaid:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 17
    sget v19, Lcom/truecaller/insights/R$string;->bill_recharged:I

    const-string v16, "BillRecharged"

    const/16 v17, 0x10

    const-string v18, "Recharged"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillRecharged:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0x10

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 18
    sget v12, Lcom/truecaller/insights/R$string;->bill_overdue:I

    const-string v9, "BillOverdue"

    const/16 v10, 0x11

    const-string v11, "Overdue"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillOverdue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0x11

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 19
    sget v19, Lcom/truecaller/insights/R$string;->bill_due:I

    const-string v16, "BillDue"

    const/16 v17, 0x12

    const-string v18, "Due"

    move-object v15, v1

    move/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillDue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v5, 0x12

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 20
    sget v19, Lcom/truecaller/insights/R$string;->bill_due_today:I

    const-string v16, "BillDueToday"

    const/16 v17, 0x13

    const-string v18, "Due today"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillDueToday:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 21
    sget v19, Lcom/truecaller/insights/R$string;->travelled:I

    const-string v16, "Travelled"

    const/16 v17, 0x14

    const-string v18, "Travelled"

    move-object v15, v1

    move/from16 v20, v3

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->Travelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 22
    sget v12, Lcom/truecaller/insights/R$string;->travel_confirmed:I

    const-string v9, "TravelConfirmed"

    const/16 v10, 0x15

    const-string v11, "Confirmed"

    move-object v8, v1

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 23
    sget v12, Lcom/truecaller/insights/R$string;->travel_cancelled:I

    const-string v9, "TravelCancelled"

    const/16 v10, 0x16

    const-string v11, "Cancelled"

    move-object v8, v1

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelCancelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 24
    sget v12, Lcom/truecaller/insights/R$string;->travel_rescheduled:I

    const-string v9, "TravelRescheduled"

    const/16 v10, 0x17

    const-string v11, "Rescheduled"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelRescheduled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 25
    sget v12, Lcom/truecaller/insights/R$string;->travel_delayed:I

    const-string v9, "TravelDelayed"

    const/16 v10, 0x18

    const-string v11, "Delayed"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelDelayed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 26
    sget v7, Lcom/truecaller/insights/R$string;->otp_delivery:I

    sget v2, Lcom/truecaller/insights/R$attr;->smart_card_status_neutral:I

    const-string v4, "OtpDelivery"

    const/16 v5, 0x19

    const-string v6, "Delivery"

    move-object v3, v1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->OtpDelivery:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 27
    sget v12, Lcom/truecaller/insights/R$string;->update_cheque_status:I

    const-string v9, "UpdateChequeStatus"

    const/16 v10, 0x1a

    const-string v11, "Cheque status"

    move-object v8, v1

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateChequeStatus:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 28
    sget v12, Lcom/truecaller/insights/R$string;->update_transaction_success:I

    const-string v9, "UpdateTransactionSuccess"

    const/16 v10, 0x1b

    const-string v11, "Success"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionSuccess:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 29
    sget v12, Lcom/truecaller/insights/R$string;->update_transaction_pending:I

    const-string v9, "UpdateTransactionPending"

    const/16 v10, 0x1c

    const-string v11, "Pending"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionPending:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 30
    sget v12, Lcom/truecaller/insights/R$string;->update_transaction_processing:I

    const-string v9, "UpdateTransactionProcessing"

    const/16 v10, 0x1d

    const-string v11, "Processing"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionProcessing:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 31
    sget v12, Lcom/truecaller/insights/R$string;->update_payment_received:I

    const-string v9, "UpdatePaymentReceived"

    const/16 v10, 0x1e

    const-string v11, "Payment received"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdatePaymentReceived:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 32
    sget v12, Lcom/truecaller/insights/R$string;->update_transaction_failed:I

    const-string v9, "UpdateTransactionFailed"

    const/16 v10, 0x1f

    const-string v11, "Failed"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionFailed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 33
    sget v12, Lcom/truecaller/insights/R$string;->update_loan_approved:I

    const-string v9, "UpdateLoanApproved"

    const/16 v10, 0x20

    const-string v11, "Approved"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanApproved:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 34
    sget v12, Lcom/truecaller/insights/R$string;->update_loan_due:I

    const-string v9, "UpdateLoanDue"

    const/16 v10, 0x21

    const-string v11, "Due"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanDue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 35
    sget v12, Lcom/truecaller/insights/R$string;->update_loan_overdue:I

    const-string v9, "UpdateLoanOverdue"

    const/16 v10, 0x22

    const-string v11, "Overdue"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanOverdue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 36
    sget v12, Lcom/truecaller/insights/R$string;->update_loan_closed:I

    const-string v9, "UpdateLoanClosed"

    const/16 v10, 0x23

    const-string v11, "Closed"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanClosed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 37
    sget v12, Lcom/truecaller/insights/R$string;->update_beneficiary_credited:I

    const-string v9, "UpdateBeneficiaryCredited"

    const/16 v10, 0x24

    const-string v11, "Beneficiary credited"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateBeneficiaryCredited:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 38
    sget v12, Lcom/truecaller/insights/R$string;->update_transaction_transfer:I

    const-string v9, "UpdateTransactionTransfer"

    const/16 v10, 0x25

    const-string v11, "Transfer"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/smartcards/SmartCardStatus;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionTransfer:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->$VALUES:[Lcom/truecaller/insights/smartcards/SmartCardStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->key:Ljava/lang/String;

    iput p4, p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->label:I

    iput p5, p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->color:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/smartcards/SmartCardStatus;
    .locals 1

    const-class v0, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/smartcards/SmartCardStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->$VALUES:[Lcom/truecaller/insights/smartcards/SmartCardStatus;

    invoke-virtual {v0}, [Lcom/truecaller/insights/smartcards/SmartCardStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/smartcards/SmartCardStatus;

    return-object v0
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->color:I

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/smartcards/SmartCardStatus;->label:I

    return v0
.end method
