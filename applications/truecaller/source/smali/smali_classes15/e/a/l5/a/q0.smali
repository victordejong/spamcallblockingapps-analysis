.class public Le/a/l5/a/q0;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/q0$b;
    }
.end annotation


# static fields
.field public static final o:Lorg/apache/avro/Schema;

.field public static p:Lorg/apache/avro/specific/SpecificData;

.field public static final q:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/q0;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/q0;",
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

.field public d:Le/a/l5/a/n3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Le/a/l5/a/y3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Le/a/l5/a/u3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Le/a/l5/a/s3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Le/a/l5/a/q3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Le/a/l5/a/t3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Le/a/l5/a/k3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/f4;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:Le/a/l5/a/a4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppHeartBeat\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"state\",\"type\":\"string\"},{\"name\":\"deviceInfo\",\"type\":{\"type\":\"record\",\"name\":\"DeviceInfo\",\"fields\":[{\"name\":\"manufacturer\",\"type\":\"string\"},{\"name\":\"model\",\"type\":\"string\"},{\"name\":\"imei\",\"type\":[\"null\",\"string\"]},{\"name\":\"screenHeight\",\"type\":\"int\"},{\"name\":\"screenWidth\",\"type\":\"int\"},{\"name\":\"density\",\"type\":\"int\"}]}},{\"name\":\"os\",\"type\":\"OS\"},{\"name\":\"network\",\"type\":{\"type\":\"record\",\"name\":\"Network\",\"fields\":[{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"ip\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}},{\"name\":\"language\",\"type\":{\"type\":\"record\",\"name\":\"Language\",\"fields\":[{\"name\":\"appLanguage\",\"type\":\"string\"},{\"name\":\"appT9Language\",\"type\":\"string\"},{\"name\":\"deviceLanguage\",\"type\":\"string\"}]}},{\"name\":\"gsmCellInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"GsmCellInfo\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"cid\",\"type\":\"int\"},{\"name\":\"lac\",\"type\":\"int\"}]}],\"default\":null},{\"name\":\"lteCellInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"LteCellInfo\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"ci\",\"type\":\"int\"},{\"name\":\"tac\",\"type\":\"int\"}]}],\"default\":null},{\"name\":\"cdmaCellInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CdmaCellInfo\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"}]}],\"default\":null},{\"name\":\"simSlots\",\"type\":\"int\"},{\"name\":\"simInfo\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SimInfo\",\"fields\":[{\"name\":\"mcc\",\"type\":\"int\"},{\"name\":\"mnc\",\"type\":\"int\"},{\"name\":\"msin\",\"type\":[\"null\",\"string\"]},{\"name\":\"isActive\",\"type\":\"boolean\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]}]}}},{\"name\":\"adId\",\"type\":[\"null\",\"string\"]},{\"name\":\"packageInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"PackageInfo\",\"fields\":[{\"name\":\"installerPackage\",\"type\":\"string\",\"doc\":\"Package name of the application that installed Truecaller\"},{\"name\":\"preloadPartnerName\",\"type\":\"string\",\"doc\":\"Name of the OEM partner (only for preloads, null otherwise)\"}]}],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/q0;->o:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/q0;->p:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/q0;->p:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/q0;->p:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/q0;->q:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/q0;->p:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/q0;->r:Lorg/apache/avro/io/DatumReader;

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

    const-string v3, "simInfo"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_19

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v7, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/a/l5/a/l3;

    invoke-direct {v0}, Le/a/l5/a/l3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v7, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v0, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    instance-of v8, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v8, :cond_4

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    .line 15
    iget-object v0, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    if-nez v0, :cond_5

    .line 16
    new-instance v0, Le/a/l5/a/n3;

    invoke-direct {v0}, Le/a/l5/a/n3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    .line 17
    :cond_5
    iget-object v0, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    invoke-virtual {v0, p1}, Le/a/l5/a/n3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    if-nez v0, :cond_6

    .line 19
    new-instance v0, Le/a/l5/a/y3;

    invoke-direct {v0}, Le/a/l5/a/y3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    .line 20
    :cond_6
    iget-object v0, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    invoke-virtual {v0, p1}, Le/a/l5/a/y3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    if-nez v0, :cond_7

    .line 22
    new-instance v0, Le/a/l5/a/u3;

    invoke-direct {v0}, Le/a/l5/a/u3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    .line 23
    :cond_7
    iget-object v0, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    invoke-virtual {v0, p1}, Le/a/l5/a/u3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 24
    iget-object v0, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    if-nez v0, :cond_8

    .line 25
    new-instance v0, Le/a/l5/a/s3;

    invoke-direct {v0}, Le/a/l5/a/s3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    .line 26
    :cond_8
    iget-object v0, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    invoke-virtual {v0, p1}, Le/a/l5/a/s3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_9

    .line 28
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 29
    iput-object v7, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    goto :goto_3

    .line 30
    :cond_9
    iget-object v0, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    if-nez v0, :cond_a

    .line 31
    new-instance v0, Le/a/l5/a/q3;

    invoke-direct {v0}, Le/a/l5/a/q3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    .line 32
    :cond_a
    iget-object v0, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    invoke-virtual {v0, p1}, Le/a/l5/a/q3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 33
    :goto_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_b

    .line 34
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 35
    iput-object v7, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    goto :goto_4

    .line 36
    :cond_b
    iget-object v0, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    if-nez v0, :cond_c

    .line 37
    new-instance v0, Le/a/l5/a/t3;

    invoke-direct {v0}, Le/a/l5/a/t3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    .line 38
    :cond_c
    iget-object v0, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    invoke-virtual {v0, p1}, Le/a/l5/a/t3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 39
    :goto_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_d

    .line 40
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 41
    iput-object v7, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    goto :goto_5

    .line 42
    :cond_d
    iget-object v0, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Le/a/l5/a/k3;

    invoke-direct {v0}, Le/a/l5/a/k3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    .line 44
    :cond_e
    iget-object v0, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    invoke-virtual {v0, p1}, Le/a/l5/a/k3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 45
    :goto_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    iput v0, p0, Le/a/l5/a/q0;->k:I

    .line 46
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v8

    .line 47
    iget-object v0, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v10, v8

    sget-object v11, Le/a/l5/a/q0;->o:Lorg/apache/avro/Schema;

    invoke-virtual {v11, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-direct {v0, v10, v3}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 49
    iput-object v0, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    goto :goto_6

    .line 50
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    :goto_6
    instance-of v3, v0, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_10

    move-object v3, v0

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_7

    :cond_10
    move-object v3, v7

    :goto_7
    cmp-long v10, v4, v8

    if-gez v10, :cond_14

    :goto_8
    cmp-long v10, v8, v4

    if-eqz v10, :cond_13

    if-eqz v3, :cond_11

    .line 52
    invoke-virtual {v3}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/l5/a/f4;

    goto :goto_9

    :cond_11
    move-object v10, v7

    :goto_9
    if-nez v10, :cond_12

    .line 53
    new-instance v10, Le/a/l5/a/f4;

    invoke-direct {v10}, Le/a/l5/a/f4;-><init>()V

    .line 54
    :cond_12
    invoke-virtual {v10, p1}, Le/a/l5/a/f4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 55
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v8, v1

    goto :goto_8

    .line 56
    :cond_13
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v8

    goto :goto_7

    .line 57
    :cond_14
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_15

    .line 58
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 59
    iput-object v7, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    goto :goto_b

    .line 60
    :cond_15
    iget-object v0, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    instance-of v1, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v1, :cond_16

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_a

    :cond_16
    move-object v0, v7

    :goto_a
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    .line 61
    :goto_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v6, :cond_17

    .line 62
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 63
    iput-object v7, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    goto/16 :goto_14

    .line 64
    :cond_17
    iget-object v0, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    if-nez v0, :cond_18

    .line 65
    new-instance v0, Le/a/l5/a/a4;

    invoke-direct {v0}, Le/a/l5/a/a4;-><init>()V

    iput-object v0, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    .line 66
    :cond_18
    iget-object v0, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    invoke-virtual {v0, p1}, Le/a/l5/a/a4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_14

    :cond_19
    const/4 v8, 0x0

    :goto_c
    const/16 v9, 0xe

    if-ge v8, v9, :cond_33

    .line 67
    aget-object v9, v0, v8

    invoke-virtual {v9}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 68
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_1a

    .line 70
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 71
    iput-object v7, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    goto/16 :goto_13

    .line 72
    :cond_1a
    iget-object v9, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    if-nez v9, :cond_1b

    .line 73
    new-instance v9, Le/a/l5/a/a4;

    invoke-direct {v9}, Le/a/l5/a/a4;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    .line 74
    :cond_1b
    iget-object v9, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    invoke-virtual {v9, p1}, Le/a/l5/a/a4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_13

    .line 75
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_1c

    .line 76
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 77
    iput-object v7, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    goto/16 :goto_13

    .line 78
    :cond_1c
    iget-object v9, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    instance-of v10, v9, Lorg/apache/avro/util/Utf8;

    if-eqz v10, :cond_1d

    check-cast v9, Lorg/apache/avro/util/Utf8;

    goto :goto_d

    :cond_1d
    move-object v9, v7

    :goto_d
    invoke-virtual {p1, v9}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v9

    iput-object v9, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    goto/16 :goto_13

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v9

    .line 80
    iget-object v11, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    if-nez v11, :cond_1e

    .line 81
    new-instance v11, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v12, v9

    sget-object v13, Le/a/l5/a/q0;->o:Lorg/apache/avro/Schema;

    invoke-virtual {v13, v3}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 82
    iput-object v11, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    goto :goto_e

    .line 83
    :cond_1e
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 84
    :goto_e
    instance-of v12, v11, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v12, :cond_1f

    move-object v12, v11

    check-cast v12, Lorg/apache/avro/generic/GenericData$Array;

    goto :goto_f

    :cond_1f
    move-object v12, v7

    :goto_f
    cmp-long v13, v4, v9

    if-gez v13, :cond_32

    :goto_10
    cmp-long v13, v9, v4

    if-eqz v13, :cond_22

    if-eqz v12, :cond_20

    .line 85
    invoke-virtual {v12}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/l5/a/f4;

    goto :goto_11

    :cond_20
    move-object v13, v7

    :goto_11
    if-nez v13, :cond_21

    .line 86
    new-instance v13, Le/a/l5/a/f4;

    invoke-direct {v13}, Le/a/l5/a/f4;-><init>()V

    .line 87
    :cond_21
    invoke-virtual {v13, p1}, Le/a/l5/a/f4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 88
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v9, v1

    goto :goto_10

    .line 89
    :cond_22
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v9

    goto :goto_f

    .line 90
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v9

    iput v9, p0, Le/a/l5/a/q0;->k:I

    goto/16 :goto_13

    .line 91
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_23

    .line 92
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 93
    iput-object v7, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    goto/16 :goto_13

    .line 94
    :cond_23
    iget-object v9, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    if-nez v9, :cond_24

    .line 95
    new-instance v9, Le/a/l5/a/k3;

    invoke-direct {v9}, Le/a/l5/a/k3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    .line 96
    :cond_24
    iget-object v9, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    invoke-virtual {v9, p1}, Le/a/l5/a/k3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_13

    .line 97
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_25

    .line 98
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 99
    iput-object v7, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    goto/16 :goto_13

    .line 100
    :cond_25
    iget-object v9, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    if-nez v9, :cond_26

    .line 101
    new-instance v9, Le/a/l5/a/t3;

    invoke-direct {v9}, Le/a/l5/a/t3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    .line 102
    :cond_26
    iget-object v9, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    invoke-virtual {v9, p1}, Le/a/l5/a/t3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_13

    .line 103
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_27

    .line 104
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 105
    iput-object v7, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    goto/16 :goto_13

    .line 106
    :cond_27
    iget-object v9, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    if-nez v9, :cond_28

    .line 107
    new-instance v9, Le/a/l5/a/q3;

    invoke-direct {v9}, Le/a/l5/a/q3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    .line 108
    :cond_28
    iget-object v9, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    invoke-virtual {v9, p1}, Le/a/l5/a/q3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_13

    .line 109
    :pswitch_7
    iget-object v9, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    if-nez v9, :cond_29

    .line 110
    new-instance v9, Le/a/l5/a/s3;

    invoke-direct {v9}, Le/a/l5/a/s3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    .line 111
    :cond_29
    iget-object v9, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    invoke-virtual {v9, p1}, Le/a/l5/a/s3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_13

    .line 112
    :pswitch_8
    iget-object v9, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    if-nez v9, :cond_2a

    .line 113
    new-instance v9, Le/a/l5/a/u3;

    invoke-direct {v9}, Le/a/l5/a/u3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    .line 114
    :cond_2a
    iget-object v9, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    invoke-virtual {v9, p1}, Le/a/l5/a/u3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_13

    .line 115
    :pswitch_9
    iget-object v9, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    if-nez v9, :cond_2b

    .line 116
    new-instance v9, Le/a/l5/a/y3;

    invoke-direct {v9}, Le/a/l5/a/y3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    .line 117
    :cond_2b
    iget-object v9, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    invoke-virtual {v9, p1}, Le/a/l5/a/y3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_13

    .line 118
    :pswitch_a
    iget-object v9, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    if-nez v9, :cond_2c

    .line 119
    new-instance v9, Le/a/l5/a/n3;

    invoke-direct {v9}, Le/a/l5/a/n3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    .line 120
    :cond_2c
    iget-object v9, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    invoke-virtual {v9, p1}, Le/a/l5/a/n3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_13

    .line 121
    :pswitch_b
    iget-object v9, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    instance-of v10, v9, Lorg/apache/avro/util/Utf8;

    if-eqz v10, :cond_2d

    check-cast v9, Lorg/apache/avro/util/Utf8;

    goto :goto_12

    :cond_2d
    move-object v9, v7

    :goto_12
    invoke-virtual {p1, v9}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v9

    iput-object v9, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    goto :goto_13

    .line 122
    :pswitch_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_2e

    .line 123
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 124
    iput-object v7, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_13

    .line 125
    :cond_2e
    iget-object v9, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v9, :cond_2f

    .line 126
    new-instance v9, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 127
    :cond_2f
    iget-object v9, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v9, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_13

    .line 128
    :pswitch_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v9

    if-eq v9, v6, :cond_30

    .line 129
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 130
    iput-object v7, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    goto :goto_13

    .line 131
    :cond_30
    iget-object v9, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    if-nez v9, :cond_31

    .line 132
    new-instance v9, Le/a/l5/a/l3;

    invoke-direct {v9}, Le/a/l5/a/l3;-><init>()V

    iput-object v9, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    .line 133
    :cond_31
    iget-object v9, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    invoke-virtual {v9, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_32
    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c

    :cond_33
    :goto_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    iget-object v0, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    invoke-virtual {v0, p1}, Le/a/l5/a/n3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 13
    iget-object v0, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    .line 14
    iget-object v3, v0, Le/a/l5/a/y3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, v0, Le/a/l5/a/y3;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    invoke-virtual {v0, p1}, Le/a/l5/a/u3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 17
    iget-object v0, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    .line 18
    iget-object v3, v0, Le/a/l5/a/s3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v3, v0, Le/a/l5/a/s3;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, v0, Le/a/l5/a/s3;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    if-nez v0, :cond_2

    .line 22
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 25
    iget-object v0, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    .line 26
    iget v3, v0, Le/a/l5/a/q3;->a:I

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 27
    iget v3, v0, Le/a/l5/a/q3;->b:I

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 28
    iget v3, v0, Le/a/l5/a/q3;->c:I

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 29
    iget v0, v0, Le/a/l5/a/q3;->d:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 30
    :goto_2
    iget-object v0, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    if-nez v0, :cond_3

    .line 31
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 32
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 33
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 34
    iget-object v0, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    .line 35
    iget v3, v0, Le/a/l5/a/t3;->a:I

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 36
    iget v3, v0, Le/a/l5/a/t3;->b:I

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 37
    iget v3, v0, Le/a/l5/a/t3;->c:I

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 38
    iget v0, v0, Le/a/l5/a/t3;->d:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 39
    :goto_3
    iget-object v0, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    if-nez v0, :cond_4

    .line 40
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 41
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 42
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 43
    iget-object v0, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    .line 44
    iget v3, v0, Le/a/l5/a/k3;->a:F

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    .line 45
    iget v0, v0, Le/a/l5/a/k3;->b:F

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeFloat(F)V

    .line 46
    :goto_4
    iget v0, p0, Le/a/l5/a/q0;->k:I

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 47
    iget-object v0, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    .line 48
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 49
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    const-wide/16 v5, 0x0

    .line 50
    iget-object v0, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l5/a/f4;

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 51
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 52
    invoke-virtual {v7, p1}, Le/a/l5/a/f4;->customEncode(Lorg/apache/avro/io/Encoder;)V

    goto :goto_5

    .line 53
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v5, v3

    if-nez v0, :cond_8

    .line 54
    iget-object v0, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 55
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 56
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 57
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 58
    iget-object v0, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 59
    :goto_6
    iget-object v0, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    if-nez v0, :cond_7

    .line 60
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 61
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_7

    .line 62
    :cond_7
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 63
    iget-object v0, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    .line 64
    iget-object v1, v0, Le/a/l5/a/a4;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, v0, Le/a/l5/a/a4;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_7
    return-void

    .line 66
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v0, "Array-size written was "

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
    iget-object p1, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    return-object p1

    .line 5
    :pswitch_3
    iget p1, p0, Le/a/l5/a/q0;->k:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    return-object p1

    .line 13
    :pswitch_b
    iget-object p1, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 14
    :pswitch_c
    iget-object p1, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 15
    :pswitch_d
    iget-object p1, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/q0;->o:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/q0;->p:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Le/a/l5/a/a4;

    iput-object p2, p0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/q0;->l:Ljava/util/List;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/a/l5/a/q0;->k:I

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Le/a/l5/a/k3;

    iput-object p2, p0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Le/a/l5/a/t3;

    iput-object p2, p0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Le/a/l5/a/q3;

    iput-object p2, p0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Le/a/l5/a/s3;

    iput-object p2, p0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Le/a/l5/a/u3;

    iput-object p2, p0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Le/a/l5/a/y3;

    iput-object p2, p0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Le/a/l5/a/n3;

    iput-object p2, p0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 14
    :pswitch_c
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 15
    :pswitch_d
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/q0;->r:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/q0;->q:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
