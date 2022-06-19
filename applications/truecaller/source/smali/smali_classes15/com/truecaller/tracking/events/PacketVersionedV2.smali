.class public Lcom/truecaller/tracking/events/PacketVersionedV2;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/tracking/events/PacketVersionedV2$b;
    }
.end annotation


# static fields
.field public static final b:Lorg/apache/avro/Schema;

.field public static c:Lorg/apache/avro/specific/SpecificData;

.field public static final d:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Lcom/truecaller/tracking/events/PacketVersionedV2;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Lcom/truecaller/tracking/events/PacketVersionedV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/tracking/events/EventRecordVersionedV2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"PacketVersionedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"events\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"EventRecordVersionedV2\",\"fields\":[{\"name\":\"schemaId\",\"type\":\"int\"},{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"header\",\"type\":\"bytes\"},{\"name\":\"body\",\"type\":\"bytes\"},{\"name\":\"headerVersion\",\"type\":\"int\",\"default\":2}]}}}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/PacketVersionedV2;->b:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Lcom/truecaller/tracking/events/PacketVersionedV2;->c:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Lcom/truecaller/tracking/events/PacketVersionedV2;->c:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Lcom/truecaller/tracking/events/PacketVersionedV2;->c:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Lcom/truecaller/tracking/events/PacketVersionedV2;->d:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Lcom/truecaller/tracking/events/PacketVersionedV2;->c:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/PacketVersionedV2;->e:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method


# virtual methods
.method public customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-string v3, "events"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v7

    .line 3
    iget-object v0, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v9, v7

    sget-object v10, Lcom/truecaller/tracking/events/PacketVersionedV2;->b:Lorg/apache/avro/Schema;

    invoke-virtual {v10, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 5
    iput-object v0, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :goto_0
    instance-of v3, v0, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1

    :cond_1
    move-object v3, v6

    :goto_1
    cmp-long v9, v4, v7

    if-gez v9, :cond_d

    :goto_2
    cmp-long v9, v7, v4

    if-eqz v9, :cond_4

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    goto :goto_3

    :cond_2
    move-object v9, v6

    :goto_3
    if-nez v9, :cond_3

    .line 9
    new-instance v9, Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    invoke-direct {v9}, Lcom/truecaller/tracking/events/EventRecordVersionedV2;-><init>()V

    .line 10
    :cond_3
    invoke-virtual {v9, p1}, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 11
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v7, v1

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x1

    if-ge v7, v8, :cond_d

    .line 13
    aget-object v8, v0, v7

    invoke-virtual {v8}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v8

    if-nez v8, :cond_c

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v8

    .line 15
    iget-object v10, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    if-nez v10, :cond_6

    .line 16
    new-instance v10, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v11, v8

    sget-object v12, Lcom/truecaller/tracking/events/PacketVersionedV2;->b:Lorg/apache/avro/Schema;

    invoke-virtual {v12, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 17
    iput-object v10, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    goto :goto_5

    .line 18
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 19
    :goto_5
    instance-of v11, v10, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v11, :cond_7

    move-object v11, v10

    check-cast v11, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_6

    :cond_7
    move-object v11, v6

    :goto_6
    cmp-long v12, v4, v8

    if-gez v12, :cond_b

    :goto_7
    cmp-long v12, v8, v4

    if-eqz v12, :cond_a

    if-eqz v11, :cond_8

    .line 20
    invoke-virtual {v11}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    goto :goto_8

    :cond_8
    move-object v12, v6

    :goto_8
    if-nez v12, :cond_9

    .line 21
    new-instance v12, Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    invoke-direct {v12}, Lcom/truecaller/tracking/events/EventRecordVersionedV2;-><init>()V

    .line 22
    :cond_9
    invoke-virtual {v12, p1}, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 23
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v8, v1

    goto :goto_7

    .line 24
    :cond_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v8

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 25
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 4
    iget-object v2, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 6
    invoke-virtual {v5, p1}, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v3, v0

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v2, "Array-size written was "

    const-string v5, ", but element count was "

    invoke-static {v2, v0, v1, v5}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-static {v0, v3, v4, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/PacketVersionedV2;->b:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/PacketVersionedV2;->c:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/truecaller/tracking/events/PacketVersionedV2;->a:Ljava/util/List;

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid index: "

    invoke-static {v0, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/PacketVersionedV2;->e:Lorg/apache/avro/io/DatumReader;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getDecoder(Ljava/io/ObjectInput;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumReader;->read(Ljava/lang/Object;Lorg/apache/avro/io/Decoder;)Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/PacketVersionedV2;->d:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
