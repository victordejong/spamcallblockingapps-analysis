.class public final Lcom/truecaller/api/services/messenger/v1/events/Event;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/e/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/events/Event$b;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;,
        Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event;",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$b;",
        ">;",
        "Le/a/t2/a/e/a/c/a;"
    }
.end annotation


# static fields
.field public static final CONTEXT_SEQ_FIELD_NUMBER:I = 0x3e4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

.field public static final GROUP_CREATED_FIELD_NUMBER:I = 0x5

.field public static final GROUP_DELETED_FIELD_NUMBER:I = 0xa

.field public static final GROUP_INFO_UPDATED_FIELD_NUMBER:I = 0x9

.field public static final GROUP_INVITE_KEY_UPDATED_FIELD_NUMBER:I = 0xc

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final INCOMPATIBLE_EVENT_FIELD_NUMBER:I = 0x3e6

.field public static final MESSAGES_DELETED_FIELD_NUMBER:I = 0xe

.field public static final MESSAGE_EDITED_FIELD_NUMBER:I = 0xd

.field public static final MESSAGE_SENT_FIELD_NUMBER:I = 0x2

.field public static final ORIGINAL_FIELD_NUMBER:I = 0x3e7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARTICIPANT_ADDED_FIELD_NUMBER:I = 0x6

.field public static final PARTICIPANT_REMOVED_FIELD_NUMBER:I = 0x7

.field public static final PING_FIELD_NUMBER:I = 0x3e5

.field public static final REACTION_SENT_FIELD_NUMBER:I = 0x4

.field public static final REPORT_SENT_FIELD_NUMBER:I = 0x3

.field public static final ROLES_UPDATED_FIELD_NUMBER:I = 0x8

.field public static final USER_TYPING_FIELD_NUMBER:I = 0xb


# instance fields
.field private contextSeq_:J

.field private id_:J

.field private original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method public static synthetic access$32100()Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object v0
.end method

