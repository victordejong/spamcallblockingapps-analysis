.class public final Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/MessageSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marked"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

.field public static final MESSAGE_DESCRIPTORS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

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

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;ILcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->setMessageDescriptors(ILcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->addMessageDescriptors(Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;ILcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->addMessageDescriptors(ILcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->addAllMessageDescriptors(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->clearMessageDescriptors()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->removeMessageDescriptors(I)V

    return-void
.end method

.method private addAllMessageDescriptors(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->ensureMessageDescriptorsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMessageDescriptors(ILcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->ensureMessageDescriptorsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMessageDescriptors(Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->ensureMessageDescriptorsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearMessageDescriptors()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureMessageDescriptorsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMessageDescriptors(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->ensureMessageDescriptorsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setMessageDescriptors(ILcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->ensureMessageDescriptorsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageDescriptors_"

    aput-object v0, p1, p3

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a;-><init>(Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;-><init>()V

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

.method public getMessageDescriptors(I)Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;

    return-object p1
.end method

.method public getMessageDescriptorsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageDescriptorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessageDescriptorsOrBuilder(I)Le/a/t2/a/e/a/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/e/a/d/b;

    return-object p1
.end method

.method public getMessageDescriptorsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/e/a/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageSelection$Marked;->messageDescriptors_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
