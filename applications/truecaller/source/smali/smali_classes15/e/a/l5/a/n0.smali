.class public Le/a/l5/a/n0;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/n0$b;
    }
.end annotation


# static fields
.field public static final j:Lorg/apache/avro/Schema;

.field public static k:Lorg/apache/avro/specific/SpecificData;

.field public static final l:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/n0;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/n0;",
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

.field public g:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Z
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

    const-string v0, "{\"type\":\"record\",\"name\":\"AppFlashAction\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"messageId\",\"type\":\"string\"},{\"name\":\"senderId\",\"type\":\"string\"},{\"name\":\"threadId\",\"type\":\"string\"},{\"name\":\"contentType\",\"type\":\"string\"},{\"name\":\"fromPhonebook\",\"type\":\"boolean\"},{\"name\":\"missed\",\"type\":\"boolean\"},{\"name\":\"userAction\",\"type\":[\"null\",\"string\"]}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/n0;->j:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/n0;->k:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/n0;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/n0;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/n0;->l:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/n0;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/n0;->m:Lorg/apache/avro/io/DatumReader;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v2, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/a/l5/a/l3;

    invoke-direct {v0}, Le/a/l5/a/l3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v2, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v0, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    iget-object v0, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    .line 15
    iget-object v0, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_5

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    .line 16
    iget-object v0, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_6

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_6
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    .line 17
    iget-object v0, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_7

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_5

    :cond_7
    move-object v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/n0;->g:Z

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/n0;->h:Z

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 21
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 22
    iput-object v2, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    goto/16 :goto_d

    .line 23
    :cond_8
    iget-object v0, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    instance-of v1, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v1, :cond_9

    move-object v2, v0

    check-cast v2, Lorg/apache/avro/util/Utf8;

    :cond_9
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    goto/16 :goto_d

    :cond_a
    const/4 v3, 0x0

    :goto_6
    const/16 v4, 0x9

    if-ge v3, v4, :cond_15

    .line 24
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_b

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 28
    iput-object v2, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 29
    :cond_b
    iget-object v4, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_c

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_c
    move-object v4, v2

    :goto_7
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 30
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/n0;->h:Z

    goto/16 :goto_c

    .line 31
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/n0;->g:Z

    goto/16 :goto_c

    .line 32
    :pswitch_3
    iget-object v4, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_d

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_d
    move-object v4, v2

    :goto_8
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 33
    :pswitch_4
    iget-object v4, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_e

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_e
    move-object v4, v2

    :goto_9
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    goto :goto_c

    .line 34
    :pswitch_5
    iget-object v4, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_f

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_a

    :cond_f
    move-object v4, v2

    :goto_a
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    goto :goto_c

    .line 35
    :pswitch_6
    iget-object v4, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_10

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_b

    :cond_10
    move-object v4, v2

    :goto_b
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    goto :goto_c

    .line 36
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_11

    .line 37
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 38
    iput-object v2, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_c

    .line 39
    :cond_11
    iget-object v4, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v4, :cond_12

    .line 40
    new-instance v4, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v4, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 41
    :cond_12
    iget-object v4, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_c

    .line 42
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_13

    .line 43
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 44
    iput-object v2, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    goto :goto_c

    .line 45
    :cond_13
    iget-object v4, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    if-nez v4, :cond_14

    .line 46
    new-instance v4, Le/a/l5/a/l3;

    invoke-direct {v4}, Le/a/l5/a/l3;-><init>()V

    iput-object v4, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    .line 47
    :cond_14
    iget-object v4, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    invoke-virtual {v4, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_15
    :goto_d
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

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 15
    iget-boolean v0, p0, Le/a/l5/a/n0;->g:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 16
    iget-boolean v0, p0, Le/a/l5/a/n0;->h:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 17
    iget-object v0, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 18
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
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
    iget-object p1, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :pswitch_1
    iget-boolean p1, p0, Le/a/l5/a/n0;->h:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    iget-boolean p1, p0, Le/a/l5/a/n0;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/n0;->j:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/n0;->k:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/n0;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/n0;->h:Z

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/n0;->g:Z

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/n0;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/n0;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/n0;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/n0;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/n0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/n0;->a:Le/a/l5/a/l3;

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
    sget-object v0, Le/a/l5/a/n0;->m:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/n0;->l:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
