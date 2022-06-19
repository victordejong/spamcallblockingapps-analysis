.class public abstract Le/a/c/c/d/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/c/d/d0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c0(Le/a/c/c/d/d0;Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Le/a/c/c/d/d0$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/c/d/d0$c;

    iget v1, v0, Le/a/c/c/d/d0$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/d/d0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/d/d0$c;

    invoke-direct {v0, p0, p3}, Le/a/c/c/d/d0$c;-><init>(Le/a/c/c/d/d0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/c/d/d0$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/d/d0$c;->e:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/s;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/s;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/s;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object p0, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/m0;

    iget-object p1, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/c/d/s;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    iget-object p0, v0, Le/a/c/c/d/d0$c;->i:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/m0;

    iget-object p1, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    check-cast p1, Le/a/c/c/d/s;

    iget-object p2, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    check-cast p2, Le/a/c/c/d/d0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    iget-object p0, v0, Le/a/c/c/d/d0$c;->i:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Le/a/c/c/d/m0;

    iget-object p0, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le/a/c/c/d/s;

    iget-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/d0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/d/d0$c;->i:Ljava/lang/Object;

    const/4 p3, 0x1

    iput p3, v0, Le/a/c/c/d/d0$c;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/d/s;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    return-object v1

    .line 5
    :cond_1
    :goto_1
    iput-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/d/d0$c;->i:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Le/a/c/c/d/d0$c;->e:I

    invoke-virtual {p0, v0}, Le/a/c/c/d/d0;->d0(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    return-object v1

    :cond_2
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    .line 6
    :goto_2
    iput-object p1, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    iput-object p0, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/c/d/d0$c;->i:Ljava/lang/Object;

    const/4 p3, 0x3

    iput p3, v0, Le/a/c/c/d/d0$c;->e:I

    invoke-virtual {p2, v0}, Le/a/c/c/d/d0;->e0(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_3
    const-string p2, "INSIGHTS.LINKING"

    const-string p3, "INSIGHTS.PRUNING"

    const-string v2, "INSIGHTS.RESYNC"

    .line 7
    filled-new-array {p2, p3, v2}, [Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p1, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/c/d/d0$c;->h:Ljava/lang/Object;

    const/4 p3, 0x4

    iput p3, v0, Le/a/c/c/d/d0$c;->e:I

    .line 9
    invoke-interface {p0, p2, v0}, Le/a/c/c/d/m0;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object p0, p1

    .line 10
    :goto_4
    iput-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, v0, Le/a/c/c/d/d0$c;->e:I

    invoke-interface {p0, v0}, Le/a/c/c/d/s;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_5
    iput-object p0, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v0, Le/a/c/c/d/d0$c;->e:I

    invoke-interface {p0, v0}, Le/a/c/c/d/s;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 12
    :cond_6
    :goto_6
    iput-object v3, v0, Le/a/c/c/d/d0$c;->g:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, v0, Le/a/c/c/d/d0$c;->e:I

    invoke-interface {p0, v0}, Le/a/c/c/d/s;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    .line 13
    :cond_7
    :goto_7
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static e(Le/a/c/c/d/d0;Ljava/util/List;Le/a/c/c/d/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Le/a/c/c/d/d0$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/c/d/d0$b;

    iget v1, v0, Le/a/c/c/d/d0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/d/d0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/d/d0$b;

    invoke-direct {v0, p0, p3}, Le/a/c/c/d/d0$b;-><init>(Le/a/c/c/d/d0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/c/d/d0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/d/d0$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/c/c/d/d0$b;->i:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Le/a/c/c/d/c;

    iget-object p0, v0, Le/a/c/c/d/d0$b;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Le/a/c/c/d/d0$b;->g:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/d0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/c/c/d/d0$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/d/d0$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/d/d0$b;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/c/c/d/d0$b;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/c/c/d/d0;->j(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 6
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->i(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->h(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->b(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->f(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, p1, p3}, Le/a/c/c/d/d0;->k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/c/c/d/d0$a;

    .line 13
    iget v1, v1, Le/a/c/c/d/d0$a;->a:I

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Le/a/c/c/d/d0$a;

    .line 19
    iget-wide v0, v0, Le/a/c/c/d/d0$a;->b:J

    .line 20
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 21
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p3, p0

    .line 23
    :goto_5
    invoke-interface {p2, p3}, Le/a/c/c/d/c;->a(Ljava/util/List;)V

    .line 24
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method


# virtual methods
.method public abstract A(Ljava/util/Date;JLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract B(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract C(Ljava/util/Date;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract D(JLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract E(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract F(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract G(J)Lcom/truecaller/insights/models/pdo/ExtendedPdo;
.end method

.method public abstract H(JILs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract I(JJJLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract J(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract K(Ljava/util/List;JILs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract L(Ljava/util/List;JJJLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract M(Ljava/util/List;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract N(Ljava/lang/String;JLjava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract O(JLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract P(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Q(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract R(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)J
.end method

.method public abstract S(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract T(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public U(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pdoList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->T(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public abstract V(JJLjava/util/List;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract W(JJLjava/lang/String;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract X(JJLjava/util/List;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract Y(JJLjava/util/List;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract Z(JJLjava/lang/String;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a0(JJLjava/lang/String;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public b0(Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/c/d/s;",
            "Le/a/c/c/d/m0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Le/a/c/c/d/d0;->c0(Le/a/c/c/d/d0;Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public d(Ljava/util/List;Le/a/c/c/d/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Le/a/c/c/d/c;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Le/a/c/c/d/d0;->e(Le/a/c/c/d/d0;Ljava/util/List;Le/a/c/c/d/c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract d0(Ls1/w/d;)Ljava/lang/Object;
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
.end method

.method public abstract e0(Ls1/w/d;)Ljava/lang/Object;
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
.end method

.method public abstract f(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract f0(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract g(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract g0()V
.end method

.method public abstract h(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public h0(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->l0(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->g(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->c(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->f0(Ljava/util/List;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public abstract i(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract i0()V
.end method

.method public abstract j(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public j0(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
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

    const-string p1, "ORIGINAL"

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/c/d/d0;->k0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/c/c/d/d0;->i0()V

    .line 3
    invoke-virtual {p0}, Le/a/c/c/d/d0;->g0()V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public abstract k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/c/c/d/d0$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract k0(Ljava/lang/String;)V
.end method

.method public abstract l(Ljava/util/Date;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l0(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract m()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract m0(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract n0(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract o()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p(Ljava/util/Date;Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract r(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract t(Ljava/util/Date;Ljava/util/List;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract u(Ljava/util/Date;Ljava/util/List;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract v(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract w(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract x(JJLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract y(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract z(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
