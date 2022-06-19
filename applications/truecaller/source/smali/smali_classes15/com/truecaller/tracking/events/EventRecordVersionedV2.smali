.class public Lcom/truecaller/tracking/events/EventRecordVersionedV2;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/tracking/events/EventRecordVersionedV2$b;
    }
.end annotation


# static fields
.field public static final f:Lorg/apache/avro/Schema;

.field public static g:Lorg/apache/avro/specific/SpecificData;

.field public static final h:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Lcom/truecaller/tracking/events/EventRecordVersionedV2;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Lcom/truecaller/tracking/events/EventRecordVersionedV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"EventRecordVersionedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"schemaId\",\"type\":\"int\"},{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"header\",\"type\":\"bytes\"},{\"name\":\"body\",\"type\":\"bytes\"},{\"name\":\"headerVersion\",\"type\":\"int\",\"default\":2}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->f:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->g:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->h:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->i:Lorg/apache/avro/io/DatumReader;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->a:I

    .line 3
    iget-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    instance-of v2, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/avro/util/Utf8;

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->e:I

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_8

    .line 7
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v3

    iput v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->e:I

    goto :goto_2

    .line 9
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/ResolvingDecoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 11
    :cond_4
    iget-object v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/ResolvingDecoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 12
    :cond_5
    iget-object v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    instance-of v4, v3, Lorg/apache/avro/util/Utf8;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/apache/avro/util/Utf8;

    goto :goto_1

    :cond_6
    move-object v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v3

    iput-object v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    goto :goto_2

    .line 13
    :cond_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v3

    iput v3, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->a:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->a:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 5
    iget v0, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->e:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :cond_4
    iget p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->f:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->g:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->e:I

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid index: "

    invoke-static {v0, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    check-cast p2, Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->d:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->c:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->a:I

    :goto_0
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->i:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Lcom/truecaller/tracking/events/EventRecordVersionedV2;->h:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
