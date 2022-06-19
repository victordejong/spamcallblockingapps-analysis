.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AttachmentCase;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANIMATION_FIELD_NUMBER:I = 0x7

.field public static final AUDIO_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

.field public static final FILE_FIELD_NUMBER:I = 0x8

.field public static final FORWARD_INFO_FIELD_NUMBER:I = 0xb

.field public static final IMAGE_FIELD_NUMBER:I = 0x2

.field public static final LOCATION_FIELD_NUMBER:I = 0x4

.field public static final MESSAGE_ENTITIES_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_MESSAGE_ID_FIELD_NUMBER:I = 0x3e7

.field public static final REF_SEQ_FIELD_NUMBER:I = 0x3e6

.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field public static final TEXT_FORMAT_FIELD_NUMBER:I = 0xa

.field public static final VCARD_FIELD_NUMBER:I = 0x3

.field public static final VIDEO_FIELD_NUMBER:I = 0x5


# instance fields
.field private attachmentCase_:I

.field private attachment_:Ljava/lang/Object;

.field private forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

.field private messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private refMessageId_:Ljava/lang/String;

.field private refSeq_:J

.field private textFormat_:I

.field private text_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->text_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refMessageId_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$19500()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object v0
.end method

.method public static synthetic access$19600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearAttachment()V

    return-void
.end method

.method public static synthetic access$19700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$19800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearText()V

    return-void
.end method

.method public static synthetic access$19900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$20000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setTextFormatValue(I)V

    return-void
.end method

.method public static synthetic access$20100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setTextFormat(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;)V

    return-void
.end method

.method public static synthetic access$20200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearTextFormat()V

    return-void
.end method

.method public static synthetic access$20300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setRefSeq(J)V

    return-void
.end method

.method public static synthetic access$20400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearRefSeq()V

    return-void
.end method

.method public static synthetic access$20500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setRefMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$20600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearRefMessageId()V

    return-void
.end method

.method public static synthetic access$20700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$20800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setImage(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V

    return-void
.end method

.method public static synthetic access$20900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeImage(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V

    return-void
.end method

.method public static synthetic access$21000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearImage()V

    return-void
.end method

.method public static synthetic access$21100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setVcard(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V

    return-void
.end method

.method public static synthetic access$21200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeVcard(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V

    return-void
.end method

.method public static synthetic access$21300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearVcard()V

    return-void
.end method

.method public static synthetic access$21400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setLocation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)V

    return-void
.end method

.method public static synthetic access$21500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeLocation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)V

    return-void
.end method

.method public static synthetic access$21600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearLocation()V

    return-void
.end method

.method public static synthetic access$21700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setVideo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V

    return-void
.end method

.method public static synthetic access$21800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeVideo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V

    return-void
.end method

.method public static synthetic access$21900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearVideo()V

    return-void
.end method

.method public static synthetic access$22000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setAudio(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V

    return-void
.end method

.method public static synthetic access$22100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeAudio(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V

    return-void
.end method

.method public static synthetic access$22200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearAudio()V

    return-void
.end method

.method public static synthetic access$22300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setAnimation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V

    return-void
.end method

.method public static synthetic access$22400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeAnimation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V

    return-void
.end method

.method public static synthetic access$22500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearAnimation()V

    return-void
.end method

.method public static synthetic access$22600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setFile(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V

    return-void
.end method

.method public static synthetic access$22700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeFile(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V

    return-void
.end method

.method public static synthetic access$22800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearFile()V

    return-void
.end method

.method public static synthetic access$22900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V

    return-void
.end method

.method public static synthetic access$23000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->addMessageEntities(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V

    return-void
.end method

.method public static synthetic access$23100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->addMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V

    return-void
.end method

.method public static synthetic access$23200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->addAllMessageEntities(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$23300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearMessageEntities()V

    return-void
.end method

.method public static synthetic access$23400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->removeMessageEntities(I)V

    return-void
.end method

.method public static synthetic access$23500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->setForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)V

    return-void
.end method

.method public static synthetic access$23600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->mergeForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)V

    return-void
.end method

.method public static synthetic access$23700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->clearForwardInfo()V

    return-void
.end method

.method private addAllMessageEntities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->ensureMessageEntitiesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->ensureMessageEntitiesIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMessageEntities(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->ensureMessageEntitiesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAnimation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAttachment()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    return-void
.end method

.method private clearAudio()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFile()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearForwardInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    return-void
.end method

.method private clearImage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLocation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageEntities()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRefMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getRefMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private clearRefSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refSeq_:J

    return-void
.end method

.method private clearText()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private clearTextFormat()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->textFormat_:I

    return-void
.end method

.method private clearVcard()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearVideo()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureMessageEntitiesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object v0
.end method

.method private mergeAnimation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeAudio(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeFile(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    :goto_0
    return-void
.end method

.method private mergeImage(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeLocation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeVcard(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeVideo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMessageEntities(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->ensureMessageEntitiesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAnimation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setAudio(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setFile(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    return-void
.end method

.method private setImage(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setLocation(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->ensureMessageEntitiesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRefMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refSeq_:J

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private setTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private setTextFormat(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->textFormat_:I

    return-void
.end method

.method private setTextFormatValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->textFormat_:I

    return-void
.end method

.method private setVcard(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setVideo(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "attachment_"

    aput-object v0, p1, p3

    const-string p3, "attachmentCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "text_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "messageEntities_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "textFormat_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "forwardInfo_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "refSeq_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "refMessageId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\r\u0001\u0000\u0001\u03e7\r\u0000\u0001\u0000\u0001\u0208\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t\u001b\n\u000c\u000b\t\u03e6\u0002\u03e7\u0208"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getAnimation()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AttachmentCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AttachmentCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AttachmentCase;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    move-result-object v0

    return-object v0
.end method

.method public getForwardInfo()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImage()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEntities(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p1
.end method

.method public getMessageEntitiesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageEntitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessageEntitiesOrBuilder(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c;

    return-object p1
.end method

.method public getMessageEntitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRefMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refMessageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refMessageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->refSeq_:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->text_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTextFormat()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->textFormat_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat;

    :cond_0
    return-object v0
.end method

.method public getTextFormatValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->textFormat_:I

    return v0
.end method

.method public getVcard()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    move-result-object v0

    return-object v0
.end method

.method public getVideo()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    move-result-object v0

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAudio()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFile()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasForwardInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImage()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocation()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVcard()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
