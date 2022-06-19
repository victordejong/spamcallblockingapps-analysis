.class public Le/a/l5/a/b1;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/b1$b;
    }
.end annotation


# static fields
.field public static final g:Lorg/apache/avro/Schema;

.field public static h:Lorg/apache/avro/specific/SpecificData;

.field public static final i:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/b1;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/b1;",
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

.field public f:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppMessageInitiatedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"SMS & MMS messages initiated by client\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"participants\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Participant\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}}},{\"name\":\"context\",\"type\":\"string\"},{\"name\":\"messageType\",\"type\":\"string\"},{\"name\":\"localId\",\"type\":\"string\"}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/b1;->g:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/b1;->h:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/b1;->h:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/b1;->h:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/b1;->i:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/b1;->h:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/b1;->j:Lorg/apache/avro/io/DatumReader;

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
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-string v3, "participants"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_d

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v7, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/a/l5/a/l3;

    invoke-direct {v0}, Le/a/l5/a/l3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v7, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v0, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v8

    .line 15
    iget-object v0, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    if-nez v0, :cond_4

    .line 16
    new-instance v0, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v6, v8

    sget-object v10, Le/a/l5/a/b1;->g:Lorg/apache/avro/Schema;

    invoke-virtual {v10, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 17
    iput-object v0, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    :goto_2
    instance-of v3, v0, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_3

    :cond_5
    move-object v3, v7

    :goto_3
    cmp-long v6, v4, v8

    if-gez v6, :cond_9

    :goto_4
    cmp-long v6, v8, v4

    if-eqz v6, :cond_8

    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {v3}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l5/a/b4;

    goto :goto_5

    :cond_6
    move-object v6, v7

    :goto_5
    if-nez v6, :cond_7

    .line 21
    new-instance v6, Le/a/l5/a/b4;

    invoke-direct {v6}, Le/a/l5/a/b4;-><init>()V

    .line 22
    :cond_7
    invoke-virtual {v6, p1}, Le/a/l5/a/b4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 23
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v8, v1

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v8

    goto :goto_3

    .line 25
    :cond_9
    iget-object v0, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    instance-of v1, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_6

    :cond_a
    move-object v0, v7

    :goto_6
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    .line 26
    iget-object v0, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    instance-of v1, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_b
    move-object v0, v7

    :goto_7
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    .line 27
    iget-object v0, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

    instance-of v1, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v1, :cond_c

    move-object v7, v0

    check-cast v7, Lorg/apache/avro/util/Utf8;

    :cond_c
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

    goto/16 :goto_11

    :cond_d
    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x6

    if-ge v8, v9, :cond_21

    .line 28
    aget-object v9, v0, v8

    invoke-virtual {v9}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v9

    if-eqz v9, :cond_1d

    if-eq v9, v6, :cond_1a

    const/4 v10, 0x2

    if-eq v9, v10, :cond_14

    const/4 v10, 0x3

    if-eq v9, v10, :cond_12

    const/4 v10, 0x4

    if-eq v9, v10, :cond_10

    const/4 v10, 0x5

    if-ne v9, v10, :cond_f

    .line 29
    iget-object v9, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

    instance-of v10, v9, Lorg/apache/avro/util/Utf8;

    if-eqz v10, :cond_e

    check-cast v9, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_e
    move-object v9, v7

    :goto_9
    invoke-virtual {p1, v9}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v9

    iput-object v9, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

    goto/16 :goto_10

    .line 30
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_10
    iget-object v9, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    instance-of v10, v9, Lorg/apache/avro/util/Utf8;

    if-eqz v10, :cond_11

    check-cast v9, Lorg/apache/avro/util/Utf8;

    goto :goto_a

    :cond_11
    move-object v9, v7

    :goto_a
    invoke-virtual {p1, v9}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v9

    iput-object v9, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    goto/16 :goto_10

    .line 32
    :cond_12
    iget-object v9, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    instance-of v10, v9, Lorg/apache/avro/util/Utf8;

    if-eqz v10, :cond_13

    check-cast v9, Lorg/apache/avro/util/Utf8;

    goto :goto_b

    :cond_13
    move-object v9, v7

    :goto_b
    invoke-virtual {p1, v9}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v9

    iput-object v9, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    goto/16 :goto_10

    .line 33
    :cond_14
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v9

    .line 34
    iget-object v11, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    if-nez v11, :cond_15

    .line 35
    new-instance v11, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v12, v9

    sget-object v13, Le/a/l5/a/b1;->g:Lorg/apache/avro/Schema;

    invoke-virtual {v13, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 36
    iput-object v11, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    goto :goto_c

    .line 37
    :cond_15
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 38
    :goto_c
    instance-of v12, v11, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v12, :cond_16

    move-object v12, v11

    check-cast v12, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_d

    :cond_16
    move-object v12, v7

    :goto_d
    cmp-long v13, v4, v9

    if-gez v13, :cond_20

    :goto_e
    cmp-long v13, v9, v4

    if-eqz v13, :cond_19

    if-eqz v12, :cond_17

    .line 39
    invoke-virtual {v12}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/l5/a/b4;

    goto :goto_f

    :cond_17
    move-object v13, v7

    :goto_f
    if-nez v13, :cond_18

    .line 40
    new-instance v13, Le/a/l5/a/b4;

    invoke-direct {v13}, Le/a/l5/a/b4;-><init>()V

    .line 41
    :cond_18
    invoke-virtual {v13, p1}, Le/a/l5/a/b4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 42
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v9, v1

    goto :goto_e

    .line 43
    :cond_19
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v9

    goto :goto_d

    .line 44
    :cond_1a
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_1b

    .line 45
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 46
    iput-object v7, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_10

    .line 47
    :cond_1b
    iget-object v9, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v9, :cond_1c

    .line 48
    new-instance v9, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v9, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 49
    :cond_1c
    iget-object v9, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v9, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_10

    .line 50
    :cond_1d
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_1e

    .line 51
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 52
    iput-object v7, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    goto :goto_10

    .line 53
    :cond_1e
    iget-object v9, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    if-nez v9, :cond_1f

    .line 54
    new-instance v9, Le/a/l5/a/l3;

    invoke-direct {v9}, Le/a/l5/a/l3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    .line 55
    :cond_1f
    iget-object v9, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    invoke-virtual {v9, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_20
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    :cond_21
    :goto_11
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
    iget-object v0, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 12
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 13
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    const-wide/16 v2, 0x0

    .line 14
    iget-object v4, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/b4;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 16
    iget-object v6, v5, Le/a/l5/a/b4;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v6, v5, Le/a/l5/a/b4;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v5, v5, Le/a/l5/a/b4;->c:Le/a/l5/a/m3;

    invoke-virtual {v5, p1}, Le/a/l5/a/m3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 20
    iget-object v0, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    return-void

    .line 23
    :cond_3
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
    iget-object p1, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

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
    iget-object p1, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    return-object p1

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 7
    :cond_5
    iget-object p1, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/b1;->g:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/b1;->h:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/b1;->f:Ljava/lang/CharSequence;

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

    iput-object p2, p0, Le/a/l5/a/b1;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/b1;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/b1;->c:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/b1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 7
    :cond_5
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/b1;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/b1;->j:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/b1;->i:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
