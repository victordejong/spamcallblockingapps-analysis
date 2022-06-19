.class public final Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/GetParticipants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;,
        Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;",
        "Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

.field public static final NEXT_PAGE_TOKEN_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARTICIPANTS_INFO_FIELD_NUMBER:I = 0x2

.field public static final USER_INFO_FIELD_NUMBER:I = 0x3


# instance fields
.field private nextPageToken_:Ljava/lang/String;

.field private participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

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
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

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

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->nextPageToken_:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$1000()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->setNextPageToken(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->clearNextPageToken()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->setParticipantsInfo(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->addParticipantsInfo(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->addParticipantsInfo(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->addAllParticipantsInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->clearParticipantsInfo()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->removeParticipantsInfo(I)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getMutableUserInfoMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private addAllParticipantsInfo(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->ensureParticipantsInfoIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addParticipantsInfo(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->ensureParticipantsInfoIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addParticipantsInfo(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->ensureParticipantsInfoIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNextPageToken()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->nextPageToken_:Ljava/lang/String;

    return-void
.end method

.method private clearParticipantsInfo()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureParticipantsInfoIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->internalGetMutableUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->userInfo_:Lcom/google/protobuf/MapFieldLite;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeParticipantsInfo(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->ensureParticipantsInfoIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setNextPageToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->nextPageToken_:Ljava/lang/String;

    return-void
.end method

.method private setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->nextPageToken_:Ljava/lang/String;

    return-void
.end method

.method private setParticipantsInfo(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->ensureParticipantsInfoIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public containsUserInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "nextPageToken_"

    aput-object v0, p1, p3

    const-string p3, "participantsInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "userInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$b;->a:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0001\u0000\u0001\u0208\u0002\u001b\u00032"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response$a;-><init>(Lcom/truecaller/api/services/messenger/v1/GetParticipants$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;-><init>()V

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

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->nextPageToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->nextPageToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantsInfo(I)Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    return-object p1
.end method

.method public getParticipantsInfoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantsInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getParticipantsInfoOrBuilder(I)Le/a/t2/a/e/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/e;

    return-object p1
.end method

.method public getParticipantsInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/e/a/d/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->participantsInfo_:Lcom/google/protobuf/Internal$ProtobufList;

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
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getUserInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
