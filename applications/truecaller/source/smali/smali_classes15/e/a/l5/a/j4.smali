.class public Le/a/l5/a/j4;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/j4$b;
    }
.end annotation


# static fields
.field public static final d:Lorg/apache/avro/Schema;

.field public static e:Lorg/apache/avro/specific/SpecificData;

.field public static final f:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/j4;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/j4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
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

.field public b:Ljava/util/List;
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

    const-string v0, "{\"type\":\"record\",\"name\":\"TagsServedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All tag ids that client received, e.g. [\\\"9\\\",\\\"129\\\"]\"},{\"name\":\"manualTagsAvailable\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All manual tag ids that the client has available for this number\"},{\"name\":\"shownTags\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"The list of tag ids that the client displayed to the user for this search result\"}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/j4;->e:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/j4;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/j4;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/j4;->f:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/j4;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/j4;->g:Lorg/apache/avro/io/DatumReader;

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
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const-string v2, "shownTags"

    const-string v3, "manualTagsAvailable"

    const-string v4, "serverTagsReceived"

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-nez v1, :cond_11

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v5

    .line 3
    iget-object v1, v0, Le/a/l5/a/j4;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v7, v5

    sget-object v8, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v8, v4}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-direct {v1, v7, v4}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 5
    iput-object v1, v0, Le/a/l5/a/j4;->a:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    :goto_0
    instance-of v4, v1, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    cmp-long v7, v14, v5

    if-gez v7, :cond_5

    move-wide v8, v5

    :goto_2
    cmp-long v5, v8, v14

    if-eqz v5, :cond_4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 9
    :goto_3
    instance-of v6, v5, Lorg/apache/avro/util/Utf8;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    move-object v6, v5

    move-object/from16 v5, p1

    move-object v7, v1

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v5

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v4

    .line 12
    iget-object v1, v0, Le/a/l5/a/j4;->b:Ljava/util/List;

    if-nez v1, :cond_6

    .line 13
    new-instance v1, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v6, v4

    sget-object v7, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v7, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 14
    iput-object v1, v0, Le/a/l5/a/j4;->b:Ljava/util/List;

    goto :goto_5

    .line 15
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    :goto_5
    instance-of v3, v1, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_7

    move-object v3, v1

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    cmp-long v6, v14, v4

    if-gez v6, :cond_b

    move-wide v8, v4

    :goto_7
    cmp-long v4, v8, v14

    if-eqz v4, :cond_a

    if-eqz v3, :cond_8

    .line 17
    invoke-virtual {v3}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 18
    :goto_8
    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_9

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    move-object v6, v4

    move-object/from16 v5, p1

    move-object v7, v1

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    goto :goto_7

    .line 19
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v4

    goto :goto_6

    .line 20
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v3

    .line 21
    iget-object v1, v0, Le/a/l5/a/j4;->c:Ljava/util/List;

    if-nez v1, :cond_c

    .line 22
    new-instance v1, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v5, v3

    sget-object v6, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v6, v2}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 23
    iput-object v1, v0, Le/a/l5/a/j4;->c:Ljava/util/List;

    goto :goto_a

    .line 24
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 25
    :goto_a
    instance-of v2, v1, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v2, :cond_d

    move-object v2, v1

    check-cast v2, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    cmp-long v5, v14, v3

    if-gez v5, :cond_25

    move-wide v8, v3

    :goto_c
    cmp-long v3, v8, v14

    if-eqz v3, :cond_10

    if-eqz v2, :cond_e

    .line 26
    invoke-virtual {v2}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    .line 27
    :goto_d
    instance-of v4, v3, Lorg/apache/avro/util/Utf8;

    if-eqz v4, :cond_f

    check-cast v3, Lorg/apache/avro/util/Utf8;

    goto :goto_e

    :cond_f
    const/4 v3, 0x0

    :goto_e
    move-object v6, v3

    move-object/from16 v5, p1

    move-object v7, v1

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    goto :goto_c

    .line 28
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v3

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    move-wide/from16 v17, v14

    move v14, v5

    move-wide/from16 v5, v17

    :goto_f
    const/4 v7, 0x3

    if-ge v14, v7, :cond_25

    .line 29
    aget-object v7, v1, v14

    invoke-virtual {v7}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v8, 0x1

    if-eq v7, v8, :cond_18

    const/4 v8, 0x2

    if-ne v7, v8, :cond_17

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v7

    .line 31
    iget-object v9, v0, Le/a/l5/a/j4;->c:Ljava/util/List;

    if-nez v9, :cond_12

    .line 32
    new-instance v9, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v10, v7

    sget-object v11, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v11, v2}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 33
    iput-object v9, v0, Le/a/l5/a/j4;->c:Ljava/util/List;

    goto :goto_10

    .line 34
    :cond_12
    invoke-interface {v9}, Ljava/util/List;->clear()V

    :goto_10
    move-object v15, v9

    .line 35
    nop

    instance-of v9, v15, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v9, :cond_13

    move-object v9, v15

    check-cast v9, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_11

    :cond_13
    const/4 v9, 0x0

    :goto_11
    move-object/from16 v16, v9

    :goto_12
    cmp-long v9, v5, v7

    if-gez v9, :cond_24

    move-wide v8, v7

    :goto_13
    cmp-long v5, v8, v5

    if-eqz v5, :cond_16

    if-eqz v16, :cond_14

    .line 36
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_14

    :cond_14
    const/4 v5, 0x0

    .line 37
    :goto_14
    instance-of v6, v5, Lorg/apache/avro/util/Utf8;

    if-eqz v6, :cond_15

    check-cast v5, Lorg/apache/avro/util/Utf8;

    goto :goto_15

    :cond_15
    const/4 v5, 0x0

    :goto_15
    move-object v6, v5

    move-object/from16 v5, p1

    move-object v7, v15

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    const-wide/16 v5, 0x0

    goto :goto_13

    .line 38
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    goto :goto_12

    .line 39
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v5

    .line 41
    iget-object v7, v0, Le/a/l5/a/j4;->b:Ljava/util/List;

    if-nez v7, :cond_19

    .line 42
    new-instance v7, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v8, v5

    sget-object v9, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v9, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 43
    iput-object v7, v0, Le/a/l5/a/j4;->b:Ljava/util/List;

    goto :goto_16

    .line 44
    :cond_19
    invoke-interface {v7}, Ljava/util/List;->clear()V

    :goto_16
    move-object v15, v7

    .line 45
    nop

    instance-of v7, v15, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v7, :cond_1a

    move-object v7, v15

    check-cast v7, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_17

    :cond_1a
    const/4 v7, 0x0

    :goto_17
    move-object/from16 v16, v7

    :goto_18
    const-wide/16 v7, 0x0

    cmp-long v9, v7, v5

    if-gez v9, :cond_24

    move-wide v9, v5

    :goto_19
    cmp-long v5, v9, v7

    if-eqz v5, :cond_1d

    if-eqz v16, :cond_1b

    .line 46
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_1a

    :cond_1b
    const/4 v5, 0x0

    .line 47
    :goto_1a
    instance-of v6, v5, Lorg/apache/avro/util/Utf8;

    if-eqz v6, :cond_1c

    check-cast v5, Lorg/apache/avro/util/Utf8;

    goto :goto_1b

    :cond_1c
    const/4 v5, 0x0

    :goto_1b
    move-object v6, v5

    move-object/from16 v5, p1

    move-object v7, v15

    move-wide v8, v9

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v9

    const-wide/16 v7, 0x0

    goto :goto_19

    .line 48
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v5

    goto :goto_18

    .line 49
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v5

    .line 50
    iget-object v7, v0, Le/a/l5/a/j4;->a:Ljava/util/List;

    if-nez v7, :cond_1f

    .line 51
    new-instance v7, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v8, v5

    sget-object v9, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    invoke-virtual {v9, v4}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 52
    iput-object v7, v0, Le/a/l5/a/j4;->a:Ljava/util/List;

    goto :goto_1c

    .line 53
    :cond_1f
    invoke-interface {v7}, Ljava/util/List;->clear()V

    :goto_1c
    move-object v15, v7

    .line 54
    nop

    instance-of v7, v15, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v7, :cond_20

    move-object v7, v15

    check-cast v7, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1d

    :cond_20
    const/4 v7, 0x0

    :goto_1d
    move-object/from16 v16, v7

    :goto_1e
    const-wide/16 v7, 0x0

    cmp-long v9, v7, v5

    if-gez v9, :cond_24

    move-wide v9, v5

    :goto_1f
    cmp-long v5, v9, v7

    if-eqz v5, :cond_23

    if-eqz v16, :cond_21

    .line 55
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_20

    :cond_21
    const/4 v5, 0x0

    .line 56
    :goto_20
    instance-of v6, v5, Lorg/apache/avro/util/Utf8;

    if-eqz v6, :cond_22

    check-cast v5, Lorg/apache/avro/util/Utf8;

    goto :goto_21

    :cond_22
    const/4 v5, 0x0

    :goto_21
    move-object v6, v5

    move-object/from16 v5, p1

    move-object v7, v15

    move-wide v8, v9

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v9

    const-wide/16 v7, 0x0

    goto :goto_1f

    .line 57
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v5

    goto :goto_1e

    :cond_24
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_f

    :cond_25
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/j4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 4
    iget-object v2, p0, Le/a/l5/a/j4;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    add-long/2addr v5, v8

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 6
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v2, v5, v0

    const-string v7, "."

    const-string v10, ", but element count was "

    const-string v11, "Array-size written was "

    if-nez v2, :cond_5

    .line 8
    iget-object v0, p0, Le/a/l5/a/j4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 10
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 11
    iget-object v2, p0, Le/a/l5/a/j4;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    add-long/2addr v5, v8

    .line 12
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 13
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v2, v5, v0

    if-nez v2, :cond_4

    .line 15
    iget-object v0, p0, Le/a/l5/a/j4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 17
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 18
    iget-object v2, p0, Le/a/l5/a/j4;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    add-long/2addr v3, v8

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 20
    invoke-virtual {p1, v5}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v3, v0

    if-nez p1, :cond_3

    return-void

    .line 22
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v11, v0, v1, v10}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v4, v7}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v11, v0, v1, v10}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v6, v7}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v11, v0, v1, v10}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v6, v7}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

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
    iget-object p1, p0, Le/a/l5/a/j4;->c:Ljava/util/List;

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
    iget-object p1, p0, Le/a/l5/a/j4;->b:Ljava/util/List;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/j4;->a:Ljava/util/List;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/j4;->e:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/j4;->c:Ljava/util/List;

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
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/j4;->b:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/j4;->a:Ljava/util/List;

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
    sget-object v0, Le/a/l5/a/j4;->g:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/j4;->f:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
