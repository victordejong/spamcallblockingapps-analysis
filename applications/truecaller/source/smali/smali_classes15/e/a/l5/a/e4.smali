.class public Le/a/l5/a/e4;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/e4$b;
    }
.end annotation


# static fields
.field public static final f:Lorg/apache/avro/Schema;

.field public static g:Lorg/apache/avro/specific/SpecificData;

.field public static final h:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/e4;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/e4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Le/a/l5/a/i4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Le/a/l5/a/m3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"SearchEntity\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"term\",\"type\":\"string\"},{\"name\":\"noServerSearchReason\",\"type\":[\"null\",\"string\"]},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]},{\"name\":\"tags\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"TagsServed\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}]},{\"name\":\"contactInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}]}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/e4;->f:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/e4;->g:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/e4;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/e4;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/e4;->h:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/e4;->g:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/e4;->i:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/e4$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/e4$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/e4$b;-><init>(Le/a/l5/a/e4$a;)V

    return-object v0
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

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 5
    iput-object v2, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    .line 7
    :goto_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 9
    iput-object v2, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    goto :goto_4

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    .line 11
    :goto_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 13
    iput-object v2, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    goto :goto_5

    .line 14
    :cond_5
    iget-object v0, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    if-nez v0, :cond_6

    .line 15
    new-instance v0, Le/a/l5/a/i4;

    invoke-direct {v0}, Le/a/l5/a/i4;-><init>()V

    iput-object v0, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    .line 16
    :cond_6
    iget-object v0, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    invoke-virtual {v0, p1}, Le/a/l5/a/i4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 17
    :goto_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 19
    iput-object v2, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    goto/16 :goto_b

    .line 20
    :cond_7
    iget-object v0, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    if-nez v0, :cond_8

    .line 21
    new-instance v0, Le/a/l5/a/m3;

    invoke-direct {v0}, Le/a/l5/a/m3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    .line 22
    :cond_8
    iget-object v0, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    invoke-virtual {v0, p1}, Le/a/l5/a/m3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_b

    :cond_9
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x5

    if-ge v3, v4, :cond_18

    .line 23
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    if-eqz v4, :cond_16

    if-eq v4, v1, :cond_13

    const/4 v5, 0x2

    if-eq v4, v5, :cond_10

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    .line 24
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_a

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 26
    iput-object v2, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    goto/16 :goto_a

    .line 27
    :cond_a
    iget-object v4, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    if-nez v4, :cond_b

    .line 28
    new-instance v4, Le/a/l5/a/m3;

    invoke-direct {v4}, Le/a/l5/a/m3;-><init>()V

    iput-object v4, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    .line 29
    :cond_b
    iget-object v4, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    invoke-virtual {v4, p1}, Le/a/l5/a/m3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_a

    .line 30
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_e

    .line 32
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 33
    iput-object v2, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    goto :goto_a

    .line 34
    :cond_e
    iget-object v4, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    if-nez v4, :cond_f

    .line 35
    new-instance v4, Le/a/l5/a/i4;

    invoke-direct {v4}, Le/a/l5/a/i4;-><init>()V

    iput-object v4, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    .line 36
    :cond_f
    iget-object v4, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    invoke-virtual {v4, p1}, Le/a/l5/a/i4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_a

    .line 37
    :cond_10
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_11

    .line 38
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 39
    iput-object v2, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    goto :goto_a

    .line 40
    :cond_11
    iget-object v4, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_12

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_12
    move-object v4, v2

    :goto_7
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    goto :goto_a

    .line 41
    :cond_13
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_14

    .line 42
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 43
    iput-object v2, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    goto :goto_a

    .line 44
    :cond_14
    iget-object v4, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_15

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_15
    move-object v4, v2

    :goto_8
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    goto :goto_a

    .line 45
    :cond_16
    iget-object v4, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_17

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_17
    move-object v4, v2

    :goto_9
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_18
    :goto_b
    return-void
.end method

.method public customEncode(Lorg/apache/avro/io/Encoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 6
    iget-object v0, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 11
    iget-object v0, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    iget-object v0, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

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
    iget-object v0, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    invoke-virtual {v0, p1}, Le/a/l5/a/i4;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 17
    :goto_2
    iget-object v0, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

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
    iget-object v0, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

    invoke-virtual {v0, p1}, Le/a/l5/a/m3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    :goto_3
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
    iget-object p1, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

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
    iget-object p1, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/e4;->f:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/e4;->g:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Le/a/l5/a/m3;

    iput-object p2, p0, Le/a/l5/a/e4;->e:Le/a/l5/a/m3;

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
    check-cast p2, Le/a/l5/a/i4;

    iput-object p2, p0, Le/a/l5/a/e4;->d:Le/a/l5/a/i4;

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/e4;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5
    :cond_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/e4;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6
    :cond_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/e4;->a:Ljava/lang/CharSequence;

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
    sget-object v0, Le/a/l5/a/e4;->i:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/e4;->h:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
