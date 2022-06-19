.class public Lcom/truecaller/tracking/events/Coordinates;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/tracking/events/Coordinates$b;
    }
.end annotation


# static fields
.field public static final d:Lorg/apache/avro/Schema;

.field public static e:Lorg/apache/avro/specific/SpecificData;

.field public static final f:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Lcom/truecaller/tracking/events/Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Lcom/truecaller/tracking/events/Coordinates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"Coordinates\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/Coordinates;->d:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Lcom/truecaller/tracking/events/Coordinates;->e:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Lcom/truecaller/tracking/events/Coordinates;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Lcom/truecaller/tracking/events/Coordinates;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Lcom/truecaller/tracking/events/Coordinates;->f:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Lcom/truecaller/tracking/events/Coordinates;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/Coordinates;->g:Lorg/apache/avro/io/DatumReader;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/truecaller/tracking/events/Coordinates;->a:F

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/truecaller/tracking/events/Coordinates;->b:F

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/tracking/events/Coordinates;->c:J

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 5
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/tracking/events/Coordinates;->c:J

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/truecaller/tracking/events/Coordinates;->b:F

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/truecaller/tracking/events/Coordinates;->a:F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/truecaller/tracking/events/Coordinates;->a:F

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    .line 2
    iget v0, p0, Lcom/truecaller/tracking/events/Coordinates;->b:F

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    .line 3
    iget-wide v0, p0, Lcom/truecaller/tracking/events/Coordinates;->c:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/truecaller/tracking/events/Coordinates;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    iget p1, p0, Lcom/truecaller/tracking/events/Coordinates;->b:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget p1, p0, Lcom/truecaller/tracking/events/Coordinates;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/Coordinates;->d:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/Coordinates;->e:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/tracking/events/Coordinates;->c:J

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
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/truecaller/tracking/events/Coordinates;->b:F

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/truecaller/tracking/events/Coordinates;->a:F

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
    sget-object v0, Lcom/truecaller/tracking/events/Coordinates;->g:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Lcom/truecaller/tracking/events/Coordinates;->f:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
