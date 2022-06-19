.class public final Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$d;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$c;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent;",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACTIONS_FIELD_NUMBER:I = 0xc

.field public static final ANIMATION_FIELD_NUMBER:I = 0x7

.field public static final AUDIO_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

.field public static final FILE_FIELD_NUMBER:I = 0x8

.field public static final FORWARD_INFO_FIELD_NUMBER:I = 0xb

.field public static final IMAGE_FIELD_NUMBER:I = 0x2

.field public static final LOCATION_FIELD_NUMBER:I = 0x4

.field public static final MESSAGE_ENTITIES_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent;",
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
.field private actions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentCase_:I

.field private attachment_:Ljava/lang/Object;

.field private forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

.field private messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;",
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
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->text_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refMessageId_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$20100()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object v0
.end method

.method public static synthetic access$20200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearAttachment()V

    return-void
.end method

.method public static synthetic access$20300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$20400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearText()V

    return-void
.end method

.method public static synthetic access$20500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$20600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setTextFormatValue(I)V

    return-void
.end method

.method public static synthetic access$20700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setTextFormat(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;)V

    return-void
.end method

.method public static synthetic access$20800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearTextFormat()V

    return-void
.end method

.method public static synthetic access$20900(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setRefSeq(J)V

    return-void
.end method

.method public static synthetic access$21000(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearRefSeq()V

    return-void
.end method

.method public static synthetic access$21100(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setRefMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$21200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearRefMessageId()V

    return-void
.end method

.method public static synthetic access$21300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$21400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setImage(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V

    return-void
.end method

.method public static synthetic access$21500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeImage(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V

    return-void
.end method

.method public static synthetic access$21600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearImage()V

    return-void
.end method

.method public static synthetic access$21700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setVcard(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)V

    return-void
.end method

.method public static synthetic access$21800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeVcard(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)V

    return-void
.end method

.method public static synthetic access$21900(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearVcard()V

    return-void
.end method

.method public static synthetic access$22000(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setLocation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)V

    return-void
.end method

.method public static synthetic access$22100(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeLocation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)V

    return-void
.end method

.method public static synthetic access$22200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearLocation()V

    return-void
.end method

.method public static synthetic access$22300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setVideo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V

    return-void
.end method

.method public static synthetic access$22400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeVideo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V

    return-void
.end method

.method public static synthetic access$22500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearVideo()V

    return-void
.end method

.method public static synthetic access$22600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setAudio(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V

    return-void
.end method

.method public static synthetic access$22700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeAudio(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V

    return-void
.end method

.method public static synthetic access$22800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearAudio()V

    return-void
.end method

.method public static synthetic access$22900(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setAnimation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)V

    return-void
.end method

.method public static synthetic access$23000(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeAnimation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)V

    return-void
.end method

.method public static synthetic access$23100(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearAnimation()V

    return-void
.end method

.method public static synthetic access$23200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setFile(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)V

    return-void
.end method

.method public static synthetic access$23300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeFile(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)V

    return-void
.end method

.method public static synthetic access$23400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearFile()V

    return-void
.end method

.method public static synthetic access$23500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;ILcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V

    return-void
.end method

.method public static synthetic access$23600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->addMessageEntities(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V

    return-void
.end method

.method public static synthetic access$23700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;ILcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->addMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V

    return-void
.end method

.method public static synthetic access$23800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->addAllMessageEntities(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$23900(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearMessageEntities()V

    return-void
.end method

.method public static synthetic access$24000(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->removeMessageEntities(I)V

    return-void
.end method

.method public static synthetic access$24100(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)V

    return-void
.end method

.method public static synthetic access$24200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->mergeForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)V

    return-void
.end method

.method public static synthetic access$24300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearForwardInfo()V

    return-void
.end method

.method public static synthetic access$24400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;ILcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->setActions(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V

    return-void
.end method

.method public static synthetic access$24500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->addActions(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V

    return-void
.end method

.method public static synthetic access$24600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;ILcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->addActions(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V

    return-void
.end method

.method public static synthetic access$24700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->addAllActions(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$24800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->clearActions()V

    return-void
.end method

.method public static synthetic access$24900(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->removeActions(I)V

    return-void
.end method

.method private addActions(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureActionsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addActions(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureActionsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllActions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureActionsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllMessageEntities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureMessageEntitiesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureMessageEntitiesIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMessageEntities(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureMessageEntitiesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearActions()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAnimation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAttachment()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    return-void
.end method

.method private clearAudio()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFile()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearForwardInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    return-void
.end method

.method private clearImage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLocation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageEntities()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRefMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getRefMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private clearRefSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refSeq_:J

    return-void
.end method

.method private clearText()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private clearTextFormat()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->textFormat_:I

    return-void
.end method

.method private clearVcard()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearVideo()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureActionsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureMessageEntitiesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object v0
.end method

.method private mergeAnimation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeAudio(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeFile(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    :goto_0
    return-void
.end method

.method private mergeImage(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeLocation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeVcard(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeVideo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeActions(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureActionsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeMessageEntities(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureMessageEntitiesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActions(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureActionsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAnimation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private setAudio(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private setFile(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private setForwardInfo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    return-void
.end method

.method private setImage(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private setLocation(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private setMessageEntities(ILcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->ensureMessageEntitiesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRefMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refSeq_:J

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private setTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private setTextFormat(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->textFormat_:I

    return-void
.end method

.method private setTextFormatValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->textFormat_:I

    return-void
.end method

.method private setVcard(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    return-void
.end method

.method private setVideo(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

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
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "messageEntities_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "textFormat_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "forwardInfo_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "actions_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "refSeq_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "refMessageId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000e\u0001\u0000\u0001\u03e7\u000e\u0000\u0002\u0000\u0001\u0208\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t\u001b\n\u000c\u000b\t\u000c\u001b\u03e6\u0002\u03e7\u0208"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;-><init>()V

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

.method public getActions(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;

    return-object p1
.end method

.method public getActionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getActionsOrBuilder(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$d;

    return-object p1
.end method

.method public getActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAnimation()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    move-result-object v0

    return-object v0
.end method

.method public getForwardInfo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImage()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEntities(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    return-object p1
.end method

.method public getMessageEntitiesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessageEntitiesOrBuilder(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$c;

    return-object p1
.end method

.method public getMessageEntitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->messageEntities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRefMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refMessageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refMessageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->refSeq_:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->text_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTextFormat()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->textFormat_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    :cond_0
    return-object v0
.end method

.method public getTextFormatValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->textFormat_:I

    return v0
.end method

.method public getVcard()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;

    move-result-object v0

    return-object v0
.end method

.method public getVideo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object v0

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->forwardInfo_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$ForwardInfo;

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
