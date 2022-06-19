.class public Le/a/l5/a/l3;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# static fields
.field public static final f:Lorg/apache/avro/Schema;

.field public static g:Lorg/apache/avro/specific/SpecificData;

.field public static final h:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/l3;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/l3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Lcom/truecaller/tracking/events/App;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Le/a/l5/a/k4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Le/a/l5/a/y3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"CommonHeader\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/l3;->f:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/l3;->g:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/l3;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/l3;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/l3;->h:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/l3;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/l3;->i:Lorg/apache/avro/io/DatumReader;

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

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Le/a/l5/a/l3;->a:J

    .line 3
    iget-object v0, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 6
    iput-object v2, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcom/truecaller/tracking/events/App;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/App;-><init>()V

    iput-object v0, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    .line 9
    :cond_2
    iget-object v0, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/App;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 10
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 12
    iput-object v2, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Le/a/l5/a/k4;

    invoke-direct {v0}, Le/a/l5/a/k4;-><init>()V

    iput-object v0, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    .line 15
    :cond_4
    iget-object v0, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    invoke-virtual {v0, p1}, Le/a/l5/a/k4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 16
    :goto_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 18
    iput-object v2, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    goto/16 :goto_6

    .line 19
    :cond_5
    iget-object v0, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    if-nez v0, :cond_6

    .line 20
    new-instance v0, Le/a/l5/a/y3;

    invoke-direct {v0}, Le/a/l5/a/y3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    .line 21
    :cond_6
    iget-object v0, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    invoke-virtual {v0, p1}, Le/a/l5/a/y3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x5

    if-ge v3, v4, :cond_14

    .line 22
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    if-eqz v4, :cond_13

    if-eq v4, v1, :cond_11

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_8

    .line 24
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 25
    iput-object v2, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    goto/16 :goto_5

    .line 26
    :cond_8
    iget-object v4, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    if-nez v4, :cond_9

    .line 27
    new-instance v4, Le/a/l5/a/y3;

    invoke-direct {v4}, Le/a/l5/a/y3;-><init>()V

    iput-object v4, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    .line 28
    :cond_9
    iget-object v4, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    invoke-virtual {v4, p1}, Le/a/l5/a/y3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_5

    .line 29
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_c

    .line 31
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 32
    iput-object v2, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    goto :goto_5

    .line 33
    :cond_c
    iget-object v4, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    if-nez v4, :cond_d

    .line 34
    new-instance v4, Le/a/l5/a/k4;

    invoke-direct {v4}, Le/a/l5/a/k4;-><init>()V

    iput-object v4, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    .line 35
    :cond_d
    iget-object v4, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    invoke-virtual {v4, p1}, Le/a/l5/a/k4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_5

    .line 36
    :cond_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_f

    .line 37
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 38
    iput-object v2, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    goto :goto_5

    .line 39
    :cond_f
    iget-object v4, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    if-nez v4, :cond_10

    .line 40
    new-instance v4, Lcom/truecaller/tracking/events/App;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/App;-><init>()V

    iput-object v4, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    .line 41
    :cond_10
    iget-object v4, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/App;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_5

    .line 42
    :cond_11
    iget-object v4, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_12

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_12
    move-object v4, v2

    :goto_4
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    goto :goto_5

    .line 43
    :cond_13
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Le/a/l5/a/l3;->a:J

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_14
    :goto_6
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/a/l5/a/l3;->a:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 2
    iget-object v0, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

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
    iget-object v0, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/App;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 8
    :goto_0
    iget-object v0, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 10
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 12
    iget-object v0, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    .line 13
    iget-object v3, v0, Le/a/l5/a/k4;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, v0, Le/a/l5/a/k4;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    iget-object v0, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 19
    iget-object v0, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

    .line 20
    iget-object v1, v0, Le/a/l5/a/y3;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, v0, Le/a/l5/a/y3;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

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
    iget-object p1, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :cond_4
    iget-wide v0, p0, Le/a/l5/a/l3;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/l3;->f:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/l3;->g:Lorg/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public hasCustomCoders()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Le/a/l5/a/y3;

    iput-object p2, p0, Le/a/l5/a/l3;->e:Le/a/l5/a/y3;

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
    check-cast p2, Le/a/l5/a/k4;

    iput-object p2, p0, Le/a/l5/a/l3;->d:Le/a/l5/a/k4;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Lcom/truecaller/tracking/events/App;

    iput-object p2, p0, Le/a/l5/a/l3;->c:Lcom/truecaller/tracking/events/App;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/l3;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Le/a/l5/a/l3;->a:J

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
    sget-object v0, Le/a/l5/a/l3;->i:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/l3;->h:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
