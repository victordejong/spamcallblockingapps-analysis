.class public Le/a/l5/a/k;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/k$b;
    }
.end annotation


# static fields
.field public static final A:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lorg/apache/avro/Schema;

.field public static y:Lorg/apache/avro/specific/SpecificData;

.field public static final z:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/k;",
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
            "Ljava/lang/CharSequence;",
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

.field public g:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:Ljava/util/Map;
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

.field public s:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public t:Le/a/l5/a/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/o3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public v:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public w:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppAdRequestInternal\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"adRequestType\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"doc\":\"The type of ads requested from the particular placement\"},{\"name\":\"adResponseType\",\"type\":\"string\",\"doc\":\"The type of the ad being returned from the server - banner, native etc\"},{\"name\":\"connectionInitiated\",\"type\":\"string\",\"doc\":\"The connection type when the ad request was made; eg:- LTE, 4G\"},{\"name\":\"connectionFinished\",\"type\":\"string\",\"doc\":\"The connection type when the response was received form the server; eg:- LTE, 4G\"},{\"name\":\"deviceManufacturer\",\"type\":\"string\"},{\"name\":\"deviceModel\",\"type\":\"string\"},{\"name\":\"partnerName\",\"type\":\"string\",\"doc\":\"The partner network that is providingt the ad\"},{\"name\":\"latency\",\"type\":\"long\",\"doc\":\"Latency from request to response\"},{\"name\":\"publisherName\",\"type\":\"string\",\"doc\":\"The name of the platform where ads are rendered; for internal use cases\\n      * publisher would be Truecaller\"},{\"name\":\"ecpm\",\"type\":\"double\",\"doc\":\"The effective CPM (cost per 1000 impressions) for the ad\"},{\"name\":\"requestId\",\"type\":\"string\",\"doc\":\"Unique id generated for the ad request\"},{\"name\":\"status\",\"type\":\"string\",\"doc\":\"Status of the ad request\"},{\"name\":\"placement\",\"type\":\"string\",\"doc\":\"The placement for which the ad was requested\"},{\"name\":\"errorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"The error code in case of a failure\",\"default\":null},{\"name\":\"errorMessage\",\"type\":[\"null\",\"string\"],\"doc\":\"The error message in case of a failure\",\"default\":null},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Map to handle new values / temp values\",\"default\":null},{\"name\":\"rawEcpm\",\"type\":[\"null\",\"double\"],\"doc\":\"The raw CPM (cost per 1000 impressions) for the ad\",\"default\":null},{\"name\":\"adContext\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"AdContext\",\"fields\":[{\"name\":\"context\",\"type\":\"string\",\"doc\":\"The context for the ad\"},{\"name\":\"id\",\"type\":\"string\",\"doc\":\"The identifier for the ad context\"}]}],\"doc\":\"The call id and context for the ad\",\"default\":null},{\"name\":\"gamMediationInfo\",\"type\":[\"null\",{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"GamMediationInfo\",\"fields\":[{\"name\":\"adapterClassName\",\"type\":[\"null\",\"string\"],\"doc\":\"Mediation adapter class name invoked my ad manager sdk\",\"default\":null},{\"name\":\"latency\",\"type\":[\"null\",\"long\"],\"doc\":\"Time taken by mediation adapter for an ad response in milliseconds\",\"default\":null},{\"name\":\"gamErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code recorded by ad manger\",\"default\":null},{\"name\":\"partnerErrorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code returned by the partner\",\"default\":null}]}}],\"doc\":\"List of mediation partners being invoked for serving an ad by ad manager sdk\",\"default\":null},{\"name\":\"yieldGroupId\",\"type\":[\"null\",\"string\"],\"doc\":\"The yield group id of the ad is being served\",\"default\":null},{\"name\":\"yieldPartnerId\",\"type\":[\"null\",\"string\"],\"doc\":\"The yield partner id of the ad is being served\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/k;->y:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/k;->y:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/k;->y:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/k;->z:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/k;->y:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/k;->A:Lorg/apache/avro/io/DatumReader;

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

    move-object/from16 v9, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-string v15, "gamMediationInfo"

    const-string v7, "adRequestType"

    const-wide/16 v16, 0x1

    if-nez v10, :cond_2a

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v14, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v14, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_4

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v14, v0, Le/a/l5/a/k;->c:Ljava/util/List;

    goto :goto_7

    .line 17
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 18
    iget-object v3, v0, Le/a/l5/a/k;->c:Ljava/util/List;

    if-nez v3, :cond_5

    .line 19
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    invoke-static {v5, v7, v11}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 20
    iput-object v3, v0, Le/a/l5/a/k;->c:Ljava/util/List;

    goto :goto_2

    .line 21
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_2
    move-object v8, v3

    .line 22
    nop

    instance-of v3, v8, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_6

    move-object v3, v8

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    move-object v10, v3

    goto :goto_3

    :cond_6
    move-object v10, v14

    :goto_3
    cmp-long v3, v12, v1

    if-gez v3, :cond_a

    move-wide v4, v1

    :goto_4
    cmp-long v1, v4, v12

    if-eqz v1, :cond_9

    if-eqz v10, :cond_7

    .line 23
    invoke-virtual {v10}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_7
    move-object v1, v14

    .line 24
    :goto_5
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_6

    :cond_8
    move-object v2, v14

    :goto_6
    move-object/from16 v1, p1

    move-object v3, v8

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    goto :goto_4

    .line 25
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_3

    .line 26
    :cond_a
    :goto_7
    iget-object v1, v0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_b

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_b
    move-object v1, v14

    :goto_8
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    .line 27
    iget-object v1, v0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_c

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_c
    move-object v1, v14

    :goto_9
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    .line 28
    iget-object v1, v0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_d

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_a

    :cond_d
    move-object v1, v14

    :goto_a
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    .line 29
    iget-object v1, v0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_b

    :cond_e
    move-object v1, v14

    :goto_b
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    .line 30
    iget-object v1, v0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_f

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_c

    :cond_f
    move-object v1, v14

    :goto_c
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    .line 31
    iget-object v1, v0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_10

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_d

    :cond_10
    move-object v1, v14

    :goto_d
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Le/a/l5/a/k;->j:J

    .line 33
    iget-object v1, v0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_11

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_e

    :cond_11
    move-object v1, v14

    :goto_e
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Le/a/l5/a/k;->l:D

    .line 35
    iget-object v1, v0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_12

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_f

    :cond_12
    move-object v1, v14

    :goto_f
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    .line 36
    iget-object v1, v0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_13

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_10

    :cond_13
    move-object v1, v14

    :goto_10
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    .line 37
    iget-object v1, v0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_14

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_11

    :cond_14
    move-object v1, v14

    :goto_11
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_15

    .line 39
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 40
    iput-object v14, v0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    goto :goto_12

    .line 41
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    .line 42
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_16

    .line 43
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 44
    iput-object v14, v0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    goto :goto_14

    .line 45
    :cond_16
    iget-object v1, v0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_17

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_13

    :cond_17
    move-object v1, v14

    :goto_13
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    .line 46
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_18

    .line 47
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 48
    iput-object v14, v0, Le/a/l5/a/k;->r:Ljava/util/Map;

    goto :goto_18

    .line 49
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 50
    iget-object v3, v0, Le/a/l5/a/k;->r:Ljava/util/Map;

    if-nez v3, :cond_19

    .line 51
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    iput-object v3, v0, Le/a/l5/a/k;->r:Ljava/util/Map;

    goto :goto_15

    .line 53
    :cond_19
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_15
    move-object v10, v3

    :goto_16
    cmp-long v3, v12, v1

    if-gez v3, :cond_1b

    move-wide v5, v1

    :goto_17
    cmp-long v1, v5, v12

    if-eqz v1, :cond_1a

    .line 54
    invoke-virtual {v9, v14}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v10

    move-wide/from16 v7, v16

    .line 55
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    goto :goto_17

    .line 56
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_16

    .line 57
    :cond_1b
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_1c

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 59
    iput-object v14, v0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    goto :goto_19

    .line 60
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    .line 61
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_1d

    .line 62
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 63
    iput-object v14, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    goto :goto_1a

    .line 64
    :cond_1d
    iget-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    if-nez v1, :cond_1e

    .line 65
    new-instance v1, Le/a/l5/a/a;

    invoke-direct {v1}, Le/a/l5/a/a;-><init>()V

    iput-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    .line 66
    :cond_1e
    iget-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    invoke-virtual {v1, v9}, Le/a/l5/a/a;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 67
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_1f

    .line 68
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 69
    iput-object v14, v0, Le/a/l5/a/k;->u:Ljava/util/List;

    goto :goto_1f

    .line 70
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 71
    iget-object v3, v0, Le/a/l5/a/k;->u:Ljava/util/List;

    if-nez v3, :cond_20

    .line 72
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    invoke-static {v5, v15, v11}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 73
    iput-object v3, v0, Le/a/l5/a/k;->u:Ljava/util/List;

    goto :goto_1b

    .line 74
    :cond_20
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 75
    :goto_1b
    instance-of v4, v3, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v4, :cond_21

    move-object v4, v3

    check-cast v4, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_1c

    :cond_21
    move-object v4, v14

    :goto_1c
    cmp-long v5, v12, v1

    if-gez v5, :cond_25

    :goto_1d
    cmp-long v5, v1, v12

    if-eqz v5, :cond_24

    if-eqz v4, :cond_22

    .line 76
    invoke-virtual {v4}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l5/a/o3;

    goto :goto_1e

    :cond_22
    move-object v5, v14

    :goto_1e
    if-nez v5, :cond_23

    .line 77
    new-instance v5, Le/a/l5/a/o3;

    invoke-direct {v5}, Le/a/l5/a/o3;-><init>()V

    .line 78
    :cond_23
    invoke-virtual {v5, v9}, Le/a/l5/a/o3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 79
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long v1, v1, v16

    goto :goto_1d

    .line 80
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_1c

    .line 81
    :cond_25
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_26

    .line 82
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 83
    iput-object v14, v0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    goto :goto_21

    .line 84
    :cond_26
    iget-object v1, v0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_27

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_20

    :cond_27
    move-object v1, v14

    :goto_20
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    .line 85
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_28

    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 87
    iput-object v14, v0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    goto/16 :goto_3f

    .line 88
    :cond_28
    iget-object v1, v0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_29

    move-object v14, v1

    check-cast v14, Lorg/apache/avro/util/Utf8;

    :cond_29
    invoke-virtual {v9, v14}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    goto/16 :goto_3f

    :cond_2a
    const/4 v1, 0x0

    move-wide/from16 v18, v12

    move v12, v1

    move-wide/from16 v1, v18

    :goto_22
    const/16 v3, 0x17

    if-ge v12, v3, :cond_54

    .line 89
    aget-object v3, v10, v12

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 90
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_2b

    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 93
    iput-object v14, v0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    goto/16 :goto_27

    .line 94
    :cond_2b
    iget-object v1, v0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_2c

    move-object v14, v1

    check-cast v14, Lorg/apache/avro/util/Utf8;

    :cond_2c
    invoke-virtual {v9, v14}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    goto/16 :goto_27

    .line 95
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_2d

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 97
    iput-object v14, v0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    goto/16 :goto_27

    .line 98
    :cond_2d
    iget-object v1, v0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_2e

    move-object v14, v1

    check-cast v14, Lorg/apache/avro/util/Utf8;

    :cond_2e
    invoke-virtual {v9, v14}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    goto/16 :goto_27

    .line 99
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v11, :cond_2f

    .line 100
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 101
    iput-object v14, v0, Le/a/l5/a/k;->u:Ljava/util/List;

    goto/16 :goto_27

    .line 102
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v3

    .line 103
    iget-object v5, v0, Le/a/l5/a/k;->u:Ljava/util/List;

    if-nez v5, :cond_30

    .line 104
    new-instance v5, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v6, v3

    sget-object v8, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    invoke-static {v8, v15, v11}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/avro/Schema;

    invoke-direct {v5, v6, v8}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 105
    iput-object v5, v0, Le/a/l5/a/k;->u:Ljava/util/List;

    goto :goto_23

    .line 106
    :cond_30
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 107
    :goto_23
    instance-of v6, v5, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v6, :cond_31

    move-object v6, v5

    check-cast v6, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_24

    :cond_31
    const/4 v6, 0x0

    :goto_24
    cmp-long v8, v1, v3

    if-gez v8, :cond_38

    :goto_25
    cmp-long v8, v3, v1

    if-eqz v8, :cond_34

    if-eqz v6, :cond_32

    .line 108
    invoke-virtual {v6}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l5/a/o3;

    goto :goto_26

    :cond_32
    const/4 v8, 0x0

    :goto_26
    if-nez v8, :cond_33

    .line 109
    new-instance v8, Le/a/l5/a/o3;

    invoke-direct {v8}, Le/a/l5/a/o3;-><init>()V

    .line 110
    :cond_33
    invoke-virtual {v8, v9}, Le/a/l5/a/o3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 111
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long v3, v3, v16

    goto :goto_25

    .line 112
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v3

    goto :goto_24

    .line 113
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_35

    .line 114
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 115
    iput-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    goto :goto_27

    .line 116
    :cond_35
    iget-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    if-nez v1, :cond_36

    .line 117
    new-instance v1, Le/a/l5/a/a;

    invoke-direct {v1}, Le/a/l5/a/a;-><init>()V

    iput-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    .line 118
    :cond_36
    iget-object v1, v0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    invoke-virtual {v1, v9}, Le/a/l5/a/a;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_27

    .line 119
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_37

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 121
    iput-object v1, v0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    goto :goto_27

    .line 122
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    goto :goto_27

    .line 123
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v11, :cond_39

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 125
    iput-object v14, v0, Le/a/l5/a/k;->r:Ljava/util/Map;

    :cond_38
    :goto_27
    move-object v8, v7

    goto/16 :goto_3c

    .line 126
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v3

    .line 127
    iget-object v5, v0, Le/a/l5/a/k;->r:Ljava/util/Map;

    if-nez v5, :cond_3a

    .line 128
    new-instance v5, Ljava/util/HashMap;

    long-to-int v6, v3

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 129
    iput-object v5, v0, Le/a/l5/a/k;->r:Ljava/util/Map;

    goto :goto_28

    .line 130
    :cond_3a
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    :goto_28
    move-object v13, v5

    :goto_29
    cmp-long v5, v1, v3

    if-gez v5, :cond_38

    move-wide v5, v3

    :goto_2a
    cmp-long v1, v5, v1

    if-eqz v1, :cond_3b

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v9, v2}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v3, v13

    move-object v14, v7

    move-wide/from16 v7, v16

    .line 132
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    const-wide/16 v1, 0x0

    move-object v7, v14

    goto :goto_2a

    :cond_3b
    move-object v14, v7

    .line 133
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    goto :goto_29

    :pswitch_6
    move-object v8, v7

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_3c

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 136
    iput-object v14, v0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    goto/16 :goto_3e

    .line 137
    :cond_3c
    iget-object v1, v0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_3d

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2b

    :cond_3d
    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_7
    move-object v8, v7

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_3e

    .line 139
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 140
    iput-object v1, v0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    goto/16 :goto_3d

    .line 141
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    goto/16 :goto_3c

    :pswitch_8
    move-object v8, v7

    .line 142
    iget-object v1, v0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_3f

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2c

    :cond_3f
    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_9
    move-object v8, v7

    .line 143
    iget-object v1, v0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_40

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2d

    :cond_40
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_a
    move-object v8, v7

    .line 144
    iget-object v1, v0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_41

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2e

    :cond_41
    const/4 v1, 0x0

    :goto_2e
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_b
    move-object v8, v7

    .line 145
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Le/a/l5/a/k;->l:D

    goto/16 :goto_3c

    :pswitch_c
    move-object v8, v7

    .line 146
    iget-object v1, v0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_42

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2f

    :cond_42
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_d
    move-object v8, v7

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Le/a/l5/a/k;->j:J

    goto/16 :goto_3c

    :pswitch_e
    move-object v8, v7

    .line 148
    iget-object v1, v0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_43

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_30

    :cond_43
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_f
    move-object v8, v7

    .line 149
    iget-object v1, v0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_44

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_31

    :cond_44
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_10
    move-object v8, v7

    .line 150
    iget-object v1, v0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_45

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_32

    :cond_45
    const/4 v1, 0x0

    :goto_32
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_11
    move-object v8, v7

    .line 151
    iget-object v1, v0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_46

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_33

    :cond_46
    const/4 v1, 0x0

    :goto_33
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_12
    move-object v8, v7

    .line 152
    iget-object v1, v0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_47

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_34

    :cond_47
    const/4 v1, 0x0

    :goto_34
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_13
    move-object v8, v7

    .line 153
    iget-object v1, v0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_48

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_35

    :cond_48
    const/4 v1, 0x0

    :goto_35
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    goto/16 :goto_3c

    :pswitch_14
    move-object v8, v7

    .line 154
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_49

    .line 155
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 156
    iput-object v1, v0, Le/a/l5/a/k;->c:Ljava/util/List;

    goto/16 :goto_3d

    .line 157
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 158
    iget-object v3, v0, Le/a/l5/a/k;->c:Ljava/util/List;

    if-nez v3, :cond_4a

    .line 159
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    invoke-static {v5, v8, v11}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 160
    iput-object v3, v0, Le/a/l5/a/k;->c:Ljava/util/List;

    goto :goto_36

    .line 161
    :cond_4a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_36
    move-object v13, v3

    .line 162
    nop

    instance-of v3, v13, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_4b

    move-object v3, v13

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_37

    :cond_4b
    const/4 v3, 0x0

    :goto_37
    move-object v14, v3

    :goto_38
    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_51

    move-wide v5, v1

    :goto_39
    cmp-long v1, v5, v3

    if-eqz v1, :cond_4e

    if-eqz v14, :cond_4c

    .line 163
    invoke-virtual {v14}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_3a

    :cond_4c
    const/4 v1, 0x0

    .line 164
    :goto_3a
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_4d

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_3b

    :cond_4d
    const/4 v1, 0x0

    :goto_3b
    move-object v2, v1

    move-object/from16 v1, p1

    move-object v3, v13

    move-wide v4, v5

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    goto :goto_39

    .line 165
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_38

    :pswitch_15
    move-object v8, v7

    .line 166
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_4f

    .line 167
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 168
    iput-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_3d

    .line 169
    :cond_4f
    iget-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_50

    .line 170
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 171
    :cond_50
    iget-object v1, v0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_51
    :goto_3c
    const/4 v1, 0x0

    goto :goto_3d

    :pswitch_16
    move-object v8, v7

    .line 172
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v11, :cond_52

    .line 173
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 174
    iput-object v1, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    :goto_3d
    move-object v14, v1

    goto :goto_3e

    :cond_52
    const/4 v1, 0x0

    .line 175
    iget-object v2, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    if-nez v2, :cond_53

    .line 176
    new-instance v2, Le/a/l5/a/l3;

    invoke-direct {v2}, Le/a/l5/a/l3;-><init>()V

    iput-object v2, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    .line 177
    :cond_53
    iget-object v2, v0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    invoke-virtual {v2, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_3d

    :goto_3e
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v1, 0x0

    move-object v7, v8

    goto/16 :goto_22

    :cond_54
    :goto_3f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    iget-object v0, p0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/k;->c:Ljava/util/List;

    const-string v3, "Array-size written was "

    const-string v4, "."

    const-string v5, ", but element count was "

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
    iget-object v0, p0, Le/a/l5/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 17
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/k;->c:Ljava/util/List;

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

    add-long/2addr v10, v6

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 20
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_10

    .line 22
    :goto_3
    iget-object v0, p0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 28
    iget-wide v8, p0, Le/a/l5/a/k;->j:J

    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 29
    iget-object v0, p0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 30
    iget-wide v8, p0, Le/a/l5/a/k;->l:D

    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    .line 31
    iget-object v0, p0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 35
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 36
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 37
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 38
    iget-object v0, p0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 39
    :goto_4
    iget-object v0, p0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 40
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 41
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 42
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 43
    iget-object v0, p0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 44
    :goto_5
    iget-object v0, p0, Le/a/l5/a/k;->r:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 45
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 46
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_7

    .line 47
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 48
    iget-object v0, p0, Le/a/l5/a/k;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v8, v0

    .line 49
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 50
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 51
    iget-object v0, p0, Le/a/l5/a/k;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-long/2addr v10, v6

    .line 52
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 53
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {p1, v13}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 54
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 56
    :cond_7
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_f

    .line 57
    :goto_7
    iget-object v0, p0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    if-nez v0, :cond_8

    .line 58
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 59
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_8

    .line 60
    :cond_8
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 61
    iget-object v0, p0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->writeDouble(D)V

    .line 62
    :goto_8
    iget-object v0, p0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    if-nez v0, :cond_9

    .line 63
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 64
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_9

    .line 65
    :cond_9
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 66
    iget-object v0, p0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    .line 67
    iget-object v8, v0, Le/a/l5/a/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v8}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, v0, Le/a/l5/a/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 69
    :goto_9
    iget-object v0, p0, Le/a/l5/a/k;->u:Ljava/util/List;

    if-nez v0, :cond_a

    .line 70
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_b

    .line 72
    :cond_a
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 73
    iget-object v0, p0, Le/a/l5/a/k;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    .line 74
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 75
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 76
    iget-object v0, p0, Le/a/l5/a/k;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/l5/a/o3;

    add-long/2addr v10, v6

    .line 77
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 78
    invoke-virtual {v12, p1}, Le/a/l5/a/o3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_a

    .line 79
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_e

    .line 80
    :goto_b
    iget-object v0, p0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    .line 81
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 82
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_c

    .line 83
    :cond_c
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 84
    iget-object v0, p0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 85
    :goto_c
    iget-object v0, p0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    if-nez v0, :cond_d

    .line 86
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 87
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_d

    .line 88
    :cond_d
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 89
    iget-object v0, p0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_d
    return-void

    .line 90
    :cond_e
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v3, v8, v9, v5}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v4}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_f
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v0, "Map-size written was "

    invoke-static {v0, v8, v9, v5}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v4}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_10
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v3, v8, v9, v5}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v4}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

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
    iget-object p1, p0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/k;->u:Ljava/util/List;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/k;->r:Ljava/util/Map;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    return-object p1

    .line 13
    :pswitch_b
    iget-wide v0, p0, Le/a/l5/a/k;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_c
    iget-object p1, p0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    return-object p1

    .line 15
    :pswitch_d
    iget-wide v0, p0, Le/a/l5/a/k;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_e
    iget-object p1, p0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    return-object p1

    .line 17
    :pswitch_f
    iget-object p1, p0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    return-object p1

    .line 18
    :pswitch_10
    iget-object p1, p0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    return-object p1

    .line 19
    :pswitch_11
    iget-object p1, p0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 20
    :pswitch_12
    iget-object p1, p0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 21
    :pswitch_13
    iget-object p1, p0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 22
    :pswitch_14
    iget-object p1, p0, Le/a/l5/a/k;->c:Ljava/util/List;

    return-object p1

    .line 23
    :pswitch_15
    iget-object p1, p0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 24
    :pswitch_16
    iget-object p1, p0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    sget-object v0, Le/a/l5/a/k;->x:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/k;->y:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/k;->w:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->v:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/k;->u:Ljava/util/List;

    goto/16 :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Le/a/l5/a/a;

    iput-object p2, p0, Le/a/l5/a/k;->t:Le/a/l5/a/a;

    goto/16 :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Le/a/l5/a/k;->s:Ljava/lang/Double;

    goto/16 :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/k;->r:Ljava/util/Map;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->q:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/k;->p:Ljava/lang/Integer;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->o:Ljava/lang/CharSequence;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->n:Ljava/lang/CharSequence;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Le/a/l5/a/k;->l:D

    goto :goto_0

    .line 14
    :pswitch_c
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 15
    :pswitch_d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Le/a/l5/a/k;->j:J

    goto :goto_0

    .line 16
    :pswitch_e
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 17
    :pswitch_f
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 18
    :pswitch_10
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->g:Ljava/lang/CharSequence;

    goto :goto_0

    .line 19
    :pswitch_11
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 20
    :pswitch_12
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 21
    :pswitch_13
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/k;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 22
    :pswitch_14
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/k;->c:Ljava/util/List;

    goto :goto_0

    .line 23
    :pswitch_15
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/k;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 24
    :pswitch_16
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/k;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    sget-object v0, Le/a/l5/a/k;->A:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/k;->z:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
