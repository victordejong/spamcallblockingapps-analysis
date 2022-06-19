.class public final Lcom/truecaller/surveys/data/entities/Survey$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Survey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/k/f<",
        "Lcom/truecaller/surveys/data/entities/Survey;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/surveys/data/entities/Survey$a;

.field public static final synthetic b:Lq3/b/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Survey$a;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/Survey$a;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Survey$a;->a:Lcom/truecaller/surveys/data/entities/Survey$a;

    new-instance v1, Lq3/b/k/p;

    const-string v2, "com.truecaller.surveys.data.entities.Survey"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v0, v3}, Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "flow"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "questions"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "bottomSheetQuestionsIds"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "lastTimeSeen"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    const-string v0, "passThrough"

    invoke-virtual {v1, v0, v2}, Lq3/b/k/p;->g(Ljava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/surveys/data/entities/Survey$a;->b:Lq3/b/i/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    sget-object v0, Lcom/truecaller/surveys/data/entities/Survey$a;->b:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Survey;

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Survey$a;->b:Lq3/b/i/d;

    invoke-interface {p1, v0}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/truecaller/surveys/data/entities/Survey;->write$Self(Lcom/truecaller/surveys/data/entities/Survey;Lq3/b/j/c;Lq3/b/i/d;)V

    invoke-interface {p1, v0}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    return-void
.end method

.method public c()[Lq3/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lq3/b/b<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/b/k/q;->a:[Lq3/b/b;

    return-object v0
.end method

.method public d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 45

    move-object/from16 v0, p1

    .line 1
    const-class v1, Lcom/truecaller/surveys/data/entities/Question$Rating;

    const-class v2, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    const-class v3, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    const-class v4, Lcom/truecaller/surveys/data/entities/Question$Binary;

    const-class v5, Lcom/truecaller/surveys/data/entities/Question;

    const-class v6, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    const-class v7, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    const-class v8, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    const-class v9, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    const-class v10, Lcom/truecaller/surveys/data/entities/SurveyFlow;

    const-string v11, "decoder"

    invoke-static {v0, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/truecaller/surveys/data/entities/Survey$a;->b:Lq3/b/i/d;

    invoke-interface {v0, v11}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object v0

    invoke-interface {v0}, Lq3/b/j/b;->j()Z

    move-result v12

    const-string v13, "com.truecaller.surveys.data.entities.Question"

    const-string v14, "com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile"

    const-string v15, "com.truecaller.surveys.data.entities.SurveyFlow"

    move-object/from16 p1, v13

    const/4 v13, 0x0

    move-object/from16 v19, v1

    const/4 v1, 0x4

    if-eqz v12, :cond_0

    invoke-interface {v0, v11, v13}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lq3/b/e;

    invoke-static {v10}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v10

    move-object/from16 v21, v12

    new-array v12, v1, [Ls1/a/c;

    invoke-static {v9}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v9

    const/16 v20, 0x0

    aput-object v9, v12, v20

    invoke-static {v8}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v12, v9

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v12, v8

    invoke-static {v6}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v12, v7

    new-array v6, v1, [Lq3/b/b;

    sget-object v16, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;

    aput-object v16, v6, v20

    sget-object v16, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;

    aput-object v16, v6, v9

    new-instance v1, Lq3/b/k/n;

    sget-object v9, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    invoke-direct {v1, v14, v9}, Lq3/b/k/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v6, v8

    sget-object v1, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;

    aput-object v1, v6, v7

    invoke-direct {v13, v15, v10, v12, v6}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    const/4 v1, 0x1

    invoke-interface {v0, v11, v1, v13}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/surveys/data/entities/SurveyFlow;

    new-instance v7, Lq3/b/k/d;

    new-instance v8, Lq3/b/e;

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v5

    const/4 v9, 0x4

    new-array v10, v9, [Ls1/a/c;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v10, v12

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v10, v3

    invoke-static/range {v19 .. v19}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v10, v4

    new-array v2, v9, [Lq3/b/b;

    sget-object v9, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    aput-object v9, v2, v12

    sget-object v9, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    aput-object v9, v2, v1

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    aput-object v1, v2, v3

    sget-object v1, Lcom/truecaller/surveys/data/entities/Question$Rating$a;->a:Lcom/truecaller/surveys/data/entities/Question$Rating$a;

    aput-object v1, v2, v4

    move-object/from16 v1, p1

    invoke-direct {v8, v1, v5, v10, v2}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    invoke-direct {v7, v8}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    invoke-interface {v0, v11, v3, v7}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lq3/b/k/d;

    sget-object v3, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-direct {v2, v3}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    invoke-interface {v0, v11, v4, v2}, Lq3/b/j/b;->k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v11, v3}, Lq3/b/j/b;->d(Lq3/b/i/d;I)J

    move-result-wide v3

    sget-object v5, Lq3/b/k/u;->b:Lq3/b/k/u;

    const/4 v12, 0x5

    invoke-interface {v0, v11, v12, v5}, Lq3/b/j/b;->r(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v7, 0x7fffffff

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-wide/from16 v40, v3

    move-object/from16 v42, v5

    move-object/from16 v37, v6

    move/from16 v35, v7

    move-object/from16 v36, v21

    goto/16 :goto_3

    :cond_0
    move-object/from16 v1, p1

    const/4 v12, 0x5

    const/4 v13, 0x0

    const-wide/16 v23, 0x0

    move-object v12, v13

    move-object/from16 v21, v12

    move-object/from16 v25, v21

    move-object/from16 v26, v25

    move-object/from16 p1, v15

    const/16 v27, 0x0

    :goto_0
    invoke-interface {v0, v11}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    new-instance v0, Lq3/b/h;

    invoke-direct {v0, v15}, Lq3/b/h;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v15, Lq3/b/k/u;->b:Lq3/b/k/u;

    move-object/from16 v28, v14

    const/4 v14, 0x5

    invoke-interface {v0, v11, v14, v15, v12}, Lq3/b/j/b;->i(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    or-int/lit8 v15, v27, 0x20

    goto :goto_1

    :pswitch_1
    move-object/from16 v28, v14

    const/4 v14, 0x5

    const/4 v15, 0x4

    invoke-interface {v0, v11, v15}, Lq3/b/j/b;->d(Lq3/b/i/d;I)J

    move-result-wide v23

    or-int/lit8 v15, v27, 0x10

    :goto_1
    move/from16 v27, v15

    move-object/from16 v14, v28

    goto :goto_0

    :pswitch_2
    move-object/from16 v28, v14

    const/4 v14, 0x5

    new-instance v15, Lq3/b/k/d;

    sget-object v14, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-direct {v15, v14}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    move-object/from16 v14, v25

    move-object/from16 v25, v12

    const/4 v12, 0x3

    invoke-interface {v0, v11, v12, v15, v14}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Ljava/util/List;

    or-int/lit8 v27, v27, 0x8

    move-object/from16 v14, v28

    move-object/from16 v44, v25

    move-object/from16 v25, v12

    move-object/from16 v12, v44

    goto :goto_0

    :pswitch_3
    move-object/from16 v28, v14

    move-object/from16 v14, v25

    move-object/from16 v25, v12

    new-instance v12, Lq3/b/k/d;

    new-instance v15, Lq3/b/e;

    move-object/from16 v29, v14

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v14

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    const/4 v5, 0x4

    new-array v6, v5, [Ls1/a/c;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v22

    const/16 v20, 0x0

    aput-object v22, v6, v20

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v22

    const/16 v18, 0x1

    aput-object v22, v6, v18

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v22

    const/4 v5, 0x2

    aput-object v22, v6, v5

    invoke-static/range {v19 .. v19}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v17

    const/16 v16, 0x3

    aput-object v17, v6, v16

    move-object/from16 v32, v2

    const/4 v5, 0x4

    new-array v2, v5, [Lq3/b/b;

    sget-object v5, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    aput-object v5, v2, v20

    sget-object v5, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    aput-object v5, v2, v18

    sget-object v5, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    move-object/from16 v33, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    sget-object v5, Lcom/truecaller/surveys/data/entities/Question$Rating$a;->a:Lcom/truecaller/surveys/data/entities/Question$Rating$a;

    aput-object v5, v2, v16

    invoke-direct {v15, v1, v14, v6, v2}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    invoke-direct {v12, v15}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    invoke-interface {v0, v11, v3, v12, v13}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    or-int/lit8 v2, v27, 0x4

    move-object/from16 v5, p1

    move/from16 v27, v2

    move-object/from16 v15, v28

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x3

    const/16 v17, 0x2

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v28, v14

    move-object/from16 v29, v25

    move-object/from16 v25, v12

    new-instance v2, Lq3/b/e;

    invoke-static {v10}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const/4 v5, 0x4

    new-array v6, v5, [Ls1/a/c;

    invoke-static {v9}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v6, v14

    invoke-static {v8}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v12

    const/4 v15, 0x1

    aput-object v12, v6, v15

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v6, v17

    invoke-static/range {v31 .. v31}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v12

    const/16 v16, 0x3

    aput-object v12, v6, v16

    new-array v12, v5, [Lq3/b/b;

    sget-object v18, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;

    aput-object v18, v12, v14

    sget-object v14, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;

    aput-object v14, v12, v15

    new-instance v14, Lq3/b/k/n;

    sget-object v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    move-object/from16 v15, v28

    invoke-direct {v14, v15, v5}, Lq3/b/k/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v14, v12, v17

    sget-object v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;

    aput-object v5, v12, v16

    move-object/from16 v5, p1

    invoke-direct {v2, v5, v3, v6, v12}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    move-object/from16 v3, v26

    const/4 v6, 0x1

    invoke-interface {v0, v11, v6, v2, v3}, Lq3/b/j/b;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/truecaller/surveys/data/entities/SurveyFlow;

    or-int/lit8 v2, v27, 0x2

    move/from16 v27, v2

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_5
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object v15, v14

    move-object/from16 v29, v25

    move-object/from16 v3, v26

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x3

    const/16 v17, 0x2

    move-object/from16 v5, p1

    move-object/from16 v25, v12

    invoke-interface {v0, v11, v2}, Lq3/b/j/b;->h(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v21

    or-int/lit8 v12, v27, 0x1

    move/from16 v27, v12

    :goto_2
    move-object/from16 p1, v5

    move-object v14, v15

    move-object/from16 v12, v25

    move-object/from16 v25, v29

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v29, v25

    move-object/from16 v3, v26

    move-object/from16 v25, v12

    move-object/from16 v37, v3

    move-object/from16 v38, v13

    move-object/from16 v36, v21

    move-wide/from16 v40, v23

    move-object/from16 v42, v25

    move/from16 v35, v27

    move-object/from16 v39, v29

    :goto_3
    invoke-interface {v0, v11}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Survey;

    const/16 v43, 0x0

    move-object/from16 v34, v0

    invoke-direct/range {v34 .. v43}, Lcom/truecaller/surveys/data/entities/Survey;-><init>(ILjava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lq3/b/k/t;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()[Lq3/b/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lq3/b/b<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lq3/b/b;

    sget-object v1, Lq3/b/k/u;->b:Lq3/b/k/u;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v3, Lq3/b/e;

    const-class v4, Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [Ls1/a/c;

    const-class v7, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v7

    aput-object v7, v6, v2

    const-class v7, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    invoke-static {v7}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v6, v10

    new-array v7, v5, [Lq3/b/b;

    sget-object v11, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;

    aput-object v11, v7, v2

    sget-object v11, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion$a;

    aput-object v11, v7, v8

    new-instance v11, Lq3/b/k/n;

    sget-object v12, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    const-string v13, "com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile"

    invoke-direct {v11, v13, v12}, Lq3/b/k/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v11, v7, v9

    sget-object v11, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;->a:Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon$a;

    aput-object v11, v7, v10

    const-string v11, "com.truecaller.surveys.data.entities.SurveyFlow"

    invoke-direct {v3, v11, v4, v6, v7}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    aput-object v3, v0, v8

    new-instance v3, Lq3/b/k/d;

    new-instance v4, Lq3/b/e;

    const-class v6, Lcom/truecaller/surveys/data/entities/Question;

    invoke-static {v6}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v6

    new-array v7, v5, [Ls1/a/c;

    const-class v11, Lcom/truecaller/surveys/data/entities/Question$Binary;

    invoke-static {v11}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v11

    aput-object v11, v7, v2

    const-class v11, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-static {v11}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v11

    aput-object v11, v7, v8

    const-class v11, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    invoke-static {v11}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v11

    aput-object v11, v7, v9

    const-class v11, Lcom/truecaller/surveys/data/entities/Question$Rating;

    invoke-static {v11}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v11

    aput-object v11, v7, v10

    new-array v11, v5, [Lq3/b/b;

    sget-object v12, Lcom/truecaller/surveys/data/entities/Question$Binary$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary$a;

    aput-object v12, v11, v2

    sget-object v2, Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice$a;

    aput-object v2, v11, v8

    sget-object v2, Lcom/truecaller/surveys/data/entities/Question$FreeText$a;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText$a;

    aput-object v2, v11, v9

    sget-object v2, Lcom/truecaller/surveys/data/entities/Question$Rating$a;->a:Lcom/truecaller/surveys/data/entities/Question$Rating$a;

    aput-object v2, v11, v10

    const-string v2, "com.truecaller.surveys.data.entities.Question"

    invoke-direct {v4, v2, v6, v7, v11}, Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V

    invoke-direct {v3, v4}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    aput-object v3, v0, v9

    new-instance v2, Lq3/b/k/d;

    sget-object v3, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-direct {v2, v3}, Lq3/b/k/d;-><init>(Lq3/b/b;)V

    aput-object v2, v0, v10

    sget-object v2, Lq3/b/k/k;->b:Lq3/b/k/k;

    aput-object v2, v0, v5

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->r1(Lq3/b/b;)Lq3/b/b;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method
