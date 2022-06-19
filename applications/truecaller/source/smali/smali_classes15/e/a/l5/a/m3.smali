.class public Le/a/l5/a/m3;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/m3$b;
    }
.end annotation


# static fields
.field public static final j:Lorg/apache/avro/Schema;

.field public static k:Lorg/apache/avro/specific/SpecificData;

.field public static final l:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/m3;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/m3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"ContactInfo\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/m3;->j:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/m3;->k:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/m3;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/m3;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/m3;->l:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/m3;->k:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/m3;->m:Lorg/apache/avro/io/DatumReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/specific/SpecificRecordBase;-><init>()V

    return-void
.end method

.method public static a()Le/a/l5/a/m3$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/l5/a/m3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/m3$b;-><init>(Le/a/l5/a/m3$a;)V

    return-object v0
.end method


# virtual methods
.method public customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readFieldOrderIfDiff()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/m3;->a:Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/m3;->b:Z

    .line 4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 6
    iput-object v1, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v1, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    .line 12
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 14
    iput-object v1, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    .line 16
    :goto_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 18
    iput-object v1, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    .line 20
    :goto_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 21
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 22
    iput-object v1, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    goto :goto_4

    .line 23
    :cond_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    .line 24
    :goto_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 26
    iput-object v1, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    goto :goto_5

    .line 27
    :cond_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    .line 28
    :goto_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 29
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 30
    iput-object v1, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    goto/16 :goto_8

    .line 31
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    goto/16 :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_6
    const/16 v4, 0x9

    if-ge v3, v4, :cond_f

    .line 32
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 36
    iput-object v1, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    goto/16 :goto_7

    .line 37
    :cond_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    goto/16 :goto_7

    .line 38
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_9

    .line 39
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 40
    iput-object v1, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    goto/16 :goto_7

    .line 41
    :cond_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    goto/16 :goto_7

    .line 42
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_a

    .line 43
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 44
    iput-object v1, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    goto/16 :goto_7

    .line 45
    :cond_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    goto/16 :goto_7

    .line 46
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_b

    .line 47
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 48
    iput-object v1, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    goto :goto_7

    .line 49
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    goto :goto_7

    .line 50
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_c

    .line 51
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 52
    iput-object v1, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    goto :goto_7

    .line 53
    :cond_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    goto :goto_7

    .line 54
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_d

    .line 55
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 56
    iput-object v1, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    goto :goto_7

    .line 57
    :cond_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    goto :goto_7

    .line 58
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v2, :cond_e

    .line 59
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 60
    iput-object v1, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    goto :goto_7

    .line 61
    :cond_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    goto :goto_7

    .line 62
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/m3;->b:Z

    goto :goto_7

    .line 63
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/m3;->a:Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_f
    :goto_8
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
    iget-boolean v0, p0, Le/a/l5/a/m3;->a:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 2
    iget-boolean v0, p0, Le/a/l5/a/m3;->b:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 3
    iget-object v0, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 8
    :goto_0
    iget-object v0, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 13
    :goto_1
    iget-object v0, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 17
    iget-object v0, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 18
    :goto_2
    iget-object v0, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 19
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 22
    iget-object v0, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 23
    :goto_3
    iget-object v0, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 24
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 26
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 27
    iget-object v0, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    .line 28
    :goto_4
    iget-object v0, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 29
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 30
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 31
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 32
    iget-object v0, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 33
    :goto_5
    iget-object v0, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 34
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 36
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 37
    iget-object v0, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    :goto_6
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
    iget-object p1, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    return-object p1

    .line 9
    :pswitch_7
    iget-boolean p1, p0, Le/a/l5/a/m3;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_8
    iget-boolean p1, p0, Le/a/l5/a/m3;->a:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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
    sget-object v0, Le/a/l5/a/m3;->j:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/m3;->k:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/m3;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/m3;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Le/a/l5/a/m3;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/m3;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/m3;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/m3;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/m3;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/m3;->b:Z

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/m3;->a:Z

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
    sget-object v0, Le/a/l5/a/m3;->m:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/m3;->l:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
