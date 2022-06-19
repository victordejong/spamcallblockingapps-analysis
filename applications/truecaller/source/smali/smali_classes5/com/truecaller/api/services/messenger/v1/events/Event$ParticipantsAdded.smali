.class public final Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
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
    name = "ParticipantsAdded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final DATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

.field public static final EXISTING_PARTICIPANTS_FIELD_NUMBER:I = 0xb

.field public static final GROUP_INFO_EXT_FIELD_NUMBER:I = 0xd

.field public static final GROUP_INFO_FIELD_NUMBER:I = 0x7

.field public static final LEGACY_EXISTING_PARTICIPANTS_FIELD_NUMBER:I = 0x6

.field public static final LEGACY_PARTICIPANTS_FIELD_NUMBER:I = 0x5

.field public static final LEGACY_PARTICIPANT_ROLES_FIELD_NUMBER:I = 0x9

.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARTICIPANTS_FIELD_NUMBER:I = 0xa

.field public static final PERMISSIONS_FIELD_NUMBER:I = 0xc

.field public static final SENDER_FIELD_NUMBER:I = 0x1

.field public static final USER_INFO_FIELD_NUMBER:I = 0x8


# instance fields
.field private context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

.field private date_:I

.field private existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

.field private groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

.field private legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/Peer;",
            ">;"
        }
    .end annotation
.end field

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
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

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

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->messageId_:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$20000()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object v0
.end method

