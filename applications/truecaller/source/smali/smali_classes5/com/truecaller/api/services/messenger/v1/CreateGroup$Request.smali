.class public final Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/CreateGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;",
        "Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

.field public static final GROUP_INFO_FIELD_NUMBER:I = 0x5

.field public static final MANAGEMENT_SETTINGS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARTICIPANTS_FIELD_NUMBER:I = 0x4

.field public static final PRIVACY_SETTINGS_FIELD_NUMBER:I = 0x2

.field public static final RANDOM_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

.field private managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

.field private participants_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;",
            ">;"
        }
    .end annotation
.end field

.field private privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

.field private randomId_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->setRandomId(J)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->addParticipants(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;ILcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->addParticipants(ILcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->addAllParticipants(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->clearParticipants()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->removeParticipants(I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->clearGroupInfo()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->clearRandomId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->setPrivacySettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->mergePrivacySettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->clearPrivacySettings()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->setManagementSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->mergeManagementSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->clearManagementSettings()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;ILcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->setParticipants(ILcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method private addAllParticipants(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->ensureParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addParticipants(ILcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->ensureParticipantsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addParticipants(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->ensureParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearGroupInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    return-void
.end method

.method private clearManagementSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    return-void
.end method

.method private clearParticipants()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPrivacySettings()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    return-void
.end method

.method private clearRandomId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->randomId_:J

    return-void
.end method

.method private ensureParticipantsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object v0
.end method

.method private mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    :goto_0
    return-void
.end method

.method private mergeManagementSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    :goto_0
    return-void
.end method

.method private mergePrivacySettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeParticipants(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->ensureParticipantsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    return-void
.end method

.method private setManagementSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    return-void
.end method

.method private setParticipants(ILcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->ensureParticipantsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPrivacySettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    return-void
.end method

.method private setRandomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->randomId_:J

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "randomId_"

    aput-object v0, p1, p3

    const-string p3, "privacySettings_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "managementSettings_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "participants_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "groupInfo_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0002\u0002\t\u0003\t\u0004\u001b\u0005\t"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;-><init>(Lcom/truecaller/api/services/messenger/v1/CreateGroup$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;-><init>()V

    return-object p1

    nop

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

.method public getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getManagementSettings()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParticipants(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object p1
.end method

.method public getParticipantsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getParticipantsOrBuilder(I)Le/a/t2/a/e/a/d/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/h/b;

    return-object p1
.end method

.method public getParticipantsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/e/a/d/h/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->participants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPrivacySettings()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRandomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->randomId_:J

    return-wide v0
.end method

.method public hasGroupInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasManagementSettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->managementSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupManagementSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrivacySettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->privacySettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
