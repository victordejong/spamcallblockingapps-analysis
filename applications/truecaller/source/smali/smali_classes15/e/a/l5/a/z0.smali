.class public Le/a/l5/a/z0;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/z0$b;
    }
.end annotation


# static fields
.field public static final e:Lorg/apache/avro/Schema;

.field public static f:Lorg/apache/avro/specific/SpecificData;

.field public static final g:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/z0;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/z0;",
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
            "Le/a/l5/a/z3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/util/List;
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

    const-string v0, "{\"type\":\"record\",\"name\":\"AppInstalledPackagesV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"installedPackages\",\"type\":[\"null\",{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"PackageDetails\",\"fields\":[{\"name\":\"appName\",\"type\":\"string\"},{\"name\":\"versionId\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"versionCode\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"installedDate\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"updatedDate\",\"type\":[\"null\",\"string\"],\"default\":null}]}}],\"doc\":\"list of packageName values on user\'s device\",\"default\":null},{\"name\":\"uninstalledPackages\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"doc\":\"list of uninstalled packageName values on user\'s device\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/z0;->f:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/z0;->f:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/z0;->f:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/z0;->g:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/z0;->f:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/z0;->h:Lorg/apache/avro/io/DatumReader;

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

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-string v14, "uninstalledPackages"

    const-string v15, "installedPackages"

    const-wide/16 v16, 0x1

    if-nez v9, :cond_11

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v13, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v8}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v10, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v13, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v8}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v10, :cond_4

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v13, v0, Le/a/l5/a/z0;->c:Ljava/util/List;

    goto :goto_6

    .line 17
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 18
    iget-object v3, v0, Le/a/l5/a/z0;->c:Ljava/util/List;

    if-nez v3, :cond_5

    .line 19
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    invoke-static {v5, v15, v10}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 20
    iput-object v3, v0, Le/a/l5/a/z0;->c:Ljava/util/List;

    goto :goto_2

    .line 21
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 22
    :goto_2
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_3

    :cond_6
    move-object v4, v13

    :goto_3
    cmp-long v5, v11, v1

    if-gez v5, :cond_a

    :goto_4
    cmp-long v5, v1, v11

    if-eqz v5, :cond_9

    if-eqz v4, :cond_7

    .line 23
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/z3;

    goto :goto_5

    :cond_7
    move-object v5, v13

    :goto_5
    if-nez v5, :cond_8

    .line 24
    new-instance v5, Le/a/l5/a/z3;

    invoke-direct {v5}, Le/a/l5/a/z3;-><init>()V

    .line 25
    :cond_8
    invoke-virtual {v5, v8}, Le/a/l5/a/z3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 26
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long v1, v1, v16

    goto :goto_4

    .line 27
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_3

    .line 28
    :cond_a
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v10, :cond_b

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 30
    iput-object v13, v0, Le/a/l5/a/z0;->d:Ljava/util/List;

    goto/16 :goto_1b

    .line 31
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 32
    iget-object v3, v0, Le/a/l5/a/z0;->d:Ljava/util/List;

    if-nez v3, :cond_c

    .line 33
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    invoke-static {v5, v14, v10}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 34
    iput-object v3, v0, Le/a/l5/a/z0;->d:Ljava/util/List;

    goto :goto_7

    .line 35
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_7
    move-object v9, v3

    .line 36
    nop

    instance-of v3, v9, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_d

    move-object v3, v9

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    move-object v10, v3

    goto :goto_8

    :cond_d
    move-object v10, v13

    :goto_8
    cmp-long v3, v11, v1

    if-gez v3, :cond_28

    move-wide v4, v1

    :goto_9
    cmp-long v1, v4, v11

    if-eqz v1, :cond_10

    if-eqz v10, :cond_e

    .line 37
    invoke-virtual {v10}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_a

    :cond_e
    move-object v1, v13

    .line 38
    :goto_a
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_f

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_b

    :cond_f
    move-object v2, v13

    :goto_b
    move-object/from16 v1, p1

    move-object v3, v9

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    goto :goto_9

    .line 39
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    move-wide/from16 v18, v11

    move v11, v1

    move-wide/from16 v1, v18

    :goto_c
    const/4 v3, 0x4

    if-ge v11, v3, :cond_28

    .line 40
    aget-object v3, v9, v11

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    if-eqz v3, :cond_25

    if-eq v3, v10, :cond_21

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    .line 41
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v10, :cond_12

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 43
    iput-object v13, v0, Le/a/l5/a/z0;->d:Ljava/util/List;

    goto/16 :goto_1a

    .line 44
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v3

    .line 45
    iget-object v5, v0, Le/a/l5/a/z0;->d:Ljava/util/List;

    if-nez v5, :cond_13

    .line 46
    new-instance v5, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v6, v3

    sget-object v7, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    invoke-static {v7, v14, v10}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/avro/Schema;

    invoke-direct {v5, v6, v7}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 47
    iput-object v5, v0, Le/a/l5/a/z0;->d:Ljava/util/List;

    goto :goto_d

    .line 48
    :cond_13
    invoke-interface {v5}, Ljava/util/List;->clear()V

    :goto_d
    move-object v12, v5

    .line 49
    nop

    instance-of v5, v12, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v5, :cond_14

    move-object v5, v12

    check-cast v5, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_e

    :cond_14
    const/4 v5, 0x0

    :goto_e
    move-object v13, v5

    :goto_f
    cmp-long v5, v1, v3

    if-gez v5, :cond_24

    move-wide v4, v3

    :goto_10
    cmp-long v1, v4, v1

    if-eqz v1, :cond_17

    if-eqz v13, :cond_15

    .line 50
    invoke-virtual {v13}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_11

    :cond_15
    const/4 v1, 0x0

    .line 51
    :goto_11
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_16

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_12

    :cond_16
    const/4 v1, 0x0

    :goto_12
    move-object v2, v1

    move-object/from16 v1, p1

    move-object v3, v12

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    goto :goto_10

    .line 52
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    goto :goto_f

    .line 53
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v10, :cond_1a

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 56
    iput-object v1, v0, Le/a/l5/a/z0;->c:Ljava/util/List;

    const-wide/16 v2, 0x0

    move-object v13, v1

    move-wide v1, v2

    goto/16 :goto_1a

    .line 57
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 58
    iget-object v3, v0, Le/a/l5/a/z0;->c:Ljava/util/List;

    if-nez v3, :cond_1b

    .line 59
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    invoke-static {v5, v15, v10}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 60
    iput-object v3, v0, Le/a/l5/a/z0;->c:Ljava/util/List;

    goto :goto_13

    .line 61
    :cond_1b
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 62
    :goto_13
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_1c

    move-object v4, v3

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_14

    :cond_1c
    const/4 v4, 0x0

    :goto_14
    const-wide/16 v5, 0x0

    :goto_15
    cmp-long v7, v5, v1

    if-gez v7, :cond_20

    :goto_16
    cmp-long v7, v1, v5

    if-eqz v7, :cond_1f

    if-eqz v4, :cond_1d

    .line 63
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l5/a/z3;

    goto :goto_17

    :cond_1d
    const/4 v7, 0x0

    :goto_17
    if-nez v7, :cond_1e

    .line 64
    new-instance v7, Le/a/l5/a/z3;

    invoke-direct {v7}, Le/a/l5/a/z3;-><init>()V

    .line 65
    :cond_1e
    invoke-virtual {v7, v8}, Le/a/l5/a/z3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 66
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long v1, v1, v16

    goto :goto_16

    .line 67
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_15

    :cond_20
    move-wide v1, v5

    goto :goto_18

    .line 68
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v10, :cond_22

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v3, 0x0

    .line 70
    iput-object v3, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_19

    .line 71
    :cond_22
    iget-object v3, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v3, :cond_23

    .line 72
    new-instance v3, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v3}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v3, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 73
    :cond_23
    iget-object v3, v0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v3, v8}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_24
    :goto_18
    const/4 v3, 0x0

    goto :goto_19

    .line 74
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v10, :cond_26

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v3, 0x0

    .line 76
    iput-object v3, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    :goto_19
    move-object v13, v3

    goto :goto_1a

    :cond_26
    const/4 v3, 0x0

    .line 77
    iget-object v4, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    if-nez v4, :cond_27

    .line 78
    new-instance v4, Le/a/l5/a/l3;

    invoke-direct {v4}, Le/a/l5/a/l3;-><init>()V

    iput-object v4, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    .line 79
    :cond_27
    iget-object v4, v0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    invoke-virtual {v4, v8}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_19

    :goto_1a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    :cond_28
    :goto_1b
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
    iget-object v0, p0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/z0;->c:Ljava/util/List;

    const-string v3, "."

    const-string v4, ", but element count was "

    const-string v5, "Array-size written was "

    const-wide/16 v6, 0x1

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 14
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 15
    iget-object v0, p0, Le/a/l5/a/z0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 17
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/z0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/l5/a/z3;

    add-long/2addr v10, v6

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 20
    invoke-virtual {v12, p1}, Le/a/l5/a/z3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_7

    .line 22
    :goto_3
    iget-object v0, p0, Le/a/l5/a/z0;->d:Ljava/util/List;

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 24
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 25
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 26
    iget-object v0, p0, Le/a/l5/a/z0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 28
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 29
    iget-object v2, p0, Le/a/l5/a/z0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v8, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    add-long/2addr v8, v6

    .line 30
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 31
    invoke-virtual {p1, v10}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 32
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v8, v0

    if-nez p1, :cond_6

    :goto_5
    return-void

    .line 33
    :cond_6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v5, v0, v1, v4}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v8, v9, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_7
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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l5/a/z0;->d:Ljava/util/List;

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
    iget-object p1, p0, Le/a/l5/a/z0;->c:Ljava/util/List;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/z0;->f:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/z0;->d:Ljava/util/List;

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

    iput-object p2, p0, Le/a/l5/a/z0;->c:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/z0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/z0;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/z0;->h:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/z0;->g:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