.method public static synthetic access$32200(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearPayload()V

    return-void
.end method

.method public static synthetic access$32300(Lcom/truecaller/api/services/messenger/v1/events/Event;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setId(J)V

    return-void
.end method

.method public static synthetic access$32400(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearId()V

    return-void
.end method

.method public static synthetic access$32500(Lcom/truecaller/api/services/messenger/v1/events/Event;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setContextSeq(J)V

    return-void
.end method

.method public static synthetic access$32600(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearContextSeq()V

    return-void
.end method

.method public static synthetic access$32700(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setOriginal(Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)V

    return-void
.end method

.method public static synthetic access$32800(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeOriginal(Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)V

    return-void
.end method

.method public static synthetic access$32900(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearOriginal()V

    return-void
.end method

.method public static synthetic access$33000(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setMessageSent(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V

    return-void
.end method

.method public static synthetic access$33100(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeMessageSent(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V

    return-void
.end method

.method public static synthetic access$33200(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearMessageSent()V

    return-void
.end method

.method public static synthetic access$33300(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setReportSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V

    return-void
.end method

.method public static synthetic access$33400(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeReportSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V

    return-void
.end method

.method public static synthetic access$33500(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearReportSent()V

    return-void
.end method

.method public static synthetic access$33600(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setReactionSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)V

    return-void
.end method

.method public static synthetic access$33700(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeReactionSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)V

    return-void
.end method

.method public static synthetic access$33800(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearReactionSent()V

    return-void
.end method

.method public static synthetic access$33900(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setGroupCreated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V

    return-void
.end method

.method public static synthetic access$34000(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeGroupCreated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V

    return-void
.end method

.method public static synthetic access$34100(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearGroupCreated()V

    return-void
.end method

.method public static synthetic access$34200(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setParticipantAdded(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V

    return-void
.end method

.method public static synthetic access$34300(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeParticipantAdded(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V

    return-void
.end method

.method public static synthetic access$34400(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearParticipantAdded()V

    return-void
.end method

.method public static synthetic access$34500(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setParticipantRemoved(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)V

    return-void
.end method

.method public static synthetic access$34600(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeParticipantRemoved(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)V

    return-void
.end method

.method public static synthetic access$34700(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearParticipantRemoved()V

    return-void
.end method

.method public static synthetic access$34800(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setRolesUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)V

    return-void
.end method

.method public static synthetic access$34900(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeRolesUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)V

    return-void
.end method

.method public static synthetic access$35000(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearRolesUpdated()V

    return-void
.end method

.method public static synthetic access$35100(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setGroupInfoUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)V

    return-void
.end method

.method public static synthetic access$35200(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeGroupInfoUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)V

    return-void
.end method

.method public static synthetic access$35300(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearGroupInfoUpdated()V

    return-void
.end method

.method public static synthetic access$35400(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setGroupDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)V

    return-void
.end method

.method public static synthetic access$35500(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeGroupDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)V

    return-void
.end method

.method public static synthetic access$35600(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearGroupDeleted()V

    return-void
.end method

.method public static synthetic access$35700(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setUserTyping(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V

    return-void
.end method

.method public static synthetic access$35800(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeUserTyping(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V

    return-void
.end method

.method public static synthetic access$35900(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearUserTyping()V

    return-void
.end method

.method public static synthetic access$36000(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setGroupInviteKeyUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)V

    return-void
.end method

.method public static synthetic access$36100(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeGroupInviteKeyUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)V

    return-void
.end method

.method public static synthetic access$36200(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearGroupInviteKeyUpdated()V

    return-void
.end method

.method public static synthetic access$36300(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setMessageEdited(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V

    return-void
.end method

.method public static synthetic access$36400(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeMessageEdited(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V

    return-void
.end method

.method public static synthetic access$36500(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearMessageEdited()V

    return-void
.end method

.method public static synthetic access$36600(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setMessagesDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)V

    return-void
.end method

.method public static synthetic access$36700(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeMessagesDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)V

    return-void
.end method

.method public static synthetic access$36800(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearMessagesDeleted()V

    return-void
.end method

.method public static synthetic access$36900(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setPing(Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)V

    return-void
.end method

.method public static synthetic access$37000(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergePing(Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)V

    return-void
.end method

.method public static synthetic access$37100(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearPing()V

    return-void
.end method

.method public static synthetic access$37200(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->setIncompatibleEvent(Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)V

    return-void
.end method

.method public static synthetic access$37300(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->mergeIncompatibleEvent(Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)V

    return-void
.end method

.method public static synthetic access$37400(Lcom/truecaller/api/services/messenger/v1/events/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->clearIncompatibleEvent()V

    return-void
.end method

.method private clearContextSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->contextSeq_:J

    return-void
.end method

.method private clearGroupCreated()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGroupDeleted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGroupInfoUpdated()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGroupInviteKeyUpdated()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->id_:J

    return-void
.end method

.method private clearIncompatibleEvent()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageEdited()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageSent()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessagesDeleted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOriginal()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    return-void
.end method

.method private clearParticipantAdded()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearParticipantRemoved()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    return-void
.end method

.method private clearPing()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearReactionSent()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearReportSent()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRolesUpdated()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUserTyping()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object v0
.end method

.method private mergeGroupCreated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeGroupDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeGroupInfoUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeGroupInviteKeyUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeIncompatibleEvent(Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeMessageEdited(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeMessageSent(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeMessagesDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeOriginal(Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    :goto_0
    return-void
.end method

.method private mergeParticipantAdded(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeParticipantRemoved(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergePing(Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)Lcom/truecaller/api/services/messenger/v1/events/Event$Ping$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeReactionSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeReportSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeRolesUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private mergeUserTyping(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/events/Event$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/events/Event;)Lcom/truecaller/api/services/messenger/v1/events/Event$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContextSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->contextSeq_:J

    return-void
.end method

.method private setGroupCreated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setGroupDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setGroupInfoUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setGroupInviteKeyUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->id_:J

    return-void
.end method

.method private setIncompatibleEvent(Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0x3e6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setMessageEdited(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setMessageSent(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setMessagesDeleted(Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setOriginal(Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    return-void
.end method

.method private setParticipantAdded(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setParticipantRemoved(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setPing(Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0x3e5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setReactionSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setReportSent(Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setRolesUpdated(Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    return-void
.end method

.method private setUserTyping(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/events/Event;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    return-object p1

    :pswitch_4
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payload_"

    aput-object v0, p1, p3

    const-string p3, "payloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "id_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "contextSeq_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-class p3, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "original_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0012\u0001\u0000\u0001\u03e7\u0012\u0000\u0000\u0000\u0001\u0002\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000e<\u0000\u03e4\u0002\u03e5<\u0000\u03e6<\u0000\u03e7\t"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/events/Event$b;-><init>(Lcom/truecaller/api/services/messenger/v1/events/Event$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;-><init>()V

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

.method public getContextSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->contextSeq_:J

    return-wide v0
.end method

.method public getGroupCreated()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    move-result-object v0

    return-object v0
.end method

.method public getGroupDeleted()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;

    move-result-object v0

    return-object v0
.end method

.method public getGroupInfoUpdated()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;

    move-result-object v0

    return-object v0
.end method

.method public getGroupInviteKeyUpdated()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->id_:J

    return-wide v0
.end method

.method public getIncompatibleEvent()Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEdited()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesDeleted()Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParticipantAdded()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantRemoved()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getPing()Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$Ping;

    move-result-object v0

    return-object v0
.end method

.method public getReactionSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    move-result-object v0

    return-object v0
.end method

.method public getReportSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    move-result-object v0

    return-object v0
.end method

.method public getRolesUpdated()Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;

    move-result-object v0

    return-object v0
.end method

.method public getUserTyping()Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    move-result-object v0

    return-object v0
.end method

.method public hasGroupCreated()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGroupDeleted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGroupInfoUpdated()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGroupInviteKeyUpdated()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIncompatibleEvent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessageEdited()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessageSent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessagesDeleted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOriginal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->original_:Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParticipantAdded()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParticipantRemoved()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPing()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReactionSent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReportSent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRolesUpdated()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserTyping()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event;->payloadCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
