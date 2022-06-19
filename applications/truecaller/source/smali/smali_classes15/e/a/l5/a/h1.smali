.class public Le/a/l5/a/h1;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/h1$b;
    }
.end annotation


# static fields
.field public static final m:Lorg/apache/avro/Schema;

.field public static n:Lorg/apache/avro/specific/SpecificData;

.field public static final o:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/h1;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/h1;",
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

.field public j:Ljava/util/List;
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

.field public k:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Ljava/util/Map;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppOAuthConsentScreenRequested\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"App event for when the OAuth consent screen is requested by the OAuth SDK\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"sessionId\",\"type\":\"string\"},{\"name\":\"platform\",\"type\":\"string\",\"doc\":\"Platform type (eg. android, ios)\"},{\"name\":\"sdkVariant\",\"type\":\"string\",\"doc\":\"Variant of the SDK (e.g. native, flutter, react, custom)\"},{\"name\":\"sdkVersion\",\"type\":\"string\",\"doc\":\"SDK version (e.g. 2.5.0)\"},{\"name\":\"sdkVariantVersion\",\"type\":\"string\",\"doc\":\"SDK variant version (e.g. for sdkVariant = flutter, it could be 0.0.2)\"},{\"name\":\"integrationType\",\"type\":\"string\",\"doc\":\"Integration type (e.g. android, mobile-web)\"},{\"name\":\"clientId\",\"type\":\"string\",\"doc\":\"OAuth client id of the partner\"},{\"name\":\"requestedScopes\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"Scopes requested by the partner (e.g. profile)\"},{\"name\":\"requestedOAuthState\",\"type\":[\"null\",\"string\"],\"doc\":\"OAuth state parameter set by the partner\",\"default\":null},{\"name\":\"customizations\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Consent screen customization options like button shape, button text, etc\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/h1;->m:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/h1;->n:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/h1;->n:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/h1;->n:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/h1;->o:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/h1;->n:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/h1;->p:Lorg/apache/avro/io/DatumReader;

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

    const-string v11, "requestedScopes"

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-nez v10, :cond_16

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v8, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v6, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v8, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v6, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v1, v0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v1, v6

    :goto_2
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    .line 15
    iget-object v1, v0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_5
    move-object v1, v6

    :goto_3
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    .line 16
    iget-object v1, v0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_6
    move-object v1, v6

    :goto_4
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    .line 17
    iget-object v1, v0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_5

    :cond_7
    move-object v1, v6

    :goto_5
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    .line 18
    iget-object v1, v0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_6

    :cond_8
    move-object v1, v6

    :goto_6
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    .line 19
    iget-object v1, v0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_9

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_9
    move-object v1, v6

    :goto_7
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    .line 20
    iget-object v1, v0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_a

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_a
    move-object v1, v6

    :goto_8
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 22
    iget-object v3, v0, Le/a/l5/a/h1;->j:Ljava/util/List;

    if-nez v3, :cond_b

    .line 23
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/h1;->m:Lorg/apache/avro/Schema;

    invoke-virtual {v5, v11}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 24
    iput-object v3, v0, Le/a/l5/a/h1;->j:Ljava/util/List;

    goto :goto_9

    .line 25
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_9
    move-object v10, v3

    .line 26
    nop

    instance-of v3, v10, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_c

    move-object v3, v10

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    move-object v11, v3

    goto :goto_a

    :cond_c
    move-object v11, v6

    :goto_a
    cmp-long v3, v14, v1

    if-gez v3, :cond_10

    move-wide v4, v1

    :goto_b
    cmp-long v1, v4, v14

    if-eqz v1, :cond_f

    if-eqz v11, :cond_d

    .line 27
    invoke-virtual {v11}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_c

    :cond_d
    move-object v1, v6

    .line 28
    :goto_c
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_d

    :cond_e
    move-object v2, v6

    :goto_d
    move-object/from16 v1, p1

    move-object v3, v10

    move-object v14, v6

    move-wide v6, v12

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    move-object v6, v14

    const-wide/16 v14, 0x0

    goto :goto_b

    :cond_f
    move-object v14, v6

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    const-wide/16 v14, 0x0

    goto :goto_a

    :cond_10
    move-object v14, v6

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v8, :cond_11

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 32
    iput-object v14, v0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    goto :goto_f

    .line 33
    :cond_11
    iget-object v1, v0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_12

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_e

    :cond_12
    move-object v6, v14

    :goto_e
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    .line 34
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v8, :cond_13

    .line 35
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 36
    iput-object v14, v0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    goto/16 :goto_26

    .line 37
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 38
    iget-object v3, v0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    if-nez v3, :cond_14

    .line 39
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    iput-object v3, v0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    goto :goto_10

    .line 41
    :cond_14
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_10
    move-object v10, v3

    const-wide/16 v15, 0x0

    :goto_11
    cmp-long v3, v15, v1

    if-gez v3, :cond_2e

    move-wide v5, v1

    :goto_12
    cmp-long v1, v5, v15

    if-eqz v1, :cond_15

    .line 42
    invoke-virtual {v9, v14}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v10

    move-wide v7, v12

    .line 43
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    goto :goto_12

    .line 44
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_11

    :cond_16
    move-wide v15, v14

    move-object v14, v6

    const/4 v1, 0x0

    move-wide/from16 v16, v15

    move v15, v1

    :goto_13
    const/16 v1, 0xc

    if-ge v15, v1, :cond_2e

    .line 45
    aget-object v1, v10, v15

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 46
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v8, :cond_17

    .line 48
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 49
    iput-object v14, v0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    move-object v1, v14

    move v14, v8

    goto/16 :goto_25

    .line 50
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 51
    iget-object v3, v0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    if-nez v3, :cond_18

    .line 52
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    iput-object v3, v0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    goto :goto_14

    .line 54
    :cond_18
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_14
    move-object/from16 v18, v3

    :goto_15
    cmp-long v3, v16, v1

    if-gez v3, :cond_1a

    move-wide v5, v1

    :goto_16
    cmp-long v1, v5, v16

    if-eqz v1, :cond_19

    .line 55
    invoke-virtual {v9, v14}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, v18

    move v14, v8

    move-wide v7, v12

    .line 56
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    move v8, v14

    const/4 v14, 0x0

    goto :goto_16

    :cond_19
    move v14, v8

    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    const/4 v14, 0x0

    goto :goto_15

    :cond_1a
    move v14, v8

    goto/16 :goto_24

    :pswitch_1
    move v14, v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_1b

    .line 59
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    goto/16 :goto_25

    .line 61
    :cond_1b
    iget-object v1, v0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1c

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_17

    :cond_1c
    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    goto/16 :goto_24

    :pswitch_2
    move v14, v8

    .line 62
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 63
    iget-object v3, v0, Le/a/l5/a/h1;->j:Ljava/util/List;

    if-nez v3, :cond_1d

    .line 64
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/h1;->m:Lorg/apache/avro/Schema;

    invoke-virtual {v5, v11}, Lorg/apache/avro/Schema;->getField(Ljava/lang/String;)Lorg/apache/avro/Schema$Field;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/avro/Schema$Field;->schema()Lorg/apache/avro/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 65
    iput-object v3, v0, Le/a/l5/a/h1;->j:Ljava/util/List;

    goto :goto_18

    .line 66
    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_18
    move-object v8, v3

    .line 67
    nop

    instance-of v3, v8, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_1e

    move-object v6, v8

    check-cast v6, Lorg/apache/avro/generic/GenericData$Array;

    move-wide/from16 v3, v16

    move-object/from16 v16, v6

    goto :goto_19

    :cond_1e
    move-wide/from16 v3, v16

    const/16 v16, 0x0

    :goto_19
    cmp-long v5, v3, v1

    if-gez v5, :cond_2b

    move-wide v5, v1

    :goto_1a
    cmp-long v1, v5, v3

    if-eqz v1, :cond_21

    if-eqz v16, :cond_1f

    .line 68
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1b

    :cond_1f
    const/4 v1, 0x0

    .line 69
    :goto_1b
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_20

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_1c

    :cond_20
    const/4 v2, 0x0

    :goto_1c
    move-object/from16 v1, p1

    move-object v3, v8

    move-wide v4, v5

    move-wide v6, v12

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    goto :goto_1a

    .line 70
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    goto :goto_19

    :pswitch_3
    move v14, v8

    .line 71
    iget-object v1, v0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_22

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_1d

    :cond_22
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    goto/16 :goto_24

    :pswitch_4
    move v14, v8

    .line 72
    iget-object v1, v0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_23

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_1e

    :cond_23
    const/4 v6, 0x0

    :goto_1e
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    goto/16 :goto_24

    :pswitch_5
    move v14, v8

    .line 73
    iget-object v1, v0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_24

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_1f

    :cond_24
    const/4 v6, 0x0

    :goto_1f
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    goto/16 :goto_24

    :pswitch_6
    move v14, v8

    .line 74
    iget-object v1, v0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_25

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_20

    :cond_25
    const/4 v6, 0x0

    :goto_20
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    goto :goto_24

    :pswitch_7
    move v14, v8

    .line 75
    iget-object v1, v0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_26

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_21

    :cond_26
    const/4 v6, 0x0

    :goto_21
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    goto :goto_24

    :pswitch_8
    move v14, v8

    .line 76
    iget-object v1, v0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_27

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_22

    :cond_27
    const/4 v6, 0x0

    :goto_22
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    goto :goto_24

    :pswitch_9
    move v14, v8

    .line 77
    iget-object v1, v0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_28

    move-object v6, v1

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_23

    :cond_28
    const/4 v6, 0x0

    :goto_23
    invoke-virtual {v9, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    goto :goto_24

    :pswitch_a
    move v14, v8

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_29

    .line 79
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 80
    iput-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_25

    .line 81
    :cond_29
    iget-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_2a

    .line 82
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 83
    :cond_2a
    iget-object v1, v0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_2b
    :goto_24
    const/4 v1, 0x0

    goto :goto_25

    :pswitch_b
    move v14, v8

    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v14, :cond_2c

    .line 85
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 86
    iput-object v1, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    goto :goto_25

    :cond_2c
    const/4 v1, 0x0

    .line 87
    iget-object v2, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    if-nez v2, :cond_2d

    .line 88
    new-instance v2, Le/a/l5/a/l3;

    invoke-direct {v2}, Le/a/l5/a/l3;-><init>()V

    iput-object v2, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    .line 89
    :cond_2d
    iget-object v2, v0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    invoke-virtual {v2, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_25
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v16, 0x0

    move v8, v14

    move-object v14, v1

    goto/16 :goto_13

    :cond_2e
    :goto_26
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/h1;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 20
    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/h1;->j:Ljava/util/List;

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

    check-cast v9, Ljava/lang/CharSequence;

    add-long/2addr v7, v10

    .line 22
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 23
    invoke-virtual {p1, v9}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long v0, v7, v3

    const-string v9, "."

    const-string v12, ", but element count was "

    if-nez v0, :cond_7

    .line 25
    iget-object v0, p0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 26
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 28
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 29
    iget-object v0, p0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 30
    :goto_3
    iget-object v0, p0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 31
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 32
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 33
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 34
    iget-object v0, p0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 36
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 37
    iget-object v2, p0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-long/2addr v5, v10

    .line 38
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 42
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long p1, v5, v0

    if-nez p1, :cond_6

    :goto_5
    return-void

    .line 43
    :cond_6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v2, "Map-size written was "

    invoke-static {v2, v0, v1, v12}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v6, v9}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_7
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
    iget-object p1, p0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/h1;->j:Ljava/util/List;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 13
    :pswitch_b
    iget-object p1, p0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/h1;->m:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/h1;->n:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/h1;->l:Ljava/util/Map;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/h1;->j:Ljava/util/List;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->g:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/h1;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/h1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/h1;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/h1;->p:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/h1;->o:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
