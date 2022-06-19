.class public final enum Lcom/truecaller/tracking/events/AppStandbyBucket;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericEnumSymbol;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/tracking/events/AppStandbyBucket;",
        ">;",
        "Lorg/apache/avro/generic/GenericEnumSymbol<",
        "Lcom/truecaller/tracking/events/AppStandbyBucket;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/tracking/events/AppStandbyBucket;

.field public static final enum ACTIVE:Lcom/truecaller/tracking/events/AppStandbyBucket;

.field public static final enum FREQUENT:Lcom/truecaller/tracking/events/AppStandbyBucket;

.field public static final enum RARE:Lcom/truecaller/tracking/events/AppStandbyBucket;

.field public static final enum RESTRICTED:Lcom/truecaller/tracking/events/AppStandbyBucket;

.field public static final SCHEMA$:Lorg/apache/avro/Schema;

.field public static final enum WORKING_SET:Lcom/truecaller/tracking/events/AppStandbyBucket;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/truecaller/tracking/events/AppStandbyBucket;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/tracking/events/AppStandbyBucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/tracking/events/AppStandbyBucket;->ACTIVE:Lcom/truecaller/tracking/events/AppStandbyBucket;

    new-instance v1, Lcom/truecaller/tracking/events/AppStandbyBucket;

    const-string v3, "WORKING_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/tracking/events/AppStandbyBucket;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/tracking/events/AppStandbyBucket;->WORKING_SET:Lcom/truecaller/tracking/events/AppStandbyBucket;

    new-instance v3, Lcom/truecaller/tracking/events/AppStandbyBucket;

    const-string v5, "FREQUENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/tracking/events/AppStandbyBucket;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/tracking/events/AppStandbyBucket;->FREQUENT:Lcom/truecaller/tracking/events/AppStandbyBucket;

    new-instance v5, Lcom/truecaller/tracking/events/AppStandbyBucket;

    const-string v7, "RARE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/tracking/events/AppStandbyBucket;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/tracking/events/AppStandbyBucket;->RARE:Lcom/truecaller/tracking/events/AppStandbyBucket;

    new-instance v7, Lcom/truecaller/tracking/events/AppStandbyBucket;

    const-string v9, "RESTRICTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/truecaller/tracking/events/AppStandbyBucket;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/tracking/events/AppStandbyBucket;->RESTRICTED:Lcom/truecaller/tracking/events/AppStandbyBucket;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/truecaller/tracking/events/AppStandbyBucket;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/truecaller/tracking/events/AppStandbyBucket;->$VALUES:[Lcom/truecaller/tracking/events/AppStandbyBucket;

    const-string v0, "{\"type\":\"enum\",\"name\":\"AppStandbyBucket\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Android\'s application Standby bucket types\",\"symbols\":[\"ACTIVE\",\"WORKING_SET\",\"FREQUENT\",\"RARE\",\"RESTRICTED\"]}"

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/AppStandbyBucket;->SCHEMA$:Lorg/apache/avro/Schema;

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
    sget-object v0, Lcom/truecaller/tracking/events/AppStandbyBucket;->SCHEMA$:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/tracking/events/AppStandbyBucket;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/tracking/events/AppStandbyBucket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/tracking/events/AppStandbyBucket;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/tracking/events/AppStandbyBucket;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppStandbyBucket;->$VALUES:[Lcom/truecaller/tracking/events/AppStandbyBucket;

    invoke-virtual {v0}, [Lcom/truecaller/tracking/events/AppStandbyBucket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/tracking/events/AppStandbyBucket;

    return-object v0
.end method


# virtual methods
.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppStandbyBucket;->SCHEMA$:Lorg/apache/avro/Schema;

    return-object v0
.end method
