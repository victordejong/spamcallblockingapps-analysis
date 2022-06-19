.class public Lorg/apache/avro/LogicalTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;,
        Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;,
        Lorg/apache/avro/LogicalTypes$TimestampMicros;,
        Lorg/apache/avro/LogicalTypes$TimestampMillis;,
        Lorg/apache/avro/LogicalTypes$TimeMicros;,
        Lorg/apache/avro/LogicalTypes$TimeMillis;,
        Lorg/apache/avro/LogicalTypes$Date;,
        Lorg/apache/avro/LogicalTypes$Decimal;,
        Lorg/apache/avro/LogicalTypes$LogicalTypeFactory;
    }
.end annotation


# static fields
.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DATE_TYPE:Lorg/apache/avro/LogicalTypes$Date;

.field private static final DECIMAL:Ljava/lang/String; = "decimal"

.field private static final LOCAL_TIMESTAMP_MICROS:Ljava/lang/String; = "local-timestamp-micros"

.field private static final LOCAL_TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;

.field private static final LOCAL_TIMESTAMP_MILLIS:Ljava/lang/String; = "local-timestamp-millis"

.field private static final LOCAL_TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;

.field private static final LOG:Lw3/d/b;

.field private static final REGISTERED_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/LogicalTypes$LogicalTypeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_MICROS:Ljava/lang/String; = "timestamp-micros"

.field private static final TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMicros;

.field private static final TIMESTAMP_MILLIS:Ljava/lang/String; = "timestamp-millis"

.field private static final TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMillis;

.field private static final TIME_MICROS:Ljava/lang/String; = "time-micros"

.field private static final TIME_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMicros;

.field private static final TIME_MILLIS:Ljava/lang/String; = "time-millis"

.field private static final TIME_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMillis;

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final UUID_TYPE:Lorg/apache/avro/LogicalType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/avro/LogicalTypes;

    invoke-static {v0}, Lw3/d/c;->b(Ljava/lang/Class;)Lw3/d/b;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/LogicalTypes;->LOG:Lw3/d/b;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->REGISTERED_TYPES:Ljava/util/Map;

    .line 3
    new-instance v0, Lorg/apache/avro/LogicalType;

    const-string v1, "uuid"

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->UUID_TYPE:Lorg/apache/avro/LogicalType;

    .line 4
    new-instance v0, Lorg/apache/avro/LogicalTypes$Date;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$Date;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->DATE_TYPE:Lorg/apache/avro/LogicalTypes$Date;

    .line 5
    new-instance v0, Lorg/apache/avro/LogicalTypes$TimeMillis;

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$TimeMillis;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->TIME_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMillis;

    .line 6
    new-instance v0, Lorg/apache/avro/LogicalTypes$TimeMicros;

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$TimeMicros;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->TIME_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMicros;

    .line 7
    new-instance v0, Lorg/apache/avro/LogicalTypes$TimestampMillis;

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$TimestampMillis;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMillis;

    .line 8
    new-instance v0, Lorg/apache/avro/LogicalTypes$TimestampMicros;

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$TimestampMicros;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMicros;

    .line 9
    new-instance v0, Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->LOCAL_TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;

    .line 10
    new-instance v0, Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;

    invoke-direct {v0, v1}, Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;-><init>(Lorg/apache/avro/LogicalTypes$1;)V

    sput-object v0, Lorg/apache/avro/LogicalTypes;->LOCAL_TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static date()Lorg/apache/avro/LogicalTypes$Date;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->DATE_TYPE:Lorg/apache/avro/LogicalTypes$Date;

    return-object v0
.end method

.method public static decimal(I)Lorg/apache/avro/LogicalTypes$Decimal;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/avro/LogicalTypes;->decimal(II)Lorg/apache/avro/LogicalTypes$Decimal;

    move-result-object p0

    return-object p0
.end method

.method public static decimal(II)Lorg/apache/avro/LogicalTypes$Decimal;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/avro/LogicalTypes$Decimal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/avro/LogicalTypes$Decimal;-><init>(IILorg/apache/avro/LogicalTypes$1;)V

    return-object v0
.end method

.method public static fromSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/LogicalType;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/apache/avro/LogicalTypes;->fromSchemaImpl(Lorg/apache/avro/Schema;Z)Lorg/apache/avro/LogicalType;

    move-result-object p0

    return-object p0
.end method

.method public static fromSchemaIgnoreInvalid(Lorg/apache/avro/Schema;)Lorg/apache/avro/LogicalType;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/avro/LogicalTypes;->fromSchemaImpl(Lorg/apache/avro/Schema;Z)Lorg/apache/avro/LogicalType;

    move-result-object p0

    return-object p0
.end method

