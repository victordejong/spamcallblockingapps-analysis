.class public final enum Lcom/truecaller/tracking/events/AppSubscriptionType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericEnumSymbol;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/tracking/events/AppSubscriptionType;",
        ">;",
        "Lorg/apache/avro/generic/GenericEnumSymbol<",
        "Lcom/truecaller/tracking/events/AppSubscriptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/tracking/events/AppSubscriptionType;

.field public static final enum FREE:Lcom/truecaller/tracking/events/AppSubscriptionType;

.field public static final enum GOLD:Lcom/truecaller/tracking/events/AppSubscriptionType;

.field public static final enum PREMIUM:Lcom/truecaller/tracking/events/AppSubscriptionType;

.field public static final SCHEMA$:Lorg/apache/avro/Schema;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/tracking/events/AppSubscriptionType;

    const-string v1, "FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/tracking/events/AppSubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/tracking/events/AppSubscriptionType;->FREE:Lcom/truecaller/tracking/events/AppSubscriptionType;

    new-instance v1, Lcom/truecaller/tracking/events/AppSubscriptionType;

    const-string v3, "PREMIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/tracking/events/AppSubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/tracking/events/AppSubscriptionType;->PREMIUM:Lcom/truecaller/tracking/events/AppSubscriptionType;

    new-instance v3, Lcom/truecaller/tracking/events/AppSubscriptionType;

    const-string v5, "GOLD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/tracking/events/AppSubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/tracking/events/AppSubscriptionType;->GOLD:Lcom/truecaller/tracking/events/AppSubscriptionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/tracking/events/AppSubscriptionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/truecaller/tracking/events/AppSubscriptionType;->$VALUES:[Lcom/truecaller/tracking/events/AppSubscriptionType;

    const-string v0, "{\"type\":\"enum\",\"name\":\"AppSubscriptionType\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"iOS\'s application subscription type\",\"symbols\":[\"FREE\",\"PREMIUM\",\"GOLD\"]}"

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/AppSubscriptionType;->SCHEMA$:Lorg/apache/avro/Schema;

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

.method public static getClassSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppSubscriptionType;->SCHEMA$:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/tracking/events/AppSubscriptionType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/tracking/events/AppSubscriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/tracking/events/AppSubscriptionType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/tracking/events/AppSubscriptionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppSubscriptionType;->$VALUES:[Lcom/truecaller/tracking/events/AppSubscriptionType;

    invoke-virtual {v0}, [Lcom/truecaller/tracking/events/AppSubscriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/tracking/events/AppSubscriptionType;

    return-object v0
.end method


# virtual methods
.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppSubscriptionType;->SCHEMA$:Lorg/apache/avro/Schema;

    return-object v0
.end method
