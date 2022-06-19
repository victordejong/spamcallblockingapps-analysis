.class public Le/a/l5/a/w3;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# static fields
.field public static final d:Lorg/apache/avro/Schema;

.field public static e:Lorg/apache/avro/specific/SpecificData;

.field public static final f:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/w3;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/w3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/v3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"NotificationGroup\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Group id\"},{\"name\":\"groupSetting\",\"type\":\"boolean\",\"doc\":\"Group level notification setting\"},{\"name\":\"channels\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"NotificationChannel\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Unique id of the channel\"},{\"name\":\"channelSetting\",\"type\":\"boolean\",\"doc\":\"User setting for the channel\"}]}},\"doc\":\"Channels which belong to this group\"}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/w3;->d:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/w3;->e:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/w3;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/w3;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/w3;->f:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/w3;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/w3;->g:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Le/a/l5/a/v3;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 3
    iput-object p1, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/w3;->b:Z

    .line 5
    iput-object p3, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

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

    const-string v3, "channels"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    instance-of v7, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v7, :cond_0

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/w3;->b:Z

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v7

    .line 5
    iget-object v0, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v9, v7

    sget-object v10, Le/a/l5/a/w3;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v10, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 7
    iput-object v0, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :goto_1
    instance-of v3, v0, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_2

    :cond_2
    move-object v3, v6

    :goto_2
    cmp-long v9, v4, v7

    if-gez v9, :cond_11

    :goto_3
    cmp-long v9, v7, v4

    if-eqz v9, :cond_5

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l5/a/v3;

    goto :goto_4

    :cond_3
    move-object v9, v6

    :goto_4
    if-nez v9, :cond_4

    .line 11
    new-instance v9, Le/a/l5/a/v3;

    invoke-direct {v9}, Le/a/l5/a/v3;-><init>()V

    .line 12
    :cond_4
    invoke-virtual {v9, p1}, Le/a/l5/a/v3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 13
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v7, v1

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_5
    const/4 v8, 0x3

    if-ge v7, v8, :cond_11

    .line 15
    aget-object v8, v0, v7

    invoke-virtual {v8}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v8

    if-eqz v8, :cond_e

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v8

    .line 17
    iget-object v10, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

    if-nez v10, :cond_7

    .line 18
    new-instance v10, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v11, v8

    sget-object v12, Le/a/l5/a/w3;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v12, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 19
    iput-object v10, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

    goto :goto_6

    .line 20
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 21
    :goto_6
    instance-of v11, v10, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v11, :cond_8

    move-object v11, v10

    check-cast v11, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_7

    :cond_8
    move-object v11, v6

    :goto_7
    cmp-long v12, v4, v8

    if-gez v12, :cond_10

    :goto_8
    cmp-long v12, v8, v4

    if-eqz v12, :cond_b

    if-eqz v11, :cond_9

    .line 22
    invoke-virtual {v11}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/l5/a/v3;

    goto :goto_9

    :cond_9
    move-object v12, v6

    :goto_9
    if-nez v12, :cond_a

    .line 23
    new-instance v12, Le/a/l5/a/v3;

    invoke-direct {v12}, Le/a/l5/a/v3;-><init>()V

    .line 24
    :cond_a
    invoke-virtual {v12, p1}, Le/a/l5/a/v3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 25
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v8, v1

    goto :goto_8

    .line 26
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v8

    goto :goto_7

    .line 27
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v8

    iput-boolean v8, p0, Le/a/l5/a/w3;->b:Z

    goto :goto_b

    .line 29
    :cond_e
    iget-object v8, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    instance-of v9, v8, Lorg/apache/avro/util/Utf8;

    if-eqz v9, :cond_f

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_a

    :cond_f
    move-object v8, v6

    :goto_a
    invoke-virtual {p1, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v8

    iput-object v8, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    :cond_10
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_11
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
    iget-object v0, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 2
    iget-boolean v0, p0, Le/a/l5/a/w3;->b:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 3
    iget-object v0, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 6
    iget-object v2, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/v3;

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    .line 7
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 8
    iget-object v6, v5, Le/a/l5/a/v3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 9
    iget-boolean v5, v5, Le/a/l5/a/v3;->b:Z

    invoke-virtual {p1, v5}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v3, v0

    if-nez p1, :cond_1

    return-void

    .line 11
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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

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
    iget-boolean p1, p0, Le/a/l5/a/w3;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/w3;->d:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/w3;->e:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/w3;->c:Ljava/util/List;

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
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/w3;->b:Z

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/w3;->a:Ljava/lang/CharSequence;

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
    sget-object v0, Le/a/l5/a/w3;->g:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/w3;->f:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
