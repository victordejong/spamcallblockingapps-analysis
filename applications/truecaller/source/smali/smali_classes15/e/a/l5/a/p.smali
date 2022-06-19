.class public Le/a/l5/a/p;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/p$b;
    }
.end annotation


# static fields
.field public static final q:Lorg/apache/avro/Schema;

.field public static r:Lorg/apache/avro/specific/SpecificData;

.field public static final s:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/p;",
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

.field public c:Le/a/l5/a/l4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Le/a/l5/a/j3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Le/a/l5/a/c4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Ljava/util/Map;
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

.field public p:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppBusinessVideoCallerIdImpression\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"videoProperties\",\"type\":{\"type\":\"record\",\"name\":\"VideoProperties\",\"doc\":\"Track video properties\",\"fields\":[{\"name\":\"URL\",\"type\":\"string\",\"doc\":\"Video url\"},{\"name\":\"videoSize\",\"type\":[\"null\",\"long\"],\"doc\":\"Video size in bytes\",\"default\":null},{\"name\":\"referenceId\",\"type\":[\"null\",\"string\"],\"doc\":\"Optional (if we want to have any id as reference point for the video in future)\",\"default\":null},{\"name\":\"otherProperties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Placeholder for future (to hold other properties of video)\",\"default\":null}]},\"doc\":\"Properties of video\"},{\"name\":\"businessDetails\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"BusinessDetails\",\"doc\":\"Track business details\",\"fields\":[{\"name\":\"businessCountryCode\",\"type\":[\"null\",\"string\"],\"doc\":\"Country code of business\",\"default\":null},{\"name\":\"businessNumber\",\"type\":[\"null\",\"string\"],\"doc\":\"Business phone number\",\"default\":null},{\"name\":\"partnerAccountIid\",\"type\":\"string\",\"doc\":\"partner account id of the partner\"},{\"name\":\"displayName\",\"type\":[\"null\",\"string\"],\"doc\":\"name displayed for the context\",\"default\":null},{\"name\":\"badge\",\"type\":[\"null\",\"string\"],\"doc\":\"badge displayed\",\"default\":null},{\"name\":\"callReason\",\"type\":[\"null\",\"string\"],\"doc\":\"call reason text shown\",\"default\":null},{\"name\":\"spamScoreShown\",\"type\":[\"null\",\"int\"],\"doc\":\"spam score (if displayed)\",\"default\":null}]}],\"doc\":\"Details of business (country code, phone number and partner account id\",\"default\":null},{\"name\":\"downloadStartTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"Timestamp of video download start\",\"default\":null},{\"name\":\"downloadEndTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"Timestamp of video download finish\",\"default\":null},{\"name\":\"duration\",\"type\":[\"null\",\"int\"],\"doc\":\"Video playback duration\",\"default\":null},{\"name\":\"failureTimestamp\",\"type\":[\"null\",\"long\"],\"doc\":\"Timestamp retry failed\",\"default\":null},{\"name\":\"retryDetails\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"RetryDetails\",\"doc\":\"Track retry details\",\"fields\":[{\"name\":\"retryCount\",\"type\":\"int\",\"doc\":\"Count of the number of retries\"},{\"name\":\"retrySequence\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"RetryEntry\",\"doc\":\"Track each retry entry\",\"fields\":[{\"name\":\"retryStartTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry started\"},{\"name\":\"retryFinishTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of retry finished\"},{\"name\":\"retryFailureTimestamp\",\"type\":\"long\",\"doc\":\"Timestamp of  retry failed\"},{\"name\":\"retryDuration\",\"type\":\"int\",\"doc\":\"Duration of retry\"}]}},\"doc\":\"Sequence of retries\"}]}],\"doc\":\"Retry information for video\",\"default\":null},{\"name\":\"status\",\"type\":[\"null\",\"string\"],\"doc\":\"Status of the video caller id (success / failure /unknown)\",\"default\":null},{\"name\":\"errorCode\",\"type\":[\"null\",\"int\"],\"doc\":\"Error code for failed attempt\",\"default\":null},{\"name\":\"errorMessage\",\"type\":[\"null\",\"string\"],\"doc\":\"Error message for failed attempt\",\"default\":null},{\"name\":\"latency\",\"type\":[\"null\",\"int\"],\"doc\":\"Video latency\",\"default\":null},{\"name\":\"resultFromCache\",\"type\":[\"null\",\"boolean\"],\"doc\":\"To track if a video was obtained from cache or not\",\"default\":null},{\"name\":\"properties\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Reserved space for future\",\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"Context of video call id\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/p;->q:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/p;->r:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/p;->r:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/p;->r:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/p;->s:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/p;->r:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/p;->t:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/p$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/p$b;-><init>(Le/a/l5/a/p$a;)V

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

    if-nez v10, :cond_1a

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v7, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v7, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Le/a/l5/a/l4;

    invoke-direct {v1}, Le/a/l5/a/l4;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    .line 16
    :cond_4
    iget-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    invoke-virtual {v1, v9}, Le/a/l5/a/l4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_5

    .line 18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 19
    iput-object v7, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    if-nez v1, :cond_6

    .line 21
    new-instance v1, Le/a/l5/a/j3;

    invoke-direct {v1}, Le/a/l5/a/j3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    .line 22
    :cond_6
    iget-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    invoke-virtual {v1, v9}, Le/a/l5/a/j3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 23
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_7

    .line 24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 25
    iput-object v7, v0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    .line 27
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_8

    .line 28
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 29
    iput-object v7, v0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    goto :goto_4

    .line 30
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    .line 31
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_9

    .line 32
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 33
    iput-object v7, v0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    goto :goto_5

    .line 34
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    .line 35
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_a

    .line 36
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 37
    iput-object v7, v0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    goto :goto_6

    .line 38
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    .line 39
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_b

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 41
    iput-object v7, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    goto :goto_7

    .line 42
    :cond_b
    iget-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    if-nez v1, :cond_c

    .line 43
    new-instance v1, Le/a/l5/a/c4;

    invoke-direct {v1}, Le/a/l5/a/c4;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    .line 44
    :cond_c
    iget-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    invoke-virtual {v1, v9}, Le/a/l5/a/c4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 45
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_d

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 47
    iput-object v7, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    goto :goto_9

    .line 48
    :cond_d
    iget-object v1, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_e
    move-object v1, v7

    :goto_8
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    .line 49
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_f

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 51
    iput-object v7, v0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    goto :goto_a

    .line 52
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    .line 53
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_10

    .line 54
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 55
    iput-object v7, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    goto :goto_c

    .line 56
    :cond_10
    iget-object v1, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_11

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_b

    :cond_11
    move-object v1, v7

    :goto_b
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    .line 57
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_12

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 59
    iput-object v7, v0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    goto :goto_d

    .line 60
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    .line 61
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_13

    .line 62
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 63
    iput-object v7, v0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    goto :goto_e

    .line 64
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    .line 65
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_15

    .line 66
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 67
    iput-object v7, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    :cond_14
    move-object v13, v7

    goto :goto_12

    .line 68
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 69
    iget-object v3, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    if-nez v3, :cond_16

    .line 70
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 71
    iput-object v3, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    goto :goto_f

    .line 72
    :cond_16
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_f
    move-object v10, v3

    :goto_10
    cmp-long v3, v13, v1

    if-gez v3, :cond_14

    move-wide v5, v1

    :goto_11
    cmp-long v1, v5, v13

    if-eqz v1, :cond_17

    .line 73
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v10

    move-object v13, v7

    move-wide v7, v11

    .line 74
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    move-object v7, v13

    const-wide/16 v13, 0x0

    goto :goto_11

    :cond_17
    move-object v13, v7

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    goto :goto_10

    .line 76
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_18

    .line 77
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 78
    iput-object v13, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    goto/16 :goto_1d

    .line 79
    :cond_18
    iget-object v1, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_19

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_13

    :cond_19
    move-object v7, v13

    :goto_13
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    goto/16 :goto_1d

    :cond_1a
    move-object v13, v7

    const/4 v1, 0x0

    move v14, v1

    :goto_14
    const/16 v1, 0x10

    if-ge v14, v1, :cond_35

    .line 80
    aget-object v1, v10, v14

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_1b

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 84
    iput-object v13, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    goto :goto_16

    .line 85
    :cond_1b
    iget-object v1, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1c

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_15

    :cond_1c
    move-object v7, v13

    :goto_15
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    goto :goto_16

    .line 86
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_1d

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 88
    iput-object v13, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    :goto_16
    const-wide/16 v17, 0x0

    goto/16 :goto_1c

    .line 89
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 90
    iget-object v3, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    if-nez v3, :cond_1e

    .line 91
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    iput-object v3, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    goto :goto_17

    .line 93
    :cond_1e
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_17
    move-object/from16 v16, v3

    const-wide/16 v17, 0x0

    :goto_18
    cmp-long v3, v17, v1

    if-gez v3, :cond_34

    move-wide v5, v1

    :goto_19
    cmp-long v1, v5, v17

    if-eqz v1, :cond_1f

    .line 94
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v16

    move-wide v7, v11

    .line 95
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    goto :goto_19

    .line 96
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_18

    :pswitch_2
    const-wide/16 v17, 0x0

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_20

    .line 98
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 99
    iput-object v13, v0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    goto/16 :goto_1c

    .line 100
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    goto/16 :goto_1c

    :pswitch_3
    const-wide/16 v17, 0x0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_21

    .line 102
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 103
    iput-object v13, v0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    goto/16 :goto_1c

    .line 104
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    goto/16 :goto_1c

    :pswitch_4
    const-wide/16 v17, 0x0

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_22

    .line 106
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 107
    iput-object v13, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 108
    :cond_22
    iget-object v1, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_23

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_1a

    :cond_23
    move-object v7, v13

    :goto_1a
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :pswitch_5
    const-wide/16 v17, 0x0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_24

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 111
    iput-object v13, v0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    goto/16 :goto_1c

    .line 112
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    goto/16 :goto_1c

    :pswitch_6
    const-wide/16 v17, 0x0

    .line 113
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_25

    .line 114
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 115
    iput-object v13, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 116
    :cond_25
    iget-object v1, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_26

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_1b

    :cond_26
    move-object v7, v13

    :goto_1b
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :pswitch_7
    const-wide/16 v17, 0x0

    .line 117
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_27

    .line 118
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 119
    iput-object v13, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    goto/16 :goto_1c

    .line 120
    :cond_27
    iget-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    if-nez v1, :cond_28

    .line 121
    new-instance v1, Le/a/l5/a/c4;

    invoke-direct {v1}, Le/a/l5/a/c4;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    .line 122
    :cond_28
    iget-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    invoke-virtual {v1, v9}, Le/a/l5/a/c4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_1c

    :pswitch_8
    const-wide/16 v17, 0x0

    .line 123
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_29

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 125
    iput-object v13, v0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    goto/16 :goto_1c

    .line 126
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    goto/16 :goto_1c

    :pswitch_9
    const-wide/16 v17, 0x0

    .line 127
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2a

    .line 128
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 129
    iput-object v13, v0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    goto/16 :goto_1c

    .line 130
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    goto/16 :goto_1c

    :pswitch_a
    const-wide/16 v17, 0x0

    .line 131
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2b

    .line 132
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 133
    iput-object v13, v0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    goto/16 :goto_1c

    .line 134
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    goto/16 :goto_1c

    :pswitch_b
    const-wide/16 v17, 0x0

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2c

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 137
    iput-object v13, v0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    goto/16 :goto_1c

    .line 138
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    goto/16 :goto_1c

    :pswitch_c
    const-wide/16 v17, 0x0

    .line 139
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2d

    .line 140
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 141
    iput-object v13, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    goto :goto_1c

    .line 142
    :cond_2d
    iget-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    if-nez v1, :cond_2e

    .line 143
    new-instance v1, Le/a/l5/a/j3;

    invoke-direct {v1}, Le/a/l5/a/j3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    .line 144
    :cond_2e
    iget-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    invoke-virtual {v1, v9}, Le/a/l5/a/j3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1c

    :pswitch_d
    const-wide/16 v17, 0x0

    .line 145
    iget-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    if-nez v1, :cond_2f

    .line 146
    new-instance v1, Le/a/l5/a/l4;

    invoke-direct {v1}, Le/a/l5/a/l4;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    .line 147
    :cond_2f
    iget-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    invoke-virtual {v1, v9}, Le/a/l5/a/l4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1c

    :pswitch_e
    const-wide/16 v17, 0x0

    .line 148
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_30

    .line 149
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 150
    iput-object v13, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1c

    .line 151
    :cond_30
    iget-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_31

    .line 152
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 153
    :cond_31
    iget-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1c

    :pswitch_f
    const-wide/16 v17, 0x0

    .line 154
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_32

    .line 155
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 156
    iput-object v13, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    goto :goto_1c

    .line 157
    :cond_32
    iget-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_33

    .line 158
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    .line 159
    :cond_33
    iget-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_34
    :goto_1c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_14

    :cond_35
    :goto_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    invoke-virtual {v0, p1}, Le/a/l5/a/l4;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

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
    iget-object v0, p0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    invoke-virtual {v0, p1}, Le/a/l5/a/j3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 17
    :goto_2
    iget-object v0, p0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 22
    :goto_3
    iget-object v0, p0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 24
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 25
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 26
    iget-object v0, p0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 27
    :goto_4
    iget-object v0, p0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 28
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 29
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 30
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 31
    iget-object v0, p0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 32
    :goto_5
    iget-object v0, p0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 33
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 34
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 35
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 36
    iget-object v0, p0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 37
    :goto_6
    iget-object v0, p0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    if-nez v0, :cond_7

    .line 38
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 39
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_7

    .line 40
    :cond_7
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 41
    iget-object v0, p0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    invoke-virtual {v0, p1}, Le/a/l5/a/c4;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 42
    :goto_7
    iget-object v0, p0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    .line 43
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 44
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_8

    .line 45
    :cond_8
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 46
    iget-object v0, p0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 47
    :goto_8
    iget-object v0, p0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 48
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 49
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_9

    .line 50
    :cond_9
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 51
    iget-object v0, p0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 52
    :goto_9
    iget-object v0, p0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    .line 53
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 54
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_a

    .line 55
    :cond_a
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 56
    iget-object v0, p0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 57
    :goto_a
    iget-object v0, p0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    if-nez v0, :cond_b

    .line 58
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 59
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_b

    .line 60
    :cond_b
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 61
    iget-object v0, p0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 62
    :goto_b
    iget-object v0, p0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 63
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 64
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_c

    .line 65
    :cond_c
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 66
    iget-object v0, p0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 67
    :goto_c
    iget-object v0, p0, Le/a/l5/a/p;->o:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 68
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 69
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_e

    .line 70
    :cond_d
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 71
    iget-object v0, p0, Le/a/l5/a/p;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v3, v0

    .line 72
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 73
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    const-wide/16 v5, 0x0

    .line 74
    iget-object v0, p0, Le/a/l5/a/p;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 75
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 76
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {p1, v8}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 77
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {p1, v7}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 79
    :cond_e
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long v0, v5, v3

    if-nez v0, :cond_10

    .line 80
    :goto_e
    iget-object v0, p0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    if-nez v0, :cond_f

    .line 81
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 82
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_f

    .line 83
    :cond_f
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 84
    iget-object v0, p0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    .line 85
    :cond_10
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v0, "Map-size written was "

    const-string v1, ", but element count was "

    invoke-static {v0, v3, v4, v1}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-static {v0, v5, v6, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

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
    iget-object p1, p0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/p;->o:Ljava/util/Map;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    return-object p1

    .line 13
    :pswitch_b
    iget-object p1, p0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    return-object p1

    .line 14
    :pswitch_c
    iget-object p1, p0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    return-object p1

    .line 15
    :pswitch_d
    iget-object p1, p0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    return-object p1

    .line 16
    :pswitch_e
    iget-object p1, p0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 17
    :pswitch_f
    iget-object p1, p0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/p;->q:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/p;->r:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/p;->o:Ljava/util/Map;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Le/a/l5/a/c4;

    iput-object p2, p0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    goto :goto_0

    .line 14
    :pswitch_c
    check-cast p2, Le/a/l5/a/j3;

    iput-object p2, p0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    goto :goto_0

    .line 15
    :pswitch_d
    check-cast p2, Le/a/l5/a/l4;

    iput-object p2, p0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    goto :goto_0

    .line 16
    :pswitch_e
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 17
    :pswitch_f
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/p;->t:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/p;->s:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
