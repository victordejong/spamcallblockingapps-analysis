.class public Lorg/apache/avro/io/BinaryData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/BinaryData$HashData;,
        Lorg/apache/avro/io/BinaryData$Decoders;
    }
.end annotation


# static fields
.field private static final DECODERS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/io/BinaryData$Decoders;",
            ">;"
        }
    .end annotation
.end field

.field private static final HASH_DATA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/avro/io/BinaryData$HashData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/BinaryData$1;

    invoke-direct {v0}, Lorg/apache/avro/io/BinaryData$1;-><init>()V

    sput-object v0, Lorg/apache/avro/io/BinaryData;->DECODERS:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Lorg/apache/avro/io/BinaryData$2;

    invoke-direct {v0}, Lorg/apache/avro/io/BinaryData$2;-><init>()V

    sput-object v0, Lorg/apache/avro/io/BinaryData;->HASH_DATA:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare(Lorg/apache/avro/io/BinaryData$Decoders;Lorg/apache/avro/Schema;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 9
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v1

    .line 10
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v2

    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 12
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Unexpected schema to compare!"

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v4

    .line 13
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v1

    .line 14
    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v2

    .line 15
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/io/BinaryDecoder;->getBuf()[B

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/io/BinaryDecoder;->getPos()I

    move-result v6

    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/io/BinaryDecoder;->getBuf()[B

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/io/BinaryDecoder;->getPos()I

    move-result v9

    move v7, v1

    move v10, v2

    invoke-static/range {v5 .. v10}, Lorg/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v3

    .line 16
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 17
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    return v3

    .line 18
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result v1

    .line 19
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->getBuf()[B

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->getPos()I

    move-result v5

    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->getBuf()[B

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->getPos()I

    move-result v8

    move v6, v1

    move v9, v1

    invoke-static/range {v4 .. v9}, Lorg/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v2

    .line 20
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 21
    invoke-static/range {p0 .. p0}, Lorg/apache/avro/io/BinaryData$Decoders;->access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    return v2

    .line 22
    :pswitch_3
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v1

    .line 23
    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v2

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema;

    invoke-static {v0, v1}, Lorg/apache/avro/io/BinaryData;->compare(Lorg/apache/avro/io/BinaryData$Decoders;Lorg/apache/avro/Schema;)I

    move-result v2

    :cond_0
    return v2

    .line 26
    :pswitch_4
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "Can\'t compare maps!"

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    :cond_1
    cmp-long v15, v5, v3

    if-nez v15, :cond_3

    .line 27
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v5

    cmp-long v15, v5, v3

    if-gez v15, :cond_2

    neg-long v5, v5

    .line 28
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    :cond_2
    add-long/2addr v9, v5

    :cond_3
    cmp-long v15, v7, v3

    if-nez v15, :cond_5

    .line 29
    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v7

    cmp-long v15, v7, v3

    if-gez v15, :cond_4

    neg-long v7, v7

    .line 30
    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    :cond_4
    add-long/2addr v11, v7

    :cond_5
    cmp-long v15, v5, v3

    if-eqz v15, :cond_8

    cmp-long v15, v7, v3

    if-nez v15, :cond_6

    goto :goto_1

    .line 31
    :cond_6
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    :goto_0
    cmp-long v17, v13, v15

    if-gez v17, :cond_1

    .line 32
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/avro/io/BinaryData;->compare(Lorg/apache/avro/io/BinaryData$Decoders;Lorg/apache/avro/Schema;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    :cond_7
    const-wide/16 v3, 0x1

    add-long/2addr v13, v3

    sub-long/2addr v5, v3

    sub-long/2addr v7, v3

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 33
    :cond_8
    :goto_1
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 34
    :pswitch_6
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readBoolean()Z

    move-result v0

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0

    .line 35
    :pswitch_7
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readDouble()D

    move-result-wide v0

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0

    .line 36
    :pswitch_8
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readFloat()F

    move-result v0

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0

    .line 37
    :pswitch_9
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v0

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 38
    :pswitch_a
    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 39
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema$Field;

    .line 40
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v6

    sget-object v7, Lorg/apache/avro/Schema$Field$Order;->IGNORE:Lorg/apache/avro/Schema$Field$Order;

    if-ne v6, v7, :cond_a

    .line 41
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    .line 42
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    goto :goto_2

    .line 43
    :cond_a
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/apache/avro/io/BinaryData;->compare(Lorg/apache/avro/io/BinaryData$Decoders;Lorg/apache/avro/Schema;)I

    move-result v6

    if-eqz v6, :cond_9

    .line 44
    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v0

    sget-object v1, Lorg/apache/avro/Schema$Field$Order;->DESCENDING:Lorg/apache/avro/Schema$Field$Order;

    if-eq v0, v1, :cond_b

    goto :goto_3

    :cond_b
    neg-int v6, v6

    :goto_3
    return v6

    :cond_c
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public static compare([BII[BIILorg/apache/avro/Schema;)I
    .locals 8

    .line 2
    sget-object v0, Lorg/apache/avro/io/BinaryData;->DECODERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/BinaryData$Decoders;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 3
    invoke-virtual/range {v1 .. v7}, Lorg/apache/avro/io/BinaryData$Decoders;->set([BII[BII)V

    .line 4
    :try_start_0
    invoke-static {v0, p6}, Lorg/apache/avro/io/BinaryData;->compare(Lorg/apache/avro/io/BinaryData$Decoders;Lorg/apache/avro/Schema;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryData$Decoders;->clear()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryData$Decoders;->clear()V

    .line 8
    throw p0
.end method

.method public static compare([BI[BILorg/apache/avro/Schema;)I
    .locals 8

    .line 1
    array-length v0, p0

    sub-int v3, v0, p1

    array-length v0, p2

    sub-int v6, v0, p3

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lorg/apache/avro/io/BinaryData;->compare([BII[BIILorg/apache/avro/Schema;)I

    move-result p0

    return p0
.end method

.method public static compareBytes([BII[BII)I
    .locals 4

    add-int v0, p1, p2

    add-int v1, p4, p5

    :goto_0
    if-ge p1, v0, :cond_1

    if-ge p4, v1, :cond_1

    .line 1
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    .line 2
    aget-byte v3, p3, p4

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_0

    sub-int/2addr v2, v3

    return v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p5

    return p2
.end method

.method public static encodeBoolean(Z[BI)I
    .locals 0

    .line 1
    aput-byte p0, p1, p2

    const/4 p0, 0x1

    return p0
.end method

.method public static encodeDouble(D[BI)I
    .locals 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    and-long v2, p0, v0

    long-to-int v2, v2

    const/16 v3, 0x20

    ushr-long/2addr p0, v3

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p1, v2

    .line 2
    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x4

    int-to-byte v0, p0

    .line 3
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x5

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    ushr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    ushr-int/lit8 v0, v2, 0x10

    int-to-byte v0, v0

    .line 6
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x6

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x7

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 8
    aput-byte p0, p2, p1

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p0, v2, 0x18

    int-to-byte p0, p0

    .line 9
    aput-byte p0, p2, p3

    const/16 p0, 0x8

    return p0
.end method

.method public static encodeFloat(F[BI)I
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p1, v0

    int-to-byte p0, p0

    .line 5
    aput-byte p0, p1, p2

    const/4 p0, 0x4

    return p0
.end method

.method public static encodeInt(I[BI)I
    .locals 4

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    or-int/lit16 v1, p0, 0x80

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1
    aput-byte v1, p1, p2

    ushr-int/lit8 p0, p0, 0x7

    const/16 v1, 0x7f

    if-le p0, v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p0, 0x80

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, p1, v0

    ushr-int/lit8 p0, p0, 0x7

    if-le p0, v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    or-int/lit16 v3, p0, 0x80

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, p1, v2

    ushr-int/lit8 p0, p0, 0x7

    if-le p0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 4
    aput-byte v2, p1, v0

    ushr-int/lit8 p0, p0, 0x7

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p2

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte p0, p0

    .line 5
    aput-byte p0, p1, v0

    sub-int/2addr v1, p2

    return v1
.end method

.method public static encodeLong(J[BI)I
    .locals 11

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0x80

    or-long v3, p0, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 1
    aput-byte v3, p2, p3

    const/4 v3, 0x7

    ushr-long/2addr p0, v3

    const-wide/16 v7, 0x7f

    cmp-long v4, p0, v7

    if-lez v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 2
    aput-byte v9, p2, v0

    ushr-long/2addr p0, v3

    cmp-long v0, p0, v7

    if-lez v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 3
    aput-byte v9, p2, v4

    ushr-long/2addr p0, v3

    cmp-long v4, p0, v7

    if-lez v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 4
    aput-byte v9, p2, v0

    ushr-long/2addr p0, v3

    cmp-long v0, p0, v7

    if-lez v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 5
    aput-byte v9, p2, v4

    ushr-long/2addr p0, v3

    cmp-long v4, p0, v7

    if-lez v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 6
    aput-byte v9, p2, v0

    ushr-long/2addr p0, v3

    cmp-long v0, p0, v7

    if-lez v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 7
    aput-byte v9, p2, v4

    ushr-long/2addr p0, v3

    cmp-long v4, p0, v7

    if-lez v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    or-long v9, p0, v1

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 8
    aput-byte v9, p2, v0

    ushr-long/2addr p0, v3

    cmp-long v0, p0, v7

    if-lez v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    or-long/2addr v1, p0

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 9
    aput-byte v1, p2, v4

    ushr-long/2addr p0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, p3

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 10
    aput-byte p0, p2, v0

    sub-int/2addr v1, p3

    return v1
.end method

.method private static hashBytes(ILorg/apache/avro/io/BinaryData$HashData;IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/avro/io/BinaryData$HashData;->access$200(Lorg/apache/avro/io/BinaryData$HashData;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->getBuf()[B

    move-result-object v0

    .line 2
    invoke-static {p1}, Lorg/apache/avro/io/BinaryData$HashData;->access$200(Lorg/apache/avro/io/BinaryData$HashData;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/avro/io/BinaryDecoder;->getPos()I

    move-result v1

    add-int v2, v1, p2

    if-eqz p3, :cond_0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v1, :cond_1

    mul-int/lit8 p0, p0, 0x1f

    .line 3
    aget-byte p3, v0, v2

    add-int/2addr p0, p3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    mul-int/lit8 p0, p0, 0x1f

    .line 4
    aget-byte p3, v0, v1

    add-int/2addr p0, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p1}, Lorg/apache/avro/io/BinaryData$HashData;->access$200(Lorg/apache/avro/io/BinaryData$HashData;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    return p0
.end method

.method private static hashCode(Lorg/apache/avro/io/BinaryData$HashData;Lorg/apache/avro/Schema;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lorg/apache/avro/io/BinaryData$HashData;->access$200(Lorg/apache/avro/io/BinaryData$HashData;)Lorg/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 7
    new-instance p0, Lorg/apache/avro/AvroRuntimeException;

    const-string p1, "Unexpected schema to hashCode!"

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return v2

    .line 8
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result p1

    invoke-static {v3, p0, p1, v3}, Lorg/apache/avro/io/BinaryData;->hashBytes(ILorg/apache/avro/io/BinaryData$HashData;IZ)I

    move-result p0

    return p0

    .line 9
    :pswitch_2
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result p1

    invoke-static {v2, p0, p1, v2}, Lorg/apache/avro/io/BinaryData;->hashBytes(ILorg/apache/avro/io/BinaryData$HashData;IZ)I

    move-result p0

    return p0

    .line 10
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFixedSize()I

    move-result p1

    invoke-static {v3, p0, p1, v2}, Lorg/apache/avro/io/BinaryData;->hashBytes(ILorg/apache/avro/io/BinaryData$HashData;IZ)I

    move-result p0

    return p0

    .line 11
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    invoke-static {p0, p1}, Lorg/apache/avro/io/BinaryData;->hashCode(Lorg/apache/avro/io/BinaryData$HashData;Lorg/apache/avro/Schema;)I

    move-result p0

    return p0

    .line 12
    :pswitch_5
    new-instance p0, Lorg/apache/avro/AvroRuntimeException;

    const-string p1, "Can\'t hashCode maps!"

    invoke-direct {p0, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getElementType()Lorg/apache/avro/Schema;

    move-result-object p1

    .line 14
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readArrayStart()J

    move-result-wide v1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    :goto_1
    cmp-long v6, v4, v1

    if-gez v6, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 15
    invoke-static {p0, p1}, Lorg/apache/avro/io/BinaryData;->hashCode(Lorg/apache/avro/io/BinaryData$HashData;Lorg/apache/avro/Schema;)I

    move-result v6

    add-int/2addr v3, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return v3

    .line 17
    :pswitch_7
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/avro/util/tc/Java8Support;->booleanHashCode(Z)I

    move-result p0

    return p0

    .line 18
    :pswitch_8
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/avro/util/tc/Java8Support;->doubleHashCode(D)I

    move-result p0

    return p0

    .line 19
    :pswitch_9
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readFloat()F

    move-result p0

    invoke-static {p0}, Lorg/apache/avro/util/tc/Java8Support;->floatHashCode(F)I

    move-result p0

    return p0

    .line 20
    :pswitch_a
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/avro/util/tc/Java8Support;->longHashCode(J)I

    move-result p0

    return p0

    .line 21
    :pswitch_b
    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->readInt()I

    move-result p0

    return p0

    .line 22
    :pswitch_c
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/Schema$Field;

    .line 23
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->order()Lorg/apache/avro/Schema$Field$Order;

    move-result-object v2

    sget-object v4, Lorg/apache/avro/Schema$Field$Order;->IGNORE:Lorg/apache/avro/Schema$Field$Order;

    if-ne v2, v4, :cond_2

    .line 24
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/avro/generic/GenericDatumReader;->skip(Lorg/apache/avro/Schema;Lorg/apache/avro/io/Decoder;)V

    goto :goto_2

    :cond_2
    mul-int/lit8 v3, v3, 0x1f

    .line 25
    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/avro/io/BinaryData;->hashCode(Lorg/apache/avro/io/BinaryData$HashData;Lorg/apache/avro/Schema;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_2

    :cond_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public static hashCode([BIILorg/apache/avro/Schema;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/BinaryData;->HASH_DATA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/BinaryData$HashData;

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/avro/io/BinaryData$HashData;->set([BII)V

    .line 3
    :try_start_0
    invoke-static {v0, p3}, Lorg/apache/avro/io/BinaryData;->hashCode(Lorg/apache/avro/io/BinaryData$HashData;Lorg/apache/avro/Schema;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static skipLong([BI)I
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    return v0
.end method
