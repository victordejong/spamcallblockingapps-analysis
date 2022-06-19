.class public Le/a/l5/a/u3;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/u3$b;
    }
.end annotation


# static fields
.field public static final d:Lorg/apache/avro/Schema;

.field public static e:Lorg/apache/avro/specific/SpecificData;

.field public static final f:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/u3;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/u3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"Network\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"ip\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/u3;->d:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/u3;->e:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/u3;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/u3;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/u3;->f:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/u3;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/u3;->g:Lorg/apache/avro/io/DatumReader;

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
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    const-wide/16 v10, 0x1

    const-string v12, "ip"

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-nez v9, :cond_8

    .line 2
    iget-object v1, v0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v1, v0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_1

    :cond_1
    move-object v1, v6

    :goto_1
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 6
    iput-object v6, v0, Le/a/l5/a/u3;->c:Ljava/util/List;

    goto/16 :goto_10

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 8
    iget-object v3, v0, Le/a/l5/a/u3;->c:Ljava/util/List;

    if-nez v3, :cond_3

    .line 9
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/u3;->d:Lorg/apache/avro/Schema;

    invoke-static {v5, v12, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 10
    iput-object v3, v0, Le/a/l5/a/u3;->c:Ljava/util/List;

    goto :goto_2

    .line 11
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_2
    move-object v9, v3

    .line 12
    nop

    instance-of v3, v9, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_4

    move-object v3, v9

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    move-object v12, v3

    goto :goto_3

    :cond_4
    move-object v12, v6

    :goto_3
    cmp-long v3, v13, v1

    if-gez v3, :cond_15

    move-wide v4, v1

    :goto_4
    cmp-long v1, v4, v13

    if-eqz v1, :cond_7

    if-eqz v12, :cond_5

    .line 13
    invoke-virtual {v12}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_5
    move-object v1, v6

    .line 14
    :goto_5
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_6

    :cond_6
    move-object v2, v6

    :goto_6
    move-object/from16 v1, p1

    move-object v3, v9

    move-object v15, v6

    move-wide v6, v10

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    move-object v6, v15

    goto :goto_4

    :cond_7
    move-object v15, v6

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    move-wide/from16 v18, v13

    move v13, v1

    move-wide/from16 v1, v18

    :goto_7
    const/4 v3, 0x3

    if-ge v13, v3, :cond_15

    .line 16
    aget-object v3, v9, v13

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    if-eqz v3, :cond_13

    if-eq v3, v15, :cond_11

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v15, :cond_a

    .line 18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 19
    iput-object v6, v0, Le/a/l5/a/u3;->c:Ljava/util/List;

    :cond_9
    move-object/from16 v17, v6

    goto/16 :goto_f

    .line 20
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v3

    .line 21
    iget-object v5, v0, Le/a/l5/a/u3;->c:Ljava/util/List;

    if-nez v5, :cond_b

    .line 22
    new-instance v5, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v7, v3

    sget-object v14, Le/a/l5/a/u3;->d:Lorg/apache/avro/Schema;

    invoke-static {v14, v12, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/avro/Schema;

    invoke-direct {v5, v7, v14}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 23
    iput-object v5, v0, Le/a/l5/a/u3;->c:Ljava/util/List;

    goto :goto_8

    .line 24
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->clear()V

    :goto_8
    move-object v14, v5

    .line 25
    nop

    instance-of v5, v14, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v5, :cond_c

    move-object v5, v14

    check-cast v5, Lorg/apache/avro/generic/GenericData$Array;

    move-object/from16 v16, v5

    goto :goto_9

    :cond_c
    move-object/from16 v16, v6

    :goto_9
    cmp-long v5, v1, v3

    if-gez v5, :cond_9

    move-wide v4, v3

    :goto_a
    cmp-long v1, v4, v1

    if-eqz v1, :cond_f

    if-eqz v16, :cond_d

    .line 26
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_b

    :cond_d
    move-object v1, v6

    .line 27
    :goto_b
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_c

    :cond_e
    move-object v2, v6

    :goto_c
    move-object/from16 v1, p1

    move-object v3, v14

    move-object/from16 v17, v6

    move-wide v6, v10

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    move-object/from16 v6, v17

    goto :goto_a

    :cond_f
    move-object/from16 v17, v6

    .line 28
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    goto :goto_9

    .line 29
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v17, v6

    .line 30
    iget-object v1, v0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_12

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_d

    :cond_12
    move-object/from16 v6, v17

    :goto_d
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    goto :goto_f

    :cond_13
    move-object/from16 v17, v6

    .line 31
    iget-object v1, v0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_14

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_e

    :cond_14
    move-object/from16 v6, v17

    :goto_e
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

    :goto_f
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v1, 0x0

    move-object/from16 v6, v17

    goto/16 :goto_7

    :cond_15
    :goto_10
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
    iget-object v0, p0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Le/a/l5/a/u3;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 7
    iget-object v0, p0, Le/a/l5/a/u3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 9
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    const-wide/16 v2, 0x0

    .line 10
    iget-object v4, p0, Le/a/l5/a/u3;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 12
    invoke-virtual {p1, v5}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    :goto_1
    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v4, "Array-size written was "

    const-string v5, ", but element count was "

    invoke-static {v4, v0, v1, v5}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-static {v0, v2, v3, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

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
    iget-object p1, p0, Le/a/l5/a/u3;->c:Ljava/util/List;

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
    iget-object p1, p0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/u3;->d:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/u3;->e:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/u3;->c:Ljava/util/List;

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
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/u3;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/u3;->a:Ljava/lang/CharSequence;

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
    sget-object v0, Le/a/l5/a/u3;->g:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/u3;->f:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
