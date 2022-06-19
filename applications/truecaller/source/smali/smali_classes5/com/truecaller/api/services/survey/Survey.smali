.class public final Lcom/truecaller/api/services/survey/Survey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/i/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/survey/Survey$b;,
        Lcom/truecaller/api/services/survey/Survey$FlowCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/survey/Survey;",
        "Lcom/truecaller/api/services/survey/Survey$b;",
        ">;",
        "Le/a/t2/a/i/e;"
    }
.end annotation


# static fields
.field public static final ACS_BIZMON_FIELD_NUMBER:I = 0x6

.field public static final ACS_GENERIC_FIELD_NUMBER:I = 0x3

.field public static final ACS_NAME_SUGGESTION_FIELD_NUMBER:I = 0x4

.field public static final BOTTOM_SHEET_QUESTIONS_IDS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/Survey;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUESTIONS_FIELD_NUMBER:I = 0x2

.field public static final REPORT_PROFILE_FIELD_NUMBER:I = 0x5


# instance fields
.field private bottomSheetQuestionsIdsMemoizedSerializedSize:I

.field private bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

.field private flowCase_:I

.field private flow_:Ljava/lang/Object;

.field private id_:Ljava/lang/String;

.field private questions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/survey/Question;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/Survey;

    invoke-direct {v0}, Lcom/truecaller/api/services/survey/Survey;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    .line 3
    const-class v1, Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIdsMemoizedSerializedSize:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->id_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/survey/Survey;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearFlow()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/survey/Survey;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->removeQuestions(I)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->setAcsGeneric(Lcom/truecaller/api/services/survey/AcsGeneric;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->mergeAcsGeneric(Lcom/truecaller/api/services/survey/AcsGeneric;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearAcsGeneric()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/AcsNameSuggestion;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->setAcsNameSuggestion(Lcom/truecaller/api/services/survey/AcsNameSuggestion;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/AcsNameSuggestion;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->mergeAcsNameSuggestion(Lcom/truecaller/api/services/survey/AcsNameSuggestion;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearAcsNameSuggestion()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/ReportProfile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->setReportProfile(Lcom/truecaller/api/services/survey/ReportProfile;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/ReportProfile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->mergeReportProfile(Lcom/truecaller/api/services/survey/ReportProfile;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearReportProfile()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/survey/Survey;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/AcsBizmon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->setAcsBizmon(Lcom/truecaller/api/services/survey/AcsBizmon;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/AcsBizmon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->mergeAcsBizmon(Lcom/truecaller/api/services/survey/AcsBizmon;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearAcsBizmon()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/survey/Survey;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/survey/Survey;->setBottomSheetQuestionsIds(II)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/survey/Survey;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->addBottomSheetQuestionsIds(I)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/survey/Survey;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->addAllBottomSheetQuestionsIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearBottomSheetQuestionsIds()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearId()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/survey/Survey;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/survey/Survey;ILcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/survey/Survey;->setQuestions(ILcom/truecaller/api/services/survey/Question;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/survey/Survey;Lcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->addQuestions(Lcom/truecaller/api/services/survey/Question;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/survey/Survey;ILcom/truecaller/api/services/survey/Question;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/survey/Survey;->addQuestions(ILcom/truecaller/api/services/survey/Question;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/survey/Survey;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/Survey;->addAllQuestions(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/survey/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->clearQuestions()V

    return-void
.end method

.method private addAllBottomSheetQuestionsIds(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureBottomSheetQuestionsIdsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllQuestions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/survey/Question;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureQuestionsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addBottomSheetQuestionsIds(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureBottomSheetQuestionsIdsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addQuestions(ILcom/truecaller/api/services/survey/Question;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureQuestionsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addQuestions(Lcom/truecaller/api/services/survey/Question;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureQuestionsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAcsBizmon()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAcsGeneric()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAcsNameSuggestion()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBottomSheetQuestionsIds()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFlow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/Survey;->getDefaultInstance()Lcom/truecaller/api/services/survey/Survey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/survey/Survey;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearQuestions()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearReportProfile()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureBottomSheetQuestionsIdsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureQuestionsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/survey/Survey;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    return-object v0
.end method

.method private mergeAcsBizmon(Lcom/truecaller/api/services/survey/AcsBizmon;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/AcsBizmon;->getDefaultInstance()Lcom/truecaller/api/services/survey/AcsBizmon;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/AcsBizmon;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/AcsBizmon;->newBuilder(Lcom/truecaller/api/services/survey/AcsBizmon;)Lcom/truecaller/api/services/survey/AcsBizmon$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/AcsBizmon$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method private mergeAcsGeneric(Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/AcsGeneric;->getDefaultInstance()Lcom/truecaller/api/services/survey/AcsGeneric;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/AcsGeneric;->newBuilder(Lcom/truecaller/api/services/survey/AcsGeneric;)Lcom/truecaller/api/services/survey/AcsGeneric$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/AcsGeneric$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method private mergeAcsNameSuggestion(Lcom/truecaller/api/services/survey/AcsNameSuggestion;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/AcsNameSuggestion;->getDefaultInstance()Lcom/truecaller/api/services/survey/AcsNameSuggestion;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/AcsNameSuggestion;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/AcsNameSuggestion;->newBuilder(Lcom/truecaller/api/services/survey/AcsNameSuggestion;)Lcom/truecaller/api/services/survey/AcsNameSuggestion$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/AcsNameSuggestion$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method private mergeReportProfile(Lcom/truecaller/api/services/survey/ReportProfile;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/survey/ReportProfile;->getDefaultInstance()Lcom/truecaller/api/services/survey/ReportProfile;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/ReportProfile;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/ReportProfile;->newBuilder(Lcom/truecaller/api/services/survey/ReportProfile;)Lcom/truecaller/api/services/survey/ReportProfile$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/ReportProfile$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/survey/Survey$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/survey/Survey$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/survey/Survey;)Lcom/truecaller/api/services/survey/Survey$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/Survey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeQuestions(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureQuestionsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAcsBizmon(Lcom/truecaller/api/services/survey/AcsBizmon;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method private setAcsGeneric(Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method private setAcsNameSuggestion(Lcom/truecaller/api/services/survey/AcsNameSuggestion;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    return-void
.end method

.method private setBottomSheetQuestionsIds(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureBottomSheetQuestionsIdsIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->id_:Ljava/lang/String;

    return-void
.end method

.method private setQuestions(ILcom/truecaller/api/services/survey/Question;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/Survey;->ensureQuestionsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setReportProfile(Lcom/truecaller/api/services/survey/ReportProfile;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/survey/Survey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/survey/Survey;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/survey/Survey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/survey/Survey;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "flow_"

    aput-object v0, p1, p3

    const-string p3, "flowCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "id_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "questions_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    const-class p3, Lcom/truecaller/api/services/survey/Question;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/truecaller/api/services/survey/AcsGeneric;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/truecaller/api/services/survey/AcsNameSuggestion;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/survey/ReportProfile;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/truecaller/api/services/survey/AcsBizmon;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "bottomSheetQuestionsIds_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u0208\u0002\u001b\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007\'"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/survey/Survey;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/Survey;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/survey/Survey$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/survey/Survey$b;-><init>(Lcom/truecaller/api/services/survey/Survey$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/survey/Survey;

    invoke-direct {p1}, Lcom/truecaller/api/services/survey/Survey;-><init>()V

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

.method public getAcsBizmon()Lcom/truecaller/api/services/survey/AcsBizmon;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/AcsBizmon;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/AcsBizmon;->getDefaultInstance()Lcom/truecaller/api/services/survey/AcsBizmon;

    move-result-object v0

    return-object v0
.end method

.method public getAcsGeneric()Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/AcsGeneric;->getDefaultInstance()Lcom/truecaller/api/services/survey/AcsGeneric;

    move-result-object v0

    return-object v0
.end method

.method public getAcsNameSuggestion()Lcom/truecaller/api/services/survey/AcsNameSuggestion;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/AcsNameSuggestion;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/AcsNameSuggestion;->getDefaultInstance()Lcom/truecaller/api/services/survey/AcsNameSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public getBottomSheetQuestionsIds(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBottomSheetQuestionsIdsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBottomSheetQuestionsIdsList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->bottomSheetQuestionsIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFlowCase()Lcom/truecaller/api/services/survey/Survey$FlowCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/survey/Survey$FlowCase;->forNumber(I)Lcom/truecaller/api/services/survey/Survey$FlowCase;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuestions(I)Lcom/truecaller/api/services/survey/Question;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/survey/Question;

    return-object p1
.end method

.method public getQuestionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQuestionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/survey/Question;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getQuestionsOrBuilder(I)Le/a/t2/a/i/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/i/d;

    return-object p1
.end method

.method public getQuestionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/i/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->questions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReportProfile()Lcom/truecaller/api/services/survey/ReportProfile;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/survey/Survey;->flow_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/survey/ReportProfile;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/survey/ReportProfile;->getDefaultInstance()Lcom/truecaller/api/services/survey/ReportProfile;

    move-result-object v0

    return-object v0
.end method

.method public hasAcsBizmon()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAcsGeneric()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAcsNameSuggestion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReportProfile()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey;->flowCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
