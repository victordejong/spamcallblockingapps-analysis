.class public final Lcom/truecaller/api/services/comments/model/GetComments$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/comments/model/GetComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/comments/model/GetComments$Response$a;,
        Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;,
        Lcom/truecaller/api/services/comments/model/GetComments$Response$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response;",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COMMENTS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

.field public static final NEXTPAGEID_FIELD_NUMBER:I = 0x5

.field public static final NUMBER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comments_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private nextPageId_:J

.field private number_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-direct {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    .line 3
    const-class v1, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->number_:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$5100()Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object v0
.end method

.method public static synthetic access$5200(Lcom/truecaller/api/services/comments/model/GetComments$Response;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5300(Lcom/truecaller/api/services/comments/model/GetComments$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->clearNumber()V

    return-void
.end method

.method public static synthetic access$5400(Lcom/truecaller/api/services/comments/model/GetComments$Response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->setNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5500(Lcom/truecaller/api/services/comments/model/GetComments$Response;ILcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->setComments(ILcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V

    return-void
.end method

.method public static synthetic access$5600(Lcom/truecaller/api/services/comments/model/GetComments$Response;Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->addComments(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V

    return-void
.end method

.method public static synthetic access$5700(Lcom/truecaller/api/services/comments/model/GetComments$Response;ILcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->addComments(ILcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V

    return-void
.end method

.method public static synthetic access$5800(Lcom/truecaller/api/services/comments/model/GetComments$Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->addAllComments(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$5900(Lcom/truecaller/api/services/comments/model/GetComments$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->clearComments()V

    return-void
.end method

.method public static synthetic access$6000(Lcom/truecaller/api/services/comments/model/GetComments$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->removeComments(I)V

    return-void
.end method

.method public static synthetic access$6100(Lcom/truecaller/api/services/comments/model/GetComments$Response;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->setNextPageId(J)V

    return-void
.end method

.method public static synthetic access$6200(Lcom/truecaller/api/services/comments/model/GetComments$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->clearNextPageId()V

    return-void
.end method

.method private addAllComments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->ensureCommentsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addComments(ILcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->ensureCommentsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addComments(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->ensureCommentsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearComments()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNextPageId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->nextPageId_:J

    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->number_:Ljava/lang/String;

    return-void
.end method

.method private ensureCommentsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/comments/model/GetComments$Response$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/comments/model/GetComments$Response;)Lcom/truecaller/api/services/comments/model/GetComments$Response$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeComments(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->ensureCommentsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setComments(ILcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response;->ensureCommentsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNextPageId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->nextPageId_:J

    return-void
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->number_:Ljava/lang/String;

    return-void
.end method

.method private setNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->number_:Ljava/lang/String;

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
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "number_"

    aput-object v0, p1, p3

    const-string p3, "comments_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "nextPageId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0005\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u001b\u0005\u0002"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/comments/model/GetComments$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/comments/model/GetComments$Response$a;-><init>(Lcom/truecaller/api/services/comments/model/GetComments$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/comments/model/GetComments$Response;

    invoke-direct {p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response;-><init>()V

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

.method public getComments(I)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p1
.end method

.method public getCommentsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCommentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCommentsOrBuilder(I)Lcom/truecaller/api/services/comments/model/GetComments$Response$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$b;

    return-object p1
.end method

.method public getCommentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->comments_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNextPageId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->nextPageId_:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response;->number_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
