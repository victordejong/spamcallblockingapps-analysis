.class public final Le/a/c/r/j/k;
.super Le/a/c/r/j/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/r/j/k$a;
    }
.end annotation


# instance fields
.field public final b:Ls1/w/f;

.field public final c:Le/a/c/e/c;

.field public final d:Le/a/c/i/e/c;

.field public final e:Ls1/g;

.field public final f:Le/a/c/i/e/b;

.field public final g:Le/a/c/h/m/c;

.field public final h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

.field public final i:Le/a/c/r/j/p;

.field public final j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/a/c/h/m/c;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Le/a/c/r/j/p;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "insightsSmsMessage"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "userPreference"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "infoCardCategory"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "categorizerCategory"

    move-object/from16 v9, p4

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/c/r/j/f;-><init>()V

    iput-object v1, v0, Le/a/c/r/j/k;->g:Le/a/c/h/m/c;

    iput-object v2, v0, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    iput-object v3, v0, Le/a/c/r/j/k;->i:Le/a/c/r/j/p;

    move-object/from16 v4, p5

    iput-object v4, v0, Le/a/c/r/j/k;->j:Ljava/lang/Boolean;

    .line 2
    const-class v4, Le/a/c/r/j/k$a;

    const-string v5, "EntryPointAccessors.from\u2026), Injection::class.java)"

    invoke-static {v4, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/r/j/k$a;

    .line 3
    invoke-interface {v4}, Le/a/c/r/j/k$a;->a()Ls1/w/f;

    move-result-object v5

    iput-object v5, v0, Le/a/c/r/j/k;->b:Ls1/w/f;

    .line 4
    invoke-interface {v4}, Le/a/c/r/j/k$a;->n()Le/a/c/e/c;

    move-result-object v5

    iput-object v5, v0, Le/a/c/r/j/k;->c:Le/a/c/e/c;

    .line 5
    invoke-interface {v4}, Le/a/c/r/j/k$a;->N()Le/a/c/i/e/c;

    move-result-object v4

    iput-object v4, v0, Le/a/c/r/j/k;->d:Le/a/c/i/e/c;

    .line 6
    new-instance v4, Le/a/c/r/j/k$b;

    invoke-direct {v4, v0}, Le/a/c/r/j/k$b;-><init>(Le/a/c/r/j/k;)V

    invoke-static {v4}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v4

    iput-object v4, v0, Le/a/c/r/j/k;->e:Ls1/g;

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 8
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_0
    sget-object v4, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object v4, Lcom/truecaller/insights/models/feedback/FeedbackType;->UPDATES_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object v4, Lcom/truecaller/insights/models/feedback/FeedbackType;->INFOCARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object v4, Lcom/truecaller/insights/models/feedback/FeedbackType;->SEMICARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    :goto_0
    move-object v12, v4

    .line 12
    iget-object v4, v1, Le/a/c/h/m/c;->i:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    instance-of v4, v3, Le/a/c/r/j/p$i;

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    check-cast v4, Le/a/c/r/j/p$i;

    if-eqz v4, :cond_2

    .line 14
    iget-object v4, v4, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v5

    .line 15
    :goto_2
    instance-of v5, v3, Le/a/c/r/j/p$i;

    if-eqz v5, :cond_3

    .line 16
    move-object v5, v3

    check-cast v5, Le/a/c/r/j/p$i;

    .line 17
    iget-object v5, v5, Le/a/c/r/j/p$i;->c:Lcom/truecaller/insights/models/pdo/ClassifierType;

    goto :goto_3

    .line 18
    :cond_3
    sget-object v5, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 19
    :goto_3
    new-instance v15, Le/a/c/i/e/b;

    .line 20
    iget-object v6, v1, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 21
    iget-object v7, v1, Le/a/c/h/m/c;->c:Ljava/lang/String;

    .line 22
    new-instance v8, Lw3/b/a/b;

    .line 23
    iget-object v10, v1, Le/a/c/h/m/c;->d:Ljava/util/Date;

    .line 24
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lw3/b/a/b;-><init>(J)V

    .line 25
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 27
    new-instance v13, Le/a/c/b0/c;

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const-string v4, ""

    :goto_4
    invoke-direct {v13, v4, v5}, Le/a/c/b0/c;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    .line 28
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->A0(Le/a/c/h/m/c;)Z

    move-result v14

    move-object v5, v15

    move-object/from16 v9, p4

    .line 29
    invoke-direct/range {v5 .. v14}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;Z)V

    .line 30
    iput-object v15, v0, Le/a/c/r/j/k;->f:Le/a/c/i/e/b;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/c/r/j/k$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/r/j/k$c;

    iget v3, v2, Le/a/c/r/j/k$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/r/j/k$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/r/j/k$c;

    invoke-direct {v2, v0, v1}, Le/a/c/r/j/k$c;-><init>(Le/a/c/r/j/k;Ls1/w/d;)V

    :goto_0
    move-object v12, v2

    iget-object v1, v12, Le/a/c/r/j/k$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v12, Le/a/c/r/j/k$c;->e:I

    const/4 v13, 0x0

    const-string v14, "info_card"

    const/4 v15, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v15, :cond_1

    iget-object v2, v12, Le/a/c/r/j/k$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/r/j/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/c/r/j/k;->d:Le/a/c/i/e/c;

    .line 5
    iget-object v1, v0, Le/a/c/r/j/k;->g:Le/a/c/h/m/c;

    .line 6
    iget-wide v4, v1, Le/a/c/h/m/c;->a:J

    .line 7
    iget-object v6, v0, Le/a/c/r/j/k;->f:Le/a/c/i/e/b;

    .line 8
    iget-wide v7, v1, Le/a/c/h/m/c;->e:J

    .line 9
    iget-object v1, v0, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 10
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_0
    iget-object v1, v0, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object v1

    sget-object v9, Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;->NEGATIVE:Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    if-ne v1, v9, :cond_3

    goto :goto_1

    .line 11
    :pswitch_1
    iget-object v1, v0, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object v1

    sget-object v9, Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;->NEGATIVE:Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    if-ne v1, v9, :cond_4

    :cond_3
    const-string v1, "non-spam"

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "spam"

    goto :goto_2

    :pswitch_2
    const-string v1, "updates"

    goto :goto_2

    :pswitch_3
    move-object v9, v14

    goto :goto_3

    :pswitch_4
    const-string v1, "semi_card"

    :goto_2
    move-object v9, v1

    .line 12
    :goto_3
    iget-object v10, v0, Le/a/c/r/j/k;->j:Ljava/lang/Boolean;

    .line 13
    iget-object v1, v0, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object v1

    sget-object v11, Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;->DISMISS:Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    if-eq v1, v11, :cond_5

    move v11, v15

    goto :goto_4

    :cond_5
    move v11, v13

    :goto_4
    iput-object v0, v12, Le/a/c/r/j/k$c;->g:Ljava/lang/Object;

    iput v15, v12, Le/a/c/r/j/k$c;->e:I

    .line 14
    invoke-interface/range {v3 .. v12}, Le/a/c/i/e/c;->c(JLe/a/c/i/e/b;JLjava/lang/String;Ljava/lang/Boolean;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v2, v0

    .line 15
    :goto_5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    const/4 v3, 0x2

    .line 16
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "feature"

    .line 17
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventCategory"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventInfo"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionType"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionInfo"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "propertyMap"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, v2, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 19
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_5
    const-string v14, "feedback_row"

    goto :goto_6

    :pswitch_6
    const-string v14, "important_message_feedback"

    goto :goto_6

    :pswitch_7
    const-string v14, "updates_tag"

    :goto_6
    :pswitch_8
    const-string v1, "<set-?>"

    .line 20
    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v5, v2, Le/a/c/r/j/k;->i:Le/a/c/r/j/p;

    .line 22
    instance-of v6, v5, Le/a/c/r/j/p$i;

    if-eqz v6, :cond_7

    .line 23
    check-cast v5, Le/a/c/r/j/p$i;

    .line 24
    iget-object v5, v5, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    goto :goto_7

    .line 25
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    :goto_7
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v6, v2, Le/a/c/r/j/k;->g:Le/a/c/h/m/c;

    .line 28
    iget-object v7, v6, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 29
    invoke-static {v6}, Le/a/m0/a1$k;->A0(Le/a/c/h/m/c;)Z

    move-result v6

    invoke-static {v7, v6}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "click"

    .line 31
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v8, v2, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_a

    if-eq v8, v15, :cond_9

    if-ne v8, v3, :cond_8

    const-string v3, "dismiss"

    goto :goto_8

    .line 33
    :cond_8
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_9
    const-string v3, "negative"

    goto :goto_8

    :cond_a
    const-string v3, "positive"

    .line 34
    :goto_8
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v8, v2, Le/a/c/r/j/k;->h:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_2

    .line 36
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_9
    const-string v8, "spam_tab"

    goto :goto_9

    :pswitch_a
    const-string v8, "others_tab"

    goto :goto_9

    :pswitch_b
    const-string v8, "question_card"

    goto :goto_9

    :pswitch_c
    const-string v8, "conversation_view"

    .line 37
    :goto_9
    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    move v13, v15

    :cond_b
    if-eqz v13, :cond_c

    .line 39
    new-instance v1, Le/a/c/r/d/b;

    .line 40
    new-instance v9, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c0

    const/16 v28, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v28}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 41
    invoke-static {v4}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 42
    invoke-direct {v1, v9, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 43
    iget-object v2, v2, Le/a/c/r/j/k;->c:Le/a/c/e/c;

    invoke-interface {v2, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 44
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    .line 45
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public b()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/c/r/j/k;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/w/f;

    return-object v0
.end method
