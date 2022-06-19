.class public final Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;",
        "Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;",
        ">;",
        "Le/a/t2/a/h/a/c;"
    }
.end annotation


# static fields
.field public static final BACKGROUNDCOLOR_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

.field public static final FOREGROUNDCOLOR_FIELD_NUMBER:I = 0x5

.field public static final HEADER_FIELD_NUMBER:I = 0x2

.field public static final ICONURL_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundColor_:Ljava/lang/String;

.field private foregroundColor_:Ljava/lang/String;

.field private header_:Ljava/lang/String;

.field private iconUrl_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private message_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-direct {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    .line 3
    const-class v1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->id_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->header_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->message_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->backgroundColor_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->foregroundColor_:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->iconUrl_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->clearBackgroundColor()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setBackgroundColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setForegroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->clearForegroundColor()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setForegroundColorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setIconUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->clearIconUrl()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setIconUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->clearId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->clearHeader()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setHeaderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->clearMessage()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearBackgroundColor()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->backgroundColor_:Ljava/lang/String;

    return-void
.end method

.method private clearForegroundColor()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->foregroundColor_:Ljava/lang/String;

    return-void
.end method

.method private clearHeader()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->header_:Ljava/lang/String;

    return-void
.end method

.method private clearIconUrl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->iconUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->message_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->backgroundColor_:Ljava/lang/String;

    return-void
.end method

.method private setBackgroundColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->backgroundColor_:Ljava/lang/String;

    return-void
.end method

.method private setForegroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->foregroundColor_:Ljava/lang/String;

    return-void
.end method

.method private setForegroundColorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->foregroundColor_:Ljava/lang/String;

    return-void
.end method

.method private setHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->header_:Ljava/lang/String;

    return-void
.end method

.method private setHeaderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->header_:Ljava/lang/String;

    return-void
.end method

.method private setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->iconUrl_:Ljava/lang/String;

    return-void
.end method

.method private setIconUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->iconUrl_:Ljava/lang/String;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->id_:Ljava/lang/String;

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->message_:Ljava/lang/String;

    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->message_:Ljava/lang/String;

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
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "id_"

    aput-object v0, p1, p3

    const-string p3, "header_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "message_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "backgroundColor_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "foregroundColor_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "iconUrl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b;-><init>(Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;

    invoke-direct {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;-><init>()V

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

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->backgroundColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->backgroundColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->foregroundColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->foregroundColor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->header_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->iconUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
