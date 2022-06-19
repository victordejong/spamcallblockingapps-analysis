.class public final Le/a/c/b0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b0/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/c/c/d/j0;

.field public final c:Le/a/c/n/d;

.field public final d:Le/a/c/w/o0/g;

.field public final e:Le/a/c/b/e;

.field public final f:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j0;Le/a/c/n/d;Le/a/c/w/o0/g;Le/a/c/b/e;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "smsBackupDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmartSmsFeatureFilter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    iput-object p2, p0, Le/a/c/b0/f;->c:Le/a/c/n/d;

    iput-object p3, p0, Le/a/c/b0/f;->d:Le/a/c/w/o0/g;

    iput-object p4, p0, Le/a/c/b0/f;->e:Le/a/c/b/e;

    iput-object p5, p0, Le/a/c/b0/f;->f:Le/a/c/w/o0/g;

    .line 2
    invoke-interface {p4}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/c/b0/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    invoke-interface {v0, p1}, Le/a/c/c/d/j0;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IJLs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/q/k;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/c/b0/f$b;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/c/b0/f$b;

    iget v1, v0, Le/a/c/b0/f$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/f$b;

    invoke-direct {v0, p0, p5}, Le/a/c/b0/f$b;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p5, v6, Le/a/c/b0/f$b;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/c/b0/f$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Le/a/c/b0/f$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/b0/f;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    iput-object p0, v6, Le/a/c/b0/f$b;->g:Ljava/lang/Object;

    iput v2, v6, Le/a/c/b0/f$b;->e:I

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Le/a/c/c/d/j0;->b(Ljava/lang/String;IJLs1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p5, Ljava/lang/Iterable;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 8
    check-cast p4, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 9
    invoke-virtual {p1, p4}, Le/a/c/b0/f;->l(Lcom/truecaller/insights/models/pdo/SmsBackup;)Le/a/c/q/k;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 10
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object p2
.end method

.method public c(Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    sget-object v4, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Le/a/c/c/d/j0;->n(Ljava/lang/String;JLcom/truecaller/insights/models/pdo/ClassifierType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/q/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b0/f$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b0/f$c;

    iget v1, v0, Le/a/c/b0/f$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/f$c;

    invoke-direct {v0, p0, p1}, Le/a/c/b0/f$c;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b0/f$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b0/f$c;->e:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-wide v0, v0, Le/a/c/b0/f$c;->h:J

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/b0/f$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/b0/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    iput-object p0, v0, Le/a/c/b0/f$c;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/c/b0/f$c;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/d/j0;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 5
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_5
    move-wide v6, v3

    .line 7
    :goto_2
    iget-object p1, v2, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/b0/f$c;->g:Ljava/lang/Object;

    iput-wide v6, v0, Le/a/c/b0/f$c;->h:J

    iput v5, v0, Le/a/c/b0/f$c;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/d/j0;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-wide v0, v6

    :goto_3
    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 8
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 10
    :cond_7
    new-instance p1, Le/a/c/q/i;

    invoke-direct {p1, v0, v1, v3, v4}, Le/a/c/q/i;-><init>(JJ)V

    return-object p1
.end method

.method public e(Le/a/c/i/g/d;Ls1/w/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/g/d;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/b0/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/b0/f$g;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/b0/f$g;

    iget v3, v2, Le/a/c/b0/f$g;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/b0/f$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/b0/f$g;

    invoke-direct {v2, v0, v1}, Le/a/c/b0/f$g;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/b0/f$g;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/b0/f$g;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Le/a/c/b0/f$g;->l:Ljava/lang/Object;

    iget-object v5, v2, Le/a/c/b0/f$g;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v8, v2, Le/a/c/b0/f$g;->j:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v2, Le/a/c/b0/f$g;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v2, Le/a/c/b0/f$g;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v2, Le/a/c/b0/f$g;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/b0/f;

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
    iget-object v4, v2, Le/a/c/b0/f$g;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v2, Le/a/c/b0/f$g;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v8, v2, Le/a/c/b0/f$g;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/b0/f;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v4, v2, Le/a/c/b0/f$g;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/b0/f;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v4

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v2, Le/a/c/b0/f$g;->g:Ljava/lang/Object;

    iput v6, v2, Le/a/c/b0/f$g;->e:I

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Le/a/c/b0/f;->i(Le/a/c/i/g/d;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v8, v0

    .line 5
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 6
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    iget-object v9, v8, Le/a/c/b0/f;->c:Le/a/c/n/d;

    .line 8
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 10
    check-cast v12, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 11
    invoke-virtual {v12}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v12

    .line 12
    new-instance v14, Ljava/lang/Long;

    invoke-direct {v14, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .line 13
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_6
    iput-object v8, v2, Le/a/c/b0/f$g;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/b0/f$g;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/b0/f$g;->i:Ljava/lang/Object;

    iput v5, v2, Le/a/c/b0/f$g;->e:I

    .line 15
    invoke-interface {v9, v10, v2}, Le/a/c/n/d;->o(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_7

    return-object v3

    :cond_7
    move-object/from16 v20, v5

    move-object v5, v1

    move-object/from16 v1, v20

    .line 16
    :goto_3
    check-cast v1, Ljava/util/Map;

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v4

    move-object v11, v8

    move-object v8, v9

    move-object v9, v1

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 19
    iput-object v11, v2, Le/a/c/b0/f$g;->g:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/b0/f$g;->h:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/b0/f$g;->i:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/b0/f$g;->j:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/b0/f$g;->k:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/b0/f$g;->l:Ljava/lang/Object;

    iput v7, v2, Le/a/c/b0/f$g;->e:I

    invoke-virtual {v11, v1, v2}, Le/a/c/b0/f;->h(Lcom/truecaller/insights/models/pdo/SmsBackup;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    return-object v3

    :cond_9
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_a
    check-cast v8, Ljava/util/List;

    .line 23
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 24
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 25
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v4

    .line 26
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 27
    new-instance v4, Le/a/c/b0/b;

    .line 28
    invoke-static {v3}, Le/a/c/p/a;->v2(Ljava/lang/String;)Le/a/c/r/m/b;

    move-result-object v13

    .line 29
    invoke-virtual {v11, v2}, Le/a/c/b0/f;->j(Lcom/truecaller/insights/models/pdo/SmsBackup;)Le/a/c/r/j/h;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 p1, v7

    .line 30
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v6

    .line 31
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 32
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/c/i/e/b;

    .line 33
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v17

    const-string v3, "$this$isIM"

    .line 34
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getTransport()Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v2

    sget-object v3, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    if-ne v2, v3, :cond_c

    const/16 v18, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_7
    const/16 v19, 0x4

    move-object v12, v4

    .line 36
    invoke-direct/range {v12 .. v19}, Le/a/c/b0/b;-><init>(Le/a/c/r/m/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Le/a/c/i/e/b;Lcom/truecaller/insights/models/pdo/ClassifierType;ZI)V

    move-object/from16 v2, p1

    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_6

    :cond_d
    return-object v10
.end method

.method public f(JLs1/w/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b0/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/c/b0/f$h;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/b0/f$h;

    iget v3, v2, Le/a/c/b0/f$h;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/b0/f$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/b0/f$h;

    invoke-direct {v2, p0, v1}, Le/a/c/b0/f$h;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/b0/f$h;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/b0/f$h;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Le/a/c/b0/f$h;->h:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/insights/models/pdo/SmsBackup;

    iget-object v2, v2, Le/a/c/b0/f$h;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/b0/f;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/b0/f$h;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/b0/f;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    iput-object v0, v2, Le/a/c/b0/f$h;->g:Ljava/lang/Object;

    iput v6, v2, Le/a/c/b0/f$h;->e:I

    move-wide/from16 v7, p1

    invoke-interface {v1, v7, v8, v2}, Le/a/c/c/d/j0;->k(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v4, v0

    .line 5
    :goto_1
    check-cast v1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 6
    iget-object v7, v4, Le/a/c/b0/f;->c:Le/a/c/n/d;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v8

    .line 7
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 8
    invoke-static {v10}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v4, v2, Le/a/c/b0/f$h;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/b0/f$h;->h:Ljava/lang/Object;

    iput v5, v2, Le/a/c/b0/f$h;->e:I

    invoke-interface {v7, v8, v2}, Le/a/c/n/d;->o(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    .line 9
    :goto_2
    check-cast v1, Ljava/util/Map;

    .line 10
    invoke-virtual {v2, v3}, Le/a/c/b0/f;->j(Lcom/truecaller/insights/models/pdo/SmsBackup;)Le/a/c/r/j/h;

    move-result-object v9

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 12
    new-instance v4, Le/a/c/b0/b;

    .line 13
    invoke-static {v2}, Le/a/c/p/a;->v2(Ljava/lang/String;)Le/a/c/r/m/b;

    move-result-object v8

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v10

    .line 15
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Le/a/c/i/e/b;

    const/4 v10, 0x0

    .line 17
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v12

    const-string v1, "$this$isIM"

    .line 18
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getTransport()Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v1

    sget-object v2, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    if-ne v1, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    move v13, v6

    const/4 v14, 0x4

    move-object v7, v4

    .line 20
    invoke-direct/range {v7 .. v14}, Le/a/c/b0/b;-><init>(Le/a/c/r/m/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Le/a/c/i/e/b;Lcom/truecaller/insights/models/pdo/ClassifierType;ZI)V

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    return-object v4
.end method

.method public g(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/b0/f$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/b0/f$f;

    iget v1, v0, Le/a/c/b0/f$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/f$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/f$f;

    invoke-direct {v0, p0, p2}, Le/a/c/b0/f$f;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/b0/f$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b0/f$f;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Le/a/c/b0/f$f;->j:I

    iget-object v2, v0, Le/a/c/b0/f$f;->i:Ljava/lang/Object;

    check-cast v2, Lw3/b/a/b;

    iget-object v3, v0, Le/a/c/b0/f$f;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v5, v0, Le/a/c/b0/f$f;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/b0/f;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/b0/f$f;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Le/a/c/b0/f$f;->h:Ljava/lang/Object;

    check-cast v2, Lw3/b/a/b;

    iget-object v5, v0, Le/a/c/b0/f$f;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/b0/f;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v7

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-array p2, v4, [Ljava/lang/Integer;

    .line 4
    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->MODEL:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ClassifierType;->getValue()I

    move-result v2

    .line 5
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, p2, v3

    .line 6
    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->PARSER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ClassifierType;->getValue()I

    move-result v2

    .line 7
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, p2, v5

    .line 8
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 9
    iget-object v2, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    iput-object p0, v0, Le/a/c/b0/f$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/b0/f$f;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/b0/f$f;->i:Ljava/lang/Object;

    iput v5, v0, Le/a/c/b0/f$f;->e:I

    invoke-interface {v2, p2, v0}, Le/a/c/c/d/j0;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    :goto_1
    check-cast v2, Ljava/util/Date;

    if-eqz v2, :cond_8

    invoke-static {v2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v2

    move v7, v3

    move-object v3, p2

    move p2, v7

    .line 10
    :goto_2
    iput-object v5, v0, Le/a/c/b0/f$f;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/b0/f$f;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/b0/f$f;->i:Ljava/lang/Object;

    iput p2, v0, Le/a/c/b0/f$f;->j:I

    iput v4, v0, Le/a/c/b0/f$f;->e:I

    invoke-virtual {v5, v3, p1, v0}, Le/a/c/b0/f;->k(Ljava/util/List;Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move v7, p2

    move-object p2, p1

    move p1, v7

    :goto_3
    check-cast p2, Ls1/k;

    .line 11
    iget-object v6, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 13
    iget-object p2, p2, Ls1/k;->b:Ljava/lang/Object;

    .line 14
    check-cast p2, Lw3/b/a/b;

    add-int/2addr p1, v6

    if-eqz p2, :cond_7

    .line 15
    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, p2

    move p2, p1

    move-object p1, v7

    goto :goto_2

    .line 16
    :cond_7
    :goto_4
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public final h(Lcom/truecaller/insights/models/pdo/SmsBackup;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/b0/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/b0/f$a;

    iget v1, v0, Le/a/c/b0/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/f$a;

    invoke-direct {v0, p0, p2}, Le/a/c/b0/f$a;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/b0/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b0/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v2, p0, Le/a/c/b0/f;->d:Le/a/c/w/o0/g;

    new-instance v4, Le/a/c/g/v;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, p2}, Le/a/c/g/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Le/a/c/b0/f$a;->e:I

    invoke-interface {v2, v4, v0}, Le/a/c/w/o0/g;->d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 7
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final i(Le/a/c/i/g/d;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/g/d;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/b0/f$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/b0/f$e;

    iget v1, v0, Le/a/c/b0/f$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/f$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/f$e;

    invoke-direct {v0, p0, p2}, Le/a/c/b0/f$e;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    move-object v8, v0

    iget-object p2, v8, Le/a/c/b0/f$e;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v8, Le/a/c/b0/f$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Le/a/c/i/g/d;->d:Le/a/c/a0/r;

    if-eqz p2, :cond_5

    .line 5
    iget-object p2, p2, Le/a/c/a0/r;->a:Lw3/b/a/b;

    .line 6
    iget-wide v4, p2, Lw3/b/a/e0/e;->a:J

    .line 7
    iget-object p2, p1, Le/a/c/i/g/d;->d:Le/a/c/a0/r;

    .line 8
    iget-object p2, p2, Le/a/c/a0/r;->b:Lw3/b/a/b;

    .line 9
    iget-wide v6, p2, Lw3/b/a/e0/e;->a:J

    .line 10
    iget-object v1, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    .line 11
    iget-wide p1, p1, Le/a/c/i/g/d;->a:J

    .line 12
    iput v3, v8, Le/a/c/b0/f$e;->e:I

    move-wide v2, p1

    invoke-interface/range {v1 .. v8}, Le/a/c/c/d/j0;->d(JJJLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_3

    .line 13
    :cond_5
    iget-object p2, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    .line 14
    iget-wide v3, p1, Le/a/c/i/g/d;->a:J

    const/16 p1, 0x14

    .line 15
    iput v2, v8, Le/a/c/b0/f$e;->e:I

    invoke-interface {p2, v3, v4, p1, v8}, Le/a/c/c/d/j0;->c(JILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    return-object v0

    .line 16
    :cond_6
    :goto_2
    check-cast p2, Ljava/util/List;

    :goto_3
    return-object p2
.end method

.method public final j(Lcom/truecaller/insights/models/pdo/SmsBackup;)Le/a/c/r/j/h;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Le/a/c/r/j/h$b;->d:Le/a/c/r/j/h$b;

    goto :goto_2

    .line 2
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object p1

    sget-object v0, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    if-ne p1, v0, :cond_3

    sget-object p1, Le/a/c/r/j/h$a;->d:Le/a/c/r/j/h$a;

    goto :goto_2

    .line 3
    :cond_3
    sget-object p1, Le/a/c/r/j/h$g;->d:Le/a/c/r/j/h$g;

    :goto_2
    return-object p1
.end method

.method public final k(Ljava/util/List;Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Lw3/b/a/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/b0/f$i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/b0/f$i;

    iget v1, v0, Le/a/c/b0/f$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b0/f$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b0/f$i;

    invoke-direct {v0, p0, p3}, Le/a/c/b0/f$i;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/b0/f$i;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b0/f$i;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/c/b0/f$i;->k:Ljava/lang/Object;

    iget-object p2, v0, Le/a/c/b0/f$i;->j:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/c/b0/f$i;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v3, v0, Le/a/c/b0/f$i;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v6, v0, Le/a/c/b0/f$i;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/b0/f;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/b0/f$i;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/b0/f;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    invoke-virtual {p2}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object p2

    const-string v2, "startDate.toDate()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/c/b0/f;->e:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->e()I

    move-result v2

    iput-object p0, v0, Le/a/c/b0/f$i;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/b0/f$i;->e:I

    invoke-interface {p3, p2, p1, v2, v0}, Le/a/c/c/d/j0;->g(Ljava/util/Date;Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Ls1/k;

    .line 7
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p3, 0x0

    .line 8
    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 9
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, p1

    move-object v3, p3

    move-object v9, v2

    move-object v2, p2

    move-object p2, v9

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 11
    invoke-virtual {p3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 12
    new-instance v8, Le/a/c/g/v;

    invoke-virtual {p3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v8, p3, v7}, Le/a/c/g/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p3, v6, Le/a/c/b0/f;->f:Le/a/c/w/o0/g;

    iput-object v6, v0, Le/a/c/b0/f$i;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/b0/f$i;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/b0/f$i;->i:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/b0/f$i;->j:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/b0/f$i;->k:Ljava/lang/Object;

    iput v4, v0, Le/a/c/b0/f$i;->e:I

    invoke-interface {p3, v8, v0}, Le/a/c/w/o0/g;->d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_4

    :cond_8
    move p3, v5

    .line 14
    :goto_4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 15
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_9
    check-cast v2, Ljava/util/List;

    .line 17
    new-instance p1, Ls1/k;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 18
    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/models/pdo/SmsBackup;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final l(Lcom/truecaller/insights/models/pdo/SmsBackup;)Le/a/c/q/k;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v15, Le/a/c/q/k;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getConversationId()J

    move-result-wide v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getAddress()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, p0

    iget-object v4, v14, Le/a/c/b0/f;->a:Ljava/lang/String;

    invoke-static {v1, v4}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v5

    .line 6
    invoke-static {v0}, Le/a/c/p/a;->v2(Ljava/lang/String;)Le/a/c/r/m/b;

    move-result-object v7

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getSpamCategory()I

    move-result v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getTransport()Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 12
    new-instance v13, Lw3/b/a/b;

    invoke-direct {v13, v0, v1}, Lw3/b/a/b;-><init>(J)V

    .line 13
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 14
    invoke-virtual {v0}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v1

    invoke-virtual {v13}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v14

    invoke-static {v1, v14}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v1

    const-string v14, "Days.daysBetween(current\u2026te(), date.toLocalDate())"

    invoke-static {v1, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget v1, v1, Lw3/b/a/e0/i;->a:I

    if-nez v1, :cond_1

    const-string v0, "Today"

    :goto_1
    move-object v13, v0

    goto :goto_2

    :cond_1
    const/4 v14, -0x1

    if-ne v1, v14, :cond_2

    const-string v0, "Yesterday"

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v13}, Lw3/b/a/e0/a;->u()I

    move-result v1

    const-string v14, "currentDate"

    invoke-static {v0, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->u()I

    move-result v0

    if-ne v1, v0, :cond_3

    invoke-virtual {v13}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v0

    const-string v1, "date.toLocalDate()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_3
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    invoke-virtual {v0, v13}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateFormat.dd_MMM_yyyy.formatter().print(date)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 19
    new-instance v14, Lw3/b/a/b;

    invoke-direct {v14, v0, v1}, Lw3/b/a/b;-><init>(J)V

    .line 20
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    invoke-virtual {v0, v14}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "DateFormat.hh_mm_aa.formatter().print(date)"

    invoke-static {v14, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v15

    .line 21
    invoke-direct/range {v1 .. v14}, Le/a/c/q/k;-><init>(JLjava/lang/String;JLe/a/c/r/m/b;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    return-object v15
.end method

.method public s(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/k;",
            ">;>;"
        }
    .end annotation

    const-string v0, "loadConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/c/q/f;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    .line 3
    iget-wide v3, p1, Le/a/c/q/f;->b:J

    .line 4
    iget-wide v5, p1, Le/a/c/q/f;->c:J

    const-string v7, "Delivery"

    .line 5
    invoke-interface/range {v2 .. v7}, Le/a/c/c/d/j0;->j(JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v2, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    .line 9
    iget-wide v3, p1, Le/a/c/q/f;->b:J

    .line 10
    iget-wide v5, p1, Le/a/c/q/f;->c:J

    const-string v7, "Delivery"

    .line 11
    invoke-interface/range {v2 .. v7}, Le/a/c/c/d/j0;->l(JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 13
    :cond_2
    iget-object v2, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    .line 14
    iget-wide v3, p1, Le/a/c/q/f;->b:J

    .line 15
    iget-wide v5, p1, Le/a/c/q/f;->c:J

    const-string v7, "Delivery"

    .line 16
    invoke-interface/range {v2 .. v7}, Le/a/c/c/d/j0;->q(JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    .line 17
    :goto_0
    new-instance v0, Le/a/c/b0/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Le/a/c/b0/e;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ls1/a/a/a/v0/f/d;->S0(Lq3/a/x2/f;ILs1/z/b/p;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public t(IJ)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/k;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/b0/f;->b:Le/a/c/c/d/j0;

    mul-int/lit8 v1, p1, 0x3

    invoke-interface {v0, v1, p2, p3}, Le/a/c/c/d/j0;->m(IJ)Lq3/a/x2/f;

    move-result-object p2

    .line 2
    new-instance p3, Le/a/c/b0/e;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Le/a/c/b0/e;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v1, p3, v2, v0}, Ls1/a/a/a/v0/f/d;->S0(Lq3/a/x2/f;ILs1/z/b/p;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p2

    .line 3
    new-instance p3, Le/a/c/b0/f$d;

    invoke-direct {p3, p2, p1}, Le/a/c/b0/f$d;-><init>(Lq3/a/x2/f;I)V

    return-object p3
.end method
