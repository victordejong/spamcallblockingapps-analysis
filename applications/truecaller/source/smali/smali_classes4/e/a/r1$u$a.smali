.class public final Le/a/r1$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/r1$u;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 3
    iput p4, p0, Le/a/r1$u$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/r1$u$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/r1$u$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 4
    new-instance v1, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    iget-object v2, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 5
    new-instance v3, Le/a/g5/c0/b;

    iget-object v4, v2, Le/a/r1;->c2:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/p/d;

    invoke-virtual {v2}, Le/a/r1;->sc()Le/a/g5/q;

    move-result-object v5

    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Le/a/g5/c0/b;-><init>(Le/a/b0/p/d;Le/a/g5/p;Ls1/w/f;)V

    .line 6
    iget-object v2, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 7
    invoke-virtual {v2}, Le/a/r1;->sc()Le/a/g5/q;

    move-result-object v2

    .line 8
    iget-object v4, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 9
    iget-object v4, v4, Le/a/r1;->ad:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/l;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 11
    iget-object v0, v0, Le/a/r1;->bd:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;-><init>(Le/a/g5/c0/a;Le/a/g5/p;Le/a/r2/l;Le/a/r2/f;)V

    return-object v1

    .line 13
    :pswitch_1
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 14
    new-instance v1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;

    iget-object v2, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 15
    iget-object v2, v2, Le/a/r1;->pg:Ljavax/inject/Provider;

    .line 16
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/j/e/a;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 17
    iget-object v0, v0, Le/a/r1;->bd:Ljavax/inject/Provider;

    .line 18
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-direct {v1, v2, v0}, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;-><init>(Le/a/j/e/a;Le/a/r2/f;)V

    return-object v1

    .line 19
    :pswitch_2
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 20
    new-instance v1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 21
    iget-object v0, v0, Le/a/r1;->ti:Ljavax/inject/Provider;

    .line 22
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j/e/c;

    invoke-direct {v1, v0}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;-><init>(Le/a/j/e/c;)V

    return-object v1

    .line 23
    :pswitch_3
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 24
    new-instance v1, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    iget-object v2, v0, Le/a/r1$u;->f:Le/a/r1$d;

    .line 25
    new-instance v3, Le/a/c/a/d/d/d;

    .line 26
    new-instance v4, Le/a/c/a/d/d/f;

    iget-object v5, v2, Le/a/r1$d;->d:Le/a/r1;

    .line 27
    sget v6, Le/a/r1;->Ni:I

    .line 28
    invoke-virtual {v5}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v5

    .line 29
    iget-object v6, v2, Le/a/r1$d;->d:Le/a/r1;

    .line 30
    iget-object v6, v6, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 31
    invoke-static {v6}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v6

    iget-object v7, v2, Le/a/r1$d;->d:Le/a/r1;

    .line 32
    iget-object v7, v7, Le/a/r1;->k3:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/h/e;

    invoke-direct {v4, v5, v6, v7}, Le/a/c/a/d/d/f;-><init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/h/e;)V

    .line 34
    iget-object v5, v2, Le/a/r1$d;->d:Le/a/r1;

    .line 35
    iget-object v5, v5, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 36
    invoke-static {v5}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    .line 37
    new-instance v6, Le/a/c/a/d/d/a;

    iget-object v7, v2, Le/a/r1$d;->d:Le/a/r1;

    .line 38
    invoke-virtual {v7}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v7

    .line 39
    iget-object v2, v2, Le/a/r1$d;->d:Le/a/r1;

    .line 40
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 41
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Le/a/c/a/d/d/a;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    .line 42
    invoke-direct {v3, v4, v5, v6}, Le/a/c/a/d/d/d;-><init>(Le/a/c/a/d/d/f;Ls1/w/f;Le/a/c/a/d/d/a;)V

    .line 43
    iget-object v2, v0, Le/a/r1$u;->f:Le/a/r1$d;

    .line 44
    iget-object v2, v2, Le/a/r1$d;->h:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/a/i/h;

    .line 46
    new-instance v4, Le/a/c/a/i/j;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 47
    iget-object v0, v0, Le/a/r1;->k4:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/e/c;

    invoke-direct {v4, v0}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 49
    invoke-direct {v1, v3, v2, v4}, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;-><init>(Le/a/c/a/d/d/c;Le/a/c/a/i/h;Le/a/c/a/i/j;)V

    return-object v1

    .line 50
    :pswitch_4
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 51
    new-instance v11, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 52
    iget-object v1, v0, Le/a/r1$u;->d:Le/a/c/a/p/a/b;

    iget-object v2, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 53
    sget v3, Le/a/r1;->Ni:I

    .line 54
    invoke-virtual {v2}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v2

    .line 55
    iget-object v3, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 56
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 57
    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    .line 58
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "insightsUiManager"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioContext"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v4, Le/a/c/a/p/b/g;

    invoke-direct {v4, v2, v3}, Le/a/c/a/p/b/g;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    .line 60
    new-instance v3, Le/a/c/a/j/a/b;

    iget-object v1, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 61
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 62
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v2, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 63
    invoke-virtual {v2}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v2

    .line 64
    invoke-direct {v3, v1, v2}, Le/a/c/a/j/a/b;-><init>(Ls1/w/f;Le/a/c/q/d;)V

    .line 65
    new-instance v5, Le/a/c/a/j/a/d;

    iget-object v1, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 66
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 67
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v2, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 68
    invoke-virtual {v2}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v2

    .line 69
    invoke-direct {v5, v1, v2}, Le/a/c/a/j/a/d;-><init>(Ls1/w/f;Le/a/c/q/d;)V

    .line 70
    iget-object v1, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 71
    iget-object v1, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/c/c0/o;

    .line 73
    new-instance v7, Le/a/c/a/j/a/c;

    iget-object v1, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 74
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 75
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    .line 76
    new-instance v2, Le/a/c/a/j/a/b;

    iget-object v8, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 77
    iget-object v8, v8, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 78
    invoke-static {v8}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    iget-object v9, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 79
    invoke-virtual {v9}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v9

    .line 80
    invoke-direct {v2, v8, v9}, Le/a/c/a/j/a/b;-><init>(Ls1/w/f;Le/a/c/q/d;)V

    .line 81
    new-instance v8, Le/a/c/a/j/a/d;

    iget-object v9, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 82
    iget-object v9, v9, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 83
    invoke-static {v9}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v9

    iget-object v10, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 84
    invoke-virtual {v10}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v10

    .line 85
    invoke-direct {v8, v9, v10}, Le/a/c/a/j/a/d;-><init>(Ls1/w/f;Le/a/c/q/d;)V

    .line 86
    invoke-direct {v7, v1, v2, v8}, Le/a/c/a/j/a/c;-><init>(Ls1/w/f;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;)V

    .line 87
    new-instance v8, Le/a/c/a/i/j;

    iget-object v1, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 88
    iget-object v1, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    .line 89
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/e/c;

    invoke-direct {v8, v1}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 90
    iget-object v1, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 91
    iget-object v1, v1, Le/a/r1;->Vf:Ljavax/inject/Provider;

    .line 92
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/a/c/h/d;

    iget-object v1, v0, Le/a/r1$u;->f:Le/a/r1$d;

    .line 93
    iget-object v1, v1, Le/a/r1$d;->i:Ljavax/inject/Provider;

    .line 94
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/c/a/i/h;

    iget-object v0, v0, Le/a/r1$u;->f:Le/a/r1$d;

    .line 95
    iget-object v0, v0, Le/a/r1$d;->k:Ljavax/inject/Provider;

    .line 96
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/i/a;

    move-object v1, v11

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;-><init>(Le/a/c/a/p/b/g;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;Le/a/c/c0/o;Le/a/c/a/j/a/c;Le/a/c/a/i/j;Le/a/c/h/d;Le/a/c/a/i/h;Le/a/c/a/i/a;)V

    return-object v11

    .line 97
    :pswitch_5
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 98
    new-instance v1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 99
    iget-object v0, v0, Le/a/r1;->ti:Ljavax/inject/Provider;

    .line 100
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j/e/c;

    invoke-direct {v1, v0}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;-><init>(Le/a/j/e/c;)V

    return-object v1

    .line 101
    :pswitch_6
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 102
    new-instance v1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 103
    iget-object v0, v0, Le/a/r1;->ti:Ljavax/inject/Provider;

    .line 104
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j/e/c;

    invoke-direct {v1, v0}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;-><init>(Le/a/j/e/c;)V

    return-object v1

    .line 105
    :pswitch_7
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 106
    new-instance v1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 107
    iget-object v0, v0, Le/a/r1;->ti:Ljavax/inject/Provider;

    .line 108
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j/e/c;

    invoke-direct {v1, v0}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;-><init>(Le/a/j/e/c;)V

    return-object v1

    .line 109
    :pswitch_8
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 110
    new-instance v1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 111
    iget-object v0, v0, Le/a/r1;->pg:Ljavax/inject/Provider;

    .line 112
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j/e/a;

    invoke-direct {v1, v0}, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;-><init>(Le/a/j/e/a;)V

    return-object v1

    .line 113
    :pswitch_9
    iget-object v0, p0, Le/a/r1$u$a;->a:Le/a/r1$u;

    .line 114
    new-instance v1, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

    .line 115
    new-instance v2, Le/a/i/e/a/b/f;

    iget-object v3, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 116
    iget-object v3, v3, Le/a/r1;->Ic:Ljavax/inject/Provider;

    .line 117
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i/e/k/e;

    iget-object v4, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 118
    iget-object v4, v4, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 119
    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/i/e/a/b/f;-><init>(Le/a/i/e/k/e;Ls1/w/f;)V

    .line 120
    iget-object v0, v0, Le/a/r1$u;->e:Le/a/r1;

    .line 121
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 122
    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;-><init>(Le/a/i/e/a/b/d;Ls1/w/f;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
