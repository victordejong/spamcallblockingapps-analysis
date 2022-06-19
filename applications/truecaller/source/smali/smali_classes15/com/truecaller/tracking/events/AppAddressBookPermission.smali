.class public final enum Lcom/truecaller/tracking/events/AppAddressBookPermission;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericEnumSymbol;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/tracking/events/AppAddressBookPermission;",
        ">;",
        "Lorg/apache/avro/generic/GenericEnumSymbol<",
        "Lcom/truecaller/tracking/events/AppAddressBookPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/tracking/events/AppAddressBookPermission;

.field public static final enum GRANTED:Lcom/truecaller/tracking/events/AppAddressBookPermission;

.field public static final enum NOT_DETERMINED:Lcom/truecaller/tracking/events/AppAddressBookPermission;

.field public static final enum NOT_GRANTED:Lcom/truecaller/tracking/events/AppAddressBookPermission;

.field public static final SCHEMA$:Lorg/apache/avro/Schema;

.field public static final enum UNKNOWN:Lcom/truecaller/tracking/events/AppAddressBookPermission;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/tracking/events/AppAddressBookPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;->UNKNOWN:Lcom/truecaller/tracking/events/AppAddressBookPermission;

    new-instance v1, Lcom/truecaller/tracking/events/AppAddressBookPermission;

    const-string v3, "NOT_DETERMINED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/tracking/events/AppAddressBookPermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/tracking/events/AppAddressBookPermission;->NOT_DETERMINED:Lcom/truecaller/tracking/events/AppAddressBookPermission;

    new-instance v3, Lcom/truecaller/tracking/events/AppAddressBookPermission;

    const-string v5, "NOT_GRANTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/tracking/events/AppAddressBookPermission;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/tracking/events/AppAddressBookPermission;->NOT_GRANTED:Lcom/truecaller/tracking/events/AppAddressBookPermission;

    new-instance v5, Lcom/truecaller/tracking/events/AppAddressBookPermission;

    const-string v7, "GRANTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/tracking/events/AppAddressBookPermission;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/tracking/events/AppAddressBookPermission;->GRANTED:Lcom/truecaller/tracking/events/AppAddressBookPermission;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/truecaller/tracking/events/AppAddressBookPermission;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/truecaller/tracking/events/AppAddressBookPermission;->$VALUES:[Lcom/truecaller/tracking/events/AppAddressBookPermission;

    const-string v0, "{\"type\":\"enum\",\"name\":\"AppAddressBookPermission\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"iOS\'s application address book permission\",\"symbols\":[\"UNKNOWN\",\"NOT_DETERMINED\",\"NOT_GRANTED\",\"GRANTED\"]}"

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;->SCHEMA$:Lorg/apache/avro/Schema;

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
    sget-object v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;->SCHEMA$:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/tracking/events/AppAddressBookPermission;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/tracking/events/AppAddressBookPermission;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/tracking/events/AppAddressBookPermission;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;->$VALUES:[Lcom/truecaller/tracking/events/AppAddressBookPermission;

    invoke-virtual {v0}, [Lcom/truecaller/tracking/events/AppAddressBookPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/tracking/events/AppAddressBookPermission;

    return-object v0
.end method


# virtual methods
.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/AppAddressBookPermission;->SCHEMA$:Lorg/apache/avro/Schema;

    return-object v0
.end method
