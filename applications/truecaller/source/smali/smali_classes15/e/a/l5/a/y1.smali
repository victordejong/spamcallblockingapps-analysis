.class public Le/a/l5/a/y1;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/y1$b;
    }
.end annotation


# static fields
.field public static final l:Lorg/apache/avro/Schema;

.field public static m:Lorg/apache/avro/specific/SpecificData;

.field public static final n:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/y1;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/y1;",
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

.field public e:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/e4;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/util/List;
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

.field public i:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppSearchV3\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"searchId\",\"type\":\"string\"},{\"name\":\"requestId\",\"type\":[\"null\",\"string\"]},{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"source\",\"type\":\"string\"},{\"name\":\"searchEntities\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SearchEntity\",\"fields\":[{\"name\":\"term\",\"type\":\"string\"},{\"name\":\"noServerSearchReason\",\"type\":[\"null\",\"string\"]},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]},{\"name\":\"tags\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"TagsServed\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}]},{\"name\":\"contactInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}]}]}}},{\"name\":\"correlationIds\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}]},{\"name\":\"serverSearchAttempted\",\"type\":\"boolean\"},{\"name\":\"serverSearchResponseSuccess\",\"type\":\"boolean\"},{\"name\":\"elapsedMs\",\"type\":[\"null\",\"long\"],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/y1;->m:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/y1;->m:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/y1;->m:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/y1;->n:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/y1;->m:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/y1;->o:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/y1$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/y1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/y1$b;-><init>(Le/a/l5/a/y1$a;)V

    return-object v0
.end method


# virtual methods
.method public customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V
    .locals 17
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

    const-string v10, "correlationIds"

    const-string v11, "searchEntities"

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v9, :cond_17

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v7, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v8}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v7, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v8}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v1, v0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v1, v7

    :goto_2
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 17
    iput-object v7, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    goto :goto_4

    .line 18
    :cond_5
    iget-object v1, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_6
    move-object v1, v7

    :goto_3
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    .line 19
    :goto_4
    iget-object v1, v0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_5

    :cond_7
    move-object v1, v7

    :goto_5
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    .line 20
    iget-object v1, v0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_6

    :cond_8
    move-object v1, v7

    :goto_6
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 22
    iget-object v3, v0, Le/a/l5/a/y1;->g:Ljava/util/List;

    if-nez v3, :cond_9

    .line 23
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    invoke-virtual {v5, v11}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 24
    iput-object v3, v0, Le/a/l5/a/y1;->g:Ljava/util/List;

    goto :goto_7

    .line 25
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 26
    :goto_7
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_8

    :cond_a
    move-object v4, v7

    :goto_8
    cmp-long v5, v14, v1

    if-gez v5, :cond_e

    :goto_9
    cmp-long v5, v1, v14

    if-eqz v5, :cond_d

    if-eqz v4, :cond_b

    .line 27
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/e4;

    goto :goto_a

    :cond_b
    move-object v5, v7

    :goto_a
    if-nez v5, :cond_c

    .line 28
    new-instance v5, Le/a/l5/a/e4;

    invoke-direct {v5}, Le/a/l5/a/e4;-><init>()V

    .line 29
    :cond_c
    invoke-virtual {v5, v8}, Le/a/l5/a/e4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 30
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v1, v12

    goto :goto_9

    .line 31
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_8

    .line 32
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v6, :cond_10

    .line 33
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 34
    iput-object v7, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    :cond_f
    move v11, v6

    move-object v14, v7

    goto/16 :goto_10

    .line 35
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 36
    iget-object v3, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    if-nez v3, :cond_11

    .line 37
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    invoke-static {v5, v10, v6}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 38
    iput-object v3, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    goto :goto_b

    .line 39
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_b
    move-object v9, v3

    .line 40
    nop

    instance-of v3, v9, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_12

    move-object v3, v9

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    move-object v10, v3

    goto :goto_c

    :cond_12
    move-object v10, v7

    :goto_c
    cmp-long v3, v14, v1

    if-gez v3, :cond_f

    move-wide v4, v1

    :goto_d
    cmp-long v1, v4, v14

    if-eqz v1, :cond_15

    if-eqz v10, :cond_13

    .line 41
    invoke-virtual {v10}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_13
    move-object v1, v7

    .line 42
    :goto_e
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_14

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_f

    :cond_14
    move-object v2, v7

    :goto_f
    move-object/from16 v1, p1

    move-object v3, v9

    move v11, v6

    move-object v14, v7

    move-wide v6, v12

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    move v6, v11

    move-object v7, v14

    const-wide/16 v14, 0x0

    goto :goto_d

    :cond_15
    move v11, v6

    move-object v14, v7

    .line 43
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    const-wide/16 v14, 0x0

    goto :goto_c

    .line 44
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Le/a/l5/a/y1;->i:Z

    .line 45
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Le/a/l5/a/y1;->j:Z

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_16

    .line 47
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 48
    iput-object v14, v0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    goto/16 :goto_26

    .line 49
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    goto/16 :goto_26

    :cond_17
    move v1, v6

    move-object v14, v7

    const/4 v2, 0x0

    move v14, v2

    :goto_11
    const/16 v1, 0xb

    if-ge v14, v1, :cond_2f

    .line 50
    aget-object v1, v9, v14

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v6, :cond_18

    .line 53
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 54
    iput-object v7, v0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    goto :goto_12

    .line 55
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    goto :goto_12

    .line 56
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Le/a/l5/a/y1;->j:Z

    goto :goto_12

    .line 57
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Le/a/l5/a/y1;->i:Z

    goto :goto_12

    .line 58
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v6, :cond_19

    .line 59
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 60
    iput-object v7, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    :goto_12
    move v2, v6

    const-wide/16 v5, 0x0

    goto/16 :goto_25

    .line 61
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 62
    iget-object v3, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    if-nez v3, :cond_1a

    .line 63
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    invoke-static {v5, v10, v6}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 64
    iput-object v3, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    goto :goto_13

    .line 65
    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_13
    move-object v15, v3

    .line 66
    nop

    instance-of v3, v15, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_1b

    move-object v3, v15

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_14

    :cond_1b
    const/4 v3, 0x0

    :goto_14
    move-object/from16 v16, v3

    :goto_15
    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_1f

    move-wide v5, v1

    :goto_16
    cmp-long v1, v5, v3

    if-eqz v1, :cond_1e

    if-eqz v16, :cond_1c

    .line 67
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_17

    :cond_1c
    const/4 v1, 0x0

    .line 68
    :goto_17
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1d

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_18

    :cond_1d
    const/4 v1, 0x0

    :goto_18
    move-object v2, v1

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v5

    move-wide v6, v12

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    goto :goto_16

    .line 69
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    const/4 v6, 0x1

    goto :goto_15

    :cond_1f
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_12

    .line 70
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 71
    iget-object v3, v0, Le/a/l5/a/y1;->g:Ljava/util/List;

    if-nez v3, :cond_20

    .line 72
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    invoke-virtual {v5, v11}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 73
    iput-object v3, v0, Le/a/l5/a/y1;->g:Ljava/util/List;

    goto :goto_19

    .line 74
    :cond_20
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 75
    :goto_19
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_21

    move-object v4, v3

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1a

    :cond_21
    const/4 v4, 0x0

    :goto_1a
    const-wide/16 v5, 0x0

    :goto_1b
    cmp-long v7, v5, v1

    if-gez v7, :cond_2c

    :goto_1c
    cmp-long v7, v1, v5

    if-eqz v7, :cond_24

    if-eqz v4, :cond_22

    .line 76
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l5/a/e4;

    goto :goto_1d

    :cond_22
    const/4 v7, 0x0

    :goto_1d
    if-nez v7, :cond_23

    .line 77
    new-instance v7, Le/a/l5/a/e4;

    invoke-direct {v7}, Le/a/l5/a/e4;-><init>()V

    .line 78
    :cond_23
    invoke-virtual {v7, v8}, Le/a/l5/a/e4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 79
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v1, v12

    goto :goto_1c

    .line 80
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_1b

    :pswitch_5
    const-wide/16 v5, 0x0

    .line 81
    iget-object v1, v0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_25

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_1e

    :cond_25
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    goto/16 :goto_22

    :pswitch_6
    const-wide/16 v5, 0x0

    .line 82
    iget-object v1, v0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_26

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_1f

    :cond_26
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    goto :goto_22

    :pswitch_7
    const-wide/16 v5, 0x0

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 85
    iput-object v1, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    goto :goto_23

    .line 86
    :cond_27
    iget-object v1, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_28

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_20

    :cond_28
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    goto :goto_22

    :pswitch_8
    const-wide/16 v5, 0x0

    .line 87
    iget-object v1, v0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_29

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_21

    :cond_29
    const/4 v1, 0x0

    :goto_21
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    goto :goto_22

    :pswitch_9
    const-wide/16 v5, 0x0

    .line 88
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    .line 89
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 90
    iput-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_23

    .line 91
    :cond_2a
    iget-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_2b

    .line 92
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 93
    :cond_2b
    iget-object v1, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v8}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_2c
    :goto_22
    const/4 v1, 0x0

    :goto_23
    const/4 v2, 0x1

    goto :goto_24

    :pswitch_a
    const-wide/16 v5, 0x0

    .line 94
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    .line 95
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 96
    iput-object v1, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    :goto_24
    move-object v7, v1

    goto :goto_25

    :cond_2d
    const/4 v1, 0x0

    .line 97
    iget-object v3, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    if-nez v3, :cond_2e

    .line 98
    new-instance v3, Le/a/l5/a/l3;

    invoke-direct {v3}, Le/a/l5/a/l3;-><init>()V

    iput-object v3, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    .line 99
    :cond_2e
    iget-object v3, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    invoke-virtual {v3, v8}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_24

    :goto_25
    add-int/lit8 v14, v14, 0x1

    move v6, v2

    goto/16 :goto_11

    :cond_2f
    :goto_26
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
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

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
    iget-object v0, p0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 17
    :goto_2
    iget-object v0, p0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Le/a/l5/a/y1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 21
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 22
    iget-object v0, p0, Le/a/l5/a/y1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l5/a/e4;

    add-long/2addr v7, v10

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 24
    invoke-virtual {v9, p1}, Le/a/l5/a/e4;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v7, v3

    const-string v9, "."

    const-string v12, ", but element count was "

    const-string v13, "Array-size written was "

    if-nez v0, :cond_8

    .line 26
    iget-object v0, p0, Le/a/l5/a/y1;->h:Ljava/util/List;

    if-nez v0, :cond_4

    .line 27
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 28
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 29
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 30
    iget-object v0, p0, Le/a/l5/a/y1;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    .line 31
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 32
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 33
    iget-object v0, p0, Le/a/l5/a/y1;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    add-long/2addr v5, v10

    .line 34
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 35
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 36
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    .line 37
    :goto_5
    iget-boolean v0, p0, Le/a/l5/a/y1;->i:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 38
    iget-boolean v0, p0, Le/a/l5/a/y1;->j:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 39
    iget-object v0, p0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 40
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 41
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 42
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 43
    iget-object v0, p0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    :goto_6
    return-void

    .line 44
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v13, v3, v4, v12}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v6, v9}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v13, v3, v4, v12}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object p1, p0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    return-object p1

    .line 3
    :pswitch_1
    iget-boolean p1, p0, Le/a/l5/a/y1;->j:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    iget-boolean p1, p0, Le/a/l5/a/y1;->i:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/y1;->h:Ljava/util/List;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/y1;->g:Ljava/util/List;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/y1;->m:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Le/a/l5/a/y1;->k:Ljava/lang/Long;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/y1;->j:Z

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/y1;->i:Z

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/y1;->h:Ljava/util/List;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/y1;->g:Ljava/util/List;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/y1;->o:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/y1;->n:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
