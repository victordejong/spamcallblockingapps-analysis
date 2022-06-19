.class public final Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/events/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageEdited"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x5

.field public static final DATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENT_FIELD_NUMBER:I = 0x2

.field public static final SENDER_FIELD_NUMBER:I = 0x1

.field public static final USER_INFO_FIELD_NUMBER:I = 0x6


# instance fields
.field private content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

.field private date_:I

.field private messageId_:Ljava/lang/String;

.field private recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

.field private sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

.field private userInfo_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->messageId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3700()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object v0
.end method

.method public static synthetic access$3800(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->setSender(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->mergeSender(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)V

    return-void
.end method

.method public static synthetic access$4000(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->clearSender()V

    return-void
.end method

.method public static synthetic access$4100(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->setRecipient(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$4200(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->mergeRecipient(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$4300(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->clearRecipient()V

    return-void
.end method

.method public static synthetic access$4400(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->setMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4500(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->clearMessageId()V

    return-void
.end method

.method public static synthetic access$4600(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->setMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4700(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->setDate(I)V

    return-void
.end method

.method public static synthetic access$4800(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->clearDate()V

    return-void
.end method

.method public static synthetic access$4900(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->setContent(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V

    return-void
.end method

.method public static synthetic access$5000(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->mergeContent(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V

    return-void
.end method

.method public static synthetic access$5100(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->clearContent()V

    return-void
.end method

.method public static synthetic access$5200(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getMutableUserInfoMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearContent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-void
.end method

.method private clearDate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->date_:I

    return-void
.end method

.method private clearMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipient()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private clearSender()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object v0
.end method

.method private getMutableUserInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->internalGetMutableUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableUserInfo()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeContent(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    :goto_0
    return-void
.end method

.method private mergeRecipient(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method private mergeSender(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)Lcom/truecaller/api/services/messenger/v1/models/Peer$User$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$User$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContent(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    return-void
.end method

.method private setDate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->date_:I

    return-void
.end method

.method private setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setRecipient(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private setSender(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    return-void
.end method


# virtual methods
.method public containsUserInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sender_"

    aput-object v0, p1, p3

    const-string p3, "recipient_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "messageId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "date_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "content_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "userInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$b;->a:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0001\t\u0002\t\u0003\u0208\u0004\u0004\u0005\t\u00062"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;-><init>(Lcom/truecaller/api/services/messenger/v1/events/Event$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;-><init>()V

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

.method public getContent()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->date_:I

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->messageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getUserInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getUserInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoOrDefault(Ljava/lang/String;Lcom/truecaller/api/services/messenger/v1/models/UserInfo;)Lcom/truecaller/api/services/messenger/v1/models/UserInfo;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    :cond_0
    return-object p2
.end method

.method public getUserInfoOrThrow(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/UserInfo;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public hasContent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->content_:Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRecipient()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSender()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
