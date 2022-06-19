.class public final Lcom/truecaller/api/services/callerid/v1/model/CallContext;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;,
        Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/callerid/v1/model/CallContext;",
        "Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CUSTOMMESSAGE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/callerid/v1/model/CallContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDEFINEDMESSAGE_FIELD_NUMBER:I = 0x3


# instance fields
.field private messageCase_:I

.field private messageId_:Ljava/lang/String;

.field private message_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-direct {v0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    .line 3
    const-class v1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->clearMessage()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->setMessageId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->clearMessageId()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->setMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->setCustomMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->clearCustomMessage()V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->setCustomMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/callerid/v1/model/CallContext;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->setPredefinedMessage(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->clearPredefinedMessage()V

    return-void
.end method

.method private clearCustomMessage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    return-void
.end method

.method private clearMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private clearPredefinedMessage()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/callerid/v1/model/CallContext;)Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/callerid/v1/model/CallContext;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCustomMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    .line 3
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    return-void
.end method

.method private setCustomMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    return-void
.end method

.method private setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageId_:Ljava/lang/String;

    return-void
.end method

.method private setPredefinedMessage(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

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
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "message_"

    aput-object v0, p1, p3

    const-string p3, "messageCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "messageId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u023b\u0000\u0002\u0208\u00037\u0000"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;-><init>(Lcom/truecaller/api/services/callerid/v1/model/CallContext$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-direct {p1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;-><init>()V

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

.method public getCustomMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCustomMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCase()Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->forNumber(I)Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPredefinedMessage()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->message_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomMessage()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPredefinedMessage()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
