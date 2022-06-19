.class public final Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/survey/PostSurveyResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;,
        Lcom/truecaller/api/services/survey/PostSurveyResults$Request$a;,
        Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;,
        Lcom/truecaller/api/services/survey/PostSurveyResults$Request$c;,
        Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/survey/PostSurveyResults$Request;",
        "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANSWERS_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_DATA_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSTHROUGH_FIELD_NUMBER:I = 0x3

.field public static final SURVEY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private answers_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation
.end field

.field private clientData_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private passthrough_:Ljava/lang/String;

.field private surveyId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->answers_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->surveyId_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->passthrough_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$1700()Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->setSurveyId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clearSurveyId()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->setSurveyIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->getMutableAnswersMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->setPassthrough(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clearPassthrough()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->setPassthroughBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;ILcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->setClientData(ILcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->addClientData(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;ILcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->addClientData(ILcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->addAllClientData(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clearClientData()V

    return-void
.end method

.method public static synthetic access$3000(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->removeClientData(I)V

    return-void
.end method

.method private addAllClientData(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->ensureClientDataIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addClientData(ILcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->ensureClientDataIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addClientData(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->ensureClientDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearClientData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPassthrough()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->getDefaultInstance()Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->getPassthrough()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->passthrough_:Ljava/lang/String;

    return-void
.end method

.method private clearSurveyId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->getDefaultInstance()Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->getSurveyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->surveyId_:Ljava/lang/String;

    return-void
.end method

.method private ensureClientDataIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object v0
.end method

.method private getMutableAnswersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->internalGetMutableAnswers()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetAnswers()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->answers_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableAnswers()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->answers_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->answers_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->answers_:Lcom/google/protobuf/MapFieldLite;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->answers_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeClientData(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->ensureClientDataIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setClientData(ILcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->ensureClientDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPassthrough(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->passthrough_:Ljava/lang/String;

    return-void
.end method

.method private setPassthroughBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->passthrough_:Ljava/lang/String;

    return-void
.end method

.method private setSurveyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->surveyId_:Ljava/lang/String;

    return-void
.end method

.method private setSurveyIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->surveyId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsAnswers(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->internalGetAnswers()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

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
    sget-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "surveyId_"

    aput-object v0, p1, p3

    const-string p3, "answers_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    sget-object p3, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$a;->a:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "passthrough_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "clientData_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0001\u0000\u0001\u0208\u00022\u0003\u0208\u0004\u001b"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;-><init>(Lcom/truecaller/api/services/survey/PostSurveyResults$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;-><init>()V

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

.method public getAnswers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->getAnswersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAnswersCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->internalGetAnswers()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getAnswersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->internalGetAnswers()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAnswersOrDefault(ILcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->internalGetAnswers()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    :cond_0
    return-object p2
.end method

.method public getAnswersOrThrow(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->internalGetAnswers()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getClientData(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;

    return-object p1
.end method

.method public getClientDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getClientDataOrBuilder(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$c;

    return-object p1
.end method

.method public getClientDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->clientData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPassthrough()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->passthrough_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassthroughBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->passthrough_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSurveyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->surveyId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSurveyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->surveyId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
