.class public final Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/survey/PostSurveyResults$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Answers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
        "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CHOICE_IDS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

.field public static final FREE_TEXT_ANSWER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private choiceIdsMemoizedSerializedSize:I

.field private choiceIds_:Lcom/google/protobuf/Internal$IntList;

.field private freeTextAnswer_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-direct {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    .line 3
    const-class v1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIdsMemoizedSerializedSize:I

    .line 3
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->freeTextAnswer_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->setChoiceIds(II)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->addChoiceIds(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->addAllChoiceIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->clearChoiceIds()V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->setFreeTextAnswer(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->clearFreeTextAnswer()V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->setFreeTextAnswerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllChoiceIds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->ensureChoiceIdsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addChoiceIds(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->ensureChoiceIdsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearChoiceIds()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFreeTextAnswer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->getDefaultInstance()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->getFreeTextAnswer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->freeTextAnswer_:Ljava/lang/String;

    return-void
.end method

.method private ensureChoiceIdsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChoiceIds(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->ensureChoiceIdsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFreeTextAnswer(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->freeTextAnswer_:Ljava/lang/String;

    return-void
.end method

.method private setFreeTextAnswerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->freeTextAnswer_:Ljava/lang/String;

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
    sget-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "choiceIds_"

    aput-object v0, p1, p3

    const-string p3, "freeTextAnswer_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\'\u0002\u0208"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;-><init>(Lcom/truecaller/api/services/survey/PostSurveyResults$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-direct {p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;-><init>()V

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

.method public getChoiceIds(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getChoiceIdsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChoiceIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->choiceIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFreeTextAnswer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->freeTextAnswer_:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeTextAnswerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->freeTextAnswer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
