.class public Le/a/l5/a/g0;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/g0$b;
    }
.end annotation


# static fields
.field public static final D:Lorg/apache/avro/Schema;

.field public static E:Lorg/apache/avro/specific/SpecificData;

.field public static final J:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/g0;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/g0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public B:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public C:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Le/a/l5/a/l3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lcom/truecaller/tracking/events/ClientHeaderV2;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Z
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

.field public f:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Lcom/truecaller/tracking/events/AppStandbyBucket;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public s:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public t:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public v:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public w:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public x:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public y:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public z:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppConfigStateAndroid\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Android\'s application configurations state\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"domainFronting\",\"type\":\"boolean\",\"doc\":\"Client uses domain fronting or not.\"},{\"name\":\"dualSimDevice\",\"type\":\"boolean\",\"doc\":\"User device supports dual sim or not.\"},{\"name\":\"googleServices\",\"type\":\"boolean\",\"doc\":\"User device has google services or not.\"},{\"name\":\"googleServicesVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"Google services version eg. \\\"211515049\\\"\"},{\"name\":\"region1\",\"type\":\"boolean\",\"doc\":\"Whether region 1 is enabled or not.\"},{\"name\":\"securityPatchVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"This value represents the date when the device most recently applied a security patch. eg. \\\"2020-09-05\\\"\"},{\"name\":\"standbyBucket\",\"type\":[\"null\",{\"type\":\"enum\",\"name\":\"AppStandbyBucket\",\"doc\":\"Android\'s application Standby bucket types\",\"symbols\":[\"ACTIVE\",\"WORKING_SET\",\"FREQUENT\",\"RARE\",\"RESTRICTED\"]}],\"doc\":\"App\'s current priority bucket. values \\\"Active\\\", \\\"WorkingSet\\\", \\\"Frequent\\\",\\\"Rare\\\",\\\"Unknown\\\",\\\"CouldntGetUsageStatsMgr\\\"\"},{\"name\":\"carrierMenuName\",\"type\":[\"null\",\"string\"],\"doc\":\"Carrier menu. eg. \\\"Telenor\\\"\"},{\"name\":\"themeName\",\"type\":\"string\",\"doc\":\"Application theme name\"},{\"name\":\"backupEnabled\",\"type\":\"boolean\",\"doc\":\"Whether truecaller Backup is enabled\"},{\"name\":\"accountBackedUp\",\"type\":\"boolean\",\"doc\":\"Account file was backedup by autobackup\"},{\"name\":\"enhancedSearch\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Whether enhanced search is turned. null denotes that enhanced search is unavailable for a user/build\"},{\"name\":\"blockTopSpammers\",\"type\":\"boolean\",\"doc\":\"Whether top spammer filter is enabled\"},{\"name\":\"blockHiddenCalls\",\"type\":\"boolean\",\"doc\":\"Whether hidden call filter is enabled\"},{\"name\":\"searchClipBoard\",\"type\":\"boolean\",\"doc\":\"Whether clipboard search is enabled\"},{\"name\":\"searchMessagingApps\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Whether enhanced notification is enabled. null denotes that this function is not available, e.g. no notification access\"},{\"name\":\"missedCallNotification\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Whether showing missed calls notifications is enabled. null denotes that this function is not available, e.g. no notification access\"},{\"name\":\"missedCallReminder\",\"type\":\"boolean\",\"doc\":\"Determines whether missed call reminders are enabled or not\"},{\"name\":\"callerIdForPhonebook\",\"type\":\"boolean\",\"doc\":\"Caller id is enabled for phonebook.\"},{\"name\":\"incomingCallNotification\",\"type\":\"boolean\",\"doc\":\"Whether notifications for incoming call are shown\"},{\"name\":\"afterCall\",\"type\":\"boolean\",\"doc\":\"After caller is enabled.\"},{\"name\":\"afterCallForPhonebook\",\"type\":\"boolean\",\"doc\":\"After caller is enabled for phonebook contacts.\"},{\"name\":\"groupCallsMergingEnabled\",\"type\":\"boolean\",\"doc\":\"\u0421alls from the same number will be merged\"},{\"name\":\"mostCalled\",\"type\":\"boolean\",\"doc\":\"Whether frequently called contacts are shown\"},{\"name\":\"flashEnabled\",\"type\":\"boolean\",\"doc\":\"Flash feature is enabled or not\"},{\"name\":\"smsDeliveryReport\",\"type\":\"boolean\",\"doc\":\"Whether SMS delivery report is required\"},{\"name\":\"whatsAppEnabledInCallLog\",\"type\":\"boolean\",\"doc\":\"Whether WhatsApp call are shown in call log or not\"}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/g0;->D:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/g0;->E:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/g0;->E:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/g0;->E:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/g0;->J:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/g0;->E:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/g0;->K:Lorg/apache/avro/io/DatumReader;

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

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v2, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/a/l5/a/l3;

    invoke-direct {v0}, Le/a/l5/a/l3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v2, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v0, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->c:Z

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->d:Z

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->e:Z

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 19
    iput-object v2, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    goto :goto_3

    .line 20
    :cond_4
    iget-object v0, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_5

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    .line 21
    :goto_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->g:Z

    .line 22
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 23
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 24
    iput-object v2, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    goto :goto_5

    .line 25
    :cond_6
    iget-object v0, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_7

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    .line 26
    :goto_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 28
    iput-object v2, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto :goto_6

    .line 29
    :cond_8
    invoke-static {}, Lcom/truecaller/tracking/events/AppStandbyBucket;->values()[Lcom/truecaller/tracking/events/AppStandbyBucket;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readEnum()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    .line 30
    :goto_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 31
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 32
    iput-object v2, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    goto :goto_8

    .line 33
    :cond_9
    iget-object v0, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_a

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_a
    move-object v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    .line 34
    :goto_8
    iget-object v0, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_b

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_b
    move-object v0, v2

    :goto_9
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->l:Z

    .line 36
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->m:Z

    .line 37
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 38
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 39
    iput-object v2, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    goto :goto_a

    .line 40
    :cond_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    .line 41
    :goto_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->o:Z

    .line 42
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->p:Z

    .line 43
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->q:Z

    .line 44
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 45
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 46
    iput-object v2, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    goto :goto_b

    .line 47
    :cond_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    .line 48
    :goto_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 49
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 50
    iput-object v2, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    goto :goto_c

    .line 51
    :cond_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    .line 52
    :goto_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->t:Z

    .line 53
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->u:Z

    .line 54
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->v:Z

    .line 55
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->w:Z

    .line 56
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->x:Z

    .line 57
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->y:Z

    .line 58
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->z:Z

    .line 59
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->A:Z

    .line 60
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/g0;->B:Z

    .line 61
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->C:Z

    goto/16 :goto_13

    :cond_f
    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x1d

    if-ge v3, v4, :cond_1f

    .line 62
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 63
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->C:Z

    goto/16 :goto_12

    .line 65
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->B:Z

    goto/16 :goto_12

    .line 66
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->A:Z

    goto/16 :goto_12

    .line 67
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->z:Z

    goto/16 :goto_12

    .line 68
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->y:Z

    goto/16 :goto_12

    .line 69
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->x:Z

    goto/16 :goto_12

    .line 70
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->w:Z

    goto/16 :goto_12

    .line 71
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->v:Z

    goto/16 :goto_12

    .line 72
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->u:Z

    goto/16 :goto_12

    .line 73
    :pswitch_9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->t:Z

    goto/16 :goto_12

    .line 74
    :pswitch_a
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_10

    .line 75
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 76
    iput-object v2, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 77
    :cond_10
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 78
    :pswitch_b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_11

    .line 79
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 80
    iput-object v2, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 81
    :cond_11
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 82
    :pswitch_c
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->q:Z

    goto/16 :goto_12

    .line 83
    :pswitch_d
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->p:Z

    goto/16 :goto_12

    .line 84
    :pswitch_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->o:Z

    goto/16 :goto_12

    .line 85
    :pswitch_f
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_12

    .line 86
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 87
    iput-object v2, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 88
    :cond_12
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    goto/16 :goto_12

    .line 89
    :pswitch_10
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->m:Z

    goto/16 :goto_12

    .line 90
    :pswitch_11
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->l:Z

    goto/16 :goto_12

    .line 91
    :pswitch_12
    iget-object v4, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_13

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_e

    :cond_13
    move-object v4, v2

    :goto_e
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    goto/16 :goto_12

    .line 92
    :pswitch_13
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_14

    .line 93
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 94
    iput-object v2, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    goto/16 :goto_12

    .line 95
    :cond_14
    iget-object v4, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_15

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_f

    :cond_15
    move-object v4, v2

    :goto_f
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    goto/16 :goto_12

    .line 96
    :pswitch_14
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_16

    .line 97
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 98
    iput-object v2, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto/16 :goto_12

    .line 99
    :cond_16
    invoke-static {}, Lcom/truecaller/tracking/events/AppStandbyBucket;->values()[Lcom/truecaller/tracking/events/AppStandbyBucket;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readEnum()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto/16 :goto_12

    .line 100
    :pswitch_15
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_17

    .line 101
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 102
    iput-object v2, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    goto/16 :goto_12

    .line 103
    :cond_17
    iget-object v4, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_18

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_10

    :cond_18
    move-object v4, v2

    :goto_10
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    goto/16 :goto_12

    .line 104
    :pswitch_16
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->g:Z

    goto/16 :goto_12

    .line 105
    :pswitch_17
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_19

    .line 106
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 107
    iput-object v2, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    goto :goto_12

    .line 108
    :cond_19
    iget-object v4, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1a

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_11

    :cond_1a
    move-object v4, v2

    :goto_11
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    goto :goto_12

    .line 109
    :pswitch_18
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->e:Z

    goto :goto_12

    .line 110
    :pswitch_19
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->d:Z

    goto :goto_12

    .line 111
    :pswitch_1a
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/g0;->c:Z

    goto :goto_12

    .line 112
    :pswitch_1b
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1b

    .line 113
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 114
    iput-object v2, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_12

    .line 115
    :cond_1b
    iget-object v4, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v4, :cond_1c

    .line 116
    new-instance v4, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v4, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 117
    :cond_1c
    iget-object v4, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_12

    .line 118
    :pswitch_1c
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_1d

    .line 119
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 120
    iput-object v2, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    goto :goto_12

    .line 121
    :cond_1d
    iget-object v4, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    if-nez v4, :cond_1e

    .line 122
    new-instance v4, Le/a/l5/a/l3;

    invoke-direct {v4}, Le/a/l5/a/l3;-><init>()V

    iput-object v4, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    .line 123
    :cond_1e
    iget-object v4, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    invoke-virtual {v4, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_1f
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    iget-object v0, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-boolean v0, p0, Le/a/l5/a/g0;->c:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 12
    iget-boolean v0, p0, Le/a/l5/a/g0;->d:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 13
    iget-boolean v0, p0, Le/a/l5/a/g0;->e:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 14
    iget-object v0, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

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
    iget-object v0, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 19
    :goto_2
    iget-boolean v0, p0, Le/a/l5/a/g0;->g:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 20
    iget-object v0, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 21
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 22
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 23
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 24
    iget-object v0, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 25
    :goto_3
    iget-object v0, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    if-nez v0, :cond_4

    .line 26
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 27
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_4

    .line 28
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 29
    iget-object v0, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeEnum(I)V

    .line 30
    :goto_4
    iget-object v0, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 31
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 32
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_5

    .line 33
    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 34
    iget-object v0, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 35
    :goto_5
    iget-object v0, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 36
    iget-boolean v0, p0, Le/a/l5/a/g0;->l:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 37
    iget-boolean v0, p0, Le/a/l5/a/g0;->m:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 38
    iget-object v0, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 39
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 40
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_6

    .line 41
    :cond_6
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 42
    iget-object v0, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 43
    :goto_6
    iget-boolean v0, p0, Le/a/l5/a/g0;->o:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 44
    iget-boolean v0, p0, Le/a/l5/a/g0;->p:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 45
    iget-boolean v0, p0, Le/a/l5/a/g0;->q:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 46
    iget-object v0, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    .line 47
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 48
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_7

    .line 49
    :cond_7
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 50
    iget-object v0, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 51
    :goto_7
    iget-object v0, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 52
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 53
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_8

    .line 54
    :cond_8
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 55
    iget-object v0, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 56
    :goto_8
    iget-boolean v0, p0, Le/a/l5/a/g0;->t:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 57
    iget-boolean v0, p0, Le/a/l5/a/g0;->u:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 58
    iget-boolean v0, p0, Le/a/l5/a/g0;->v:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 59
    iget-boolean v0, p0, Le/a/l5/a/g0;->w:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 60
    iget-boolean v0, p0, Le/a/l5/a/g0;->x:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 61
    iget-boolean v0, p0, Le/a/l5/a/g0;->y:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 62
    iget-boolean v0, p0, Le/a/l5/a/g0;->z:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 63
    iget-boolean v0, p0, Le/a/l5/a/g0;->A:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 64
    iget-boolean v0, p0, Le/a/l5/a/g0;->B:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 65
    iget-boolean v0, p0, Le/a/l5/a/g0;->C:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

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
    iget-boolean p1, p0, Le/a/l5/a/g0;->C:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_1
    iget-boolean p1, p0, Le/a/l5/a/g0;->B:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    iget-boolean p1, p0, Le/a/l5/a/g0;->A:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3
    iget-boolean p1, p0, Le/a/l5/a/g0;->z:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    iget-boolean p1, p0, Le/a/l5/a/g0;->y:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    iget-boolean p1, p0, Le/a/l5/a/g0;->x:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_6
    iget-boolean p1, p0, Le/a/l5/a/g0;->w:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_7
    iget-boolean p1, p0, Le/a/l5/a/g0;->v:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_8
    iget-boolean p1, p0, Le/a/l5/a/g0;->u:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_9
    iget-boolean p1, p0, Le/a/l5/a/g0;->t:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    return-object p1

    .line 13
    :pswitch_b
    iget-object p1, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    return-object p1

    .line 14
    :pswitch_c
    iget-boolean p1, p0, Le/a/l5/a/g0;->q:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_d
    iget-boolean p1, p0, Le/a/l5/a/g0;->p:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_e
    iget-boolean p1, p0, Le/a/l5/a/g0;->o:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_f
    iget-object p1, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    return-object p1

    .line 18
    :pswitch_10
    iget-boolean p1, p0, Le/a/l5/a/g0;->m:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_11
    iget-boolean p1, p0, Le/a/l5/a/g0;->l:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_12
    iget-object p1, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    return-object p1

    .line 21
    :pswitch_13
    iget-object p1, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    return-object p1

    .line 22
    :pswitch_14
    iget-object p1, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    return-object p1

    .line 23
    :pswitch_15
    iget-object p1, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    return-object p1

    .line 24
    :pswitch_16
    iget-boolean p1, p0, Le/a/l5/a/g0;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_17
    iget-object p1, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 26
    :pswitch_18
    iget-boolean p1, p0, Le/a/l5/a/g0;->e:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_19
    iget-boolean p1, p0, Le/a/l5/a/g0;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_1a
    iget-boolean p1, p0, Le/a/l5/a/g0;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_1b
    iget-object p1, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 30
    :pswitch_1c
    iget-object p1, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    sget-object v0, Le/a/l5/a/g0;->D:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/g0;->E:Lorg/apache/avro/specific/SpecificData;

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

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->C:Z

    goto/16 :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->B:Z

    goto/16 :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->A:Z

    goto/16 :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->z:Z

    goto/16 :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->y:Z

    goto/16 :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->x:Z

    goto/16 :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->w:Z

    goto/16 :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->v:Z

    goto/16 :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->u:Z

    goto/16 :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->t:Z

    goto/16 :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/g0;->s:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/g0;->r:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 14
    :pswitch_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->q:Z

    goto/16 :goto_0

    .line 15
    :pswitch_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->p:Z

    goto/16 :goto_0

    .line 16
    :pswitch_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->o:Z

    goto :goto_0

    .line 17
    :pswitch_f
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Le/a/l5/a/g0;->n:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :pswitch_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->m:Z

    goto :goto_0

    .line 19
    :pswitch_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->l:Z

    goto :goto_0

    .line 20
    :pswitch_12
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/g0;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 21
    :pswitch_13
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/g0;->j:Ljava/lang/CharSequence;

    goto :goto_0

    .line 22
    :pswitch_14
    check-cast p2, Lcom/truecaller/tracking/events/AppStandbyBucket;

    iput-object p2, p0, Le/a/l5/a/g0;->i:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto :goto_0

    .line 23
    :pswitch_15
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/g0;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 24
    :pswitch_16
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->g:Z

    goto :goto_0

    .line 25
    :pswitch_17
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/g0;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 26
    :pswitch_18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->e:Z

    goto :goto_0

    .line 27
    :pswitch_19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->d:Z

    goto :goto_0

    .line 28
    :pswitch_1a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/g0;->c:Z

    goto :goto_0

    .line 29
    :pswitch_1b
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/g0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 30
    :pswitch_1c
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/g0;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    sget-object v0, Le/a/l5/a/g0;->K:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/g0;->J:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
