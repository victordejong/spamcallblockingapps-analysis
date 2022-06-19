.class public final Le/a/c/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/n/d;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/c/c0/o;

.field public final c:Le/a/c/c0/k;

.field public final d:Le/a/c/i/i/a;

.field public final e:Le/a/c/n/a;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/c/c0/o;Le/a/c/c0/k;Le/a/c/i/i/a;Le/a/c/n/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/c/c0/o;",
            "Le/a/c/c0/k;",
            "Le/a/c/i/i/a;",
            "Le/a/c/n/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackDataSource"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/n/e;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/c/n/e;->b:Le/a/c/c0/o;

    iput-object p3, p0, Le/a/c/n/e;->c:Le/a/c/c0/k;

    iput-object p4, p0, Le/a/c/n/e;->d:Le/a/c/i/i/a;

    iput-object p5, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    return-void
.end method


# virtual methods
.method public a(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/n/a;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    sget-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    invoke-interface {v0, p1, p2, v1, p3}, Le/a/c/n/a;->g(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(JLe/a/c/i/e/b;JLjava/lang/String;Ljava/lang/Boolean;ZLs1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/c/i/e/b;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p9

    instance-of v2, v1, Le/a/c/n/e$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/n/e$b;

    iget v3, v2, Le/a/c/n/e$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/n/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/n/e$b;

    invoke-direct {v2, p0, v1}, Le/a/c/n/e$b;-><init>(Le/a/c/n/e;Ls1/w/d;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Le/a/c/n/e$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v9, Le/a/c/n/e$b;->e:I

    const/4 v10, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v10, :cond_1

    iget-boolean v2, v9, Le/a/c/n/e$b;->k:Z

    iget-object v3, v9, Le/a/c/n/e$b;->j:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    iget-object v4, v9, Le/a/c/n/e$b;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v9, Le/a/c/n/e$b;->h:Ljava/lang/Object;

    check-cast v5, Le/a/c/i/e/b;

    iget-object v6, v9, Le/a/c/n/e$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/n/e;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v13, v2

    move-object v12, v3

    move-object v11, v4

    move-object v1, v5

    goto :goto_1

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
    iget-object v3, v0, Le/a/c/n/e;->e:Le/a/c/n/a;

    iput-object v0, v9, Le/a/c/n/e$b;->g:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v9, Le/a/c/n/e$b;->h:Ljava/lang/Object;

    move-object/from16 v11, p6

    iput-object v11, v9, Le/a/c/n/e$b;->i:Ljava/lang/Object;

    move-object/from16 v12, p7

    iput-object v12, v9, Le/a/c/n/e$b;->j:Ljava/lang/Object;

    move/from16 v13, p8

    iput-boolean v13, v9, Le/a/c/n/e$b;->k:Z

    iput v10, v9, Le/a/c/n/e$b;->e:I

    move-wide v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Le/a/c/n/a;->c(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    return-object v2

    :cond_3
    move-object v6, v0

    :goto_1
    if-eqz v13, :cond_7

    .line 5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_4

    .line 6
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, v6, Le/a/c/n/e;->c:Le/a/c/c0/k;

    sget-object v3, Lcom/truecaller/insights/utils/FeedbackConsentType;->SEMI_CARD:Lcom/truecaller/insights/utils/FeedbackConsentType;

    invoke-static {v2, v3}, Le/a/c/p/a;->X0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z

    move-result v2

    .line 7
    :goto_2
    invoke-static {}, Le/a/l5/a/d2;->a()Le/a/l5/a/d2$b;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v11}, Le/a/l5/a/d2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 9
    iget-object v4, v1, Le/a/c/i/e/b;->h:Le/a/c/b0/c;

    if-eqz v4, :cond_6

    .line 10
    iget-object v5, v4, Le/a/c/b0/c;->b:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 11
    sget-object v7, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    if-eq v5, v7, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    iget-object v4, v4, Le/a/c/b0/c;->a:Ljava/lang/String;

    .line 13
    new-instance v5, Ls1/k;

    const-string v7, "q2"

    invoke-direct {v5, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-static {v5}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v4

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 15
    :goto_4
    invoke-virtual {v3, v4}, Le/a/l5/a/d2$b;->c(Ljava/util/Map;)Le/a/l5/a/d2$b;

    const-string v4, "conversation_view"

    .line 16
    invoke-virtual {v3, v4}, Le/a/l5/a/d2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 17
    iget-object v4, v1, Le/a/c/i/e/b;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v4}, Le/a/l5/a/d2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 19
    invoke-virtual {v6, v1, v2}, Le/a/c/n/e;->p(Le/a/c/i/e/b;Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v2}, Le/a/l5/a/d2$b;->e(Ljava/util/Map;)Le/a/l5/a/d2$b;

    .line 20
    iget-object v2, v1, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 21
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 22
    iput-object v2, v3, Le/a/l5/a/d2$b;->f:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v10, v2, v5

    .line 24
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    .line 25
    iget-object v1, v1, Le/a/c/i/e/b;->c:Lw3/b/a/b;

    .line 26
    invoke-virtual {v1}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v1

    const-string v4, "semiCardFeedback.datetime.toDate()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/truecaller/insights/utils/DateFormat;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v4, 0x8

    aget-object v2, v2, v4

    invoke-virtual {v3, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object v1, v3, Le/a/l5/a/d2$b;->g:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v10, v1, v4

    .line 30
    invoke-virtual {v3}, Le/a/l5/a/d2$b;->a()Le/a/l5/a/d2;

    move-result-object v1

    const-string v2, "AppSmsFeedback.newBuilde\u2026()))\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v2, v6, Le/a/c/n/e;->a:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-interface {v2, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 32
    :cond_7
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.method public d(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/e/b;

    .line 2
    iget-object v1, p0, Le/a/c/n/e;->a:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    .line 3
    invoke-static {}, Le/a/l5/a/d2;->a()Le/a/l5/a/d2$b;

    move-result-object v2

    const-string v3, "non-spam"

    .line 4
    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 5
    iget-object v3, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 6
    new-instance v4, Ls1/k;

    const-string v5, "q2"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v4}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->c(Ljava/util/Map;)Le/a/l5/a/d2$b;

    const-string v3, "conversation_view"

    .line 8
    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 9
    iget-object v3, v0, Le/a/c/i/e/b;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 11
    invoke-virtual {p0, v0, p2}, Le/a/c/n/e;->p(Le/a/c/i/e/b;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/a/l5/a/d2$b;->e(Ljava/util/Map;)Le/a/l5/a/d2$b;

    .line 12
    invoke-virtual {v2}, Le/a/l5/a/d2$b;->a()Le/a/l5/a/d2;

    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/e/b;

    .line 2
    iget-object v1, p0, Le/a/c/n/e;->a:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    .line 3
    invoke-static {}, Le/a/l5/a/d2;->a()Le/a/l5/a/d2$b;

    move-result-object v2

    const-string v3, "spam"

    .line 4
    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 5
    iget-object v3, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 6
    new-instance v4, Ls1/k;

    const-string v5, "q3"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v4}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->c(Ljava/util/Map;)Le/a/l5/a/d2$b;

    const-string v3, "conversation_view"

    .line 8
    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 9
    iget-object v3, v0, Le/a/c/i/e/b;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Le/a/l5/a/d2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 11
    invoke-virtual {p0, v0, p2}, Le/a/c/n/e;->p(Le/a/c/i/e/b;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/a/l5/a/d2$b;->e(Ljava/util/Map;)Le/a/l5/a/d2$b;

    .line 12
    invoke-virtual {v2}, Le/a/l5/a/d2$b;->a()Le/a/l5/a/d2;

    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->c:Le/a/c/c0/k;

    invoke-interface {v0}, Le/a/c/c0/k;->c()V

    return-void
.end method

.method public g(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/c/i/e/b;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Le/a/c/n/e$a;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le/a/c/n/e$a;

    iget v1, v0, Le/a/c/n/e$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/n/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/n/e$a;

    invoke-direct {v0, p0, p6}, Le/a/c/n/e$a;-><init>(Le/a/c/n/e;Ls1/w/d;)V

    :goto_0
    move-object v7, v0

    iget-object p6, v7, Le/a/c/n/e$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/c/n/e$a;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-wide p4, v7, Le/a/c/n/e$a;->j:J

    iget-wide p1, v7, Le/a/c/n/e$a;->i:J

    iget-object p3, v7, Le/a/c/n/e$a;->h:Ljava/lang/Object;

    check-cast p3, Le/a/c/i/e/b;

    iget-object v1, v7, Le/a/c/n/e$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/c/n/e;

    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p6, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    sget-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    iput-object p0, v7, Le/a/c/n/e$a;->g:Ljava/lang/Object;

    iput-object p3, v7, Le/a/c/n/e$a;->h:Ljava/lang/Object;

    iput-wide p1, v7, Le/a/c/n/e$a;->i:J

    iput-wide p4, v7, Le/a/c/n/e$a;->j:J

    iput v4, v7, Le/a/c/n/e$a;->e:I

    invoke-interface {p6, p1, p2, v1, v7}, Le/a/c/n/a;->b(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_2
    move-object v4, p3

    move-wide v5, p4

    move-wide p2, p1

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p4, 0x0

    if-lez p1, :cond_6

    .line 5
    iget-object p1, v1, Le/a/c/n/e;->e:Le/a/c/n/a;

    .line 6
    iget-object p5, v4, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 7
    sget-object p6, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    iput-object p4, v7, Le/a/c/n/e$a;->g:Ljava/lang/Object;

    iput-object p4, v7, Le/a/c/n/e$a;->h:Ljava/lang/Object;

    iput v3, v7, Le/a/c/n/e$a;->e:I

    move-object p4, p5

    move-object p5, p6

    move-object p6, v7

    invoke-interface/range {p1 .. p6}, Le/a/c/n/a;->d(JLjava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 8
    :cond_6
    iget-object v1, v1, Le/a/c/n/e;->e:Le/a/c/n/a;

    iput-object p4, v7, Le/a/c/n/e$a;->g:Ljava/lang/Object;

    iput-object p4, v7, Le/a/c/n/e$a;->h:Ljava/lang/Object;

    iput v2, v7, Le/a/c/n/e$a;->e:I

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Le/a/c/n/a;->c(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 9
    :cond_7
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->c:Le/a/c/c0/k;

    sget-object v1, Lcom/truecaller/insights/utils/FeedbackConsentType;->MASTER_CONSENT:Lcom/truecaller/insights/utils/FeedbackConsentType;

    invoke-static {v0, v1}, Le/a/c/p/a;->X0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z

    move-result v0

    return v0
.end method

.method public i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/truecaller/insights/models/feedback/FeedbackType;

    sget-object v2, Lcom/truecaller/insights/models/feedback/FeedbackType;->SEMICARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/truecaller/insights/models/feedback/FeedbackType;->INFOCARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Le/a/c/n/a;->f(Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/insights/utils/FeedbackConsentType;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/utils/FeedbackConsentType;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/a/c/i/e/b;

    .line 2
    iget-object v0, p0, Le/a/c/n/e;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 3
    invoke-static {}, Le/a/l5/a/d2;->a()Le/a/l5/a/d2$b;

    move-result-object v1

    const-string v2, "give-feedback"

    .line 4
    invoke-virtual {v1, v2}, Le/a/l5/a/d2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 5
    iget-object v2, p4, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 6
    new-instance v3, Ls1/k;

    invoke-direct {v3, p2, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/d2$b;->c(Ljava/util/Map;)Le/a/l5/a/d2$b;

    const-string v2, "conversation_view"

    .line 8
    invoke-virtual {v1, v2}, Le/a/l5/a/d2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 9
    iget-object v2, p4, Le/a/c/i/e/b;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Le/a/l5/a/d2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/d2$b;

    .line 11
    iget-object v2, p0, Le/a/c/n/e;->c:Le/a/c/c0/k;

    invoke-static {v2, p3}, Le/a/c/p/a;->X0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z

    move-result v2

    invoke-virtual {p0, p4, v2}, Le/a/c/n/e;->p(Le/a/c/i/e/b;Z)Ljava/util/Map;

    move-result-object p4

    invoke-virtual {v1, p4}, Le/a/l5/a/d2$b;->e(Ljava/util/Map;)Le/a/l5/a/d2$b;

    .line 12
    invoke-virtual {v1}, Le/a/l5/a/d2$b;->a()Le/a/l5/a/d2;

    move-result-object p4

    .line 13
    invoke-interface {v0, p4}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public k(Ljava/util/List;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;>;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    sget-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->UPDATES_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/c/n/a;->h(Ljava/util/List;Ljava/util/List;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    new-instance v1, Le/a/c/g/a$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Le/a/c/g/a$a;-><init>(FII)V

    new-instance v5, Le/a/c/g/a$b;

    invoke-direct {v5, v2, v3, v4}, Le/a/c/g/a$b;-><init>(FII)V

    invoke-interface {v0, p1, v1, v5, p2}, Le/a/c/n/a;->e(Ljava/util/List;Le/a/c/g/a;Le/a/c/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->c:Le/a/c/c0/k;

    invoke-interface {v0}, Le/a/c/c0/k;->d()V

    return-void
.end method

.method public n(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    new-instance v1, Le/a/c/g/a$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Le/a/c/g/a$b;-><init>(FII)V

    new-instance v5, Le/a/c/g/a$a;

    invoke-direct {v5, v2, v3, v4}, Le/a/c/g/a$a;-><init>(FII)V

    invoke-interface {v0, p1, v1, v5, p2}, Le/a/c/n/a;->e(Ljava/util/List;Le/a/c/g/a;Le/a/c/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public o(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/e;->e:Le/a/c/n/a;

    sget-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->UPDATES_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Le/a/c/n/a;->f(Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p(Le/a/c/i/e/b;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/e/b;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/k;

    .line 1
    sget-object v1, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    .line 2
    iget-object v2, p1, Le/a/c/i/e/b;->c:Lw3/b/a/b;

    .line 3
    invoke-virtual {v2}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v2

    const-string v3, "datetime.toDate()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/truecaller/insights/utils/DateFormat;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ls1/k;

    const-string v3, "datetime"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 5
    iget-object v1, p1, Le/a/c/i/e/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 6
    :goto_0
    new-instance v2, Ls1/k;

    const-string v3, "categorizer_output"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 7
    invoke-static {v0}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 8
    iget-boolean v2, p1, Le/a/c/i/e/b;->i:Z

    if-eqz v2, :cond_1

    const-string v2, "im"

    goto :goto_1

    :cond_1
    const-string v2, "sms"

    :goto_1
    const-string v3, "message_type"

    .line 9
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 10
    iget-object p2, p0, Le/a/c/n/e;->d:Le/a/c/i/i/a;

    .line 11
    iget-object v2, p1, Le/a/c/i/e/b;->b:Ljava/lang/String;

    .line 12
    invoke-interface {p2, v2}, Le/a/c/i/i/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    iget-object p2, p1, Le/a/c/i/e/b;->b:Ljava/lang/String;

    :goto_2
    const-string v2, "masked_body"

    .line 14
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    iget-object p2, p1, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 16
    sget-object v2, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->IMPORTANT_MESSAGE_POSITIVE_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_6

    .line 17
    iget-object p2, p1, Le/a/c/i/e/b;->h:Le/a/c/b0/c;

    if-eqz p2, :cond_4

    .line 18
    iget-object p2, p2, Le/a/c/b0/c;->a:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, "unknown"

    :goto_3
    const-string v1, "updates_category"

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p2, Lcom/truecaller/insights/models/pdo/ClassifierType;->Companion:Lcom/truecaller/insights/models/pdo/ClassifierType$a;

    .line 21
    iget-object p1, p1, Le/a/c/i/e/b;->h:Le/a/c/b0/c;

    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p1, Le/a/c/b0/c;->b:Lcom/truecaller/insights/models/pdo/ClassifierType;

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 23
    :goto_4
    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ClassifierType$a;->a(Lcom/truecaller/insights/models/pdo/ClassifierType;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tagged_by"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
