.class public final Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;",
        "Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

.field public static final INVITE_KEY_FIELD_NUMBER:I = 0x4

.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQ_FIELD_NUMBER:I = 0x2


# instance fields
.field private date_:I

.field private inviteKey_:Ljava/lang/String;

.field private messageId_:Ljava/lang/String;

.field private seq_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->messageId_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->inviteKey_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->setMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->setSeq(J)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->clearSeq()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->setDate(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->clearDate()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->setInviteKey(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->clearInviteKey()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->setInviteKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->setMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->clearMessageId()V

    return-void
.end method

.method private clearDate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->date_:I

    return-void
.end method

.method private clearInviteKey()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getInviteKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->inviteKey_:Ljava/lang/String;

    return-void
.end method

.method private clearMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private clearSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->seq_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->date_:I

    return-void
.end method

.method private setInviteKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->inviteKey_:Ljava/lang/String;

    return-void
.end method

.method private setInviteKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->inviteKey_:Ljava/lang/String;

    return-void
.end method

.method private setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->seq_:J

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageId_"

    aput-object v0, p1, p3

    const-string p3, "seq_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "date_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "inviteKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0004\u0004\u0208"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response$a;-><init>(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;-><init>()V

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

.method public getDate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->date_:I

    return v0
.end method

.method public getInviteKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->inviteKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->inviteKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->messageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->seq_:J

    return-wide v0
.end method
