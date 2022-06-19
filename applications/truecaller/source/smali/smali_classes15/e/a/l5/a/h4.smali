.class public Le/a/l5/a/h4;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/h4$b;
    }
.end annotation


# static fields
.field public static final f:Lorg/apache/avro/Schema;

.field public static g:Lorg/apache/avro/specific/SpecificData;

.field public static final h:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/h4;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/h4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"SmsContentMetaData\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"numNumbers\",\"type\":\"int\"},{\"name\":\"numUrls\",\"type\":\"int\"},{\"name\":\"numWords\",\"type\":\"int\"},{\"name\":\"numUnigram\",\"type\":[\"null\",\"int\"]},{\"name\":\"numBigram\",\"type\":[\"null\",\"int\"]}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/h4;->f:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/h4;->g:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/h4;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/h4;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/h4;->h:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/h4;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/h4;->i:Lorg/apache/avro/io/DatumReader;

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

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    iput v0, p0, Le/a/l5/a/h4;->a:I

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    iput v0, p0, Le/a/l5/a/h4;->b:I

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    iput v0, p0, Le/a/l5/a/h4;->c:I

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 7
    iput-object v1, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    .line 9
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 11
    iput-object v1, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 12
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_a

    .line 13
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    if-eqz v4, :cond_9

    if-eq v4, v2, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_3

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v1, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 21
    iput-object v1, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    goto :goto_2

    .line 23
    :cond_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    iput v4, p0, Le/a/l5/a/h4;->c:I

    goto :goto_2

    .line 24
    :cond_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    iput v4, p0, Le/a/l5/a/h4;->b:I

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    iput v4, p0, Le/a/l5/a/h4;->a:I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/l5/a/h4;->a:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 2
    iget v0, p0, Le/a/l5/a/h4;->b:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 3
    iget v0, p0, Le/a/l5/a/h4;->c:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 4
    iget-object v0, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 8
    iget-object v0, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 13
    iget-object v0, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    :goto_1
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
    iget-object p1, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

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
    iget-object p1, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    return-object p1

    .line 4
    :cond_2
    iget p1, p0, Le/a/l5/a/h4;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    iget p1, p0, Le/a/l5/a/h4;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_4
    iget p1, p0, Le/a/l5/a/h4;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/h4;->f:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/h4;->g:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;

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

    iput-object p2, p0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/a/l5/a/h4;->c:I

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/a/l5/a/h4;->b:I

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/a/l5/a/h4;->a:I

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
    sget-object v0, Le/a/l5/a/h4;->i:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/h4;->h:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
