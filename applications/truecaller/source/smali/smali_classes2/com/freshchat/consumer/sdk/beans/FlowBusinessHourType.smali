.class public final enum Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

.field public static final enum BUSINESS_HOUR_ALWAYS:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

.field public static final enum BUSINESS_HOUR_INSIDE:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

.field public static final enum BUSINESS_HOUR_OUTSIDE:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    const-string v1, "BUSINESS_HOUR_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->BUSINESS_HOUR_INSIDE:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    const-string v3, "BUSINESS_HOUR_OUTSIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->BUSINESS_HOUR_OUTSIDE:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    const-string v5, "BUSINESS_HOUR_ALWAYS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->BUSINESS_HOUR_ALWAYS:Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->key:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;
    .locals 6

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->values()[Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->key:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/FlowBusinessHourType;

    return-object v0
.end method
