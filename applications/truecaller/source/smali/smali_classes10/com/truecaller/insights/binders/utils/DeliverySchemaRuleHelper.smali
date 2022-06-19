.class public final Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;,
        Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;
    }
.end annotation


# static fields
.field public static final a:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/k;

    .line 2
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_avatarTextRed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundRed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->a:Ls1/k;

    .line 5
    new-instance v0, Ls1/k;

    .line 6
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_avatarTextYellow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    sget v2, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundYellow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->b:Ls1/k;

    .line 9
    new-instance v0, Ls1/k;

    .line 10
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_avatarTextGreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    sget v2, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundGreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->c:Ls1/k;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Delivered"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->Delivered:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "Return Pickup"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->Returned:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "Delivery unsuccessful"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->FailedDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_3
    const-string v0, "Ready for pickup"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->SelfPickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_4
    const-string v0, "Order Cancelled"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderCancelled:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_5
    const-string v0, "Shipped"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderShipped:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_6
    const-string v0, "Arriving Soon"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->Transit:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_7
    const-string v0, "Order Confirmed"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderConfirmed:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_8
    const-string v0, "Packed"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderPacked:Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {p0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x71f6c768 -> :sswitch_8
        -0x5db78333 -> :sswitch_7
        -0x24272bf9 -> :sswitch_6
        -0x21e68acd -> :sswitch_5
        -0x11619d41 -> :sswitch_4
        -0x8deef90 -> :sswitch_3
        0x34b01e7f -> :sswitch_2
        0x60bc1b6c -> :sswitch_1
        0x69008064 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final b(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$getUiDate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object p0

    sget-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->Undelivered:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-ne p0, v2, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->q()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lw3/b/a/e0/a;->q()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    rem-int/lit8 v1, v1, 0xa

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const-string v1, "th"

    goto :goto_1

    :cond_2
    const-string v1, "rd"

    goto :goto_1

    :cond_3
    const-string v1, "nd"

    goto :goto_1

    :cond_4
    const-string v1, "st"

    .line 5
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object v0

    const-string v1, "dateTime.monthOfYear()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/h0/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method
