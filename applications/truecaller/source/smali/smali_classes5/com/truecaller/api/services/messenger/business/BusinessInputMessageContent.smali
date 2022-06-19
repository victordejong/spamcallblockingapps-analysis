.class public final Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$c;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACTIONS_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

.field public static final FILE_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_MESSAGE_ID_FIELD_NUMBER:I = 0x3e7

.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field public static final VIDEO_FIELD_NUMBER:I = 0x5


# instance fields
.field private actions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentCase_:I

.field private attachment_:Ljava/lang/Object;

.field private refMessageId_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->text_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->refMessageId_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$5300()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object v0
.end method

.method public static synthetic access$5400(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearAttachment()V

    return-void
.end method

.method public static synthetic access$5500(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5600(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearText()V

    return-void
.end method

.method public static synthetic access$5700(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5800(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setRefMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5900(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearRefMessageId()V

    return-void
.end method

.method public static synthetic access$6000(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6100(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setImage(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)V

    return-void
.end method

.method public static synthetic access$6200(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->mergeImage(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)V

    return-void
.end method

.method public static synthetic access$6300(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearImage()V

    return-void
.end method

.method public static synthetic access$6400(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setVideo(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)V

    return-void
.end method

.method public static synthetic access$6500(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->mergeVideo(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)V

    return-void
.end method

.method public static synthetic access$6600(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearVideo()V

    return-void
.end method

.method public static synthetic access$6700(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setFile(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)V

    return-void
.end method

.method public static synthetic access$6800(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->mergeFile(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)V

    return-void
.end method

.method public static synthetic access$6900(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearFile()V

    return-void
.end method

.method public static synthetic access$7000(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;ILcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->setActions(ILcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V

    return-void
.end method

.method public static synthetic access$7100(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->addActions(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V

    return-void
.end method

.method public static synthetic access$7200(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;ILcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->addActions(ILcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V

    return-void
.end method

.method public static synthetic access$7300(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->addAllActions(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$7400(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->clearActions()V

    return-void
.end method

.method public static synthetic access$7500(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->removeActions(I)V

    return-void
.end method

.method private addActions(ILcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->ensureActionsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addActions(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->ensureActionsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->ensureActionsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearActions()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAttachment()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    return-void
.end method

.method private clearFile()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearImage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRefMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->getRefMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private clearText()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private clearVideo()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureActionsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object v0
.end method

.method private mergeFile(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;->newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeImage(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;->newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private mergeVideo(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;->newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeActions(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->ensureActionsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActions(ILcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->ensureActionsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFile(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setImage(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    return-void
.end method

.method private setRefMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private setTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->text_:Ljava/lang/String;

    return-void
.end method

.method private setVideo(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

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
    const-class p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "actions_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "refMessageId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u03e7\u0006\u0000\u0001\u0000\u0001\u0208\u0002<\u0000\u0005<\u0000\u0008<\u0000\u000c\u001b\u03e7\u0208"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$b;-><init>(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;-><init>()V

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

.method public getActions(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p1
.end method

.method public getActionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getActionsOrBuilder(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$c;

    return-object p1
.end method

.method public getActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAttachmentCase()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->forNumber(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$File;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image;

    move-result-object v0

    return-object v0
.end method

.method public getRefMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->refMessageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->refMessageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->text_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVideo()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachment_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video;

    move-result-object v0

    return-object v0
.end method

.method public hasFile()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x2

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
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;->attachmentCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
