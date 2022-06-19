.class public Le/a/l5/a/d2;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/d2$b;
    }
.end annotation


# static fields
.field public static final j:Lorg/apache/avro/Schema;

.field public static k:Lorg/apache/avro/specific/SpecificData;

.field public static final l:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/d2;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/d2;",
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

.field public d:Ljava/util/Map;
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

.field public e:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Ljava/util/Map;
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

.field public h:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppSmsFeedback\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"feedbackType\",\"type\":\"string\",\"doc\":\"Feedback Type - not_spam | give_feedback | spam ,etc.\"},{\"name\":\"feedbackReason\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Feedback reason selected - bank_transaction | not_spam | wrongly_classified ,etc.\",\"default\":null},{\"name\":\"context\",\"type\":\"string\",\"doc\":\"Current screen from which feedback was given - conversation_view, insights_tab, pfm_tab, etc.\"},{\"name\":\"senderId\",\"type\":\"string\",\"doc\":\"SMS sender ID\"},{\"name\":\"messageInfo\",\"type\":[\"null\",{\"type\":\"map\",\"values\":\"string\"}],\"doc\":\"Message information including masked body of SMS\",\"default\":null},{\"name\":\"actionInfo\",\"type\":[\"null\",\"string\"],\"doc\":\"Action button information\",\"default\":null},{\"name\":\"eventDate\",\"type\":[\"null\",\"string\"],\"doc\":\"Date of event\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/d2;->j:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/d2;->k:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/d2;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/d2;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/d2;->l:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/d2;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/d2;->m:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/d2$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/d2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/d2$b;-><init>(Le/a/l5/a/d2$a;)V

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

    if-nez v10, :cond_13

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v7, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v7, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v1, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v1, v0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v1, v7

    :goto_2
    invoke-virtual {v9, v1}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_6

    .line 16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 17
    iput-object v7, v0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    :cond_5
    move-object v13, v7

    goto :goto_6

    .line 18
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 19
    iget-object v3, v0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    if-nez v3, :cond_7

    .line 20
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    iput-object v3, v0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    goto :goto_3

    .line 22
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_3
    move-object v10, v3

    :goto_4
    cmp-long v3, v13, v1

    if-gez v3, :cond_5

    move-wide v5, v1

    :goto_5
    cmp-long v1, v5, v13

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v10

    move-object v13, v7

    move-wide v7, v11

    .line 24
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    move-object v7, v13

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_8
    move-object v13, v7

    .line 25
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    goto :goto_4

    .line 26
    :goto_6
    iget-object v1, v0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_9

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_9
    move-object v7, v13

    :goto_7
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    .line 27
    iget-object v1, v0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_a

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_a
    move-object v7, v13

    :goto_8
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_b

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 30
    iput-object v13, v0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    goto :goto_c

    .line 31
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 32
    iget-object v3, v0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    if-nez v3, :cond_c

    .line 33
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 34
    iput-object v3, v0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    goto :goto_9

    .line 35
    :cond_c
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_9
    move-object v10, v3

    :goto_a
    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_e

    move-wide v5, v1

    :goto_b
    cmp-long v1, v5, v3

    if-eqz v1, :cond_d

    .line 36
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v10

    move-wide v7, v11

    .line 37
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    goto :goto_b

    .line 38
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_a

    .line 39
    :cond_e
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_f

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 41
    iput-object v13, v0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    goto :goto_e

    .line 42
    :cond_f
    iget-object v1, v0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_10

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_d

    :cond_10
    move-object v7, v13

    :goto_d
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    .line 43
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_11

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 45
    iput-object v13, v0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    goto/16 :goto_1e

    .line 46
    :cond_11
    iget-object v1, v0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_12

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_f

    :cond_12
    move-object v7, v13

    :goto_f
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    goto/16 :goto_1e

    :cond_13
    move-object v13, v7

    const/4 v1, 0x0

    move v14, v1

    :goto_10
    const/16 v1, 0x9

    if-ge v14, v1, :cond_27

    .line 47
    aget-object v1, v10, v14

    invoke-virtual {v1}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 48
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupt ResolvingDecoder."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_14

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 51
    iput-object v13, v0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    goto/16 :goto_18

    .line 52
    :cond_14
    iget-object v1, v0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_15

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_11

    :cond_15
    move-object v7, v13

    :goto_11
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    goto/16 :goto_18

    .line 53
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_16

    .line 54
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 55
    iput-object v13, v0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    goto/16 :goto_18

    .line 56
    :cond_16
    iget-object v1, v0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_17

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_12

    :cond_17
    move-object v7, v13

    :goto_12
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    goto/16 :goto_18

    .line 57
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_18

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 59
    iput-object v13, v0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    goto/16 :goto_18

    .line 60
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 61
    iget-object v3, v0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    if-nez v3, :cond_19

    .line 62
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    iput-object v3, v0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    goto :goto_13

    .line 64
    :cond_19
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_13
    move-object/from16 v18, v3

    :goto_14
    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_1b

    move-wide v5, v1

    :goto_15
    cmp-long v1, v5, v3

    if-eqz v1, :cond_1a

    .line 65
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v18

    move-wide v7, v11

    .line 66
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    goto :goto_15

    .line 67
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_14

    :cond_1b
    move-wide/from16 v17, v3

    goto/16 :goto_1d

    .line 68
    :pswitch_3
    iget-object v1, v0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1c

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_16

    :cond_1c
    move-object v7, v13

    :goto_16
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    goto :goto_18

    .line 69
    :pswitch_4
    iget-object v1, v0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_1d

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_17

    :cond_1d
    move-object v7, v13

    :goto_17
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    goto :goto_18

    .line 70
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_1e

    .line 71
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 72
    iput-object v13, v0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    :goto_18
    const-wide/16 v17, 0x0

    goto/16 :goto_1d

    .line 73
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readMapStart()J

    move-result-wide v1

    .line 74
    iget-object v3, v0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    if-nez v3, :cond_1f

    .line 75
    new-instance v3, Ljava/util/HashMap;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    iput-object v3, v0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    goto :goto_19

    .line 77
    :cond_1f
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_19
    move-object/from16 v16, v3

    const-wide/16 v17, 0x0

    :goto_1a
    cmp-long v3, v17, v1

    if-gez v3, :cond_26

    move-wide v5, v1

    :goto_1b
    cmp-long v1, v5, v17

    if-eqz v1, :cond_20

    .line 78
    invoke-virtual {v9, v13}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v16

    move-wide v7, v11

    .line 79
    invoke-static/range {v1 .. v8}, Le/d/c/a/a;->y(Lorg/apache/avro/io/ResolvingDecoder;Lorg/apache/avro/util/Utf8;Ljava/util/Map;Lorg/apache/avro/util/Utf8;JJ)J

    move-result-wide v5

    goto :goto_1b

    .line 80
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->mapNext()J

    move-result-wide v1

    goto :goto_1a

    :pswitch_6
    const-wide/16 v17, 0x0

    .line 81
    iget-object v1, v0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    instance-of v2, v1, Lorg/apache/avro/util/Utf8;

    if-eqz v2, :cond_21

    move-object v7, v1

    check-cast v7, Lorg/apache/avro/util/Utf8;

    goto :goto_1c

    :cond_21
    move-object v7, v13

    :goto_1c
    invoke-virtual {v9, v7}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v1

    iput-object v1, v0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    goto :goto_1d

    :pswitch_7
    const-wide/16 v17, 0x0

    .line 82
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_22

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 84
    iput-object v13, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1d

    .line 85
    :cond_22
    iget-object v1, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v1, :cond_23

    .line 86
    new-instance v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v1}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v1, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 87
    :cond_23
    iget-object v1, v0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v1, v9}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1d

    :pswitch_8
    const-wide/16 v17, 0x0

    .line 88
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    if-eq v1, v15, :cond_24

    .line 89
    invoke-virtual/range {p1 .. p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 90
    iput-object v13, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    goto :goto_1d

    .line 91
    :cond_24
    iget-object v1, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    if-nez v1, :cond_25

    .line 92
    new-instance v1, Le/a/l5/a/l3;

    invoke-direct {v1}, Le/a/l5/a/l3;-><init>()V

    iput-object v1, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    .line 93
    :cond_25
    iget-object v1, v0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    invoke-virtual {v1, v9}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :cond_26
    :goto_1d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10

    :cond_27
    :goto_1e
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
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    const-string v3, "."

    const-string v4, ", but element count was "

    const-string v5, "Map-size written was "

    const-wide/16 v6, 0x1

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 15
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 16
    iget-object v0, p0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v8, v0

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 18
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 19
    iget-object v0, p0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-long/2addr v10, v6

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 21
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {p1, v13}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 22
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_9

    .line 25
    :goto_3
    iget-object v0, p0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 28
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 29
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 30
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 31
    iget-object v0, p0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v8, v0

    .line 32
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapStart()V

    .line 33
    invoke-virtual {p1, v8, v9}, Lorg/apache/avro/io/Encoder;->setItemCount(J)V

    .line 34
    iget-object v0, p0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-long/2addr v10, v6

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->startItem()V

    .line 36
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {p1, v13}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 37
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p1, v12}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 39
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeMapEnd()V

    cmp-long v0, v10, v8

    if-nez v0, :cond_8

    .line 40
    :goto_5
    iget-object v0, p0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 41
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 42
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 43
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 44
    iget-object v0, p0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 45
    :goto_6
    iget-object v0, p0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    .line 46
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 47
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_7

    .line 48
    :cond_7
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 49
    iget-object v0, p0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_7
    return-void

    .line 50
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-static {v5, v8, v9, v4}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_9
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
    iget-object p1, p0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/d2;->j:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/d2;->k:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/d2;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/d2;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/d2;->g:Ljava/util/Map;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/d2;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/d2;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Le/a/l5/a/d2;->d:Ljava/util/Map;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/d2;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/d2;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/d2;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/d2;->m:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/d2;->l:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
