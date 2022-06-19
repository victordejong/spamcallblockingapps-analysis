.class public final Lcom/truecaller/surveys/data/entities/Survey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/Survey$b;,
        Lcom/truecaller/surveys/data/entities/Survey$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000223BE\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008+\u0010,Ba\u0008\u0017\u0012\u0006\u0010-\u001a\u00020\u000c\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u0008+\u00100J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0004JZ\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u0010\u0010\u001b\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\u001f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010!\u001a\u0004\u0008\"\u0010\u000bR\u001f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010!\u001a\u0004\u0008#\u0010\u000bR\u0019\u0010\u0013\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010$\u001a\u0004\u0008%\u0010\u0007R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010&\u001a\u0004\u0008\'\u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010&\u001a\u0004\u0008(\u0010\u0004R\u0019\u0010\u0016\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010)\u001a\u0004\u0008*\u0010\u0010\u00a8\u00064"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/Survey;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
        "component2",
        "()Lcom/truecaller/surveys/data/entities/SurveyFlow;",
        "",
        "Lcom/truecaller/surveys/data/entities/Question;",
        "component3",
        "()Ljava/util/List;",
        "",
        "component4",
        "",
        "component5",
        "()J",
        "component6",
        "id",
        "flow",
        "questions",
        "bottomSheetQuestionsIds",
        "lastTimeSeen",
        "passThrough",
        "copy",
        "(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;",
        "toString",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getQuestions",
        "getBottomSheetQuestionsIds",
        "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
        "getFlow",
        "Ljava/lang/String;",
        "getPassThrough",
        "getId",
        "J",
        "getLastTimeSeen",
        "<init>",
        "(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)V",
        "seen1",
        "Lq3/b/k/t;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lq3/b/k/t;)V",
        "Companion",
        "a",
        "b",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/surveys/data/entities/Survey$b;


# instance fields
.field private final bottomSheetQuestionsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

.field private final id:Ljava/lang/String;

.field private final lastTimeSeen:J

.field private final passThrough:Ljava/lang/String;

.field private final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/Survey$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Survey$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Survey;->Companion:Lcom/truecaller/surveys/data/entities/Survey$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lq3/b/k/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            "Lq3/b/k/t;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p9, p1, 0x1

    if-eqz p9, :cond_5

    iput-object p2, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_4

    iput-object p3, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_3

    iput-object p4, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_2

    iput-object p5, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_1

    iput-wide p6, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    iput-object p8, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lq3/b/c;

    const-string p2, "passThrough"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lq3/b/c;

    const-string p2, "lastTimeSeen"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lq3/b/c;

    const-string p2, "bottomSheetQuestionsIds"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lq3/b/c;

    const-string p2, "questions"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lq3/b/c;

    const-string p2, "flow"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lq3/b/c;

    const-string p2, "id"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questions"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheetQuestionsIds"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    iput-object p3, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    iput-object p4, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    iput-wide p5, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    iput-object p7, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/surveys/data/entities/Survey;Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/surveys/data/entities/Survey;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    :cond_4
    move-wide v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/truecaller/surveys/data/entities/Survey;->copy(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/Survey;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 12

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lq3/b/j/c;->h(Lq3/b/i/d;ILjava/lang/String;)V

    new-instance v0, Lq3/b/e;

    const-class v2, Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ls1/a/c;

    const-class v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v5

    aput-object v5, v4, v1

    const-class v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-array v5, v3, [Lq3/b/b;

    sget-object v9, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;

    aput-object v9, v5, v1

    sget-object v9, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;

    aput-object v9, v5, v6

    new-instance v9, Lq3/b/k/n;

    sget-object v10, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    const-string v11, "com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile"

    invoke-direct {v9, v11, v10}, Lq3/b/k/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v5, v7

    sget-object v9, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;

    aput-object v9, v5, v8

    const-string v9, "com.truecaller.surveys.data.entities.SurveyFlow"

    invoke-direct {v0, v9, v2, v4, v5}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    iget-object v2, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-interface {p1, p2, v6, v0, v2}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    new-instance v0, Lq3/b/k/d;

    new-instance v2, Lq3/b/e;

    const-class v4, Lcom/truecaller/surveys/data/entities/Question;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    new-array v5, v3, [Ls1/a/c;

    const-class v9, Lcom/truecaller/surveys/data/entities/Question$Binary;

    invoke-static {v9}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v9

    aput-object v9, v5, v1

    const-class v9, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-static {v9}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v9

    aput-object v9, v5, v6

    const-class v9, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    invoke-static {v9}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v9

    aput-object v9, v5, v7

    const-class v9, Lcom/truecaller/surveys/data/entities/Question$Rating;

    invoke-static {v9}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v9

    aput-object v9, v5, v8

    new-array v9, v3, [Lq3/b/b;

    sget-object v10, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    aput-object v10, v9, v1

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    aput-object v1, v9, v6

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    aput-object v1, v9, v7

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$Rating$a;->a:Lcom/truecaller/surveys/data/entities/Question$Rating$a;

    aput-object v1, v9, v8

    const-string v1, "com.truecaller.surveys.data.entities.Question"

    invoke-direct {v2, v1, v4, v5, v9}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    invoke-direct {v0, v2}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    invoke-interface {p1, p2, v7, v0, v1}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    new-instance v0, Lq3/b/k/d;

    sget-object v1, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-direct {v0, v1}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    invoke-interface {p1, p2, v8, v0, v1}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    invoke-interface {p1, p2, v3, v0, v1}, Lq3/b/j/c;->j(Lq3/b/i/d;IJ)V

    sget-object v0, Lq3/b/k/u;->b:Lq3/b/k/u;

    iget-object p0, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1, v0, p0}, Lq3/b/j/c;->l(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/truecaller/surveys/data/entities/SurveyFlow;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/truecaller/surveys/data/entities/Survey;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flow"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questions"

    move-object v4, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheetQuestionsIds"

    move-object v5, p4

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Survey;

    move-object v1, v0

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/surveys/data/entities/Survey;-><init>(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/surveys/data/entities/Survey;

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    iget-object v1, p1, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    iget-wide v2, p1, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBottomSheetQuestionsIds()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    return-object v0
.end method

.method public final getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastTimeSeen()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    return-wide v0
.end method

.method public final getPassThrough()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Survey(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->flow:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->questions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSheetQuestionsIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->bottomSheetQuestionsIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastTimeSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->lastTimeSeen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", passThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Survey;->passThrough:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
