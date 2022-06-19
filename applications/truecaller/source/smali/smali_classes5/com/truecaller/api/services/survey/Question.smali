.class public final Lcom/truecaller/api/services/survey/Question;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/i/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/survey/Question$b;,
        Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/survey/Question;",
        "Lcom/truecaller/api/services/survey/Question$b;",
        ">;",
        "Le/a/t2/a/i/d;"
    }
.end annotation


# static fields
.field public static final BOOL_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

.field public static final FREE_TEXT_FIELD_NUMBER:I = 0x8

.field public static final HEADER_MESSAGE_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_FIELD_NUMBER:I = 0x3

.field public static final MULTI_ANSWER_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/Question;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_FIELD_NUMBER:I = 0x5

.field public static final SINGLE_ANSWER_FIELD_NUMBER:I = 0x6


# instance fields
.field private headerMessage_:Ljava/lang/String;

.field private id_:I

.field private message_:Ljava/lang/String;

.field private questionTypeCase_:I

.field private questionType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/Question;

    invoke-direct {v0}, Lcom/truecaller/api/services/survey/Question;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    .line 3
    const-class v1, Lcom/truecaller/api/services/survey/Question;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->headerMessage_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->message_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/survey/Question;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearQuestionType()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/Bool;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setBool(Lcom/truecaller/api/services/survey/Bool;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/Bool;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->mergeBool(Lcom/truecaller/api/services/survey/Bool;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearBool()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/Rating;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setRating(Lcom/truecaller/api/services/survey/Rating;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/Rating;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->mergeRating(Lcom/truecaller/api/services/survey/Rating;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearRating()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/SingleAnswer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setSingleAnswer(Lcom/truecaller/api/services/survey/SingleAnswer;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/SingleAnswer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->mergeSingleAnswer(Lcom/truecaller/api/services/survey/SingleAnswer;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearSingleAnswer()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/MultiAnswer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setMultiAnswer(Lcom/truecaller/api/services/survey/MultiAnswer;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/survey/Question;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setId(I)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/MultiAnswer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->mergeMultiAnswer(Lcom/truecaller/api/services/survey/MultiAnswer;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearMultiAnswer()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/FreeText;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setFreeText(Lcom/truecaller/api/services/survey/FreeText;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/survey/Question;Lcom/truecaller/api/services/survey/FreeText;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->mergeFreeText(Lcom/truecaller/api/services/survey/FreeText;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearFreeText()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearId()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/survey/Question;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setHeaderMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearHeaderMessage()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/survey/Question;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setHeaderMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/survey/Question;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Question;->clearMessage()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/survey/Question;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Question;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearBool()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFreeText()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearHeaderMessage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/Question;->getDefaultInstance()Lcom/truecaller/api/services/survey/Question;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/survey/Question;->getHeaderMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->headerMessage_:Ljava/lang/String;

    return-void
.end method

.method private clearId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->id_:I

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/Question;->getDefaultInstance()Lcom/truecaller/api/services/survey/Question;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/survey/Question;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->message_:Ljava/lang/String;

    return-void
.end method

.method private clearMultiAnswer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearQuestionType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    return-void
.end method

.method private clearRating()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSingleAnswer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/survey/Question;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    return-object v0
.end method

.method private mergeBool(Lcom/truecaller/api/services/survey/Bool;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/Bool;->getDefaultInstance()Lcom/truecaller/api/services/survey/Bool;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/Bool;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/Bool;->newBuilder(Lcom/truecaller/api/services/survey/Bool;)Lcom/truecaller/api/services/survey/Bool$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/Bool$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private mergeFreeText(Lcom/truecaller/api/services/survey/FreeText;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/FreeText;->getDefaultInstance()Lcom/truecaller/api/services/survey/FreeText;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/FreeText;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/FreeText;->newBuilder(Lcom/truecaller/api/services/survey/FreeText;)Lcom/truecaller/api/services/survey/FreeText$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/FreeText$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private mergeMultiAnswer(Lcom/truecaller/api/services/survey/MultiAnswer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/MultiAnswer;->getDefaultInstance()Lcom/truecaller/api/services/survey/MultiAnswer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/MultiAnswer;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/MultiAnswer;->newBuilder(Lcom/truecaller/api/services/survey/MultiAnswer;)Lcom/truecaller/api/services/survey/MultiAnswer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/MultiAnswer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private mergeRating(Lcom/truecaller/api/services/survey/Rating;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/Rating;->getDefaultInstance()Lcom/truecaller/api/services/survey/Rating;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/Rating;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/Rating;->newBuilder(Lcom/truecaller/api/services/survey/Rating;)Lcom/truecaller/api/services/survey/Rating$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/Rating$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private mergeSingleAnswer(Lcom/truecaller/api/services/survey/SingleAnswer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/SingleAnswer;->getDefaultInstance()Lcom/truecaller/api/services/survey/SingleAnswer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/SingleAnswer;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/SingleAnswer;->newBuilder(Lcom/truecaller/api/services/survey/SingleAnswer;)Lcom/truecaller/api/services/survey/SingleAnswer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/SingleAnswer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/survey/Question$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/survey/Question$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/survey/Question;)Lcom/truecaller/api/services/survey/Question$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Question;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/Question;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBool(Lcom/truecaller/api/services/survey/Bool;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private setFreeText(Lcom/truecaller/api/services/survey/FreeText;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private setHeaderMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->headerMessage_:Ljava/lang/String;

    return-void
.end method

.method private setHeaderMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->headerMessage_:Ljava/lang/String;

    return-void
.end method

.method private setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/survey/Question;->id_:I

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->message_:Ljava/lang/String;

    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->message_:Ljava/lang/String;

    return-void
.end method

.method private setMultiAnswer(Lcom/truecaller/api/services/survey/MultiAnswer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private setRating(Lcom/truecaller/api/services/survey/Rating;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    return-void
.end method

.method private setSingleAnswer(Lcom/truecaller/api/services/survey/SingleAnswer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/survey/Question;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/survey/Question;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/survey/Question;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/survey/Question;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "questionType_"

    aput-object v0, p1, p3

    const-string p3, "questionTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "id_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "headerMessage_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "message_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 11
    const-class p3, Lcom/truecaller/api/services/survey/Bool;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/truecaller/api/services/survey/Rating;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/survey/SingleAnswer;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/truecaller/api/services/survey/MultiAnswer;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/truecaller/api/services/survey/FreeText;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0208\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/survey/Question;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Question;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/survey/Question$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/survey/Question$b;-><init>(Lcom/truecaller/api/services/survey/Question$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/survey/Question;

    invoke-direct {p1}, Lcom/truecaller/api/services/survey/Question;-><init>()V

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

.method public getBool()Lcom/truecaller/api/services/survey/Bool;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/Bool;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/Bool;->getDefaultInstance()Lcom/truecaller/api/services/survey/Bool;

    move-result-object v0

    return-object v0
.end method

.method public getFreeText()Lcom/truecaller/api/services/survey/FreeText;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/FreeText;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/FreeText;->getDefaultInstance()Lcom/truecaller/api/services/survey/FreeText;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->headerMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->headerMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->id_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMultiAnswer()Lcom/truecaller/api/services/survey/MultiAnswer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/MultiAnswer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/MultiAnswer;->getDefaultInstance()Lcom/truecaller/api/services/survey/MultiAnswer;

    move-result-object v0

    return-object v0
.end method

.method public getQuestionTypeCase()Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->forNumber(I)Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getRating()Lcom/truecaller/api/services/survey/Rating;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/Rating;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/Rating;->getDefaultInstance()Lcom/truecaller/api/services/survey/Rating;

    move-result-object v0

    return-object v0
.end method

.method public getSingleAnswer()Lcom/truecaller/api/services/survey/SingleAnswer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Question;->questionType_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/SingleAnswer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/SingleAnswer;->getDefaultInstance()Lcom/truecaller/api/services/survey/SingleAnswer;

    move-result-object v0

    return-object v0
.end method

.method public hasBool()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFreeText()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMultiAnswer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRating()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSingleAnswer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question;->questionTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
