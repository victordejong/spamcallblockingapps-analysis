.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$ValueCase;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

.field public static final EMOJI_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_MESSAGE_ID_FIELD_NUMBER:I = 0x3e7

.field public static final REF_SEQ_FIELD_NUMBER:I = 0x3e6


# instance fields
.field private refMessageId_:Ljava/lang/String;

.field private refSeq_:J

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->clearRefMessageId()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->setEmoji(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->mergeEmoji(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->clearEmoji()V

    return-void
.end method

.method public static synthetic access$500()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->clearValue()V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->setRefSeq(J)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->clearRefSeq()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->setRefMessageId(Ljava/lang/String;)V

    return-void
.end method

.method private clearEmoji()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRefMessageId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->getRefMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private clearRefSeq()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refSeq_:J

    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object v0
.end method

.method private mergeEmoji(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEmoji(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    return-void
.end method

.method private setRefMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefMessageIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refMessageId_:Ljava/lang/String;

    return-void
.end method

.method private setRefSeq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refSeq_:J

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "refSeq_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "refMessageId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u03e7\u0003\u0000\u0000\u0000\u0001<\u0000\u03e6\u0002\u03e7\u0208"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;-><init>()V

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

.method public getEmoji()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    move-result-object v0

    return-object v0
.end method

.method public getRefMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refMessageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMessageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refMessageId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefSeq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->refSeq_:J

    return-wide v0
.end method

.method public getValueCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$ValueCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$ValueCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasEmoji()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
