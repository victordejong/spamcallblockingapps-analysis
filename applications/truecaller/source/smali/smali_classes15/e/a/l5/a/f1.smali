.class public Le/a/l5/a/f1;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/f1$b;
    }
.end annotation


# static fields
.field public static final f:Lorg/apache/avro/Schema;

.field public static g:Lorg/apache/avro/specific/SpecificData;

.field public static final h:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/f1;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/f1;",
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

.field public c:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/w3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/util/List;
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

    const-string v0, "{\"type\":\"record\",\"name\":\"AppNotificationSettings\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"globalSetting\",\"type\":\"boolean\",\"doc\":\"Global user notification setting\"},{\"name\":\"groups\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"NotificationGroup\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Group id\"},{\"name\":\"groupSetting\",\"type\":\"boolean\",\"doc\":\"Group level notification setting\"},{\"name\":\"channels\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"NotificationChannel\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Unique id of the channel\"},{\"name\":\"channelSetting\",\"type\":\"boolean\",\"doc\":\"User setting for the channel\"}]}},\"doc\":\"Channels which belong to this group\"}]}},\"doc\":\"Notification groups\"},{\"name\":\"otherChannels\",\"type\":{\"type\":\"array\",\"items\":\"NotificationChannel\"},\"doc\":\"Notification channels without a group\"}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/f1;->f:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/f1;->g:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/f1;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/f1;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/f1;->h:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/f1;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/f1;->i:Lorg/apache/avro/io/DatumReader;

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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "otherChannels"

    const-string v6, "groups"

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    if-nez v2, :cond_f

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v4, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Le/a/l5/a/l3;

    invoke-direct {v2}, Le/a/l5/a/l3;-><init>()V

    iput-object v2, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v2, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    invoke-virtual {v2, v1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v4, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v2, :cond_3

    .line 12
    new-instance v2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v2}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v2, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v2, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v2, v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v2

    iput-boolean v2, v0, Le/a/l5/a/f1;->c:Z

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v2

    .line 16
    iget-object v11, v0, Le/a/l5/a/f1;->d:Ljava/util/List;

    if-nez v11, :cond_4

    .line 17
    new-instance v11, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v12, v2

    sget-object v13, Le/a/l5/a/f1;->f:Lorg/apache/avro/Schema;

    invoke-virtual {v13, v6}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v6

    invoke-direct {v11, v12, v6}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 18
    iput-object v11, v0, Le/a/l5/a/f1;->d:Ljava/util/List;

    goto :goto_2

    .line 19
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 20
    :goto_2
    instance-of v6, v11, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v6, :cond_5

    move-object v6, v11

    check-cast v6, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_3

    :cond_5
    move-object v6, v4

    :goto_3
    cmp-long v12, v9, v2

    if-gez v12, :cond_9

    :goto_4
    cmp-long v12, v2, v9

    if-eqz v12, :cond_8

    if-eqz v6, :cond_6

    .line 21
    invoke-virtual {v6}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/l5/a/w3;

    goto :goto_5

    :cond_6
    move-object v12, v4

    :goto_5
    if-nez v12, :cond_7

    .line 22
    new-instance v12, Le/a/l5/a/w3;

    invoke-direct {v12}, Le/a/l5/a/w3;-><init>()V

    .line 23
    :cond_7
    invoke-virtual {v12, v1}, Le/a/l5/a/w3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 24
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v2, v7

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v2

    goto :goto_3

    .line 26
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v2

    .line 27
    iget-object v6, v0, Le/a/l5/a/f1;->e:Ljava/util/List;

    if-nez v6, :cond_a

    .line 28
    new-instance v6, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v11, v2

    sget-object v12, Le/a/l5/a/f1;->f:Lorg/apache/avro/Schema;

    invoke-virtual {v12, v5}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v6, v11, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 29
    iput-object v6, v0, Le/a/l5/a/f1;->e:Ljava/util/List;

    goto :goto_6

    .line 30
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 31
    :goto_6
    instance-of v5, v6, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v5, :cond_b

    move-object v5, v6

    check-cast v5, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_7

    :cond_b
    move-object v5, v4

    :goto_7
    cmp-long v11, v9, v2

    if-gez v11, :cond_24

    :goto_8
    cmp-long v11, v2, v9

    if-eqz v11, :cond_e

    if-eqz v5, :cond_c

    .line 32
    invoke-virtual {v5}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/l5/a/v3;

    goto :goto_9

    :cond_c
    move-object v11, v4

    :goto_9
    if-nez v11, :cond_d

    .line 33
    new-instance v11, Le/a/l5/a/v3;

    invoke-direct {v11}, Le/a/l5/a/v3;-><init>()V

    .line 34
    :cond_d
    invoke-virtual {v11, v1}, Le/a/l5/a/v3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 35
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v2, v7

    goto :goto_8

    .line 36
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v2

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_a
    const/4 v12, 0x5

    if-ge v11, v12, :cond_24

    .line 37
    aget-object v12, v2, v11

    invoke-virtual {v12}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v12

    if-eqz v12, :cond_21

    if-eq v12, v3, :cond_1d

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1c

    const/4 v13, 0x3

    if-eq v12, v13, :cond_16

    const/4 v13, 0x4

    if-ne v12, v13, :cond_15

    .line 38
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v12

    .line 39
    iget-object v14, v0, Le/a/l5/a/f1;->e:Ljava/util/List;

    if-nez v14, :cond_10

    .line 40
    new-instance v14, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v15, v12

    sget-object v4, Le/a/l5/a/f1;->f:Lorg/apache/avro/Schema;

    invoke-virtual {v4, v5}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v4

    invoke-direct {v14, v15, v4}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 41
    iput-object v14, v0, Le/a/l5/a/f1;->e:Ljava/util/List;

    goto :goto_b

    .line 42
    :cond_10
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 43
    :goto_b
    instance-of v4, v14, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_11

    move-object v4, v14

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    :goto_c
    cmp-long v15, v9, v12

    if-gez v15, :cond_20

    :goto_d
    cmp-long v15, v12, v9

    if-eqz v15, :cond_14

    if-eqz v4, :cond_12

    .line 44
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/l5/a/v3;

    goto :goto_e

    :cond_12
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_13

    .line 45
    new-instance v15, Le/a/l5/a/v3;

    invoke-direct {v15}, Le/a/l5/a/v3;-><init>()V

    .line 46
    :cond_13
    invoke-virtual {v15, v1}, Le/a/l5/a/v3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 47
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v12, v7

    goto :goto_d

    .line 48
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v12

    goto :goto_c

    .line 49
    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v12

    .line 51
    iget-object v4, v0, Le/a/l5/a/f1;->d:Ljava/util/List;

    if-nez v4, :cond_17

    .line 52
    new-instance v4, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v14, v12

    sget-object v15, Le/a/l5/a/f1;->f:Lorg/apache/avro/Schema;

    invoke-virtual {v15, v6}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 53
    iput-object v4, v0, Le/a/l5/a/f1;->d:Ljava/util/List;

    goto :goto_f

    .line 54
    :cond_17
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 55
    :goto_f
    instance-of v14, v4, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v14, :cond_18

    move-object v14, v4

    check-cast v14, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_10

    :cond_18
    const/4 v14, 0x0

    :goto_10
    cmp-long v15, v9, v12

    if-gez v15, :cond_20

    :goto_11
    cmp-long v15, v12, v9

    if-eqz v15, :cond_1b

    if-eqz v14, :cond_19

    .line 56
    invoke-virtual {v14}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/l5/a/w3;

    goto :goto_12

    :cond_19
    const/4 v15, 0x0

    :goto_12
    if-nez v15, :cond_1a

    .line 57
    new-instance v15, Le/a/l5/a/w3;

    invoke-direct {v15}, Le/a/l5/a/w3;-><init>()V

    .line 58
    :cond_1a
    invoke-virtual {v15, v1}, Le/a/l5/a/w3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 59
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v12, v7

    goto :goto_11

    .line 60
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v12

    goto :goto_10

    .line 61
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, v0, Le/a/l5/a/f1;->c:Z

    goto :goto_13

    .line 62
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v3, :cond_1e

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v4, 0x0

    .line 64
    iput-object v4, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_14

    .line 65
    :cond_1e
    iget-object v4, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v4, :cond_1f

    .line 66
    new-instance v4, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v4, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 67
    :cond_1f
    iget-object v4, v0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v4, v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_20
    :goto_13
    const/4 v4, 0x0

    goto :goto_14

    .line 68
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v3, :cond_22

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v4, 0x0

    .line 70
    iput-object v4, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    .line 71
    iget-object v12, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    if-nez v12, :cond_23

    .line 72
    new-instance v12, Le/a/l5/a/l3;

    invoke-direct {v12}, Le/a/l5/a/l3;-><init>()V

    iput-object v12, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    .line 73
    :cond_23
    iget-object v12, v0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    invoke-virtual {v12, v1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    :cond_24
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-boolean v0, p0, Le/a/l5/a/f1;->c:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/f1;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 14
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 15
    iget-object v2, p0, Le/a/l5/a/f1;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l5/a/w3;

    add-long/2addr v5, v8

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 17
    invoke-virtual {v7, p1}, Le/a/l5/a/w3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v2, v5, v0

    const-string v7, "."

    const-string v10, ", but element count was "

    const-string v11, "Array-size written was "

    if-nez v2, :cond_5

    .line 19
    iget-object v0, p0, Le/a/l5/a/f1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 21
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 22
    iget-object v2, p0, Le/a/l5/a/f1;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/v3;

    add-long/2addr v3, v8

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 24
    iget-object v6, v5, Le/a/l5/a/v3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 25
    iget-boolean v5, v5, Le/a/l5/a/v3;->b:Z

    invoke-virtual {p1, v5}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto :goto_3

    .line 26
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v3, v0

    if-nez p1, :cond_4

    return-void

    .line 27
    :cond_4
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v11, v0, v1, v10}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v4, v7}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
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
    iget-object p1, p0, Le/a/l5/a/f1;->e:Ljava/util/List;

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
    iget-object p1, p0, Le/a/l5/a/f1;->d:Ljava/util/List;

    return-object p1

    .line 4
    :cond_2
    iget-boolean p1, p0, Le/a/l5/a/f1;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/f1;->f:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/f1;->g:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/f1;->e:Ljava/util/List;

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

    iput-object p2, p0, Le/a/l5/a/f1;->d:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/f1;->c:Z

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/f1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/f1;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/f1;->i:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/f1;->h:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
