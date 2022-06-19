.class public Le/a/l5/a/b2;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/b2$b;
    }
.end annotation


# static fields
.field public static final l:Lorg/apache/avro/Schema;

.field public static m:Lorg/apache/avro/specific/SpecificData;

.field public static final n:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/b2;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/b2;",
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

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/b4;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/util/Map;
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

.field public j:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppSmsCategorizerCompare\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"participants\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Participant\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}}},{\"name\":\"categorizerCategory\",\"type\":\"string\"},{\"name\":\"parserCategory\",\"type\":\"string\"},{\"name\":\"categorizerVersion\",\"type\":\"int\"},{\"name\":\"parserVersion\",\"type\":\"int\"},{\"name\":\"reclassifySms\",\"type\":\"boolean\"},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"default\":null},{\"name\":\"updatesCategory\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"updatesModelVersion\",\"type\":[\"null\",\"string\"],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/b2;->l:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/b2;->m:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/b2;->m:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/b2;->m:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/b2;->n:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/b2;->m:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/b2;->o:Lorg/apache/avro/io/DatumReader;

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
    .locals 18
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

    const-string v11, "participants"

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v10, :cond_14

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v7, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v8, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v7, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v8, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 15
    iget-object v3, v0, Le/a/l5/a/b2;->c:Ljava/util/List;

    if-nez v3, :cond_4

    .line 16
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/b2;->l:Lorg/apache/avro/Schema;

    invoke-virtual {v5, v11}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 17
    iput-object v3, v0, Le/a/l5/a/b2;->c:Ljava/util/List;

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 19
    :goto_2
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_3

    :cond_5
    move-object v4, v8

    :goto_3
    cmp-long v5, v14, v1

    if-gez v5, :cond_9

    :goto_4
    cmp-long v5, v1, v14

    if-eqz v5, :cond_8

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/b4;

    goto :goto_5

    :cond_6
    move-object v5, v8

    :goto_5
    if-nez v5, :cond_7

    .line 21
    new-instance v5, Le/a/l5/a/b4;

    invoke-direct {v5}, Le/a/l5/a/b4;-><init>()V

    .line 22
    :cond_7
    invoke-virtual {v5, v9}, Le/a/l5/a/b4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 23
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v1, v12

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_3

    .line 25
    :cond_9
    iget-object v1, v0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_a

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_6

    :cond_a
    move-object v1, v8

    :goto_6
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    .line 26
    iget-object v1, v0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_b

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_b
    move-object v1, v8

    :goto_7
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    iput v1, v0, Le/a/l5/a/b2;->f:I

    .line 28
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    iput v1, v0, Le/a/l5/a/b2;->g:I

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Le/a/l5/a/b2;->h:Z

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v7, :cond_d

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 32
    iput-object v8, v0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    :cond_c
    move v14, v7

    move-object v11, v8

    goto :goto_b

    .line 33
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 34
    iget-object v3, v0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    if-nez v3, :cond_e

    .line 35
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    iput-object v3, v0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    goto :goto_8

    .line 37
    :cond_e
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_8
    move-object v10, v3

    :goto_9
    cmp-long v3, v14, v1

    if-gez v3, :cond_c

    move-wide v5, v1

    :goto_a
    cmp-long v1, v5, v14

    if-eqz v1, :cond_f

    .line 38
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v10

    move v14, v7

    move-object v11, v8

    move-wide v7, v12

    .line 39
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    move-object v8, v11

    move v7, v14

    const-wide/16 v14, 0x0

    goto :goto_a

    :cond_f
    move v14, v7

    move-object v11, v8

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    const-wide/16 v14, 0x0

    goto :goto_9

    .line 41
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_10

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 43
    iput-object v11, v0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    goto :goto_d

    .line 44
    :cond_10
    iget-object v1, v0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_11

    move-object v8, v1

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_c

    :cond_11
    move-object v8, v11

    :goto_c
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    .line 45
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_12

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 47
    iput-object v11, v0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    goto/16 :goto_1f

    .line 48
    :cond_12
    iget-object v1, v0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_13

    move-object v8, v1

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_e

    :cond_13
    move-object v8, v11

    :goto_e
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    goto/16 :goto_1f

    :cond_14
    move v14, v7

    move-object v15, v8

    const/4 v1, 0x0

    move v7, v1

    :goto_f
    const/16 v1, 0xb

    if-ge v7, v1, :cond_29

    .line 49
    aget-object v1, v10, v7

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 50
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_15

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 53
    iput-object v15, v0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    goto :goto_12

    .line 54
    :cond_15
    iget-object v1, v0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_16

    move-object v8, v1

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_10

    :cond_16
    move-object v8, v15

    :goto_10
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    goto :goto_12

    .line 55
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_17

    .line 56
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 57
    iput-object v15, v0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    goto :goto_12

    .line 58
    :cond_17
    iget-object v1, v0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_18

    move-object v8, v1

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_11

    :cond_18
    move-object v8, v15

    :goto_11
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    goto :goto_12

    .line 59
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_19

    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 61
    iput-object v15, v0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    :goto_12
    move/from16 v17, v7

    goto :goto_16

    .line 62
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 63
    iget-object v3, v0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    if-nez v3, :cond_1a

    .line 64
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    iput-object v3, v0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    goto :goto_13

    .line 66
    :cond_1a
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_13
    move-object/from16 v16, v3

    :goto_14
    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_1c

    move-wide v5, v1

    :goto_15
    cmp-long v1, v5, v3

    if-eqz v1, :cond_1b

    .line 67
    invoke-virtual {v9, v15}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v17, v7

    move-wide v7, v12

    .line 68
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    move/from16 v7, v17

    const-wide/16 v3, 0x0

    goto :goto_15

    :cond_1b
    move/from16 v17, v7

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_14

    :cond_1c
    move/from16 v17, v7

    move-wide v4, v3

    goto/16 :goto_1e

    :pswitch_3
    move/from16 v17, v7

    .line 70
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Le/a/l5/a/b2;->h:Z

    goto :goto_16

    :pswitch_4
    move/from16 v17, v7

    .line 71
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    iput v1, v0, Le/a/l5/a/b2;->g:I

    goto :goto_16

    :pswitch_5
    move/from16 v17, v7

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    iput v1, v0, Le/a/l5/a/b2;->f:I

    :goto_16
    const-wide/16 v4, 0x0

    goto/16 :goto_1e

    :pswitch_6
    move/from16 v17, v7

    .line 73
    iget-object v1, v0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1d

    move-object v8, v1

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_17

    :cond_1d
    move-object v8, v15

    :goto_17
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    goto :goto_16

    :pswitch_7
    move/from16 v17, v7

    .line 74
    iget-object v1, v0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1e

    move-object v8, v1

    check-cast v8, Lorg/apache/avro/util/Utf8;

    goto :goto_18

    :cond_1e
    move-object v8, v15

    :goto_18
    invoke-virtual {v9, v8}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    goto :goto_16

    :pswitch_8
    move/from16 v17, v7

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 76
    iget-object v3, v0, Le/a/l5/a/b2;->c:Ljava/util/List;

    if-nez v3, :cond_1f

    .line 77
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/b2;->l:Lorg/apache/avro/Schema;

    invoke-virtual {v5, v11}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 78
    iput-object v3, v0, Le/a/l5/a/b2;->c:Ljava/util/List;

    goto :goto_19

    .line 79
    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 80
    :goto_19
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_20

    move-object v8, v3

    check-cast v8, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1a

    :cond_20
    move-object v8, v15

    :goto_1a
    const-wide/16 v4, 0x0

    :goto_1b
    cmp-long v6, v4, v1

    if-gez v6, :cond_28

    :goto_1c
    cmp-long v6, v1, v4

    if-eqz v6, :cond_23

    if-eqz v8, :cond_21

    .line 81
    invoke-virtual {v8}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l5/a/b4;

    goto :goto_1d

    :cond_21
    move-object v6, v15

    :goto_1d
    if-nez v6, :cond_22

    .line 82
    new-instance v6, Le/a/l5/a/b4;

    invoke-direct {v6}, Le/a/l5/a/b4;-><init>()V

    .line 83
    :cond_22
    invoke-virtual {v6, v9}, Le/a/l5/a/b4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 84
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v1, v12

    goto :goto_1c

    .line 85
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_1b

    :pswitch_9
    move/from16 v17, v7

    const-wide/16 v4, 0x0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_24

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 88
    iput-object v15, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1e

    .line 89
    :cond_24
    iget-object v1, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_25

    .line 90
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 91
    :cond_25
    iget-object v1, v0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1e

    :pswitch_a
    move/from16 v17, v7

    const-wide/16 v4, 0x0

    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_26

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 94
    iput-object v15, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    goto :goto_1e

    .line 95
    :cond_26
    iget-object v1, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_27

    .line 96
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    .line 97
    :cond_27
    iget-object v1, v0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_28
    :goto_1e
    add-int/lit8 v7, v17, 0x1

    goto/16 :goto_f

    :cond_29
    :goto_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/b2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    .line 12
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 13
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 14
    iget-object v0, p0, Le/a/l5/a/b2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l5/a/b4;

    add-long/2addr v7, v10

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 16
    iget-object v10, v9, Le/a/l5/a/b4;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v10}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v10, v9, Le/a/l5/a/b4;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v10}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v9, v9, Le/a/l5/a/b4;->c:Le/a/l5/a/m3;

    invoke-virtual {v9, p1}, Le/a/l5/a/m3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v7, v3

    const-string v9, "."

    const-string v12, ", but element count was "

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 22
    iget v0, p0, Le/a/l5/a/b2;->f:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 23
    iget v0, p0, Le/a/l5/a/b2;->g:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 24
    iget-boolean v0, p0, Le/a/l5/a/b2;->h:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 25
    iget-object v0, p0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 26
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 28
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 29
    iget-object v0, p0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v3, v0

    .line 30
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 31
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 32
    iget-object v0, p0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    add-long/2addr v5, v10

    .line 33
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 34
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {p1, v8}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 35
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 37
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    .line 38
    :goto_4
    iget-object v0, p0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 39
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 40
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 41
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 42
    iget-object v0, p0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 43
    :goto_5
    iget-object v0, p0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 44
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 45
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 46
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 47
    iget-object v0, p0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    .line 48
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v0, "Map-size written was "

    invoke-static {v0, v3, v4, v12}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v6, v9}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v0, "Array-size written was "

    invoke-static {v0, v3, v4, v12}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v7, v8, v9}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :pswitch_0
    iget-object p1, p0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    return-object p1

    .line 5
    :pswitch_3
    iget-boolean p1, p0, Le/a/l5/a/b2;->h:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    iget p1, p0, Le/a/l5/a/b2;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    iget p1, p0, Le/a/l5/a/b2;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/b2;->c:Ljava/util/List;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/b2;->l:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/b2;->m:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid index: "

    invoke-static {v0, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/b2;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/b2;->j:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/b2;->i:Ljava/util/Map;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/b2;->h:Z

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/a/l5/a/b2;->g:I

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/a/l5/a/b2;->f:I

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/b2;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/b2;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/b2;->c:Ljava/util/List;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/b2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/b2;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/l5/a/b2;->o:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/b2;->n:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
