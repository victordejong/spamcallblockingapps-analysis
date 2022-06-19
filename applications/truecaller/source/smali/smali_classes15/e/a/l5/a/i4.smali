.class public Le/a/l5/a/i4;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/i4$b;
    }
.end annotation


# static fields
.field public static final d:Lorg/apache/avro/Schema;

.field public static e:Lorg/apache/avro/specific/SpecificData;

.field public static final f:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/i4;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/i4;",
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

    const-string v0, "{\"type\":\"record\",\"name\":\"TagsServed\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/i4;->e:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/i4;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/i4;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/i4;->f:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/i4;->e:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/i4;->g:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/i4$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/i4$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/i4$b;-><init>(Le/a/l5/a/i4$a;)V

    return-object v0
.end method


# virtual methods
.method public customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V
    .locals 23
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

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_14

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v10, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v11, v0, Le/a/l5/a/i4;->a:Ljava/util/List;

    :cond_0
    move v15, v10

    move-object v14, v11

    goto/16 :goto_5

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v5

    .line 6
    iget-object v1, v0, Le/a/l5/a/i4;->a:Ljava/util/List;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v7, v5

    sget-object v8, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    invoke-static {v8, v4, v10}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema;

    invoke-direct {v1, v7, v4}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 8
    iput-object v1, v0, Le/a/l5/a/i4;->a:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    :goto_0
    instance-of v4, v1, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1

    :cond_3
    move-object v4, v11

    :goto_1
    cmp-long v7, v14, v5

    if-gez v7, :cond_0

    move-wide v8, v5

    :goto_2
    cmp-long v5, v8, v14

    if-eqz v5, :cond_6

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    move-object v5, v11

    .line 12
    :goto_3
    instance-of v6, v5, Lorg/apache/avro/util/Utf8;

    if-eqz v6, :cond_5

    check-cast v5, Lorg/apache/avro/util/Utf8;

    move-object v6, v5

    goto :goto_4

    :cond_5
    move-object v6, v11

    :goto_4
    move-object/from16 v5, p1

    move-object v7, v1

    move v15, v10

    move-object v14, v11

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    move-object v11, v14

    move v10, v15

    const-wide/16 v14, 0x0

    goto :goto_2

    :cond_6
    move v15, v10

    move-object v14, v11

    .line 13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    goto :goto_1

    .line 14
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_7

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v14, v0, Le/a/l5/a/i4;->b:Ljava/util/List;

    goto :goto_b

    .line 17
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v4

    .line 18
    iget-object v1, v0, Le/a/l5/a/i4;->b:Ljava/util/List;

    if-nez v1, :cond_8

    .line 19
    new-instance v1, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v6, v4

    sget-object v7, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    invoke-static {v7, v3, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/Schema;

    invoke-direct {v1, v6, v3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 20
    iput-object v1, v0, Le/a/l5/a/i4;->b:Ljava/util/List;

    goto :goto_6

    .line 21
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 22
    :goto_6
    instance-of v3, v1, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_9

    move-object v11, v1

    check-cast v11, Lorg/apache/avro/generic/GenericData$Array;

    move-object v3, v11

    goto :goto_7

    :cond_9
    move-object v3, v14

    :goto_7
    const-wide/16 v6, 0x0

    cmp-long v8, v6, v4

    if-gez v8, :cond_d

    move-wide v8, v4

    :goto_8
    cmp-long v4, v8, v6

    if-eqz v4, :cond_c

    if-eqz v3, :cond_a

    .line 23
    invoke-virtual {v3}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_a
    move-object v11, v14

    .line 24
    :goto_9
    instance-of v4, v11, Lorg/apache/avro/util/Utf8;

    if-eqz v4, :cond_b

    check-cast v11, Lorg/apache/avro/util/Utf8;

    move-object v6, v11

    goto :goto_a

    :cond_b
    move-object v6, v14

    :goto_a
    move-object/from16 v5, p1

    move-object v7, v1

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    const-wide/16 v6, 0x0

    goto :goto_8

    .line 25
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v4

    goto :goto_7

    .line 26
    :cond_d
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_e

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 28
    iput-object v14, v0, Le/a/l5/a/i4;->c:Ljava/util/List;

    goto/16 :goto_23

    .line 29
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v3

    .line 30
    iget-object v1, v0, Le/a/l5/a/i4;->c:Ljava/util/List;

    if-nez v1, :cond_f

    .line 31
    new-instance v1, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v5, v3

    sget-object v6, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    invoke-static {v6, v2, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema;

    invoke-direct {v1, v5, v2}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 32
    iput-object v1, v0, Le/a/l5/a/i4;->c:Ljava/util/List;

    goto :goto_c

    .line 33
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34
    :goto_c
    instance-of v2, v1, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v2, :cond_10

    move-object v11, v1

    check-cast v11, Lorg/apache/avro/generic/GenericData$Array;

    move-object v2, v11

    goto :goto_d

    :cond_10
    move-object v2, v14

    :goto_d
    const-wide/16 v5, 0x0

    cmp-long v7, v5, v3

    if-gez v7, :cond_2c

    move-wide v8, v3

    :goto_e
    cmp-long v3, v8, v5

    if-eqz v3, :cond_13

    if-eqz v2, :cond_11

    .line 35
    invoke-virtual {v2}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_f

    :cond_11
    move-object v11, v14

    .line 36
    :goto_f
    instance-of v3, v11, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_12

    check-cast v11, Lorg/apache/avro/util/Utf8;

    move-object v6, v11

    goto :goto_10

    :cond_12
    move-object v6, v14

    :goto_10
    move-object/from16 v5, p1

    move-object v7, v1

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v8

    const-wide/16 v5, 0x0

    goto :goto_e

    .line 37
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v3

    goto :goto_d

    :cond_14
    move v15, v10

    move-object v14, v11

    const/4 v5, 0x0

    :goto_11
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2c

    .line 38
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v6

    if-eqz v6, :cond_24

    if-eq v6, v15, :cond_1c

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1b

    .line 39
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v6

    if-eq v6, v15, :cond_15

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 41
    iput-object v11, v0, Le/a/l5/a/i4;->c:Ljava/util/List;

    :goto_12
    const-wide/16 v11, 0x0

    goto/16 :goto_22

    .line 42
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v6

    .line 43
    iget-object v8, v0, Le/a/l5/a/i4;->c:Ljava/util/List;

    if-nez v8, :cond_16

    .line 44
    new-instance v8, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v9, v6

    sget-object v10, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    invoke-static {v10, v2, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/avro/Schema;

    invoke-direct {v8, v9, v10}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 45
    iput-object v8, v0, Le/a/l5/a/i4;->c:Ljava/util/List;

    goto :goto_13

    .line 46
    :cond_16
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 47
    :goto_13
    instance-of v9, v8, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v9, :cond_17

    move-object v9, v8

    check-cast v9, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_14

    :cond_17
    const/4 v9, 0x0

    :goto_14
    const-wide/16 v10, 0x0

    cmp-long v12, v10, v6

    if-gez v12, :cond_23

    move-wide/from16 v19, v6

    :goto_15
    cmp-long v6, v19, v10

    if-eqz v6, :cond_1a

    if-eqz v9, :cond_18

    .line 48
    invoke-virtual {v9}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_16

    :cond_18
    const/4 v6, 0x0

    .line 49
    :goto_16
    instance-of v7, v6, Lorg/apache/avro/util/Utf8;

    if-eqz v7, :cond_19

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_17

    :cond_19
    const/4 v6, 0x0

    :goto_17
    move-object/from16 v17, v6

    const-wide/16 v21, 0x1

    move-object/from16 v16, p1

    move-object/from16 v18, v8

    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v19

    const-wide/16 v10, 0x0

    goto :goto_15

    .line 50
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v6

    goto :goto_14

    .line 51
    :cond_1b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v6

    if-eq v6, v15, :cond_1d

    .line 53
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v6, 0x0

    .line 54
    iput-object v6, v0, Le/a/l5/a/i4;->b:Ljava/util/List;

    goto :goto_12

    .line 55
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v6

    .line 56
    iget-object v8, v0, Le/a/l5/a/i4;->b:Ljava/util/List;

    if-nez v8, :cond_1e

    .line 57
    new-instance v8, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v9, v6

    sget-object v10, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    invoke-static {v10, v3, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/avro/Schema;

    invoke-direct {v8, v9, v10}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 58
    iput-object v8, v0, Le/a/l5/a/i4;->b:Ljava/util/List;

    goto :goto_18

    .line 59
    :cond_1e
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 60
    :goto_18
    instance-of v9, v8, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v9, :cond_1f

    move-object v9, v8

    check-cast v9, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_19

    :cond_1f
    const/4 v9, 0x0

    :goto_19
    const-wide/16 v10, 0x0

    cmp-long v12, v10, v6

    if-gez v12, :cond_23

    move-wide/from16 v19, v6

    :goto_1a
    cmp-long v6, v19, v10

    if-eqz v6, :cond_22

    if-eqz v9, :cond_20

    .line 61
    invoke-virtual {v9}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_1b

    :cond_20
    const/4 v6, 0x0

    .line 62
    :goto_1b
    instance-of v7, v6, Lorg/apache/avro/util/Utf8;

    if-eqz v7, :cond_21

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_1c

    :cond_21
    const/4 v6, 0x0

    :goto_1c
    move-object/from16 v17, v6

    const-wide/16 v21, 0x1

    move-object/from16 v16, p1

    move-object/from16 v18, v8

    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v19

    const-wide/16 v10, 0x0

    goto :goto_1a

    .line 63
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v6

    goto :goto_19

    :cond_23
    move-wide v11, v10

    goto :goto_22

    .line 64
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v6

    if-eq v6, v15, :cond_25

    .line 65
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v6, 0x0

    .line 66
    iput-object v6, v0, Le/a/l5/a/i4;->a:Ljava/util/List;

    goto/16 :goto_12

    :cond_25
    const/4 v6, 0x0

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v7

    .line 68
    iget-object v9, v0, Le/a/l5/a/i4;->a:Ljava/util/List;

    if-nez v9, :cond_26

    .line 69
    new-instance v9, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v10, v7

    sget-object v11, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    invoke-static {v11, v4, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/avro/Schema;

    invoke-direct {v9, v10, v11}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 70
    iput-object v9, v0, Le/a/l5/a/i4;->a:Ljava/util/List;

    goto :goto_1d

    .line 71
    :cond_26
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 72
    :goto_1d
    instance-of v10, v9, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v10, :cond_27

    move-object v10, v9

    check-cast v10, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1e

    :cond_27
    move-object v10, v6

    :goto_1e
    const-wide/16 v11, 0x0

    :goto_1f
    cmp-long v13, v11, v7

    if-gez v13, :cond_2b

    move-wide/from16 v19, v7

    :goto_20
    cmp-long v7, v19, v11

    if-eqz v7, :cond_2a

    if-eqz v10, :cond_28

    .line 73
    invoke-virtual {v10}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 74
    :cond_28
    instance-of v7, v6, Lorg/apache/avro/util/Utf8;

    if-eqz v7, :cond_29

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_21

    :cond_29
    const/4 v6, 0x0

    :goto_21
    move-object/from16 v17, v6

    const-wide/16 v21, 0x1

    move-object/from16 v16, p1

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v19

    const/4 v6, 0x0

    goto :goto_20

    .line 75
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v7

    const/4 v6, 0x0

    goto :goto_1f

    :cond_2b
    :goto_22
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    move-object v11, v6

    goto/16 :goto_11

    :cond_2c
    :goto_23
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
    iget-object v0, p0, Le/a/l5/a/i4;->a:Ljava/util/List;

    const-string v1, "."

    const-string v2, ", but element count was "

    const-string v3, "Array-size written was "

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 5
    iget-object v0, p0, Le/a/l5/a/i4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 7
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 8
    iget-object v0, p0, Le/a/l5/a/i4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    add-long/2addr v10, v4

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 10
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_8

    .line 12
    :goto_1
    iget-object v0, p0, Le/a/l5/a/i4;->b:Ljava/util/List;

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 15
    :cond_2
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 16
    iget-object v0, p0, Le/a/l5/a/i4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 18
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 19
    iget-object v0, p0, Le/a/l5/a/i4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    add-long/2addr v10, v4

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 21
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_7

    .line 23
    :goto_3
    iget-object v0, p0, Le/a/l5/a/i4;->c:Ljava/util/List;

    if-nez v0, :cond_4

    .line 24
    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 26
    :cond_4
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 27
    iget-object v0, p0, Le/a/l5/a/i4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v6, v0

    .line 28
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 29
    invoke-virtual {p1, v6, v7}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 30
    iget-object v0, p0, Le/a/l5/a/i4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v8, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    add-long/2addr v8, v4

    .line 31
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 32
    invoke-virtual {p1, v10}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 33
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v8, v6

    if-nez p1, :cond_6

    :goto_5
    return-void

    .line 34
    :cond_6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v3, v6, v7, v2}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v8, v9, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v3, v8, v9, v2}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v3, v8, v9, v2}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

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
    iget-object p1, p0, Le/a/l5/a/i4;->c:Ljava/util/List;

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
    iget-object p1, p0, Le/a/l5/a/i4;->b:Ljava/util/List;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/i4;->a:Ljava/util/List;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/i4;->d:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/i4;->e:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/i4;->c:Ljava/util/List;

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

    iput-object p2, p0, Le/a/l5/a/i4;->b:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/i4;->a:Ljava/util/List;

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
    sget-object v0, Le/a/l5/a/i4;->g:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/i4;->f:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
