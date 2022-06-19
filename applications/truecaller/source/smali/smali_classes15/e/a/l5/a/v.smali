.class public Le/a/l5/a/v;
.super Lorg/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l5/a/v$b;
    }
.end annotation


# static fields
.field public static final v:Lorg/apache/avro/Schema;

.field public static w:Lorg/apache/avro/specific/SpecificData;

.field public static final x:Lorg/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumWriter<",
            "Le/a/l5/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lorg/apache/avro/io/DatumReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/io/DatumReader<",
            "Le/a/l5/a/v;",
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

.field public c:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Z
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

.field public j:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public k:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public n:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public s:Le/a/l5/a/j4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public t:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "{\"type\":\"record\",\"name\":\"AppCallFinishedV3\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"phoneNumber\",\"type\":\"long\",\"doc\":\"The phone number of the other party on the call (i.e. not the user reporting the event), in E.64 format if possible. If parsing failed, the number won\'t be in E.164 format and the parsingSuccessful flag will be false.\"},{\"name\":\"parsingSuccess\",\"type\":\"boolean\",\"doc\":\"Whether parsing the other party\'s phone number was successful.\"},{\"name\":\"countryCode\",\"type\":\"string\",\"doc\":\"The other party\'s phone number\'s 2-letter country code. If unknown, we pass \'unknown\'.\"},{\"name\":\"region\",\"type\":\"string\",\"doc\":\"The other party\'s phone number\'s region. If unknown, we pass \'unknown\'.\"},{\"name\":\"myCountryCode\",\"type\":\"string\",\"doc\":\"The 2-letter country code of the phone number the user used to make the call. If unknown, we pass \'unknown\'.\"},{\"name\":\"myRegion\",\"type\":\"string\",\"doc\":\"The region of the phone number the user used to make the call. If unknown, we pass \'unknown\'.\"},{\"name\":\"initiatedFrom\",\"type\":\"string\",\"doc\":\"Where the call was initiated from inside the app, or \'outside\' for external launches. Empty string if the call was incoming instead of outgoing, and \'unknown\' if we don\'t know.\",\"default\":\"unknown\"},{\"name\":\"callProvider\",\"type\":\"string\",\"doc\":\"The calling UI used for the call. Used to differentiate between different versions of Truecaller\'s own incall UI, and others.\"},{\"name\":\"direction\",\"type\":\"string\",\"doc\":\"Whether the reporter of the event was the caller (outgoing) or callee (incoming).\"},{\"name\":\"answered\",\"type\":\"string\",\"doc\":\"Whether the call was answered. Always known for incoming calls and, when using our own incall UI, for incoming and outgoing calls. Otherwise, we pass \'unknown\'.\",\"default\":\"unknown\"},{\"name\":\"afterCallScreen\",\"type\":\"string\",\"doc\":\"What happened with the aftercall screen, or ACS. We track whether it was shown or not, and why. \'otherCall\' means no ACS was shown because there was an on hold call to switch to instead.\"},{\"name\":\"callDuration\",\"type\":\"long\",\"doc\":\"Duration of the call in milliseconds, including ringing time. 0 if the call wasn\'t picked up.\"},{\"name\":\"callDurationNoRing\",\"type\":\"long\",\"doc\":\"Duration of the call in milliseconds, minus ringing time. Only available in our own in-call UI (see the callProvider field). 0 if we don\'t have access to the information.\",\"default\":0},{\"name\":\"searchResult\",\"type\":\"string\",\"doc\":\"Where the search result was served from. Can be \'noHit\' for no result.\"},{\"name\":\"identifiedAsSpam\",\"type\":\"boolean\",\"doc\":\"Whether the number was identified as spam or not in the context of the call.\",\"default\":false},{\"name\":\"blockingAction\",\"type\":\"string\",\"doc\":\"The action taken by Truecaller to block this call. Empty string if none.\",\"default\":\"\"},{\"name\":\"tags\",\"type\":{\"type\":\"record\",\"name\":\"TagsServedV2\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All tag ids that client received, e.g. [\\\"9\\\",\\\"129\\\"]\"},{\"name\":\"manualTagsAvailable\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"All manual tag ids that the client has available for this number\"},{\"name\":\"shownTags\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"doc\":\"The list of tag ids that the client displayed to the user for this search result\"}]},\"doc\":\"Tags for the other party on the call, if they were served.\"},{\"name\":\"callContextMessageId\",\"type\":[\"null\",\"string\"],\"doc\":\"Possible call context message id, if it was passed in the call alert.\",\"default\":null},{\"name\":\"blockReason\",\"type\":[\"null\",\"int\"],\"doc\":\"The reason why the call was blocked. See values in https://confluence.truecaller.net/display/BUCS/Block+reason+in+AppCallFinished\",\"default\":null}]}"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->i0(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Le/a/l5/a/v;->v:Lorg/apache/avro/Schema;

    .line 2
    new-instance v1, Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1}, Lorg/apache/avro/specific/SpecificData;-><init>()V

    sput-object v1, Le/a/l5/a/v;->w:Lorg/apache/avro/specific/SpecificData;

    .line 3
    new-instance v2, Lorg/apache/avro/message/BinaryMessageEncoder;

    invoke-direct {v2, v1, v0}, Lorg/apache/avro/message/BinaryMessageEncoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 4
    new-instance v1, Lorg/apache/avro/message/BinaryMessageDecoder;

    sget-object v2, Le/a/l5/a/v;->w:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {v1, v2, v0}, Lorg/apache/avro/message/BinaryMessageDecoder;-><init>(Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Schema;)V

    .line 5
    sget-object v1, Le/a/l5/a/v;->w:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumWriter(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumWriter;

    move-result-object v1

    sput-object v1, Le/a/l5/a/v;->x:Lorg/apache/avro/io/DatumWriter;

    .line 6
    sget-object v1, Le/a/l5/a/v;->w:Lorg/apache/avro/specific/SpecificData;

    invoke-virtual {v1, v0}, Lorg/apache/avro/specific/SpecificData;->createDatumReader(Lorg/apache/avro/Schema;)Lorg/apache/avro/io/DatumReader;

    move-result-object v0

    sput-object v0, Le/a/l5/a/v;->y:Lorg/apache/avro/io/DatumReader;

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

    if-nez v0, :cond_13

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 4
    iput-object v2, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Le/a/l5/a/l3;

    invoke-direct {v0}, Le/a/l5/a/l3;-><init>()V

    iput-object v0, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 10
    iput-object v2, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v0}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v0, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Le/a/l5/a/v;->c:J

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/v;->d:Z

    .line 16
    iget-object v0, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    .line 17
    iget-object v0, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_5

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    .line 18
    iget-object v0, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_6

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_4

    :cond_6
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    .line 19
    iget-object v0, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_7

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_5

    :cond_7
    move-object v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    .line 20
    iget-object v0, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_8

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_6

    :cond_8
    move-object v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    .line 21
    iget-object v0, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_9

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_7

    :cond_9
    move-object v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    .line 22
    iget-object v0, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_a

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_8

    :cond_a
    move-object v0, v2

    :goto_8
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    .line 23
    iget-object v0, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_b

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_9

    :cond_b
    move-object v0, v2

    :goto_9
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    .line 24
    iget-object v0, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_c

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_a

    :cond_c
    move-object v0, v2

    :goto_a
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Le/a/l5/a/v;->n:J

    .line 26
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Le/a/l5/a/v;->o:J

    .line 27
    iget-object v0, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_d

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_b

    :cond_d
    move-object v0, v2

    :goto_b
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Le/a/l5/a/v;->q:Z

    .line 29
    iget-object v0, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_e

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_c

    :cond_e
    move-object v0, v2

    :goto_c
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    .line 30
    iget-object v0, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    if-nez v0, :cond_f

    .line 31
    new-instance v0, Le/a/l5/a/j4;

    invoke-direct {v0}, Le/a/l5/a/j4;-><init>()V

    iput-object v0, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    .line 32
    :cond_f
    iget-object v0, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    invoke-virtual {v0, p1}, Le/a/l5/a/j4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    .line 33
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_10

    .line 34
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 35
    iput-object v2, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    goto :goto_e

    .line 36
    :cond_10
    iget-object v0, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    instance-of v3, v0, Lorg/apache/avro/util/Utf8;

    if-eqz v3, :cond_11

    check-cast v0, Lorg/apache/avro/util/Utf8;

    goto :goto_d

    :cond_11
    move-object v0, v2

    :goto_d
    invoke-virtual {p1, v0}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v0

    iput-object v0, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    .line 37
    :goto_e
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v0

    if-eq v0, v1, :cond_12

    .line 38
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 39
    iput-object v2, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    goto/16 :goto_1d

    .line 40
    :cond_12
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    goto/16 :goto_1d

    :cond_13
    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x15

    if-ge v3, v4, :cond_27

    .line 41
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 42
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Corrupt ResolvingDecoder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_14

    .line 44
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 45
    iput-object v2, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    goto/16 :goto_1c

    .line 46
    :cond_14
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    goto/16 :goto_1c

    .line 47
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_15

    .line 48
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 49
    iput-object v2, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 50
    :cond_15
    iget-object v4, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_16

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_10

    :cond_16
    move-object v4, v2

    :goto_10
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 51
    :pswitch_2
    iget-object v4, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    if-nez v4, :cond_17

    .line 52
    new-instance v4, Le/a/l5/a/j4;

    invoke-direct {v4}, Le/a/l5/a/j4;-><init>()V

    iput-object v4, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    .line 53
    :cond_17
    iget-object v4, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    invoke-virtual {v4, p1}, Le/a/l5/a/j4;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto/16 :goto_1c

    .line 54
    :pswitch_3
    iget-object v4, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_18

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_11

    :cond_18
    move-object v4, v2

    :goto_11
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 55
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/v;->q:Z

    goto/16 :goto_1c

    .line 56
    :pswitch_5
    iget-object v4, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_19

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_12

    :cond_19
    move-object v4, v2

    :goto_12
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 57
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Le/a/l5/a/v;->o:J

    goto/16 :goto_1c

    .line 58
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Le/a/l5/a/v;->n:J

    goto/16 :goto_1c

    .line 59
    :pswitch_8
    iget-object v4, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1a

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_13

    :cond_1a
    move-object v4, v2

    :goto_13
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 60
    :pswitch_9
    iget-object v4, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1b

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_14

    :cond_1b
    move-object v4, v2

    :goto_14
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 61
    :pswitch_a
    iget-object v4, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1c

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_15

    :cond_1c
    move-object v4, v2

    :goto_15
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 62
    :pswitch_b
    iget-object v4, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1d

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_16

    :cond_1d
    move-object v4, v2

    :goto_16
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 63
    :pswitch_c
    iget-object v4, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1e

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_17

    :cond_1e
    move-object v4, v2

    :goto_17
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 64
    :pswitch_d
    iget-object v4, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_1f

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_18

    :cond_1f
    move-object v4, v2

    :goto_18
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 65
    :pswitch_e
    iget-object v4, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_20

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_19

    :cond_20
    move-object v4, v2

    :goto_19
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    goto/16 :goto_1c

    .line 66
    :pswitch_f
    iget-object v4, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_21

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_1a

    :cond_21
    move-object v4, v2

    :goto_1a
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    goto :goto_1c

    .line 67
    :pswitch_10
    iget-object v4, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    instance-of v5, v4, Lorg/apache/avro/util/Utf8;

    if-eqz v5, :cond_22

    check-cast v4, Lorg/apache/avro/util/Utf8;

    goto :goto_1b

    :cond_22
    move-object v4, v2

    :goto_1b
    invoke-virtual {p1, v4}, Lorg/apache/avro/io/ResolvingDecoder;->readString(Lorg/apache/avro/util/Utf8;)Lorg/apache/avro/util/Utf8;

    move-result-object v4

    iput-object v4, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    goto :goto_1c

    .line 68
    :pswitch_11
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Le/a/l5/a/v;->d:Z

    goto :goto_1c

    .line 69
    :pswitch_12
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Le/a/l5/a/v;->c:J

    goto :goto_1c

    .line 70
    :pswitch_13
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_23

    .line 71
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 72
    iput-object v2, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_1c

    .line 73
    :cond_23
    iget-object v4, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    if-nez v4, :cond_24

    .line 74
    new-instance v4, Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-direct {v4}, Lcom/truecaller/tracking/events/ClientHeaderV2;-><init>()V

    iput-object v4, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 75
    :cond_24
    iget-object v4, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v4, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    goto :goto_1c

    .line 76
    :pswitch_14
    invoke-virtual {p1}, Lorg/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v4

    if-eq v4, v1, :cond_25

    .line 77
    invoke-virtual {p1}, Lorg/apache/avro/io/ValidatingDecoder;->readNull()V

    .line 78
    iput-object v2, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    goto :goto_1c

    .line 79
    :cond_25
    iget-object v4, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    if-nez v4, :cond_26

    .line 80
    new-instance v4, Le/a/l5/a/l3;

    invoke-direct {v4}, Le/a/l5/a/l3;-><init>()V

    iput-object v4, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    .line 81
    :cond_26
    iget-object v4, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    invoke-virtual {v4, p1}, Le/a/l5/a/l3;->customDecode(Lorg/apache/avro/io/ResolvingDecoder;)V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_27
    :goto_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

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
    iget-object v0, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    invoke-virtual {v0, p1}, Le/a/l5/a/l3;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

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
    iget-object v0, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    invoke-virtual {v0, p1}, Lcom/truecaller/tracking/events/ClientHeaderV2;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 11
    :goto_1
    iget-wide v3, p0, Le/a/l5/a/v;->c:J

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 12
    iget-boolean v0, p0, Le/a/l5/a/v;->d:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 13
    iget-object v0, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 22
    iget-wide v3, p0, Le/a/l5/a/v;->n:J

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 23
    iget-wide v3, p0, Le/a/l5/a/v;->o:J

    invoke-virtual {p1, v3, v4}, Lorg/apache/avro/io/Encoder;->writeLong(J)V

    .line 24
    iget-object v0, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 25
    iget-boolean v0, p0, Le/a/l5/a/v;->q:Z

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeBoolean(Z)V

    .line 26
    iget-object v0, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    invoke-virtual {v0, p1}, Le/a/l5/a/j4;->customEncode(Lorg/apache/avro/io/Encoder;)V

    .line 28
    iget-object v0, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 30
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 32
    iget-object v0, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeString(Ljava/lang/CharSequence;)V

    .line 33
    :goto_2
    iget-object v0, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 34
    invoke-virtual {p1, v1}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 35
    invoke-virtual {p1}, Lorg/apache/avro/io/Encoder;->writeNull()V

    goto :goto_3

    .line 36
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/avro/io/Encoder;->writeIndex(I)V

    .line 37
    iget-object v0, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/avro/io/Encoder;->writeInt(I)V

    :goto_3
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
    iget-object p1, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    return-object p1

    .line 6
    :pswitch_4
    iget-boolean p1, p0, Le/a/l5/a/v;->q:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    return-object p1

    .line 8
    :pswitch_6
    iget-wide v0, p0, Le/a/l5/a/v;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_7
    iget-wide v0, p0, Le/a/l5/a/v;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    return-object p1

    .line 12
    :pswitch_a
    iget-object p1, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    return-object p1

    .line 13
    :pswitch_b
    iget-object p1, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    return-object p1

    .line 14
    :pswitch_c
    iget-object p1, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    return-object p1

    .line 15
    :pswitch_d
    iget-object p1, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    return-object p1

    .line 16
    :pswitch_e
    iget-object p1, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    return-object p1

    .line 17
    :pswitch_f
    iget-object p1, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    return-object p1

    .line 18
    :pswitch_10
    iget-object p1, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    return-object p1

    .line 19
    :pswitch_11
    iget-boolean p1, p0, Le/a/l5/a/v;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_12
    iget-wide v0, p0, Le/a/l5/a/v;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_13
    iget-object p1, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    return-object p1

    .line 22
    :pswitch_14
    iget-object p1, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/v;->v:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getSpecificData()Lorg/apache/avro/specific/SpecificData;
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/v;->w:Lorg/apache/avro/specific/SpecificData;

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

    iput-object p2, p0, Le/a/l5/a/v;->u:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Le/a/l5/a/j4;

    iput-object p2, p0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    goto/16 :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/v;->q:Z

    goto/16 :goto_0

    .line 7
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Le/a/l5/a/v;->o:J

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Le/a/l5/a/v;->n:J

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    goto :goto_0

    .line 14
    :pswitch_c
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 15
    :pswitch_d
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 16
    :pswitch_e
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    goto :goto_0

    .line 17
    :pswitch_f
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 18
    :pswitch_10
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 19
    :pswitch_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Le/a/l5/a/v;->d:Z

    goto :goto_0

    .line 20
    :pswitch_12
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Le/a/l5/a/v;->c:J

    goto :goto_0

    .line 21
    :pswitch_13
    check-cast p2, Lcom/truecaller/tracking/events/ClientHeaderV2;

    iput-object p2, p0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    goto :goto_0

    .line 22
    :pswitch_14
    check-cast p2, Le/a/l5/a/l3;

    iput-object p2, p0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Le/a/l5/a/v;->y:Lorg/apache/avro/io/DatumReader;

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
    sget-object v0, Le/a/l5/a/v;->x:Lorg/apache/avro/io/DatumWriter;

    invoke-static {p1}, Lorg/apache/avro/specific/SpecificData;->getEncoder(Ljava/io/ObjectOutput;)Lorg/apache/avro/io/BinaryEncoder;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lorg/apache/avro/io/Encoder;)V

    return-void
.end method
