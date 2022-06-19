.class public final Le/a/c/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/n/a;


# instance fields
.field public final a:Le/a/c/c/d/p;

.field public final b:Le/a/c/c/d/u;

.field public final c:Le/a/c/c/d/j0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/p;Le/a/c/c/d/d0;Le/a/c/c/d/u;Le/a/c/c/d/j0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "categorizerDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdoDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "feedbackDao"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "smsBackupDao"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/n/b;->a:Le/a/c/c/d/p;

    iput-object p3, p0, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    iput-object p4, p0, Le/a/c/n/b;->c:Le/a/c/c/d/j0;

    return-void
.end method


# virtual methods
.method public a(JLs1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p3, Le/a/c/n/b$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/n/b$a;

    iget v1, v0, Le/a/c/n/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/n/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/n/b$a;

    invoke-direct {v0, p0, p3}, Le/a/c/n/b$a;-><init>(Le/a/c/n/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/n/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/n/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/n/b;->c:Le/a/c/c/d/j0;

    const/16 v2, 0x32

    iput v3, v0, Le/a/c/n/b$a;->e:I

    invoke-interface {p3, p1, p2, v2, v0}, Le/a/c/c/d/j0;->f(JILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    const/16 p1, 0xa

    .line 6
    invoke-static {p3, p1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Le/q/f/a/d/a;->Y1(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_4

    move p1, p2

    .line 7
    :cond_4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 9
    check-cast p3, Le/a/c/n/f;

    .line 10
    iget-wide v0, p3, Le/a/c/n/f;->a:J

    .line 11
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 12
    iget p3, p3, Le/a/c/n/f;->b:F

    .line 13
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 14
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-object p2
.end method

.method public b(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    invoke-interface {v0, p1, p2, p3, p4}, Le/a/c/c/d/u;->b(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;
    .locals 18
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

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    const-string v3, "$this$toFeedbackEntity"

    .line 2
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Le/a/c/r/f/a;

    .line 4
    iget-object v8, v0, Le/a/c/i/e/b;->g:Lcom/truecaller/insights/models/feedback/FeedbackType;

    .line 5
    iget-object v9, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 6
    iget-object v12, v0, Le/a/c/i/e/b;->a:Ljava/lang/String;

    .line 7
    iget-object v13, v0, Le/a/c/i/e/b;->b:Ljava/lang/String;

    .line 8
    iget-object v14, v0, Le/a/c/i/e/b;->e:Ljava/lang/String;

    .line 9
    iget-object v15, v0, Le/a/c/i/e/b;->d:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Le/a/c/i/e/b;->c:Lw3/b/a/b;

    .line 11
    invoke-virtual {v0}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v7

    const-string v0, "datetime.toDate()"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    move-object v4, v3

    move-wide/from16 v10, p1

    move-wide/from16 v16, p4

    .line 12
    invoke-direct/range {v4 .. v17}, Le/a/c/r/f/a;-><init>(JLjava/util/Date;Lcom/truecaller/insights/models/feedback/FeedbackType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p6

    .line 13
    invoke-interface {v2, v3, v0}, Le/a/c/c/d/u;->e(Le/a/c/r/f/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v2, :cond_0

    return-object v0

    .line 14
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public d(JLjava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Le/a/c/c/d/u;->d(JLjava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ljava/util/List;Le/a/c/g/a;Le/a/c/g/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;",
            "Le/a/c/g/a;",
            "Le/a/c/g/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Le/a/c/i/e/b;

    const-string v3, "$this$toReclassifiedMessage"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fromCategory"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "toCategory"

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    .line 6
    iget-object v7, v2, Le/a/c/i/e/b;->b:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x38

    const/4 v15, 0x0

    move-object v6, v3

    .line 9
    invoke-direct/range {v6 .. v15}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;ILs1/z/c/f;)V

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    .line 11
    iget-object v1, v2, Le/a/c/n/b;->a:Le/a/c/c/d/p;

    move-object/from16 v3, p4

    invoke-interface {v1, v0, v3}, Le/a/c/c/d/p;->h(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_1

    return-object v0

    .line 12
    :cond_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public f(Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
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

    instance-of v0, p3, Le/a/c/n/b$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/n/b$b;

    iget v1, v0, Le/a/c/n/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/n/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/n/b$b;

    invoke-direct {v0, p0, p3}, Le/a/c/n/b$b;-><init>(Le/a/c/n/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/n/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/n/b$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    iput v3, v0, Le/a/c/n/b$b;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/c/c/d/u;->g(Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    const/16 p1, 0xa

    .line 6
    invoke-static {p3, p1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Le/q/f/a/d/a;->Y1(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_4

    move p1, p2

    .line 7
    :cond_4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 9
    check-cast p3, Le/a/c/r/f/a;

    .line 10
    iget-wide v0, p3, Le/a/c/r/f/a;->e:J

    .line 11
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 12
    invoke-static {p3}, Le/a/c/p/a;->b3(Le/a/c/r/f/a;)Le/a/c/i/e/b;

    move-result-object p3

    invoke-interface {p2, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-object p2
.end method

.method public g(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/c/n/b$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/c/n/b$c;

    iget v1, v0, Le/a/c/n/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/n/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/n/b$c;

    invoke-direct {v0, p0, p4}, Le/a/c/n/b$c;-><init>(Le/a/c/n/b;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/c/n/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/n/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    iput v3, v0, Le/a/c/n/b$c;->e:I

    invoke-interface {p4, p1, p2, p3, v0}, Le/a/c/c/d/u;->c(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p4, Ljava/util/List;

    const/16 p1, 0xa

    .line 6
    invoke-static {p4, p1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Le/q/f/a/d/a;->Y1(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_4

    move p1, p2

    .line 7
    :cond_4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 9
    check-cast p3, Le/a/c/r/f/a;

    .line 10
    iget-wide v0, p3, Le/a/c/r/f/a;->e:J

    .line 11
    new-instance p4, Ljava/lang/Long;

    invoke-direct {p4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 12
    invoke-static {p3}, Le/a/c/p/a;->b3(Le/a/c/r/f/a;)Le/a/c/i/e/b;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-object p2
.end method

.method public h(Ljava/util/List;Ljava/util/List;)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
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

    const-string v0, "feedbackTypes"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/n/b;->b:Le/a/c/c/d/u;

    invoke-interface {v0, p1, p2}, Le/a/c/c/d/u;->f(Ljava/util/List;Ljava/util/List;)Lq3/a/x2/f;

    move-result-object p1

    .line 2
    new-instance p2, Le/a/c/n/b$d;

    invoke-direct {p2, p1}, Le/a/c/n/b$d;-><init>(Lq3/a/x2/f;)V

    return-object p2
.end method
