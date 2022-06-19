.class public Le/a/l5/a/r1;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/r1$b;
    }
.end annotation


# static fields
.field public static final r:Lorg/apache/avro/Schema;

.field public static s:Lorg/apache/avro/specific/SpecificData;

.field public static final t:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/r1;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/r1;",
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

.field public d:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppPermissionState\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Application permissions state\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"dialerAppPackage\",\"type\":[\"null\",\"string\"],\"doc\":\"Current user default dialer app. eg. \\\"com.truecaller\\\"\"},{\"name\":\"notificationsShow\",\"type\":\"boolean\",\"doc\":\"If application can show a notification\"},{\"name\":\"notificationsAccess\",\"type\":\"boolean\",\"doc\":\"Application has permission to listen and modify all notifications\"},{\"name\":\"camera\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has access to camera\"},{\"name\":\"contacts\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has access to contacts\"},{\"name\":\"storage\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has access to external storage\"},{\"name\":\"phone\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to read phone state\"},{\"name\":\"location\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to access user location\"},{\"name\":\"drawOnTop\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to draw on top of other apps\"},{\"name\":\"batteryOptimization\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application is in power whitelist\"},{\"name\":\"settingsWrite\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application can modify system settings\"},{\"name\":\"callerIdApp\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application is set as \\\"Call screening app\\\"\"},{\"name\":\"callLog\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to read call logs\",\"default\":null},{\"name\":\"microphone\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to use microphone\",\"default\":null},{\"name\":\"accessibility\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to use accessibility features\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/r1;->r:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/r1;->s:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/r1;->s:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/r1;->s:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/r1;->t:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/r1;->s:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/r1;->u:Lorg/apache/avro/io/DatumReader;

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

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v2, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/a/l5/a/l3;

    invoke-direct {v0}, Le/a/l5/a/l3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v2, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v0, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 16
    iput-object v2, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    goto :goto_3

    .line 17
    :cond_4
    iget-object v0, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_5

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    .line 18
    :goto_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/r1;->d:Z

    .line 19
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/r1;->e:Z

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 21
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 22
    iput-object v2, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    .line 24
    :goto_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 26
    iput-object v2, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    goto :goto_5

    .line 27
    :cond_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    .line 28
    :goto_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 29
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 30
    iput-object v2, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    goto :goto_6

    .line 31
    :cond_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    .line 32
    :goto_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 33
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 34
    iput-object v2, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    goto :goto_7

    .line 35
    :cond_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    .line 36
    :goto_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 37
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 38
    iput-object v2, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    goto :goto_8

    .line 39
    :cond_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    .line 40
    :goto_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_b

    .line 41
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 42
    iput-object v2, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    goto :goto_9

    .line 43
    :cond_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    .line 44
    :goto_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 45
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 46
    iput-object v2, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    goto :goto_a

    .line 47
    :cond_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    .line 48
    :goto_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 49
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 50
    iput-object v2, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    goto :goto_b

    .line 51
    :cond_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    .line 52
    :goto_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 53
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 54
    iput-object v2, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    goto :goto_c

    .line 55
    :cond_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    .line 56
    :goto_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_f

    .line 57
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 58
    iput-object v2, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    goto :goto_d

    .line 59
    :cond_f
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    .line 60
    :goto_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_10

    .line 61
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 62
    iput-object v2, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    goto :goto_e

    .line 63
    :cond_10
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    .line 64
    :goto_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_11

    .line 65
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 66
    iput-object v2, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 67
    :cond_11
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    goto/16 :goto_12

    :cond_12
    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x11

    if-ge v3, v4, :cond_25

    .line 68
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 69
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_13

    .line 71
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 72
    iput-object v2, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 73
    :cond_13
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 74
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_14

    .line 75
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 76
    iput-object v2, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 77
    :cond_14
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 78
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_15

    .line 79
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 80
    iput-object v2, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 81
    :cond_15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 82
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_16

    .line 83
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 84
    iput-object v2, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 85
    :cond_16
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 86
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_17

    .line 87
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 88
    iput-object v2, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 89
    :cond_17
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 90
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_18

    .line 91
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 92
    iput-object v2, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 93
    :cond_18
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 94
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_19

    .line 95
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 96
    iput-object v2, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 97
    :cond_19
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 98
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1a

    .line 99
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 100
    iput-object v2, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 101
    :cond_1a
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 102
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1b

    .line 103
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 104
    iput-object v2, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 105
    :cond_1b
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 106
    :pswitch_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1c

    .line 107
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 108
    iput-object v2, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 109
    :cond_1c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 110
    :pswitch_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1d

    .line 111
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 112
    iput-object v2, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 113
    :cond_1d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 114
    :pswitch_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1e

    .line 115
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 116
    iput-object v2, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    goto/16 :goto_11

    .line 117
    :cond_1e
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    goto :goto_11

    .line 118
    :pswitch_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/r1;->e:Z

    goto :goto_11

    .line 119
    :pswitch_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/r1;->d:Z

    goto :goto_11

    .line 120
    :pswitch_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1f

    .line 121
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 122
    iput-object v2, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    goto :goto_11

    .line 123
    :cond_1f
    iget-object v4, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_20

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_10

    :cond_20
    move-object v4, v2

    :goto_10
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    goto :goto_11

    .line 124
    :pswitch_f
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_21

    .line 125
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 126
    iput-object v2, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_11

    .line 127
    :cond_21
    iget-object v4, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v4, :cond_22

    .line 128
    new-instance v4, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v4, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 129
    :cond_22
    iget-object v4, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_11

    .line 130
    :pswitch_10
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_23

    .line 131
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 132
    iput-object v2, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    goto :goto_11

    .line 133
    :cond_23
    iget-object v4, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    if-nez v4, :cond_24

    .line 134
    new-instance v4, Le/a/l5/a/l3;

    invoke-direct {v4}, Le/a/l5/a/l3;-><init>()V

    iput-object v4, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    .line 135
    :cond_24
    iget-object v4, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    invoke-virtual {v4, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_25
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 15
    iget-object v0, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    iget-boolean v0, p0, Le/a/l5/a/r1;->d:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 17
    iget-boolean v0, p0, Le/a/l5/a/r1;->e:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 23
    :goto_3
    iget-object v0, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 28
    :goto_4
    iget-object v0, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 33
    :goto_5
    iget-object v0, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 38
    :goto_6
    iget-object v0, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    .line 39
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 40
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_7

    .line 41
    :cond_7
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 42
    iget-object v0, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 43
    :goto_7
    iget-object v0, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 44
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 45
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_8

    .line 46
    :cond_8
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 47
    iget-object v0, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 48
    :goto_8
    iget-object v0, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    .line 49
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 50
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_9

    .line 51
    :cond_9
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 52
    iget-object v0, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 53
    :goto_9
    iget-object v0, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 54
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 55
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_a

    .line 56
    :cond_a
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 57
    iget-object v0, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 58
    :goto_a
    iget-object v0, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    .line 59
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 60
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_b

    .line 61
    :cond_b
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 62
    iget-object v0, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 63
    :goto_b
    iget-object v0, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 64
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 65
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_c

    .line 66
    :cond_c
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 67
    iget-object v0, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 68
    :goto_c
    iget-object v0, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 69
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 70
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_d

    .line 71
    :cond_d
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 72
    iget-object v0, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 73
    :goto_d
    iget-object v0, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 74
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 75
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_e

    .line 76
    :cond_e
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 77
    iget-object v0, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    :goto_e
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
    iget-object p1, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    return-object p1

    .line 13
    :pswitch_b
    iget-object p1, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    return-object p1

    .line 14
    :pswitch_c
    iget-boolean p1, p0, Le/a/l5/a/r1;->e:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_d
    iget-boolean p1, p0, Le/a/l5/a/r1;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_e
    iget-object p1, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    return-object p1

    .line 17
    :pswitch_f
    iget-object p1, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 18
    :pswitch_10
    iget-object p1, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
    sget-object v0, Le/a/l5/a/r1;->r:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/r1;->s:Lorg/apache/avro/specific/SpecificData;

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
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->q:Ljava/lang/Boolean;

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->p:Ljava/lang/Boolean;

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->o:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->n:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->m:Ljava/lang/Boolean;

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->l:Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->k:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->j:Ljava/lang/Boolean;

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/r1;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 14
    :pswitch_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/r1;->e:Z

    goto :goto_0

    .line 15
    :pswitch_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/r1;->d:Z

    goto :goto_0

    .line 16
    :pswitch_e
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/r1;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 17
    :pswitch_f
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/r1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 18
    :pswitch_10
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/r1;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
    sget-object v0, Le/a/l5/a/r1;->u:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/r1;->t:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
