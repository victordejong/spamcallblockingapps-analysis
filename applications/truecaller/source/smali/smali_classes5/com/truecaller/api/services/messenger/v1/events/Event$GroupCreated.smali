.class public final Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
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
    name = "GroupCreated"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

.field public static final GROUP_ID_FIELD_NUMBER:I = 0x2

.field public static final GROUP_INFO_EXT_FIELD_NUMBER:I = 0xc

.field public static final GROUP_INFO_FIELD_NUMBER:I = 0x6

.field public static final LEGACY_PARTICIPANTS_FIELD_NUMBER:I = 0x5

.field public static final LEGACY_PARTICIPANT_ROLES_FIELD_NUMBER:I = 0x9

.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARTICIPANTS_FIELD_NUMBER:I = 0xa

.field public static final PERMISSIONS_FIELD_NUMBER:I = 0xb

.field public static final SENDER_FIELD_NUMBER:I = 0x1

.field public static final SENDER_ROLES_FIELD_NUMBER:I = 0x8

.field public static final USER_INFO_FIELD_NUMBER:I = 0x7


# instance fields
.field private date_:I

.field private groupId_:Ljava/lang/String;

.field private groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

.field private groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

.field private legacyParticipantRoles_:I

.field private legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private messageId_:Ljava/lang/String;

.field private participants_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

.field private senderRoles_:I

.field private sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

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
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

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

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupId_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->messageId_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$12900()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object v0
.end method

.method public static synthetic access$13000(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$13100(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->mergeSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$13200(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearSender()V

    return-void
.end method

.method public static synthetic access$13300(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setGroupId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13400(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearGroupId()V

    return-void
.end method

.method public static synthetic access$13500(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setGroupIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$13600(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13700(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearMessageId()V

    return-void
.end method

.method public static synthetic access$13800(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$13900(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setDate(I)V

    return-void
.end method

.method public static synthetic access$14000(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearDate()V

    return-void
.end method

.method public static synthetic access$14100(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$14200(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->addLegacyParticipants(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$14300(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->addLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$14400(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->addAllLegacyParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$14500(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearLegacyParticipants()V

    return-void
.end method

.method public static synthetic access$14600(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->removeLegacyParticipants(I)V

    return-void
.end method

.method public static synthetic access$14700(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V

    return-void
.end method

.method public static synthetic access$14800(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V

    return-void
.end method

.method public static synthetic access$14900(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearGroupInfo()V

    return-void
.end method

.method public static synthetic access$15000(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V

    return-void
.end method

.method public static synthetic access$15100(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->mergeGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V

    return-void
.end method

.method public static synthetic access$15200(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearGroupInfoExt()V

    return-void
.end method

.method public static synthetic access$15300(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getMutableUserInfoMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$15400(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setSenderRoles(I)V

    return-void
.end method

.method public static synthetic access$15500(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearSenderRoles()V

    return-void
.end method

.method public static synthetic access$15600(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setLegacyParticipantRoles(I)V

    return-void
.end method

.method public static synthetic access$15700(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearLegacyParticipantRoles()V

    return-void
.end method

.method public static synthetic access$15800(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$15900(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->addParticipants(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$16000(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->addParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$16100(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->addAllParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$16200(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearParticipants()V

    return-void
.end method

.method public static synthetic access$16300(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->removeParticipants(I)V

    return-void
.end method

.method public static synthetic access$16400(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->setPermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V

    return-void
.end method

.method public static synthetic access$16500(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->mergePermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V

    return-void
.end method

.method public static synthetic access$16600(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->clearPermissions()V

    return-void
.end method

.method private addAllLegacyParticipants(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/Peer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureLegacyParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllParticipants(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureLegacyParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLegacyParticipants(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureLegacyParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addParticipants(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->date_:I

    return-void
.end method

.method private clearGroupId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupId_:Ljava/lang/String;

    return-void
.end method

.method private clearGroupInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    return-void
.end method

.method private clearGroupInfoExt()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    return-void
.end method

.method private clearLegacyParticipantRoles()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipantRoles_:I

    return-void
.end method

.method private clearLegacyParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private clearParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPermissions()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    return-void
.end method

.method private clearSender()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private clearSenderRoles()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->senderRoles_:I

    return-void
.end method

.method private ensureLegacyParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->internalGetMutableUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->userInfo_:Lcom/google/protobuf/MapFieldLite;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfo$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    :goto_0
    return-void
.end method

.method private mergeGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    :goto_0
    return-void
.end method

.method private mergePermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    :goto_0
    return-void
.end method

.method private mergeSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLegacyParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureLegacyParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->date_:I

    return-void
.end method

.method private setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupId_:Ljava/lang/String;

    return-void
.end method

.method private setGroupIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupId_:Ljava/lang/String;

    return-void
.end method

.method private setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    return-void
.end method

.method private setGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    return-void
.end method

.method private setLegacyParticipantRoles(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipantRoles_:I

    return-void
.end method

.method private setLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureLegacyParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->ensureParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    return-void
.end method

.method private setSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private setSenderRoles(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->senderRoles_:I

    return-void
.end method


# virtual methods
.method public containsUserInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sender_"

    aput-object v0, p1, p3

    const-string p3, "groupId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "messageId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "date_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "legacyParticipants_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "groupInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "userInfo_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$b;->a:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "senderRoles_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "legacyParticipantRoles_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "participants_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "permissions_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "groupInfoExt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0000\u0000\u0001\u000c\u000c\u0001\u0002\u0000\u0001\t\u0002\u0208\u0003\u0208\u0004\u0004\u0005\u001b\u0006\t\u00072\u0008\u0004\t\u0004\n\u001b\u000b\t\u000c\t"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;-><init>(Lcom/truecaller/api/services/messenger/v1/events/Event$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;-><init>()V

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

.method public getDate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->date_:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLegacyParticipantRoles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipantRoles_:I

    return v0
.end method

.method public getLegacyParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-object p1
.end method

.method public getLegacyParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLegacyParticipantsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/Peer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLegacyParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/f;

    return-object p1
.end method

.method public getLegacyParticipantsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/e/a/d/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->messageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    return-object p1
.end method

.method public getParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantsList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/e;

    return-object p1
.end method

.method public getParticipantsOrBuilderList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSenderRoles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->senderRoles_:I

    return v0
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
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getUserInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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

.method public hasGroupInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGroupInfoExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPermissions()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