.method public static synthetic access$20100(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$20200(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->mergeSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$20300(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearSender()V

    return-void
.end method

.method public static synthetic access$20400(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setContext(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$20500(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->mergeContext(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$20600(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearContext()V

    return-void
.end method

.method public static synthetic access$20700(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$20800(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearMessageId()V

    return-void
.end method

.method public static synthetic access$20900(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$21000(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setDate(I)V

    return-void
.end method

.method public static synthetic access$21100(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearDate()V

    return-void
.end method

.method public static synthetic access$21200(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$21300(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addLegacyParticipants(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$21400(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$21500(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addAllLegacyParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$21600(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearLegacyParticipants()V

    return-void
.end method

.method public static synthetic access$21700(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->removeLegacyParticipants(I)V

    return-void
.end method

.method public static synthetic access$21800(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setLegacyExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$21900(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addLegacyExistingParticipants(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$22000(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addLegacyExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$22100(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addAllLegacyExistingParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$22200(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearLegacyExistingParticipants()V

    return-void
.end method

.method public static synthetic access$22300(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->removeLegacyExistingParticipants(I)V

    return-void
.end method

.method public static synthetic access$22400(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V

    return-void
.end method

.method public static synthetic access$22500(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V

    return-void
.end method

.method public static synthetic access$22600(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearGroupInfo()V

    return-void
.end method

.method public static synthetic access$22700(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getMutableUserInfoMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$22800(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setLegacyParticipantRoles(I)V

    return-void
.end method

.method public static synthetic access$22900(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearLegacyParticipantRoles()V

    return-void
.end method

.method public static synthetic access$23000(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$23100(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addParticipants(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$23200(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$23300(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addAllParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$23400(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearParticipants()V

    return-void
.end method

.method public static synthetic access$23500(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->removeParticipants(I)V

    return-void
.end method

.method public static synthetic access$23600(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$23700(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addExistingParticipants(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$23800(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V

    return-void
.end method

.method public static synthetic access$23900(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->addAllExistingParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$24000(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearExistingParticipants()V

    return-void
.end method

.method public static synthetic access$24100(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->removeExistingParticipants(I)V

    return-void
.end method

.method public static synthetic access$24200(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setPermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V

    return-void
.end method

.method public static synthetic access$24300(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->mergePermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V

    return-void
.end method

.method public static synthetic access$24400(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearPermissions()V

    return-void
.end method

.method public static synthetic access$24500(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->setGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V

    return-void
.end method

.method public static synthetic access$24600(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->mergeGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V

    return-void
.end method

.method public static synthetic access$24700(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->clearGroupInfoExt()V

    return-void
.end method

.method private addAllExistingParticipants(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureExistingParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllLegacyExistingParticipants(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyExistingParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureExistingParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addExistingParticipants(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureExistingParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLegacyExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyExistingParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLegacyExistingParticipants(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyExistingParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLegacyParticipants(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addParticipants(Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearContext()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private clearDate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->date_:I

    return-void
.end method

.method private clearExistingParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearGroupInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    return-void
.end method

.method private clearGroupInfoExt()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    return-void
.end method

.method private clearLegacyExistingParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLegacyParticipantRoles()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipantRoles_:I

    return-void
.end method

.method private clearLegacyParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private clearParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPermissions()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    return-void
.end method

.method private clearSender()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private ensureExistingParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureLegacyExistingParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureLegacyParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->internalGetMutableUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->userInfo_:Lcom/google/protobuf/MapFieldLite;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->userInfo_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeContext(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method private mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfo$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    :goto_0
    return-void
.end method

.method private mergeGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    :goto_0
    return-void
.end method

.method private mergePermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    :goto_0
    return-void
.end method

.method private mergeSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeExistingParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureExistingParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeLegacyExistingParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyExistingParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeLegacyParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setContext(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private setDate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->date_:I

    return-void
.end method

.method private setExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureExistingParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    return-void
.end method

.method private setGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    return-void
.end method

.method private setLegacyExistingParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyExistingParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLegacyParticipantRoles(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipantRoles_:I

    return-void
.end method

.method private setLegacyParticipants(ILcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureLegacyParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setParticipants(ILcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->ensureParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    return-void
.end method

.method private setSender(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method


# virtual methods
.method public containsUserInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 3
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "sender_"

    aput-object v2, p1, v1

    const-string v1, "context_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "messageId_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "date_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "legacyParticipants_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    aput-object p3, p1, v0

    const/4 v0, 0x6

    const-string v1, "legacyExistingParticipants_"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    aput-object p3, p1, v0

    const/16 p3, 0x8

    const-string v0, "groupInfo_"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    const-string v0, "userInfo_"

    aput-object v0, p1, p3

    const/16 p3, 0xa

    .line 11
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$b;->a:Lcom/google/protobuf/MapEntryLite;

    aput-object v0, p1, p3

    const/16 p3, 0xb

    const-string v0, "legacyParticipantRoles_"

    aput-object v0, p1, p3

    const/16 p3, 0xc

    const-string v0, "participants_"

    aput-object v0, p1, p3

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const/16 p3, 0xe

    const-string v0, "existingParticipants_"

    aput-object v0, p1, p3

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const/16 p2, 0x10

    const-string p3, "permissions_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "groupInfoExt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\r\u0000\u0000\u0001\r\r\u0001\u0004\u0000\u0001\t\u0002\t\u0003\u0208\u0004\u0004\u0005\u001b\u0006\u001b\u0007\t\u00082\t\u0004\n\u001b\u000b\u001b\u000c\t\r\t"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;

    invoke-direct {p1, v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;-><init>(Lcom/truecaller/api/services/messenger/v1/events/Event$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;-><init>()V

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

.method public getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->date_:I

    return v0
.end method

.method public getExistingParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    return-object p1
.end method

.method public getExistingParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExistingParticipantsList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getExistingParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/e;

    return-object p1
.end method

.method public getExistingParticipantsOrBuilderList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->existingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLegacyExistingParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-object p1
.end method

.method public getLegacyExistingParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLegacyExistingParticipantsList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLegacyExistingParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/f;

    return-object p1
.end method

.method public getLegacyExistingParticipantsOrBuilderList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyExistingParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLegacyParticipantRoles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipantRoles_:I

    return v0
.end method

.method public getLegacyParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-object p1
.end method

.method public getLegacyParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLegacyParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->legacyParticipants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->messageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    return-object p1
.end method

.method public getParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

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
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getUserInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->internalGetUserInfo()Lcom/google/protobuf/MapFieldLite;

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

.method public hasContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->context_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGroupInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->sender_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
