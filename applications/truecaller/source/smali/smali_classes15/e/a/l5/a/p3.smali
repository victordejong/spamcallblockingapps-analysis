.class public Le/a/l5/a/p3;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/p3$b;
    }
.end annotation


# static fields
.field public static final g:Lorg/apache/avro/Schema;

.field public static h:Lorg/apache/avro/specific/SpecificData;

.field public static final i:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/p3;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/p3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Le/a/l5/a/l3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lcom/truecaller/tracking/events/ClientHeaderV2;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"GenericAnalyticsEvent\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"eventType\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"default\":null},{\"name\":\"measures\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"double\"}],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/p3;->g:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/p3;->h:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/p3;->h:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/p3;->h:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/p3;->i:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/p3;->h:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/p3;->j:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/p3$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/p3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/p3$b;-><init>(Le/a/l5/a/p3$a;)V

    return-object v0
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

    move-object/from16 v9, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-nez v10, :cond_e

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v7, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v7, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v1, v0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v1, v7

    :goto_2
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_5

    .line 16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 17
    iput-object v7, v0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    goto :goto_4

    .line 18
    :cond_5
    iget-object v1, v0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_6
    move-object v1, v7

    :goto_3
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    .line 19
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 21
    iput-object v7, v0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    :cond_7
    move-object v13, v7

    goto :goto_8

    .line 22
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 23
    iget-object v3, v0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    if-nez v3, :cond_9

    .line 24
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    iput-object v3, v0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    goto :goto_5

    .line 26
    :cond_9
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_5
    move-object v10, v3

    :goto_6
    cmp-long v3, v13, v1

    if-gez v3, :cond_7

    move-wide v5, v1

    :goto_7
    cmp-long v1, v5, v13

    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v10

    move-object v13, v7

    move-wide v7, v11

    .line 28
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    move-object v7, v13

    const-wide/16 v13, 0x0

    goto :goto_7

    :cond_a
    move-object v13, v7

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    goto :goto_6

    .line 30
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_b

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 32
    iput-object v13, v0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    goto/16 :goto_15

    .line 33
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 34
    iget-object v3, v0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    if-nez v3, :cond_c

    .line 35
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    iput-object v3, v0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    goto :goto_9

    .line 37
    :cond_c
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v6, v4, v1

    if-gez v6, :cond_24

    :goto_a
    cmp-long v6, v1, v4

    if-eqz v6, :cond_d

    .line 38
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    .line 39
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 40
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v1, v11

    const-wide/16 v4, 0x0

    goto :goto_a

    .line 41
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_9

    :cond_e
    move-object v13, v7

    const/4 v1, 0x0

    move v14, v1

    :goto_b
    const/4 v1, 0x6

    if-ge v14, v1, :cond_24

    .line 42
    aget-object v1, v10, v14

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    if-eqz v1, :cond_20

    if-eq v1, v15, :cond_1d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    const/4 v2, 0x4

    if-eq v1, v2, :cond_14

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 43
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_f

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 45
    iput-object v13, v0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    goto :goto_e

    .line 46
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 47
    iget-object v3, v0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    if-nez v3, :cond_10

    .line 48
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    iput-object v3, v0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    goto :goto_c

    .line 50
    :cond_10
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_c
    const-wide/16 v4, 0x0

    cmp-long v6, v4, v1

    if-gez v6, :cond_12

    :goto_d
    cmp-long v6, v1, v4

    if-eqz v6, :cond_11

    .line 51
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 53
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v1, v11

    const-wide/16 v4, 0x0

    goto :goto_d

    .line 54
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_c

    :cond_12
    move-wide/from16 v17, v4

    goto/16 :goto_14

    .line 55
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_15

    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 58
    iput-object v13, v0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    :goto_e
    const-wide/16 v17, 0x0

    goto/16 :goto_14

    .line 59
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 60
    iget-object v3, v0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    if-nez v3, :cond_16

    .line 61
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    iput-object v3, v0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    goto :goto_f

    .line 63
    :cond_16
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_f
    move-object/from16 v16, v3

    const-wide/16 v17, 0x0

    :goto_10
    cmp-long v3, v17, v1

    if-gez v3, :cond_23

    move-wide v5, v1

    :goto_11
    cmp-long v1, v5, v17

    if-eqz v1, :cond_17

    .line 64
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v16

    move-wide v7, v11

    .line 65
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    goto :goto_11

    .line 66
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_10

    :cond_18
    const-wide/16 v17, 0x0

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_19

    .line 68
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 69
    iput-object v13, v0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    goto :goto_14

    .line 70
    :cond_19
    iget-object v1, v0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1a

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_12

    :cond_1a
    move-object v7, v13

    :goto_12
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    goto :goto_14

    :cond_1b
    const-wide/16 v17, 0x0

    .line 71
    iget-object v1, v0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1c

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_13

    :cond_1c
    move-object v7, v13

    :goto_13
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    goto :goto_14

    :cond_1d
    const-wide/16 v17, 0x0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_1e

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 74
    iput-object v13, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_14

    .line 75
    :cond_1e
    iget-object v1, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_1f

    .line 76
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 77
    :cond_1f
    iget-object v1, v0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_14

    :cond_20
    const-wide/16 v17, 0x0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_21

    .line 79
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 80
    iput-object v13, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    goto :goto_14

    .line 81
    :cond_21
    iget-object v1, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_22

    .line 82
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    .line 83
    :cond_22
    iget-object v1, v0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_23
    :goto_14
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b

    :cond_24
    :goto_15
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 16
    iget-object v0, p0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 17
    :goto_2
    iget-object v0, p0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    const-string v3, "."

    const-string v4, ", but element count was "

    const-string v5, "Map-size written was "

    const-wide/16 v6, 0x1

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 20
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v8, v0

    .line 22
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 23
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 24
    iget-object v0, p0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-long/2addr v10, v6

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 26
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {p1, v13}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 27
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 29
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_8

    .line 30
    :goto_4
    iget-object v0, p0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 31
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 32
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 33
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 34
    iget-object v0, p0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 36
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 37
    iget-object v2, p0, Le/a/l5/a/p3;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v8, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    add-long/2addr v8, v6

    .line 38
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 39
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 40
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 41
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    goto :goto_5

    .line 42
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long p1, v8, v0

    if-nez p1, :cond_7

    :goto_6
    return-void

    .line 43
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v5, v0, v1, v4}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v8, v9, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v5, v8, v9, v4}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l5/a/p3;->f:Ljava/util/Map;

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
    iget-object p1, p0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 7
    :cond_5
    iget-object p1, p0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/p3;->g:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/p3;->h:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/p3;->f:Ljava/util/Map;

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
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/p3;->e:Ljava/util/Map;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/p3;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/p3;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/p3;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 7
    :cond_5
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/p3;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/p3;->j:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/p3;->i:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
