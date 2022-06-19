.class public Le/a/l5/a/o3;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# static fields
.field public static final e:Lorg/apache/avro/Schema;

.field public static f:Lorg/apache/avro/specific/SpecificData;

.field public static final g:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/o3;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/o3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"GamMediationInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"adapterClassName\",\"type\":[\"null\",\"string\"],\"doc\":\"Mediation adapter class name invoked my ad manager sdk\",\"default\":null},{\"name\":\"latency\",\"type\":[\"null\",\"long\"],\"doc\":\"Time taken by mediation adapter for an ad response in milliseconds\",\"default\":null},{\"name\":\"gamErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code recorded by ad manger\",\"default\":null},{\"name\":\"partnerErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code returned by the partner\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/o3;->e:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/o3;->f:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/o3;->f:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/o3;->f:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/o3;->g:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/o3;->f:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/o3;->h:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 3
    iput-object p1, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    .line 6
    iput-object p4, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v1, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    .line 6
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 8
    iput-object v1, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    .line 10
    :goto_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 12
    iput-object v1, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    .line 14
    :goto_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v1, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    goto/16 :goto_7

    .line 17
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    goto/16 :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x4

    if-ge v3, v4, :cond_f

    .line 18
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 21
    iput-object v1, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    goto :goto_6

    .line 23
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_9

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 26
    iput-object v1, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    goto :goto_6

    .line 27
    :cond_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    goto :goto_6

    .line 28
    :cond_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_b

    .line 29
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 30
    iput-object v1, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    goto :goto_6

    .line 31
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    goto :goto_6

    .line 32
    :cond_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_d

    .line 33
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 34
    iput-object v1, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    goto :goto_6

    .line 35
    :cond_d
    iget-object v4, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_e

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_5

    :cond_e
    move-object v4, v1

    :goto_5
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    :goto_7
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 5
    iget-object v0, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 10
    iget-object v0, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 15
    iget-object v0, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 16
    :goto_2
    iget-object v0, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 20
    iget-object v0, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    :goto_3
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

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
    iget-object p1, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/o3;->e:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/o3;->f:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/o3;->d:Ljava/lang/Integer;

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
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/o3;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Le/a/l5/a/o3;->b:Ljava/lang/Long;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/o3;->a:Ljava/lang/CharSequence;

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
    sget-object v0, Le/a/l5/a/o3;->h:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/o3;->g:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
