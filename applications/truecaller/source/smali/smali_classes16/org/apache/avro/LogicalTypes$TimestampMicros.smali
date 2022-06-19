.class public Lorg/apache/avro/LogicalTypes$TimestampMicros;
.super Lorg/apache/avro/LogicalType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/LogicalTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimestampMicros"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "timestamp-micros"

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/avro/LogicalType;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/LogicalTypes$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/LogicalTypes$TimestampMicros;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/apache/avro/LogicalType;->validate(Lorg/apache/avro/Schema;)V

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object p1

    sget-object v0, Lorg/apache/avro/Schema$Type;->LONG:Lorg/apache/avro/Schema$Type;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Timestamp (micros) can only be used with an underlying long type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
