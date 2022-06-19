.class public final Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;",
        "Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CALLBACKPREDEFINEDMESSAGES_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

.field public static final MIDCALLPREDEFINEDMESSAGES_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDEFINEDMESSAGES_FIELD_NUMBER:I = 0x1

.field public static final SECONDCALLPREDEFINEDMESSAGES_FIELD_NUMBER:I = 0x3

.field public static final TTL_FIELD_NUMBER:I = 0x2


# instance fields
.field private callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private ttl_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-direct {v0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    .line 3
    const-class v1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

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

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->clearTtl()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->setSecondCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addSecondCallPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addSecondCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addAllSecondCallPredefinedMessages(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->clearSecondCallPredefinedMessages()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->removeSecondCallPredefinedMessages(I)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->setMidCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addMidCallPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addMidCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$200()Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object v0
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addAllMidCallPredefinedMessages(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->clearMidCallPredefinedMessages()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->removeMidCallPredefinedMessages(I)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->setCallbackPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addCallbackPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addCallbackPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addAllCallbackPredefinedMessages(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->clearCallbackPredefinedMessages()V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->removeCallbackPredefinedMessages(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->setPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->addAllPredefinedMessages(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->clearPredefinedMessages()V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->removePredefinedMessages(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->setTtl(I)V

    return-void
.end method

.method private addAllCallbackPredefinedMessages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureCallbackPredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllMidCallPredefinedMessages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureMidCallPredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllPredefinedMessages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensurePredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllSecondCallPredefinedMessages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureSecondCallPredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCallbackPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureCallbackPredefinedMessagesIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCallbackPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureCallbackPredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMidCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureMidCallPredefinedMessagesIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMidCallPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureMidCallPredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensurePredefinedMessagesIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensurePredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSecondCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureSecondCallPredefinedMessagesIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSecondCallPredefinedMessages(Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureSecondCallPredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCallbackPredefinedMessages()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMidCallPredefinedMessages()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPredefinedMessages()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSecondCallPredefinedMessages()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTtl()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ttl_:I

    return-void
.end method

.method private ensureCallbackPredefinedMessagesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureMidCallPredefinedMessagesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensurePredefinedMessagesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSecondCallPredefinedMessagesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCallbackPredefinedMessages(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureCallbackPredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeMidCallPredefinedMessages(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureMidCallPredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removePredefinedMessages(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensurePredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSecondCallPredefinedMessages(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureSecondCallPredefinedMessagesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCallbackPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureCallbackPredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMidCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureMidCallPredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensurePredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSecondCallPredefinedMessages(ILcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ensureSecondCallPredefinedMessagesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTtl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ttl_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "predefinedMessages_"

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    const/4 p3, 0x2

    const-string v0, "ttl_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "secondCallPredefinedMessages_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const/4 p3, 0x5

    const-string v0, "midCallPredefinedMessages_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const/4 p3, 0x7

    const-string v0, "callbackPredefinedMessages_"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u0004\u0003\u001b\u0004\u001b\u0005\u001b"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;

    invoke-direct {p1, v0}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a;-><init>(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    invoke-direct {p1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;-><init>()V

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

.method public getCallbackPredefinedMessages(I)Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;

    return-object p1
.end method

.method public getCallbackPredefinedMessagesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCallbackPredefinedMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCallbackPredefinedMessagesOrBuilder(I)Le/a/t2/a/a/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/a/a/c/a;

    return-object p1
.end method

.method public getCallbackPredefinedMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/a/a/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->callbackPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMidCallPredefinedMessages(I)Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;

    return-object p1
.end method

.method public getMidCallPredefinedMessagesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMidCallPredefinedMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMidCallPredefinedMessagesOrBuilder(I)Le/a/t2/a/a/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/a/a/c/a;

    return-object p1
.end method

.method public getMidCallPredefinedMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/a/a/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->midCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPredefinedMessages(I)Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;

    return-object p1
.end method

.method public getPredefinedMessagesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPredefinedMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPredefinedMessagesOrBuilder(I)Le/a/t2/a/a/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/a/a/c/a;

    return-object p1
.end method

.method public getPredefinedMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/a/a/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->predefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSecondCallPredefinedMessages(I)Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;

    return-object p1
.end method

.method public getSecondCallPredefinedMessagesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecondCallPredefinedMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSecondCallPredefinedMessagesOrBuilder(I)Le/a/t2/a/a/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/a/a/c/a;

    return-object p1
.end method

.method public getSecondCallPredefinedMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/a/a/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->secondCallPredefinedMessages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->ttl_:I

    return v0
.end method
