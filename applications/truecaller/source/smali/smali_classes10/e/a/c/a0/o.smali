.class public final Le/a/c/a0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/h;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/a0/o;->b:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/a0/o$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/a0/o$e;

    iget v1, v0, Le/a/c/a0/o$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/o$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/o$e;

    invoke-direct {v0, p0, p1}, Le/a/c/a0/o$e;-><init>(Le/a/c/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/a0/o$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/o$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    iput v3, v0, Le/a/c/a0/o$e;->e:I

    invoke-virtual {p1, v0}, Le/a/c/c/d/d0;->y(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 6
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_4
    const-wide/16 v0, 0x0

    .line 7
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/a0/o$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/a0/o$d;

    iget v1, v0, Le/a/c/a0/o$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/o$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/o$d;

    invoke-direct {v0, p0, p1}, Le/a/c/a0/o$d;-><init>(Le/a/c/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/a0/o$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/o$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    iput v3, v0, Le/a/c/a0/o$d;->e:I

    invoke-virtual {p1, v0}, Le/a/c/c/d/d0;->v(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 6
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_4
    const-wide/16 v0, 0x0

    .line 7
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public c(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "loadConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/q/f;->h:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p1, Le/a/c/q/f;->f:Lcom/truecaller/insights/insightsui/TransactionType;

    const-string v1, "transactionType"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "credit"

    if-eqz v0, :cond_4

    const-string v3, "debit"

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 6
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 7
    :cond_3
    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 9
    iget-boolean v0, p1, Le/a/c/q/f;->a:Z

    if-eqz v0, :cond_5

    .line 10
    iget-object v3, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    .line 11
    iget-wide v4, p1, Le/a/c/q/f;->b:J

    .line 12
    iget-wide v6, p1, Le/a/c/q/f;->c:J

    .line 13
    invoke-virtual/range {v3 .. v8}, Le/a/c/c/d/d0;->V(JJLjava/util/List;)Lq3/a/x2/f;

    move-result-object p1

    .line 14
    new-instance v0, Le/a/c/a0/i;

    invoke-direct {v0, p1, p0}, Le/a/c/a0/i;-><init>(Lq3/a/x2/f;Le/a/c/a0/o;)V

    goto/16 :goto_3

    .line 15
    :cond_5
    iget-object v0, p1, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v3, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    .line 18
    iget-wide v4, p1, Le/a/c/q/f;->b:J

    .line 19
    iget-wide v6, p1, Le/a/c/q/f;->c:J

    .line 20
    invoke-virtual/range {v3 .. v8}, Le/a/c/c/d/d0;->X(JJLjava/util/List;)Lq3/a/x2/f;

    move-result-object p1

    .line 21
    new-instance v0, Le/a/c/a0/k;

    invoke-direct {v0, p1, p0}, Le/a/c/a0/k;-><init>(Lq3/a/x2/f;Le/a/c/a0/o;)V

    goto :goto_3

    .line 22
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 23
    :cond_7
    iget-object v3, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    .line 24
    iget-wide v4, p1, Le/a/c/q/f;->b:J

    .line 25
    iget-wide v6, p1, Le/a/c/q/f;->c:J

    .line 26
    invoke-virtual/range {v3 .. v8}, Le/a/c/c/d/d0;->Y(JJLjava/util/List;)Lq3/a/x2/f;

    move-result-object p1

    .line 27
    new-instance v0, Le/a/c/a0/j;

    invoke-direct {v0, p1, p0}, Le/a/c/a0/j;-><init>(Lq3/a/x2/f;Le/a/c/a0/o;)V

    goto :goto_3

    .line 28
    :cond_8
    iget-object v0, p1, Le/a/c/q/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    if-nez v1, :cond_e

    .line 30
    iget-boolean v0, p1, Le/a/c/q/f;->a:Z

    if-eqz v0, :cond_b

    .line 31
    iget-object v3, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    .line 32
    iget-wide v4, p1, Le/a/c/q/f;->b:J

    .line 33
    iget-wide v6, p1, Le/a/c/q/f;->c:J

    .line 34
    iget-object v8, p1, Le/a/c/q/f;->h:Ljava/lang/String;

    .line 35
    invoke-virtual/range {v3 .. v8}, Le/a/c/c/d/d0;->W(JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    .line 36
    new-instance v0, Le/a/c/a0/l;

    invoke-direct {v0, p1, p0}, Le/a/c/a0/l;-><init>(Lq3/a/x2/f;Le/a/c/a0/o;)V

    goto :goto_3

    .line 37
    :cond_b
    iget-object v0, p1, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_d

    if-ne v0, v2, :cond_c

    .line 39
    iget-object v3, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    .line 40
    iget-wide v4, p1, Le/a/c/q/f;->b:J

    .line 41
    iget-wide v6, p1, Le/a/c/q/f;->c:J

    .line 42
    iget-object v8, p1, Le/a/c/q/f;->h:Ljava/lang/String;

    .line 43
    invoke-virtual/range {v3 .. v8}, Le/a/c/c/d/d0;->Z(JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    .line 44
    new-instance v0, Le/a/c/a0/n;

    invoke-direct {v0, p1, p0}, Le/a/c/a0/n;-><init>(Lq3/a/x2/f;Le/a/c/a0/o;)V

    goto :goto_3

    .line 45
    :cond_c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 46
    :cond_d
    iget-object v0, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    .line 47
    iget-wide v1, p1, Le/a/c/q/f;->b:J

    .line 48
    iget-wide v3, p1, Le/a/c/q/f;->c:J

    .line 49
    iget-object v5, p1, Le/a/c/q/f;->h:Ljava/lang/String;

    .line 50
    invoke-virtual/range {v0 .. v5}, Le/a/c/c/d/d0;->a0(JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    .line 51
    new-instance v0, Le/a/c/a0/m;

    invoke-direct {v0, p1, p0}, Le/a/c/a0/m;-><init>(Lq3/a/x2/f;Le/a/c/a0/o;)V

    :goto_3
    return-object v0

    .line 52
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Searching with null search query"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(JLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/a0/o$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/a0/o$c;

    iget v1, v0, Le/a/c/a0/o$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/o$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/o$c;

    invoke-direct {v0, p0, p3}, Le/a/c/a0/o$c;-><init>(Le/a/c/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/a0/o$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/o$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a0/o$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/a0/o;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p3, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {p3}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object p3

    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2, p1, p2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {p3, v2}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/a/c/a0/o;->a:Le/a/c/c/d/d0;

    const-string p3, "startDate"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Le/a/c/a0/o$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a0/o$c;->e:I

    invoke-virtual {p2, p1, v0}, Le/a/c/c/d/d0;->s(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Ljava/util/List;

    const/4 p2, 0x0

    iput-object p2, v0, Le/a/c/a0/o$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a0/o$c;->e:I

    invoke-virtual {p1, p3, v0}, Le/a/c/a0/o;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method

.method public final e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a0/o$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a0/o$a;

    iget v1, v0, Le/a/c/a0/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/o$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a0/o$a;-><init>(Le/a/c/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a0/o$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/o$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/a0/o$a;->j:Ljava/lang/Object;

    iget-object v2, v0, Le/a/c/a0/o$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Le/a/c/a0/o$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, v0, Le/a/c/a0/o$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/a0/o;

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

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p0

    move-object v2, p1

    move-object v4, p2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 6
    iput-object v5, v0, Le/a/c/a0/o$a;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/a0/o$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/a0/o$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/o$a;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a0/o$a;->e:I

    .line 7
    iget-object v6, v5, Le/a/c/a0/o;->b:Le/a/c/w/o0/g;

    invoke-interface {v6, p2, v3, v0}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v4, p2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1, v3}, Le/a/m0/a1$k;->g1(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZI)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p1
.end method

.method public final f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a0/o$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a0/o$b;

    iget v1, v0, Le/a/c/a0/o$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/o$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/o$b;

    invoke-direct {v0, p0, p2}, Le/a/c/a0/o$b;-><init>(Le/a/c/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a0/o$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/o$b;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/c/a0/o$b;->k:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v2, v0, Le/a/c/a0/o$b;->j:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v0, Le/a/c/a0/o$b;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v5, v0, Le/a/c/a0/o$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Le/a/c/a0/o$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/a0/o;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a0/o$b;->j:Ljava/lang/Object;

    iget-object v2, v0, Le/a/c/a0/o$b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Le/a/c/a0/o$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Le/a/c/a0/o$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/a0/o;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p0

    move-object v2, p1

    move-object v5, p2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 6
    iput-object v6, v0, Le/a/c/a0/o$b;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/a0/o$b;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/a0/o$b;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/o$b;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a0/o$b;->e:I

    .line 7
    iget-object v7, v6, Le/a/c/a0/o;->b:Le/a/c/w/o0/g;

    invoke-interface {v7, p2, v3, v0}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 8
    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v5, p2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, p2

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 14
    move-object v2, p2

    check-cast v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 15
    iget-object p2, v6, Le/a/c/a0/o;->b:Le/a/c/w/o0/g;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v7

    iput-object v6, v0, Le/a/c/a0/o$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/o$b;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/a0/o$b;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/a0/o$b;->j:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/o$b;->k:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a0/o$b;->e:I

    invoke-interface {p2, v5, v7, v0}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, p1

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v2, p2}, Le/a/m0/a1$k;->f1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v5

    goto :goto_3

    .line 16
    :cond_8
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
