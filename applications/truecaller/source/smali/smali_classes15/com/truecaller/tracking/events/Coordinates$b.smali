.class public Lcom/truecaller/tracking/events/Coordinates$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/tracking/events/Coordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Lcom/truecaller/tracking/events/Coordinates;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Lcom/truecaller/tracking/events/Coordinates;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:J


# direct methods
.method public constructor <init>(Lcom/truecaller/tracking/events/Coordinates$a;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/truecaller/tracking/events/Coordinates;->d:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/tracking/events/Coordinates;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/truecaller/tracking/events/Coordinates;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/Coordinates;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/truecaller/tracking/events/Coordinates$b;->a:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    iput v1, v0, Lcom/truecaller/tracking/events/Coordinates;->a:F

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/truecaller/tracking/events/Coordinates$b;->b:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    iput v1, v0, Lcom/truecaller/tracking/events/Coordinates;->b:F

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/truecaller/tracking/events/Coordinates$b;->c:J

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    iput-wide v1, v0, Lcom/truecaller/tracking/events/Coordinates;->c:J
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 6
    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/tracking/events/Coordinates$b;->a()Lcom/truecaller/tracking/events/Coordinates;

    move-result-object v0

    return-object v0
.end method