.method private static fromSchemaImpl(Lorg/apache/avro/Schema;Z)Lorg/apache/avro/LogicalType;
    .locals 4

    const-string v0, "logicalType"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/avro/JsonProperties;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "timestamp-millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "timestamp-micros"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "decimal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "local-timestamp-millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_4
    const-string v3, "local-timestamp-micros"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "date"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v3, "time-millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_8
    const-string v3, "time-micros"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3
    sget-object v2, Lorg/apache/avro/LogicalTypes;->REGISTERED_TYPES:Ljava/util/Map;

    goto :goto_1

    .line 4
    :pswitch_0
    sget-object v2, Lorg/apache/avro/LogicalTypes;->LOCAL_TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;

    goto :goto_2

    .line 5
    :pswitch_1
    sget-object v2, Lorg/apache/avro/LogicalTypes;->LOCAL_TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;

    goto :goto_2

    .line 6
    :pswitch_2
    sget-object v2, Lorg/apache/avro/LogicalTypes;->TIME_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMicros;

    goto :goto_2

    .line 7
    :pswitch_3
    sget-object v2, Lorg/apache/avro/LogicalTypes;->TIME_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMillis;

    goto :goto_2

    .line 8
    :pswitch_4
    sget-object v2, Lorg/apache/avro/LogicalTypes;->TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMicros;

    goto :goto_2

    .line 9
    :pswitch_5
    sget-object v2, Lorg/apache/avro/LogicalTypes;->DATE_TYPE:Lorg/apache/avro/LogicalTypes$Date;

    goto :goto_2

    .line 10
    :pswitch_6
    sget-object v2, Lorg/apache/avro/LogicalTypes;->UUID_TYPE:Lorg/apache/avro/LogicalType;

    goto :goto_2

    .line 11
    :pswitch_7
    new-instance v2, Lorg/apache/avro/LogicalTypes$Decimal;

    invoke-direct {v2, p0, v1}, Lorg/apache/avro/LogicalTypes$Decimal;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/LogicalTypes$1;)V

    goto :goto_2

    .line 12
    :pswitch_8
    sget-object v2, Lorg/apache/avro/LogicalTypes;->TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMillis;

    goto :goto_2

    .line 13
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/LogicalTypes$LogicalTypeFactory;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v2, p0}, Lorg/apache/avro/LogicalTypes$LogicalTypeFactory;->fromSchema(Lorg/apache/avro/Schema;)Lorg/apache/avro/LogicalType;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v2, p0}, Lorg/apache/avro/LogicalType;->validate(Lorg/apache/avro/Schema;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 16
    sget-object v2, Lorg/apache/avro/LogicalTypes;->LOG:Lw3/d/b;

    const-string v3, "Invalid logical type found"

    invoke-interface {v2, v3, p0}, Lw3/d/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p1, :cond_4

    const-string p0, "Ignoring invalid logical type for name: {}"

    .line 17
    invoke-interface {v2, p0, v0}, Lw3/d/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 18
    :cond_4
    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x2cd69ed1 -> :sswitch_8
        -0x2cd29eba -> :sswitch_7
        0x2eefae -> :sswitch_6
        0x36f3bb -> :sswitch_5
        0x45d920e8 -> :sswitch_4
        0x45dd20ff -> :sswitch_3
        0x5bed1351 -> :sswitch_2
        0x728f96c6 -> :sswitch_1
        0x729396dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static localTimestampMicros()Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->LOCAL_TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMicros;

    return-object v0
.end method

.method public static localTimestampMillis()Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->LOCAL_TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$LocalTimestampMillis;

    return-object v0
.end method

.method public static register(Ljava/lang/String;Lorg/apache/avro/LogicalTypes$LogicalTypeFactory;)V
    .locals 1

    const-string v0, "Logical type name cannot be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Logical type factory cannot be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/apache/avro/LogicalTypes;->REGISTERED_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static timeMicros()Lorg/apache/avro/LogicalTypes$TimeMicros;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->TIME_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMicros;

    return-object v0
.end method

.method public static timeMillis()Lorg/apache/avro/LogicalTypes$TimeMillis;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->TIME_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimeMillis;

    return-object v0
.end method

.method public static timestampMicros()Lorg/apache/avro/LogicalTypes$TimestampMicros;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->TIMESTAMP_MICROS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMicros;

    return-object v0
.end method

.method public static timestampMillis()Lorg/apache/avro/LogicalTypes$TimestampMillis;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->TIMESTAMP_MILLIS_TYPE:Lorg/apache/avro/LogicalTypes$TimestampMillis;

    return-object v0
.end method

.method public static uuid()Lorg/apache/avro/LogicalType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/LogicalTypes;->UUID_TYPE:Lorg/apache/avro/LogicalType;

    return-object v0
.end method
