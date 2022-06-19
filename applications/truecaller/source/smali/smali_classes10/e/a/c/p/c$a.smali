.class public final Le/a/c/p/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/p/c;->a(Ljava/util/List;Le/a/c/i/g/c;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/k<",
        "+",
        "Ljava/lang/Long;",
        "+",
        "Le/a/c/r/j/s;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/models/InsightsDomain;

.field public final synthetic c:I

.field public final synthetic d:Le/a/c/p/c;

.field public final synthetic e:Ls1/z/c/y;

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/models/InsightsDomain;ILe/a/c/p/c;Ls1/z/c/y;Ljava/util/Map;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    iput p2, p0, Le/a/c/p/c$a;->c:I

    iput-object p3, p0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iput-object p4, p0, Le/a/c/p/c$a;->e:Ls1/z/c/y;

    iput-object p5, p0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    iput-object p6, p0, Le/a/c/p/c$a;->g:Ls1/z/c/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 49

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    .line 2
    iget-object v1, v1, Le/a/c/p/c;->b:Le/a/c/f/h;

    .line 3
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "category"

    .line 4
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x5

    const-string v9, "Bill"

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x6

    const/4 v14, 0x1

    const/4 v15, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_25

    :sswitch_0
    const-string v4, "Delivery"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    new-array v3, v5, [Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    .line 7
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v15

    .line 8
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v14

    .line 9
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v11

    .line 10
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ORDER_STATUS:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v12

    .line 11
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ITEM_NAME:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v10

    .line 12
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v8

    .line 13
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->UI_DATE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v13

    .line 14
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v7

    .line 15
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->UI_TITLE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v4, v3, v6

    .line 16
    sget-object v4, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->UI_SUBTITLE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 17
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "Event"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v3, 0xc

    new-array v3, v3, [Lcom/truecaller/insights/binders/utils/EventUiProperties;

    .line 19
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v15

    .line 20
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v14

    .line 21
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->EVENT_TYPE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v11

    .line 22
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->EVENT_STATUS:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v12

    .line 23
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->NAME:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v10

    .line 24
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->TITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v8

    .line 25
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SUBTITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v13

    .line 26
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SECRET_CODE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v7

    .line 27
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->LOCATION:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v6

    .line 28
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->PRIMARY_ICON:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const/16 v6, 0x9

    aput-object v4, v3, v6

    .line 29
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v4, v3, v5

    .line 30
    sget-object v4, Lcom/truecaller/insights/binders/utils/EventUiProperties;->ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const/16 v5, 0xb

    aput-object v4, v3, v5

    .line 31
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_2
    const/16 v4, 0xb

    .line 32
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2f

    new-array v3, v4, [Lcom/truecaller/insights/binders/utils/BillUiProperties;

    .line 33
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v15

    .line 34
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUEINS_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v14

    .line 35
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v11

    .line 36
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v12

    .line 37
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUEINS_NUM:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v10

    .line 38
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v8

    .line 39
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v13

    .line 40
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v7

    .line 41
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v6

    .line 42
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const/16 v6, 0x9

    aput-object v4, v3, v6

    .line 43
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v5

    .line 44
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_3
    const/16 v4, 0x9

    const-string v5, "Bank"

    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    new-array v3, v4, [Lcom/truecaller/insights/binders/utils/BankUiProperties;

    .line 46
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_TRX_DETAIL:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v15

    .line 47
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ICON_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v14

    .line 48
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ACC_NUM:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v11

    .line 49
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_ACC_TYPE:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v12

    .line 50
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->TRX_AMT:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v10

    .line 51
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v8

    .line 52
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->UI_ACC_DETAIL:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v13

    .line 53
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v7

    .line 54
    sget-object v4, Lcom/truecaller/insights/binders/utils/BankUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/BankUiProperties;

    aput-object v4, v3, v6

    .line 55
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :sswitch_4
    const-string v4, "OTP"

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    new-array v3, v11, [Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    .line 57
    sget-object v4, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->OTP_NUM:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v4, v3, v15

    .line 58
    sget-object v4, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v4, v3, v14

    .line 59
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :sswitch_5
    const-string v4, "Travel"

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    .line 61
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->LOCATION:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v15

    .line 62
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->PNR:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v14

    .line 63
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->TRAVEL_TYPE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v11

    .line 64
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->DATETIME:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v12

    .line 65
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->UI_DATE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v10

    .line 66
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->SEAT:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v8

    .line 67
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->MORE_INFO:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v13

    .line 68
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CATEGORY:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v7

    .line 69
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v6

    .line 70
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v6, 0x9

    aput-object v4, v3, v6

    .line 71
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CONTENT_TITLE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v5

    .line 72
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xb

    aput-object v4, v3, v5

    .line 73
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ALERT_TYPE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xc

    aput-object v4, v3, v5

    .line 74
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 75
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 76
    :goto_0
    invoke-interface {v1, v2, v3}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v1

    .line 77
    instance-of v2, v1, Le/a/c/r/b$f;

    const-string v3, "$this$getActionData"

    const-string v4, "$this$toInfoCard"

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    .line 78
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v6, "null cannot be cast to non-null type com.truecaller.insights.models.InsightsDomain.Travel"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 79
    iget-object v6, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    .line 80
    iget-object v6, v6, Le/a/c/p/c;->f:Landroid/content/Context;

    .line 81
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v3

    const-string v7, "flight"

    invoke-static {v3, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "bus"

    if-eqz v3, :cond_1

    invoke-static {v2}, Le/a/m0/a1$k;->H0(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v14

    goto :goto_1

    :cond_0
    move v3, v15

    :goto_1
    if-eqz v3, :cond_1

    invoke-static {v2}, Le/a/m0/a1$k;->I0(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Le/a/c/r/j/a$h$b;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v17

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v20

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x60

    move-object/from16 v16, v3

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v25}, Le/a/c/r/j/a$h$b;-><init>(JLjava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Le/a/c/r/j/c;I)V

    goto :goto_3

    .line 84
    :cond_1
    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v14

    goto :goto_2

    :cond_2
    move v3, v15

    :goto_2
    if-eqz v3, :cond_3

    .line 85
    new-instance v3, Le/a/c/r/j/a$h$a;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v17

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v20

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->h()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x60

    move-object/from16 v16, v3

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v25}, Le/a/c/r/j/a$h$a;-><init>(JLjava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Le/a/c/r/j/c;I)V

    :goto_3
    move-object/from16 v19, v3

    goto :goto_4

    :cond_3
    move-object/from16 v19, v5

    :goto_4
    if-eqz v19, :cond_4

    .line 86
    iget-object v2, v0, Le/a/c/p/c$a;->e:Ls1/z/c/y;

    iput-boolean v14, v2, Ls1/z/c/y;->a:Z

    .line 87
    :cond_4
    check-cast v1, Le/a/c/r/b$f;

    .line 88
    iget-wide v2, v1, Le/a/c/r/b$f;->r:J

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iget-object v6, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    move-object v9, v6

    check-cast v9, Lcom/truecaller/insights/models/InsightsDomain$f;

    iget-object v12, v0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Le/a/c/i/e/b;

    .line 90
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v6, Le/a/c/r/j/s;

    .line 92
    new-instance v12, Le/a/c/r/j/p$h;

    invoke-static {v9, v5, v14}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Le/a/c/r/j/p$h;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v10, [Ls1/k;

    .line 94
    iget-object v10, v1, Le/a/c/r/b$f;->g:Ljava/lang/String;

    .line 95
    iget-object v13, v1, Le/a/c/r/b$f;->h:Ljava/lang/String;

    .line 96
    invoke-static {v10, v13}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v10

    aput-object v10, v4, v15

    .line 97
    iget-object v10, v1, Le/a/c/r/b$f;->c:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 98
    iget-object v10, v1, Le/a/c/r/b$f;->b:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 99
    iget-object v5, v1, Le/a/c/r/b$f;->i:Ljava/lang/String;

    .line 100
    iget-object v10, v1, Le/a/c/r/b$f;->j:Ljava/lang/String;

    .line 101
    invoke-static {v5, v10}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v5

    :cond_5
    aput-object v5, v4, v14

    .line 102
    iget-object v5, v1, Le/a/c/r/b$f;->m:Ljava/lang/String;

    .line 103
    iget-object v10, v1, Le/a/c/r/b$f;->n:Ljava/lang/String;

    .line 104
    invoke-static {v5, v10}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v5

    aput-object v5, v4, v11

    .line 105
    iget-object v5, v1, Le/a/c/r/b$f;->k:Ljava/lang/String;

    .line 106
    iget-object v10, v1, Le/a/c/r/b$f;->l:Ljava/lang/String;

    .line 107
    invoke-static {v5, v10}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    .line 108
    invoke-static {v4}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 109
    iget-object v5, v1, Le/a/c/r/b$f;->o:Ljava/lang/String;

    .line 110
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v13, " not supported"

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_a

    :sswitch_6
    const-string v7, "train"

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 112
    new-instance v5, Le/a/c/r/j/n;

    .line 113
    new-instance v7, Le/a/c/r/j/m;

    .line 114
    iget v8, v1, Le/a/c/r/b$f;->v:I

    const/4 v10, 0x6

    .line 115
    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 116
    iget-object v8, v1, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 117
    invoke-static {v1}, Le/a/c/p/a;->t0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    .line 118
    invoke-static {v4, v15}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v31, v10

    check-cast v31, Ls1/k;

    .line 119
    invoke-static {v4, v14}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v32, v10

    check-cast v32, Ls1/k;

    .line 120
    invoke-static {v4, v11}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v33, v10

    check-cast v33, Ls1/k;

    const/4 v10, 0x3

    .line 121
    invoke-static {v4, v10}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Ls1/k;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xe10

    const-string v29, ""

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 122
    invoke-direct/range {v25 .. v38}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto/16 :goto_9

    :sswitch_7
    const-string v7, "alert"

    .line 123
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 124
    iget-object v5, v1, Le/a/c/r/b$f;->p:Ljava/lang/String;

    if-nez v5, :cond_6

    goto/16 :goto_8

    .line 125
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x5185d186

    if-eq v7, v8, :cond_a

    const v8, 0x5b0b983

    if-eq v7, v8, :cond_8

    const v8, 0x1e1abdca

    if-eq v7, v8, :cond_7

    goto/16 :goto_8

    :cond_7
    const-string v7, "reschedule"

    .line 126
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_8
    const-string v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 127
    :goto_5
    new-instance v5, Le/a/c/r/j/n;

    .line 128
    new-instance v7, Le/a/c/r/j/m;

    .line 129
    iget v8, v1, Le/a/c/r/b$f;->v:I

    const/4 v10, 0x6

    .line 130
    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 131
    iget-object v8, v1, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 132
    iget-object v10, v1, Le/a/c/r/b$f;->t:Ljava/lang/String;

    if-eqz v10, :cond_9

    const/16 v10, 0x28

    .line 133
    invoke-static {v10}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 134
    iget-object v13, v1, Le/a/c/r/b$f;->t:Ljava/lang/String;

    .line 135
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Le/a/c/p/a;->t0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_9
    invoke-static {v1}, Le/a/c/p/a;->t0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v10

    :goto_6
    move-object/from16 v28, v10

    const/16 v30, 0x0

    .line 136
    invoke-static {v4, v15}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v31, v10

    check-cast v31, Ls1/k;

    .line 137
    invoke-static {v4, v14}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v32, v10

    check-cast v32, Ls1/k;

    .line 138
    invoke-static {v4, v11}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v33, v10

    check-cast v33, Ls1/k;

    const/4 v10, 0x3

    .line 139
    invoke-static {v4, v10}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Ls1/k;

    .line 140
    invoke-static {v1, v14}, Le/a/m0/a1$k;->G(Le/a/c/r/b$f;Z)Ljava/util/List;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xc10

    const-string v29, ""

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 141
    invoke-direct/range {v25 .. v38}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto/16 :goto_9

    :cond_a
    const-string v7, "cancel"

    .line 142
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 143
    new-instance v5, Le/a/c/r/j/n;

    .line 144
    new-instance v7, Le/a/c/r/j/m;

    .line 145
    iget v8, v1, Le/a/c/r/b$f;->v:I

    const/4 v10, 0x6

    .line 146
    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 147
    iget-object v8, v1, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 148
    iget-object v10, v1, Le/a/c/r/b$f;->t:Ljava/lang/String;

    if-eqz v10, :cond_b

    goto :goto_7

    .line 149
    :cond_b
    invoke-static {v1}, Le/a/c/p/a;->t0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v10

    :goto_7
    move-object/from16 v28, v10

    const/16 v30, 0x0

    .line 150
    invoke-static {v4, v15}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v31, v10

    check-cast v31, Ls1/k;

    .line 151
    invoke-static {v4, v14}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v32, v10

    check-cast v32, Ls1/k;

    .line 152
    invoke-static {v4, v11}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v33, v10

    check-cast v33, Ls1/k;

    const/4 v10, 0x3

    .line 153
    invoke-static {v4, v10}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Ls1/k;

    .line 154
    invoke-static {v1, v15}, Le/a/m0/a1$k;->G(Le/a/c/r/b$f;Z)Ljava/util/List;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xc10

    const-string v29, ""

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 155
    invoke-direct/range {v25 .. v38}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto/16 :goto_9

    .line 156
    :cond_c
    :goto_8
    sget-object v4, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    iget-object v8, v1, Le/a/c/r/b$f;->p:Ljava/lang/String;

    .line 158
    invoke-static {v7, v8, v13}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 159
    invoke-virtual {v4, v5, v7}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 160
    :sswitch_8
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 161
    new-instance v5, Le/a/c/r/j/n;

    .line 162
    new-instance v7, Le/a/c/r/j/m;

    .line 163
    iget v8, v1, Le/a/c/r/b$f;->v:I

    const/4 v10, 0x6

    .line 164
    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 165
    iget-object v8, v1, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 166
    invoke-static {v1}, Le/a/c/p/a;->t0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    .line 167
    invoke-static {v4, v15}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v31, v10

    check-cast v31, Ls1/k;

    .line 168
    invoke-static {v4, v14}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v32, v10

    check-cast v32, Ls1/k;

    .line 169
    invoke-static {v4, v11}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v33, v10

    check-cast v33, Ls1/k;

    const/4 v10, 0x3

    .line 170
    invoke-static {v4, v10}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Ls1/k;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xe10

    const-string v29, ""

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 171
    invoke-direct/range {v25 .. v38}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto :goto_9

    .line 172
    :sswitch_9
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 173
    new-instance v5, Le/a/c/r/j/n;

    .line 174
    new-instance v7, Le/a/c/r/j/m;

    .line 175
    iget v8, v1, Le/a/c/r/b$f;->v:I

    const/4 v10, 0x6

    .line 176
    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 177
    iget-object v8, v1, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 178
    invoke-static {v1}, Le/a/c/p/a;->t0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    .line 179
    invoke-static {v4, v15}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v31, v10

    check-cast v31, Ls1/k;

    .line 180
    invoke-static {v4, v14}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v32, v4

    check-cast v32, Ls1/k;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xf90

    const-string v29, ""

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 181
    invoke-direct/range {v25 .. v38}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    :goto_9
    move-object/from16 v18, v5

    goto :goto_c

    .line 182
    :cond_d
    :goto_a
    sget-object v4, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    iget-object v8, v1, Le/a/c/r/b$f;->o:Ljava/lang/String;

    .line 184
    invoke-static {v7, v8, v13}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 185
    invoke-virtual {v4, v5, v7}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_b
    move-object/from16 v18, v7

    .line 186
    :goto_c
    iget-boolean v4, v1, Le/a/c/r/b$f;->u:Z

    .line 187
    invoke-virtual {v3, v4}, Le/a/c/p/c;->b(Z)Le/a/c/r/j/h;

    move-result-object v20

    const/16 v23, 0x0

    .line 188
    iget-boolean v1, v1, Le/a/c/r/b$f;->u:Z

    .line 189
    invoke-virtual {v3, v1}, Le/a/c/p/c;->c(Z)Lcom/truecaller/insights/repository/filters/InfoCardType;

    move-result-object v25

    .line 190
    new-instance v1, Le/a/c/r/j/q;

    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v3

    invoke-direct {v1, v3}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/16 v26, 0x0

    .line 191
    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v27

    const/16 v28, 0x240

    const/16 v22, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v21, v1

    .line 192
    invoke-direct/range {v16 .. v28}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    .line 193
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 194
    :cond_e
    instance-of v2, v1, Le/a/c/r/b$c;

    const-string v6, ""

    if-eqz v2, :cond_14

    .line 195
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v3, "null cannot be cast to non-null type com.truecaller.insights.models.InsightsDomain.Delivery"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$b;

    .line 196
    check-cast v1, Le/a/c/r/b$c;

    .line 197
    iget-object v2, v1, Le/a/c/r/b$c;->j:Le/a/c/r/j/a;

    if-eqz v2, :cond_f

    .line 198
    iget-object v2, v0, Le/a/c/p/c$a;->e:Ls1/z/c/y;

    iput-boolean v14, v2, Ls1/z/c/y;->a:Z

    .line 199
    :cond_f
    iget-wide v2, v1, Le/a/c/r/b$c;->f:J

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iget-object v7, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    move-object v8, v7

    check-cast v8, Lcom/truecaller/insights/models/InsightsDomain$b;

    iget-object v9, v0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Le/a/c/i/e/b;

    .line 201
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v10, Le/a/c/r/j/p$d;->b:Le/a/c/r/j/p$d;

    .line 203
    sget-object v7, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    .line 204
    iget-object v7, v1, Le/a/c/r/b$c;->a:Ljava/lang/String;

    .line 205
    invoke-static {v7}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v9, Le/a/c/r/j/r$c;

    invoke-direct {v9, v7}, Le/a/c/r/j/r$c;-><init>(Ljava/lang/String;)V

    move-object v15, v9

    goto :goto_d

    :cond_10
    move-object v15, v5

    .line 206
    :goto_d
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v4, Le/a/c/r/j/n;

    .line 208
    iget-object v7, v1, Le/a/c/r/b$c;->h:Le/a/c/r/j/m;

    if-eqz v7, :cond_13

    .line 209
    iget-object v5, v1, Le/a/c/r/b$c;->e:Ljava/lang/String;

    if-eqz v5, :cond_11

    move-object/from16 v21, v5

    goto :goto_e

    :cond_11
    move-object/from16 v21, v6

    .line 210
    :goto_e
    iget-object v5, v1, Le/a/c/r/b$c;->d:Ljava/lang/String;

    if-eqz v5, :cond_12

    move-object/from16 v20, v5

    goto :goto_f

    :cond_12
    move-object/from16 v20, v6

    :goto_f
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xff8

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 211
    invoke-direct/range {v18 .. v31}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    move-object v11, v4

    goto :goto_10

    :cond_13
    move-object v11, v5

    .line 212
    :goto_10
    iget-object v12, v1, Le/a/c/r/b$c;->j:Le/a/c/r/j/a;

    .line 213
    iget-boolean v4, v1, Le/a/c/r/b$c;->i:Z

    .line 214
    invoke-virtual {v3, v4}, Le/a/c/p/c;->b(Z)Le/a/c/r/j/h;

    move-result-object v13

    const/16 v16, 0x0

    .line 215
    iget-boolean v1, v1, Le/a/c/r/b$c;->i:Z

    .line 216
    invoke-virtual {v3, v1}, Le/a/c/p/c;->c(Z)Lcom/truecaller/insights/repository/filters/InfoCardType;

    move-result-object v18

    .line 217
    new-instance v14, Le/a/c/r/j/q;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$b;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v1

    invoke-direct {v14, v1}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/16 v19, 0x0

    .line 218
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$b;->isIM()Z

    move-result v20

    const/16 v21, 0x240

    .line 219
    new-instance v1, Le/a/c/r/j/s;

    move-object v9, v1

    invoke-direct/range {v9 .. v21}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    .line 220
    new-instance v3, Ls1/k;

    invoke-direct {v3, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11
    move-object v1, v3

    goto/16 :goto_24

    .line 221
    :cond_14
    instance-of v2, v1, Le/a/c/r/b$b;

    if-eqz v2, :cond_24

    .line 222
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v5, "null cannot be cast to non-null type com.truecaller.insights.models.InsightsDomain.Bill"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 223
    iget-object v2, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    .line 224
    iget-object v2, v2, Le/a/c/p/c;->c:Le/a/b0/m/d/a;

    .line 225
    check-cast v1, Le/a/c/r/b$b;

    .line 226
    iget-object v5, v1, Le/a/c/r/b$b;->a:Ljava/lang/String;

    .line 227
    invoke-interface {v2, v5}, Le/a/b0/m/d/a;->b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v5

    invoke-interface {v2, v5}, Le/a/b0/m/d/a;->a(Lcom/truecaller/common/payments/senderinfo/SenderInfo;)Ljava/lang/String;

    move-result-object v2

    .line 228
    iget-object v5, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    check-cast v5, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    iget v6, v0, Le/a/c/p/c$a;->c:I

    iget-object v7, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    .line 229
    iget-object v7, v7, Le/a/c/p/c;->d:Le/a/c/b/j;

    .line 230
    invoke-interface {v7}, Le/a/c/b/j;->d0()Z

    move-result v7

    iget-object v8, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    .line 231
    iget-object v15, v8, Le/a/c/p/c;->g:Le/a/c/j/e;

    .line 232
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "model"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deepLinkFactory"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "PrepaidExpiry"

    const-string v10, "CreditCard"

    const-string v11, "PrepaidSuccess"

    if-nez v6, :cond_1a

    .line 233
    iget-object v6, v1, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 234
    invoke-static {v6, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v14

    if-eqz v6, :cond_1a

    if-nez v7, :cond_15

    .line 235
    iget-object v6, v1, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 236
    invoke-static {v6, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 237
    :cond_15
    iget-object v6, v1, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 238
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v12, -0x7bcfca1e

    const-string v13, "(this as java.lang.String).toUpperCase(locale)"

    const-string v14, "Locale.ENGLISH"

    if-eq v7, v12, :cond_17

    const v12, 0x552751c9

    if-eq v7, v12, :cond_16

    goto :goto_12

    .line 239
    :cond_16
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 240
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "PAY Credit Card Bill"

    invoke-static {v2, v14, v6, v2, v13}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 241
    :cond_17
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v2, "RECHARGE"

    goto :goto_13

    :cond_18
    :goto_12
    if-eqz v2, :cond_19

    const-string v6, "PAY "

    const-string v7, " Bill"

    .line 242
    invoke-static {v6, v2, v7}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v6, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    .line 243
    :cond_19
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "PAY Bill"

    invoke-static {v2, v14, v6, v2, v13}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_13
    const-string v6, "$this$getPayActionData"

    .line 244
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "title"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {v5}, Le/a/m0/a1$k;->C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D

    move-result-wide v6

    double-to-float v3, v6

    .line 246
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v19

    .line 247
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v16

    .line 248
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 249
    invoke-static {v5}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v21

    const/16 v20, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    move/from16 v18, v3

    .line 250
    invoke-static/range {v15 .. v23}, Le/a/m0/a1$k;->P(Le/a/c/j/e;Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Le/a/c/j/f;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Le/a/c/j/f$a;

    if-eqz v19, :cond_1e

    .line 251
    new-instance v3, Le/a/c/r/j/a$a$b;

    .line 252
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v17

    .line 253
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v20

    .line 254
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v21

    .line 255
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v22

    .line 256
    invoke-static {v5}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const/16 v27, 0x100

    const-string v24, "insights_tab"

    move-object/from16 v16, v3

    move-object/from16 v25, v2

    .line 257
    invoke-direct/range {v16 .. v27}, Le/a/c/r/j/a$a$b;-><init>(JLe/a/c/j/f$a;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/c;I)V

    goto/16 :goto_17

    .line 258
    :cond_1a
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_14

    :cond_1b
    const/4 v2, 0x0

    :goto_14
    const-string v3, "recharge_expiry"

    if-eqz v2, :cond_1c

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrlType()Ljava/lang/String;

    move-result-object v2

    const-string v6, "recharge"

    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 259
    new-instance v2, Le/a/c/r/j/a$e;

    .line 260
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Recharge"

    .line 261
    invoke-direct {v2, v5, v3}, Le/a/c/r/j/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    move-object v3, v2

    goto :goto_17

    .line 262
    :cond_1c
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_16

    :cond_1d
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_1e

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v2

    const-string v6, "prepaid_bill"

    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1e

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1e

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creditcard"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1e

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrlType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payat"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 263
    new-instance v2, Le/a/c/r/j/a$e;

    .line 264
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Pay Bill"

    .line 265
    invoke-direct {v2, v5, v3}, Le/a/c/r/j/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_1e
    const/4 v3, 0x0

    :goto_17
    move-object v15, v3

    .line 266
    iget-object v2, v0, Le/a/c/p/c$a;->e:Ls1/z/c/y;

    if-eqz v15, :cond_1f

    const/4 v3, 0x1

    goto :goto_18

    :cond_1f
    const/4 v3, 0x0

    :goto_18
    iput-boolean v3, v2, Ls1/z/c/y;->a:Z

    .line 267
    iget-wide v2, v1, Le/a/c/r/b$b;->l:J

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iget-object v5, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    move-object v6, v5

    check-cast v6, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    iget-object v7, v0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Le/a/c/i/e/b;

    .line 269
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v5, Le/a/c/r/j/s;

    .line 271
    sget-object v13, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    .line 272
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v4, v1, Le/a/c/r/b$b;->d:Ljava/lang/String;

    .line 274
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v7, 0x0

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    const/16 v12, 0x20

    if-lez v4, :cond_20

    new-instance v4, Le/a/c/r/j/n;

    .line 275
    invoke-static {v1}, Le/a/m0/a1$k;->D(Le/a/c/r/b$b;)Le/a/c/r/j/m;

    move-result-object v22

    .line 276
    invoke-static {v1}, Le/a/c/p/a;->r0(Le/a/c/r/b$b;)Ljava/lang/String;

    move-result-object v23

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    iget-object v14, v1, Le/a/c/r/b$b;->g:Ljava/lang/String;

    .line 279
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    iget-object v12, v1, Le/a/c/r/b$b;->f:Ljava/lang/String;

    .line 281
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 282
    iget-object v7, v1, Le/a/c/r/b$b;->k:Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xff0

    move-object/from16 v21, v4

    move-object/from16 v25, v7

    .line 283
    invoke-direct/range {v21 .. v34}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    :goto_19
    move-object v14, v4

    goto/16 :goto_1b

    .line 284
    :cond_20
    iget-object v4, v1, Le/a/c/r/b$b;->d:Ljava/lang/String;

    .line 285
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_21

    new-instance v4, Le/a/c/r/j/n;

    .line 286
    invoke-static {v1}, Le/a/m0/a1$k;->D(Le/a/c/r/b$b;)Le/a/c/r/j/m;

    move-result-object v22

    .line 287
    invoke-static {v1}, Le/a/c/p/a;->r0(Le/a/c/r/b$b;)Ljava/lang/String;

    move-result-object v23

    const-string v7, "Current balance: -\u20b9"

    .line 288
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 289
    iget-object v12, v1, Le/a/c/r/b$b;->d:Ljava/lang/String;

    .line 290
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xff0

    const-string v25, ""

    move-object/from16 v21, v4

    .line 291
    invoke-direct/range {v21 .. v34}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto :goto_19

    .line 292
    :cond_21
    new-instance v4, Le/a/c/r/j/n;

    .line 293
    invoke-static {v1}, Le/a/m0/a1$k;->D(Le/a/c/r/b$b;)Le/a/c/r/j/m;

    move-result-object v36

    .line 294
    invoke-static {v1}, Le/a/c/p/a;->r0(Le/a/c/r/b$b;)Ljava/lang/String;

    move-result-object v37

    .line 295
    iget-object v7, v1, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 296
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    iget-object v14, v1, Le/a/c/r/b$b;->g:Ljava/lang/String;

    .line 298
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    iget-object v12, v1, Le/a/c/r/b$b;->f:Ljava/lang/String;

    .line 300
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1a

    :cond_22
    const-string v7, "Current balance: \u20b90"

    :goto_1a
    move-object/from16 v38, v7

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0xff0

    const-string v39, ""

    move-object/from16 v35, v4

    .line 301
    invoke-direct/range {v35 .. v48}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto/16 :goto_19

    .line 302
    :goto_1b
    iget-object v4, v1, Le/a/c/r/b$b;->o:Ljava/lang/String;

    const-string v7, "bill"

    .line 303
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    goto :goto_1c

    .line 305
    :sswitch_a
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Le/a/c/r/j/r$b;->a:Le/a/c/r/j/r$b;

    goto :goto_1d

    :sswitch_b
    const-string v7, "Unknown"

    .line 306
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Le/a/c/r/j/r$g;->a:Le/a/c/r/j/r$g;

    goto :goto_1d

    .line 307
    :sswitch_c
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Le/a/c/r/j/r$a;->a:Le/a/c/r/j/r$a;

    goto :goto_1d

    .line 308
    :sswitch_d
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Le/a/c/r/j/r$f;->a:Le/a/c/r/j/r$f;

    goto :goto_1d

    .line 309
    :sswitch_e
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Le/a/c/r/j/r$e;->a:Le/a/c/r/j/r$e;

    goto :goto_1d

    :cond_23
    :goto_1c
    const/4 v4, 0x0

    :goto_1d
    move-object/from16 v18, v4

    .line 310
    iget-boolean v4, v1, Le/a/c/r/b$b;->m:Z

    .line 311
    invoke-virtual {v3, v4}, Le/a/c/p/c;->b(Z)Le/a/c/r/j/h;

    move-result-object v16

    const/16 v19, 0x0

    .line 312
    iget-boolean v1, v1, Le/a/c/r/b$b;->m:Z

    .line 313
    invoke-virtual {v3, v1}, Le/a/c/p/c;->c(Z)Lcom/truecaller/insights/repository/filters/InfoCardType;

    move-result-object v21

    .line 314
    new-instance v1, Le/a/c/r/j/q;

    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v3

    invoke-direct {v1, v3}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/16 v22, 0x0

    .line 315
    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v23

    const/16 v24, 0x240

    move-object v12, v5

    move-object/from16 v17, v1

    .line 316
    invoke-direct/range {v12 .. v24}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    .line 317
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 318
    :cond_24
    instance-of v2, v1, Le/a/c/r/b$a;

    if-eqz v2, :cond_25

    .line 319
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v3, "null cannot be cast to non-null type com.truecaller.insights.models.InsightsDomain.Bank"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$a;

    .line 320
    check-cast v1, Le/a/c/r/b$a;

    .line 321
    iget-wide v2, v1, Le/a/c/r/b$a;->n:J

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iget-object v5, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    move-object v6, v5

    check-cast v6, Lcom/truecaller/insights/models/InsightsDomain$a;

    iget-object v7, v0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Le/a/c/i/e/b;

    .line 323
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v5, Le/a/c/r/j/s;

    .line 325
    sget-object v8, Le/a/c/r/j/p$a;->b:Le/a/c/r/j/p$a;

    .line 326
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance v9, Le/a/c/r/j/n;

    .line 328
    new-instance v4, Le/a/c/r/j/m;

    .line 329
    iget v7, v1, Le/a/c/r/b$a;->c:I

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 330
    invoke-direct {v4, v7, v11, v11, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    iget-object v10, v1, Le/a/c/r/b$a;->h:Ljava/lang/String;

    .line 333
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v10, v1, Le/a/c/r/b$a;->i:Ljava/lang/String;

    .line 335
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 336
    iget v7, v1, Le/a/c/r/b$a;->j:I

    .line 337
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 338
    iget-object v7, v1, Le/a/c/r/b$a;->b:Ljava/lang/String;

    .line 339
    iget-object v10, v1, Le/a/c/r/b$a;->l:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xfe0

    move-object/from16 v16, v9

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    .line 340
    invoke-direct/range {v16 .. v29}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    const/4 v10, 0x0

    .line 341
    iget-boolean v4, v1, Le/a/c/r/b$a;->o:Z

    .line 342
    invoke-virtual {v3, v4}, Le/a/c/p/c;->b(Z)Le/a/c/r/j/h;

    move-result-object v11

    const/4 v14, 0x0

    .line 343
    iget-boolean v1, v1, Le/a/c/r/b$a;->o:Z

    .line 344
    invoke-virtual {v3, v1}, Le/a/c/p/c;->c(Z)Lcom/truecaller/insights/repository/filters/InfoCardType;

    move-result-object v16

    .line 345
    new-instance v12, Le/a/c/r/j/q;

    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$a;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v1

    invoke-direct {v12, v1}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/16 v17, 0x0

    .line 346
    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsDomain$a;->isIM()Z

    move-result v18

    const/16 v19, 0x240

    const/4 v13, 0x0

    move-object v7, v5

    .line 347
    invoke-direct/range {v7 .. v19}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    .line 348
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 349
    :cond_25
    instance-of v2, v1, Le/a/c/r/b$e;

    if-eqz v2, :cond_2a

    .line 350
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v4, "null cannot be cast to non-null type com.truecaller.insights.models.InsightsDomain.Otp"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$e;

    .line 351
    invoke-static {v2}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v0, Le/a/c/p/c$a;->g:Ls1/z/c/y;

    iget-boolean v2, v2, Ls1/z/c/y;->a:Z

    if-eqz v2, :cond_26

    goto/16 :goto_23

    .line 352
    :cond_26
    iget-object v2, v0, Le/a/c/p/c$a;->g:Ls1/z/c/y;

    const/4 v4, 0x1

    iput-boolean v4, v2, Ls1/z/c/y;->a:Z

    .line 353
    iget-object v2, v0, Le/a/c/p/c$a;->e:Ls1/z/c/y;

    iput-boolean v4, v2, Ls1/z/c/y;->a:Z

    .line 354
    check-cast v1, Le/a/c/r/b$e;

    .line 355
    iget-wide v1, v1, Le/a/c/r/b$e;->b:J

    .line 356
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iget-object v4, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    check-cast v4, Lcom/truecaller/insights/models/InsightsDomain$e;

    .line 357
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-static {v4}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    goto :goto_1e

    .line 359
    :cond_27
    new-instance v3, Le/a/c/r/j/a$f$a;

    const-string v5, "COPY "

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgId()J

    move-result-wide v7

    .line 360
    iget-object v9, v4, Lcom/truecaller/insights/models/InsightsDomain$e;->i:Lcom/truecaller/insights/models/DomainOrigin;

    .line 361
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x20

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Le/a/c/r/j/a$f$a;-><init>(Ljava/lang/String;JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Landroid/content/Context;Le/a/c/r/j/c;I)V

    :goto_1e
    move-object/from16 v17, v3

    .line 362
    iget-object v3, v0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    iget-object v5, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/c/i/e/b;

    .line 363
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v2, Le/a/c/r/j/s;

    .line 365
    sget-object v15, Le/a/c/r/j/p$g;->b:Le/a/c/r/j/p$g;

    const-string v3, "$this$toInfocard"

    .line 366
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-static {v4}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 368
    new-instance v3, Le/a/c/r/j/n;

    .line 369
    new-instance v5, Le/a/c/r/j/m;

    sget v6, Lcom/truecaller/insights/R$drawable;->ic_otp_unlock:I

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v8, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 370
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 371
    sget-object v35, Lcom/truecaller/insights/models/smartcards/InfocardUiType;->DELIVERY_UI:Lcom/truecaller/insights/models/smartcards/InfocardUiType;

    const/16 v36, 0x7f8

    const-string v25, "Delivery OTP"

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .line 372
    invoke-direct/range {v23 .. v36}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    goto :goto_1f

    :cond_28
    const/4 v3, 0x0

    :goto_1f
    move-object/from16 v16, v3

    .line 373
    invoke-static {v4}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Le/a/c/r/j/h$c;->d:Le/a/c/r/j/h$c;

    goto :goto_20

    :cond_29
    const/4 v3, 0x0

    :goto_20
    move-object/from16 v18, v3

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 374
    new-instance v3, Le/a/c/r/j/q;

    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v5

    invoke-direct {v3, v5}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 375
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$e;->isIM()Z

    move-result v25

    const/16 v26, 0x360

    move-object v14, v2

    move-object/from16 v19, v3

    .line 376
    invoke-direct/range {v14 .. v26}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    .line 377
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 378
    :cond_2a
    instance-of v2, v1, Le/a/c/r/b$d;

    if-eqz v2, :cond_2e

    .line 379
    iget-object v2, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    const-string v3, "null cannot be cast to non-null type com.truecaller.insights.models.InsightsDomain.Event"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$c;

    .line 380
    check-cast v1, Le/a/c/r/b$d;

    .line 381
    iget-object v2, v1, Le/a/c/r/b$d;->o:Le/a/c/r/j/a;

    if-eqz v2, :cond_2b

    .line 382
    iget-object v2, v0, Le/a/c/p/c$a;->e:Ls1/z/c/y;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls1/z/c/y;->a:Z

    .line 383
    :cond_2b
    iget-wide v2, v1, Le/a/c/r/b$d;->a:J

    .line 384
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Le/a/c/p/c$a;->d:Le/a/c/p/c;

    iget-object v5, v0, Le/a/c/p/c$a;->b:Lcom/truecaller/insights/models/InsightsDomain;

    move-object v7, v5

    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain$c;

    iget-object v8, v0, Le/a/c/p/c$a;->f:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Le/a/c/i/e/b;

    .line 385
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v5, Le/a/c/r/j/s;

    .line 387
    sget-object v13, Le/a/c/r/j/p$e;->b:Le/a/c/r/j/p$e;

    .line 388
    new-instance v8, Le/a/c/r/j/r$d;

    .line 389
    iget-object v9, v1, Le/a/c/r/b$d;->c:Ljava/lang/String;

    .line 390
    iget-object v10, v1, Le/a/c/r/b$d;->d:Ljava/lang/String;

    .line 391
    invoke-direct {v8, v9, v10}, Le/a/c/r/j/r$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ls1/k;

    .line 393
    iget-object v9, v1, Le/a/c/r/b$d;->e:Ljava/lang/String;

    const-string v10, "Name"

    .line 394
    invoke-static {v10, v9}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 395
    iget-object v9, v1, Le/a/c/r/b$d;->j:Ljava/lang/String;

    const-string v10, "Secret code"

    .line 396
    invoke-static {v10, v9}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 397
    iget-object v9, v1, Le/a/c/r/b$d;->i:Ljava/lang/String;

    const-string v10, "Location"

    .line 398
    invoke-static {v10, v9}, Le/a/c/p/a;->G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v9

    aput-object v9, v4, v11

    .line 399
    invoke-static {v4}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 400
    new-instance v9, Le/a/c/r/j/n;

    .line 401
    iget-object v10, v1, Le/a/c/r/b$d;->k:Le/a/c/r/j/m;

    if-eqz v10, :cond_2d

    .line 402
    iget-object v12, v1, Le/a/c/r/b$d;->g:Ljava/lang/String;

    if-eqz v12, :cond_2c

    move-object/from16 v24, v12

    goto :goto_21

    :cond_2c
    move-object/from16 v24, v6

    .line 403
    :goto_21
    iget-object v6, v1, Le/a/c/r/b$d;->f:Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v12, 0x0

    .line 404
    invoke-static {v4, v12}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v27, v12

    check-cast v27, Ls1/k;

    const/4 v12, 0x1

    .line 405
    invoke-static {v4, v12}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v28, v12

    check-cast v28, Ls1/k;

    .line 406
    invoke-static {v4, v11}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v4

    check-cast v29, Ls1/k;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xf18

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v6

    .line 407
    invoke-direct/range {v21 .. v34}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    move-object v14, v9

    goto :goto_22

    :cond_2d
    const/4 v4, 0x0

    move-object v14, v4

    .line 408
    :goto_22
    iget-object v15, v1, Le/a/c/r/b$d;->o:Le/a/c/r/j/a;

    .line 409
    iget-boolean v4, v1, Le/a/c/r/b$d;->n:Z

    .line 410
    invoke-virtual {v3, v4}, Le/a/c/p/c;->b(Z)Le/a/c/r/j/h;

    move-result-object v16

    const/16 v19, 0x0

    .line 411
    iget-boolean v1, v1, Le/a/c/r/b$d;->n:Z

    .line 412
    invoke-virtual {v3, v1}, Le/a/c/p/c;->c(Z)Lcom/truecaller/insights/repository/filters/InfoCardType;

    move-result-object v21

    .line 413
    new-instance v1, Le/a/c/r/j/q;

    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain$c;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v3

    invoke-direct {v1, v3}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/16 v22, 0x0

    .line 414
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain$c;->isIM()Z

    move-result v23

    const/16 v24, 0x240

    move-object v12, v5

    move-object/from16 v17, v1

    move-object/from16 v18, v8

    .line 415
    invoke-direct/range {v12 .. v24}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    .line 416
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    :cond_2e
    :goto_23
    const/4 v1, 0x0

    :goto_24
    return-object v1

    .line 417
    :cond_2f
    :goto_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot provide properties for Domain ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a3494c6 -> :sswitch_5
        0x1330b -> :sswitch_4
        0x1f7a5c -> :sswitch_3
        0x1f9827 -> :sswitch_2
        0x403827a -> :sswitch_1
        0x34ef8014 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4bce7b90 -> :sswitch_9
        0x17e80 -> :sswitch_8
        0x589895c -> :sswitch_7
        0x697f208 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7bcfca1e -> :sswitch_e
        -0x1f6ae2cc -> :sswitch_d
        0x1f9827 -> :sswitch_c
        0x523e442a -> :sswitch_b
        0x552751c9 -> :sswitch_a
    .end sparse-switch
.end method
