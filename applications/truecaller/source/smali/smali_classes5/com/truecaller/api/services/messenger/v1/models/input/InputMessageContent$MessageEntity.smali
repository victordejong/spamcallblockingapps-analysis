.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$EntityCase;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;",
        ">;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

.field public static final LENGTH_FIELD_NUMBER:I = 0x2

.field public static final LINK_PREVIEW_FIELD_NUMBER:I = 0x4

.field public static final MENTION_FIELD_NUMBER:I = 0x3

.field public static final OFFSET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entityCase_:I

.field private entity_:Ljava/lang/Object;

.field private length_:I

.field private offset_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    return-void
.end method

.method public static synthetic access$18200()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object v0
.end method

.method public static synthetic access$18300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->clearEntity()V

    return-void
.end method

.method public static synthetic access$18400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->setOffset(I)V

    return-void
.end method

.method public static synthetic access$18500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->clearOffset()V

    return-void
.end method

.method public static synthetic access$18600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->setLength(I)V

    return-void
.end method

.method public static synthetic access$18700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->clearLength()V

    return-void
.end method

.method public static synthetic access$18800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->setMention(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V

    return-void
.end method

.method public static synthetic access$18900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->mergeMention(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V

    return-void
.end method

.method public static synthetic access$19000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->clearMention()V

    return-void
.end method

.method public static synthetic access$19100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->setLinkPreview(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V

    return-void
.end method

.method public static synthetic access$19200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->mergeLinkPreview(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V

    return-void
.end method

.method public static synthetic access$19300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->clearLinkPreview()V

    return-void
.end method

.method private clearEntity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    return-void
.end method

.method private clearLength()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->length_:I

    return-void
.end method

.method private clearLinkPreview()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMention()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->offset_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object v0
.end method

.method private mergeLinkPreview(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    return-void
.end method

.method private mergeMention(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->length_:I

    return-void
.end method

.method private setLinkPreview(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    return-void
.end method

.method private setMention(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    return-void
.end method

.method private setOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->offset_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "entity_"

    aput-object v0, p1, p3

    const-string p3, "entityCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "offset_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "length_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003<\u0000\u0004<\u0000"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;-><init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;-><init>()V

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

.method public getEntityCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$EntityCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$EntityCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$EntityCase;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->length_:I

    return v0
.end method

.method public getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    move-result-object v0

    return-object v0
.end method

.method public getMention()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entity_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->offset_:I

    return v0
.end method

.method public hasLinkPreview()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMention()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->entityCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
