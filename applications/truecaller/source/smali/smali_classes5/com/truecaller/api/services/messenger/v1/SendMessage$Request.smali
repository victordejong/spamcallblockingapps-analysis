.class public final Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/SendMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;",
        "Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

.field public static final HIDE_PHONE_NUMBER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM_ID_FIELD_NUMBER:I = 0x1

.field public static final RECIPIENT_FIELD_NUMBER:I = 0x2

.field public static final URGENCY_FIELD_NUMBER:I = 0x5


# instance fields
.field private content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

.field private hidePhoneNumber_:Z

.field private randomId_:J

.field private recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

.field private urgency_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->setRandomId(J)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->clearHidePhoneNumber()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->setUrgencyValue(I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Lcom/truecaller/api/services/messenger/v1/models/Urgency;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->setUrgency(Lcom/truecaller/api/services/messenger/v1/models/Urgency;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->clearUrgency()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->clearRandomId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->setRecipient(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->mergeRecipient(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->clearRecipient()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->setContent(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->mergeContent(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->clearContent()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->setHidePhoneNumber(Z)V

    return-void
.end method

.method private clearContent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-void
.end method

.method private clearHidePhoneNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->hidePhoneNumber_:Z

    return-void
.end method

.method private clearRandomId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->randomId_:J

    return-void
.end method

.method private clearRecipient()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-void
.end method

.method private clearUrgency()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->urgency_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object v0
.end method

.method private mergeContent(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    :goto_0
    return-void
.end method

.method private mergeRecipient(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContent(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    return-void
.end method

.method private setHidePhoneNumber(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->hidePhoneNumber_:Z

    return-void
.end method

.method private setRandomId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->randomId_:J

    return-void
.end method

.method private setRecipient(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-void
.end method

.method private setUrgency(Lcom/truecaller/api/services/messenger/v1/models/Urgency;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/Urgency;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->urgency_:I

    return-void
.end method

.method private setUrgencyValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->urgency_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "randomId_"

    aput-object v0, p1, p3

    const-string p3, "recipient_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "content_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "hidePhoneNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "urgency_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0002\u0002\t\u0003\t\u0004\u0007\u0005\u000c"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;-><init>(Lcom/truecaller/api/services/messenger/v1/SendMessage$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;-><init>()V

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

.method public getContent()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHidePhoneNumber()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->hidePhoneNumber_:Z

    return v0
.end method

.method public getRandomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->randomId_:J

    return-wide v0
.end method

.method public getRecipient()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUrgency()Lcom/truecaller/api/services/messenger/v1/models/Urgency;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->urgency_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Urgency;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/Urgency;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/Urgency;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/Urgency;

    :cond_0
    return-object v0
.end method

.method public getUrgencyValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->urgency_:I

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->content_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRecipient()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->recipient_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
