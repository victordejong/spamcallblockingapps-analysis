.class public Lcom/truecaller/tracking/events/ClientHeaderV2;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/tracking/events/ClientHeaderV2$b;
    }
.end annotation


# static fields
.field public static final i:Lorg/apache/avro/Schema;

.field public static j:Lorg/apache/avro/specific/SpecificData;

.field public static final k:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Lcom/truecaller/tracking/events/ClientHeaderV2;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Lcom/truecaller/tracking/events/ClientHeaderV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:J
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

.field public e:Lcom/truecaller/tracking/events/App;
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

.field public h:Lcom/truecaller/tracking/events/Coordinates;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/ClientHeaderV2;->i:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Lcom/truecaller/tracking/events/ClientHeaderV2;->j:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Lcom/truecaller/tracking/events/ClientHeaderV2;->j:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Lcom/truecaller/tracking/events/ClientHeaderV2;->j:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Lcom/truecaller/tracking/events/ClientHeaderV2;->k:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Lcom/truecaller/tracking/events/ClientHeaderV2;->j:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Lcom/truecaller/tracking/events/ClientHeaderV2;->l:Lorg/apache/avro/io/DatumReader;

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

    if-nez v0, :cond_8

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->a:J

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->b:J

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 6
    iput-object v2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    .line 9
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/truecaller/tracking/events/App;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/App;-><init>()V

    iput-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/App;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    .line 13
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_5

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    goto/16 :goto_b

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    if-nez v0, :cond_7

    .line 18
    new-instance v0, Lcom/truecaller/tracking/events/Coordinates;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/Coordinates;-><init>()V

    iput-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/Coordinates;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_b

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v3, v4, :cond_11

    .line 20
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_9

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 24
    iput-object v2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    goto/16 :goto_a

    .line 25
    :cond_9
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    if-nez v4, :cond_a

    .line 26
    new-instance v4, Lcom/truecaller/tracking/events/Coordinates;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/Coordinates;-><init>()V

    iput-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    .line 27
    :cond_a
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/Coordinates;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_a

    .line 28
    :pswitch_1
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_b

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_6

    :cond_b
    move-object v4, v2

    :goto_6
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    goto :goto_a

    .line 29
    :pswitch_2
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_c

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_c
    move-object v4, v2

    :goto_7
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    goto :goto_a

    .line 30
    :pswitch_3
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    if-nez v4, :cond_d

    .line 31
    new-instance v4, Lcom/truecaller/tracking/events/App;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/App;-><init>()V

    iput-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    .line 32
    :cond_d
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/App;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_a

    .line 33
    :pswitch_4
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_e

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_e
    move-object v4, v2

    :goto_8
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    goto :goto_a

    .line 34
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_f

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 36
    iput-object v2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    goto :goto_a

    .line 37
    :cond_f
    iget-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_10

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_10
    move-object v4, v2

    :goto_9
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    goto :goto_a

    .line 38
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->b:J

    goto :goto_a

    .line 39
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->a:J

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_11
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    iget-wide v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->a:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->b:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/App;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/Coordinates;->customEncode(Lorg/apache/avro/io/Encoder;)V

    :goto_1
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
    iget-object p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 8
    :pswitch_6
    iget-wide v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_7
    iget-wide v0, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Lcom/truecaller/tracking/events/ClientHeaderV2;->i:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/ClientHeaderV2;->j:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Lcom/truecaller/tracking/events/Coordinates;

    iput-object p2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->h:Lcom/truecaller/tracking/events/Coordinates;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->g:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Lcom/truecaller/tracking/events/App;

    iput-object p2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->e:Lcom/truecaller/tracking/events/App;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->b:J

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/tracking/events/ClientHeaderV2;->a:J

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Lcom/truecaller/tracking/events/ClientHeaderV2;->l:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Lcom/truecaller/tracking/events/ClientHeaderV2;->k:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
