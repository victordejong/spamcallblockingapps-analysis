.class public final Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/videocallerid/v1/ShareVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;",
        "Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

.field public static final DURATION_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MIRROR_PLAYBACK_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENTS_FIELD_NUMBER:I = 0x3

.field public static final SIZE_BYTES_FIELD_NUMBER:I = 0x2


# instance fields
.field private durationMillis_:J

.field private id_:Ljava/lang/String;

.field private mirrorPlayback_:Z

.field private recipientsMemoizedSerializedSize:I

.field private recipients_:Lcom/google/protobuf/Internal$LongList;

.field private sizeBytes_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipientsMemoizedSerializedSize:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->id_:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->setDurationMillis(J)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->clearDurationMillis()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->setMirrorPlayback(Z)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->clearMirrorPlayback()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->clearId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->setSizeBytes(J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->clearSizeBytes()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->setRecipients(IJ)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->addRecipients(J)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->addAllRecipients(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->clearRecipients()V

    return-void
.end method

.method private addAllRecipients(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->ensureRecipientsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addRecipients(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->ensureRecipientsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    return-void
.end method

.method private clearDurationMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->durationMillis_:J

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->getDefaultInstance()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearMirrorPlayback()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->mirrorPlayback_:Z

    return-void
.end method

.method private clearRecipients()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method private clearSizeBytes()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->sizeBytes_:J

    return-void
.end method

.method private ensureRecipientsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDurationMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->durationMillis_:J

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->id_:Ljava/lang/String;

    return-void
.end method

.method private setMirrorPlayback(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->mirrorPlayback_:Z

    return-void
.end method

.method private setRecipients(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->ensureRecipientsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$LongList;->setLong(IJ)J

    return-void
.end method

.method private setSizeBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->sizeBytes_:J

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
    sget-object p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "id_"

    aput-object v0, p1, p3

    const-string p3, "sizeBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "recipients_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "durationMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "mirrorPlayback_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0208\u0002\u0002\u0003%\u0004\u0002\u0005\u0007"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request$a;-><init>(Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;-><init>()V

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

.method public getDurationMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->durationMillis_:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMirrorPlayback()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->mirrorPlayback_:Z

    return v0
.end method

.method public getRecipients(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecipientsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->recipients_:Lcom/google/protobuf/Internal$LongList;

    return-object v0
.end method

.method public getSizeBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/videocallerid/v1/ShareVideo$Request;->sizeBytes_:J

    return-wide v0
.end method
