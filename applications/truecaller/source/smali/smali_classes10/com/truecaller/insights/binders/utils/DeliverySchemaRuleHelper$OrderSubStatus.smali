.class public final enum Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderSubStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "ArrivalOnTime",
        "ArrivingToday",
        "ArrivingTomorrow",
        "ArrivingEarly",
        "ArrivingDelay",
        "FailedDelivery",
        "SelfPickup",
        "Exchange",
        "Pickup",
        "PickedUp",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum ArrivalOnTime:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum ArrivingDelay:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum ArrivingEarly:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum ArrivingToday:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum ArrivingTomorrow:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final Companion:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a;

.field public static final enum Exchange:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum FailedDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum PickedUp:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum Pickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field public static final enum SelfPickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "ArrivalOnTime"

    const/4 v4, 0x0

    const-string v5, "arrvontm"

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivalOnTime:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "ArrivingToday"

    const/4 v5, 0x1

    const-string v6, "arrvtdy"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingToday:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "ArrivingTomorrow"

    const/4 v5, 0x2

    const-string v6, "arrvtom"

    .line 2
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingTomorrow:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "ArrivingEarly"

    const/4 v5, 0x3

    const-string v6, "arrvearly"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingEarly:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "ArrivingDelay"

    const/4 v5, 0x4

    const-string v6, "arrvdelay"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingDelay:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "FailedDelivery"

    const/4 v5, 0x5

    const-string v6, "faileddlvry"

    .line 3
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->FailedDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "SelfPickup"

    const/4 v5, 0x6

    const-string v6, "selfpickup"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->SelfPickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "Exchange"

    const/4 v5, 0x7

    const-string v6, "exchange"

    .line 4
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->Exchange:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "Pickup"

    const/16 v5, 0x8

    const-string v6, "pickup"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->Pickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    const-string v3, "PickedUp"

    const/16 v5, 0x9

    const-string v6, "pickedup"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->PickedUp:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    aput-object v2, v1, v5

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->$VALUES:[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a;-><init>(Ls1/z/c/f;)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->Companion:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a;

    .line 5
    invoke-static {}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->values()[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v1

    .line 6
    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    move v0, v2

    .line 7
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8
    array-length v0, v1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v3, v1, v4

    .line 9
    iget-object v5, v3, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->value:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->map:Ljava/util/Map;

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

    iput-object p3, p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->$VALUES:[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->value:Ljava/lang/String;

    return-object v0
.end method
