.class public final Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/e/a/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;",
        "Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;",
        ">;",
        "Le/a/t2/a/e/a/d/a;"
    }
.end annotation


# static fields
.field public static final CURRENT_SEQ_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

.field public static final GROUP_INFO_EXT_FIELD_NUMBER:I = 0xa

.field public static final GROUP_INFO_FIELD_NUMBER:I = 0x5

.field public static final INVITER_FIELD_NUMBER:I = 0x9

.field public static final NOTIFICATION_SETTINGS_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEER_FIELD_NUMBER:I = 0x6

.field public static final PERMISSIONS_FIELD_NUMBER:I = 0x4

.field public static final ROLES_FIELD_NUMBER:I = 0x3

.field public static final SINCE_DATE_FIELD_NUMBER:I = 0x8

.field public static final SINCE_SEQ_FIELD_NUMBER:I = 0x2


# instance fields
.field private currentSeq_:J

.field private groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

.field private groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

.field private inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

.field private notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

.field private peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

.field private permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

.field private roles_:I

.field private sinceDate_:I

.field private sinceSeq_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setPeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->mergeGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearGroupInfoExt()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setSinceSeq(J)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearSinceSeq()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setSinceDate(I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearSinceDate()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setInviter(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->mergeInviter(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearInviter()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setRoles(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->mergePeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearRoles()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setPermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->mergePermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearPermissions()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->mergeNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearNotificationSettings()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearPeer()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setCurrentSeq(J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearCurrentSeq()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->clearGroupInfo()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->setGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V

    return-void
.end method

.method private clearCurrentSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->currentSeq_:J

    return-void
.end method

.method private clearGroupInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    return-void
.end method

.method private clearGroupInfoExt()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    return-void
.end method

.method private clearInviter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private clearNotificationSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-void
.end method

.method private clearPeer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private clearPermissions()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    return-void
.end method

.method private clearRoles()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->roles_:I

    return-void
.end method

.method private clearSinceDate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->sinceDate_:I

    return-void
.end method

.method private clearSinceSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->sinceSeq_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object v0
.end method

.method private mergeGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfo$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    :goto_0
    return-void
.end method

.method private mergeGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    :goto_0
    return-void
.end method

.method private mergeInviter(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method private mergeNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    :goto_0
    return-void
.end method

.method private mergePeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method private mergePermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->currentSeq_:J

    return-void
.end method

.method private setGroupInfo(Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    return-void
.end method

.method private setGroupInfoExt(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    return-void
.end method

.method private setInviter(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private setNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-void
.end method

.method private setPeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method private setPermissions(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    return-void
.end method

.method private setRoles(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->roles_:I

    return-void
.end method

.method private setSinceDate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->sinceDate_:I

    return-void
.end method

.method private setSinceSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->sinceSeq_:J

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "currentSeq_"

    aput-object v0, p1, p3

    const-string p3, "sinceSeq_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "roles_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "permissions_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "groupInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "peer_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "notificationSettings_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "sinceDate_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "inviter_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "groupInfoExt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u0002\u0002\u0002\u0003\u0004\u0004\t\u0005\t\u0006\t\u0007\t\u0008\u0004\t\t\n\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;-><init>()V

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

.method public getCurrentSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->currentSeq_:J

    return-wide v0
.end method

.method public getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInviter()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNotificationSettings()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->roles_:I

    return v0
.end method

.method public getSinceDate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->sinceDate_:I

    return v0
.end method

.method public getSinceSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->sinceSeq_:J

    return-wide v0
.end method

.method public hasGroupInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfo_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->groupInfoExt_:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInviter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->inviter_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationSettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPeer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

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
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->permissions_:Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
