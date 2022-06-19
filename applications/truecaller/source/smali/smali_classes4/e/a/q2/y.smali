.class public final Le/a/q2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/avro/specific/SpecificDatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/specific/SpecificDatumReader<",
            "Lcom/truecaller/tracking/events/EventRecordVersionedV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/specific/SpecificDatumReader;

    .line 2
    sget-object v1, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->f:Lorg/apache/avro/Schema;

    .line 3
    invoke-direct {v0, v1}, Lorg/apache/avro/specific/SpecificDatumReader;-><init>(Lorg/apache/avro/Schema;)V

    sput-object v0, Le/a/q2/y;->a:Lorg/apache/avro/specific/SpecificDatumReader;

    return-void
.end method

.method public static final a([B)Lcom/truecaller/tracking/events/EventRecordVersionedV2;
    .locals 3

    const-string v0, "data"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/q2/y;->a:Lorg/apache/avro/specific/SpecificDatumReader;

    .line 2
    invoke-static {}, Lorg/apache/avro/io/DecoderFactory;->get()Lorg/apache/avro/io/DecoderFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/avro/io/DecoderFactory;->binaryDecoder([BLorg/apache/avro/io/BinaryDecoder;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-interface {v0, v2, p0}, Lorg/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    :goto_0
    instance-of v0, p0, Ls1/l$a;

    if-eqz v0, :cond_0

    move-object p0, v2

    .line 5
    :cond_0
    check-cast p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    if-eqz p0, :cond_2

    .line 6
    iget v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->a:I

    const/16 v1, 0x4f

    if-lt v0, v1, :cond_2

    .line 7
    iget v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static final b(Lorg/apache/avro/generic/GenericRecord;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericDatumWriter;

    invoke-interface {p0}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/generic/GenericDatumWriter;-><init>(Lorg/apache/avro/Schema;)V

    .line 2
    invoke-static {}, Lorg/apache/avro/io/EncoderFactory;->get()Lorg/apache/avro/io/EncoderFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lorg/apache/avro/io/BinaryEncoder;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p0, p1}, Lorg/apache/avro/generic/GenericDatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    .line 4
    invoke-interface {p1}, Ljava/io/Flushable;->flush()V

    return-void
.end method

.method public static final c(Lorg/apache/avro/generic/GenericRecord;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-static {p0, v0}, Le/a/q2/y;->b(Lorg/apache/avro/generic/GenericRecord;Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "out.toByteArray()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Lcom/truecaller/tracking/events/ClientHeaderV2;Lorg/apache/avro/generic/GenericRecord;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "header"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "record"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->f:Lorg/apache/avro/Schema;

    new-instance v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;-><init>(Lcom/truecaller/tracking/events/EventRecordVersionedV2$a;)V

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v3, 0x125

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 3
    iput v3, v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;->a:I

    .line 4
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 5
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput v4, v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;->e:I

    .line 7
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v3, v1, v2

    .line 8
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    const-string v2, "record.schema"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 10
    iput-object v1, v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;->b:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v3, v1, v3

    .line 12
    invoke-static {p0}, Le/a/q2/y;->c(Lorg/apache/avro/generic/GenericRecord;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 13
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, p0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 14
    iput-object p0, v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;->c:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p0

    aput-boolean v3, p0, v4

    .line 16
    invoke-static {p1}, Le/a/q2/y;->c(Lorg/apache/avro/generic/GenericRecord;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 17
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {v0, p1, p0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 18
    iput-object p0, v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;->d:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p0

    aput-boolean v3, p0, v1

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;->a()Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    move-result-object p0

    const-string p1, "event"

    .line 21
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/q2/y;->c(Lorg/apache/avro/generic/GenericRecord;)[B

    move-result-object p0

    return-object p0
.end method
