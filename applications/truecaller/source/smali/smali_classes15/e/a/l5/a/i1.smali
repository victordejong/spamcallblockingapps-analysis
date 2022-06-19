.class public Le/a/l5/a/i1;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/i1$b;
    }
.end annotation


# static fields
.field public static final j:Lorg/apache/avro/Schema;

.field public static k:Lorg/apache/avro/specific/SpecificData;

.field public static final l:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/i1;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/i1;",
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

.field public i:Ljava/util/List;
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

    const-string v0, "{\"type\":\"record\",\"name\":\"AppOAuthConsentScreenStages\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"App Event for when consent screen is either shown or dismissed\\n  If consent screen information couldn\'t be fetched, it\'ll be logged only once (with screenState = dismissed).\\n  If consent screen information was fetched, it\'ll be logged once as screenState = shown and later\\n  while dismissing as screenState = dismissed\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"sessionId\",\"type\":\"string\"},{\"name\":\"screenState\",\"type\":\"string\",\"doc\":\"State of the Consent screen (e.g. shown, dismissed)\"},{\"name\":\"orientation\",\"type\":\"string\",\"doc\":\"Orientation of the device (e.g. portrait, landscape)\"},{\"name\":\"requestId\",\"type\":[\"null\",\"string\"],\"doc\":\"Request Id returned by fetch consent screen API response\",\"default\":null},{\"name\":\"dismissReason\",\"type\":[\"null\",\"string\"],\"doc\":\"Reason could be consent_granted (after AuthCode response is fetched) or any error due to API failure/user action\\n    It should be logged only when screenState = dismissed\",\"default\":null},{\"name\":\"language\",\"type\":[\"null\",\"string\"],\"doc\":\"Language could be user selected or partner selected or default language in tc app;\\n    It should be logged only when screenState = dismissed && dismissReason = consent_granted for legal reasons\",\"default\":null},{\"name\":\"grantedScopes\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"doc\":\"Scopes granted by the user. It should be logged only when screenState = dismissed\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/i1;->j:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/i1;->k:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/i1;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/i1;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/i1;->l:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/i1;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/i1;->m:Lorg/apache/avro/io/DatumReader;

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

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    const-wide/16 v10, 0x1

    const-string v12, "grantedScopes"

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-nez v9, :cond_13

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v6, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v8}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v6, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v8}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v1, v0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v1, v6

    :goto_2
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    .line 15
    iget-object v1, v0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_5
    move-object v1, v6

    :goto_3
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    .line 16
    iget-object v1, v0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_6
    move-object v1, v6

    :goto_4
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 19
    iput-object v6, v0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    goto :goto_6

    .line 20
    :cond_7
    iget-object v1, v0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_5

    :cond_8
    move-object v1, v6

    :goto_5
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    .line 21
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_9

    .line 22
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 23
    iput-object v6, v0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    goto :goto_8

    .line 24
    :cond_9
    iget-object v1, v0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_a

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_a
    move-object v1, v6

    :goto_7
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    .line 25
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_b

    .line 26
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 27
    iput-object v6, v0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    goto :goto_a

    .line 28
    :cond_b
    iget-object v1, v0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_c

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_c
    move-object v1, v6

    :goto_9
    invoke-virtual {v8, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    .line 29
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_d

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 31
    iput-object v6, v0, Le/a/l5/a/i1;->i:Ljava/util/List;

    goto/16 :goto_1d

    .line 32
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v1

    .line 33
    iget-object v3, v0, Le/a/l5/a/i1;->i:Ljava/util/List;

    if-nez v3, :cond_e

    .line 34
    new-instance v3, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v4, v1

    sget-object v5, Le/a/l5/a/i1;->j:Lorg/apache/avro/Schema;

    invoke-static {v5, v12, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/avro/Schema;

    invoke-direct {v3, v4, v5}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 35
    iput-object v3, v0, Le/a/l5/a/i1;->i:Ljava/util/List;

    goto :goto_b

    .line 36
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_b
    move-object v9, v3

    .line 37
    nop

    instance-of v3, v9, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v3, :cond_f

    move-object v3, v9

    check-cast v3, Lorg/apache/avro/generic/GenericData$Array;

    move-object v12, v3

    goto :goto_c

    :cond_f
    move-object v12, v6

    :goto_c
    cmp-long v3, v13, v1

    if-gez v3, :cond_28

    move-wide v4, v1

    :goto_d
    cmp-long v1, v4, v13

    if-eqz v1, :cond_12

    if-eqz v12, :cond_10

    .line 38
    invoke-virtual {v12}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_10
    move-object v1, v6

    .line 39
    :goto_e
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_11

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_f

    :cond_11
    move-object v2, v6

    :goto_f
    move-object/from16 v1, p1

    move-object v3, v9

    move-object v15, v6

    move-wide v6, v10

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    move-object v6, v15

    goto :goto_d

    :cond_12
    move-object v15, v6

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    move-wide/from16 v17, v13

    move v13, v1

    move-wide/from16 v1, v17

    :goto_10
    const/16 v3, 0x9

    if-ge v13, v3, :cond_28

    .line 41
    aget-object v3, v9, v13

    invoke-virtual {v3}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 42
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v3

    if-eq v3, v15, :cond_15

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 45
    iput-object v6, v0, Le/a/l5/a/i1;->i:Ljava/util/List;

    :cond_14
    move-object v1, v6

    goto/16 :goto_1c

    .line 46
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readArrayStart()J

    move-result-wide v3

    .line 47
    iget-object v5, v0, Le/a/l5/a/i1;->i:Ljava/util/List;

    if-nez v5, :cond_16

    .line 48
    new-instance v5, Lorg/apache/avro/generic/GenericData$Array;

    long-to-int v7, v3

    sget-object v14, Le/a/l5/a/i1;->j:Lorg/apache/avro/Schema;

    invoke-static {v14, v12, v15}, Le/d/c/a/a;->H1(Lorg/apache/avro/Schema;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/avro/Schema;

    invoke-direct {v5, v7, v14}, Lorg/apache/avro/generic/GenericData$Array;-><init>(ILorg/apache/avro/Schema;)V

    .line 49
    iput-object v5, v0, Le/a/l5/a/i1;->i:Ljava/util/List;

    goto :goto_11

    .line 50
    :cond_16
    invoke-interface {v5}, Ljava/util/List;->clear()V

    :goto_11
    move-object v14, v5

    .line 51
    nop

    instance-of v5, v14, Lorg/apache/avro/generic/GenericData$Array;

    if-eqz v5, :cond_17

    move-object v5, v14

    check-cast v5, Lorg/apache/avro/generic/GenericData$Array;

    move-object/from16 v16, v5

    goto :goto_12

    :cond_17
    move-object/from16 v16, v6

    :goto_12
    cmp-long v5, v1, v3

    if-gez v5, :cond_14

    move-wide v4, v3

    :goto_13
    cmp-long v1, v4, v1

    if-eqz v1, :cond_1a

    if-eqz v16, :cond_18

    .line 52
    invoke-virtual/range {v16 .. v16}, Lorg/apache/avro/generic/GenericData$Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_14

    :cond_18
    move-object v1, v6

    .line 53
    :goto_14
    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_19

    check-cast v1, Lorg/apache/avro/util/Utf8;

    move-object v2, v1

    goto :goto_15

    :cond_19
    move-object v2, v6

    :goto_15
    move-object/from16 v1, p1

    move-object v3, v14

    move-wide v6, v10

    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->n(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/List;JJ)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    goto :goto_13

    .line 54
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->arrayNext()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    goto :goto_12

    .line 55
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_1b

    .line 56
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    const/4 v1, 0x0

    .line 57
    iput-object v1, v0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 58
    iget-object v2, v0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    instance-of v3, v2, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_1c

    move-object v6, v2

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_16

    :cond_1c
    move-object v6, v1

    :goto_16
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v2

    iput-object v2, v0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :pswitch_2
    move-object v1, v6

    .line 59
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v2

    if-eq v2, v15, :cond_1d

    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 61
    iput-object v1, v0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 62
    :cond_1d
    iget-object v2, v0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    instance-of v3, v2, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_1e

    move-object v6, v2

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_17

    :cond_1e
    move-object v6, v1

    :goto_17
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v2

    iput-object v2, v0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :pswitch_3
    move-object v1, v6

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v2

    if-eq v2, v15, :cond_1f

    .line 64
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 65
    iput-object v1, v0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 66
    :cond_1f
    iget-object v2, v0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    instance-of v3, v2, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_20

    move-object v6, v2

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_18

    :cond_20
    move-object v6, v1

    :goto_18
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v2

    iput-object v2, v0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :pswitch_4
    move-object v1, v6

    .line 67
    iget-object v2, v0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    instance-of v3, v2, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_21

    move-object v6, v2

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_19

    :cond_21
    move-object v6, v1

    :goto_19
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v2

    iput-object v2, v0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    :pswitch_5
    move-object v1, v6

    .line 68
    iget-object v2, v0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    instance-of v3, v2, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_22

    move-object v6, v2

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_1a

    :cond_22
    move-object v6, v1

    :goto_1a
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v2

    iput-object v2, v0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    goto :goto_1c

    :pswitch_6
    move-object v1, v6

    .line 69
    iget-object v2, v0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    instance-of v3, v2, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_23

    move-object v6, v2

    check-cast v6, Lorg/apache/avro/util/Utf8;

    goto :goto_1b

    :cond_23
    move-object v6, v1

    :goto_1b
    invoke-virtual {v8, v6}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v2

    iput-object v2, v0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    goto :goto_1c

    :pswitch_7
    move-object v1, v6

    .line 70
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v2

    if-eq v2, v15, :cond_24

    .line 71
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 72
    iput-object v1, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1c

    .line 73
    :cond_24
    iget-object v2, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v2, :cond_25

    .line 74
    new-instance v2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v2}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v2, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 75
    :cond_25
    iget-object v2, v0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v2, v8}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1c

    :pswitch_8
    move-object v1, v6

    .line 76
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v2

    if-eq v2, v15, :cond_26

    .line 77
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 78
    iput-object v1, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    goto :goto_1c

    .line 79
    :cond_26
    iget-object v2, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    if-nez v2, :cond_27

    .line 80
    new-instance v2, Le/a/l5/a/l3;

    invoke-direct {v2}, Le/a/l5/a/l3;-><init>()V

    iput-object v2, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    .line 81
    :cond_27
    iget-object v2, v0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    invoke-virtual {v2, v8}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_1c
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v2, 0x0

    move-object v6, v1

    move-wide v1, v2

    goto/16 :goto_10

    :cond_28
    :goto_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 19
    :goto_2
    iget-object v0, p0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 20
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 21
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 23
    iget-object v0, p0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 24
    :goto_3
    iget-object v0, p0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    .line 25
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 26
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 27
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 28
    iget-object v0, p0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 29
    :goto_4
    iget-object v0, p0, Le/a/l5/a/i1;->i:Ljava/util/List;

    if-nez v0, :cond_5

    .line 30
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 31
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 32
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 33
    iget-object v0, p0, Le/a/l5/a/i1;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 34
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayStart()V

    .line 35
    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    const-wide/16 v2, 0x0

    .line 36
    iget-object v4, p0, Le/a/l5/a/i1;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 37
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 38
    invoke-virtual {p1, v5}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 39
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeArrayEnd()V

    cmp-long p1, v2, v0

    if-nez p1, :cond_7

    :goto_6
    return-void

    .line 40
    :cond_7
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
    iget-object p1, p0, Le/a/l5/a/i1;->i:Ljava/util/List;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/i1;->j:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/i1;->k:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Le/a/l5/a/i1;->i:Ljava/util/List;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/i1;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/i1;->g:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/i1;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/i1;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/i1;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/i1;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/i1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/i1;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/i1;->m:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/i1;->l:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
