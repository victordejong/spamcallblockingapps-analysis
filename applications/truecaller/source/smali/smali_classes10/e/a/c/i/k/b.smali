.class public final Le/a/c/i/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/k/a;


# instance fields
.field public final a:Le/a/c/c/d/h0;

.field public final b:Le/a/c/c/d/d0;

.field public final c:Le/a/c/c/f/n;

.field public final d:Le/a/a/t;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/d/h0;Le/a/c/c/d/d0;Le/a/c/c/f/n;Le/a/a/t;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderResolutionDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdoDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchContactContract"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    iput-object p2, p0, Le/a/c/i/k/b;->b:Le/a/c/c/d/d0;

    iput-object p3, p0, Le/a/c/i/k/b;->c:Le/a/c/c/f/n;

    iput-object p4, p0, Le/a/c/i/k/b;->d:Le/a/a/t;

    iput-object p5, p0, Le/a/c/i/k/b;->e:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/h/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/b$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/b$c;

    iget v1, v0, Le/a/c/i/k/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$c;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/b$c;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/i/k/b$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/h/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/i/k/b$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/i/k/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    invoke-virtual {p2, p1}, Le/a/c/c/d/h0;->a(Ljava/lang/String;)Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5
    invoke-virtual {p0, p2}, Le/a/c/i/k/b;->f(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2}, Le/a/c/i/k/b;->e(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    new-instance p1, Le/a/c/h/j;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;->getSender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;->getSenderIconUri()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Le/a/c/h/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_5
    :goto_1
    new-instance p2, Le/a/c/i/k/b$d;

    invoke-direct {p2, p0, p1}, Le/a/c/i/k/b$d;-><init>(Le/a/c/i/k/b;Ljava/lang/String;)V

    iput-object p0, v0, Le/a/c/i/k/b$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/k/b$c;->e:I

    invoke-virtual {p0, p2, v0}, Le/a/c/i/k/b;->l(Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p0

    .line 8
    :goto_2
    check-cast p2, Le/a/c/h/j;

    if-eqz p2, :cond_8

    .line 9
    iput-object p2, v0, Le/a/c/i/k/b$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/k/b$c;->e:I

    invoke-virtual {p1, p2, v0}, Le/a/c/i/k/b;->h(Le/a/c/h/j;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p2

    :goto_3
    move-object p2, p1

    :cond_8
    return-object p2
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 14
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/c/i/k/b$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/c/i/k/b$a;

    iget v2, v1, Le/a/c/i/k/b$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/k/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/k/b$a;

    invoke-direct {v1, p0, p1}, Le/a/c/i/k/b$a;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/c/i/k/b$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/c/i/k/b$a;->e:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/i/k/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v3, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/i/k/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v3, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/i/k/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    iput v7, v1, Le/a/c/i/k/b$a;->e:I

    invoke-virtual {p0, v1}, Le/a/c/i/k/b;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v3, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/Date;

    .line 6
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_3

    .line 7
    :cond_8
    iput-object v3, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    iput v6, v1, Le/a/c/i/k/b$a;->e:I

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Bank"

    const-string v9, "Bill"

    const-string v10, "Travel"

    const-string v11, "Delivery"

    const-string v12, "OTP"

    const-string v13, "Event"

    .line 9
    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11
    iget-object v6, v3, Le/a/c/i/k/b;->b:Le/a/c/c/d/d0;

    invoke-virtual {v6, p1, v1}, Le/a/c/c/d/d0;->w(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    .line 12
    :cond_9
    :goto_2
    check-cast p1, Ljava/util/Date;

    :goto_3
    if-eqz p1, :cond_b

    .line 13
    new-instance v6, Lw3/b/a/b;

    invoke-direct {v6}, Lw3/b/a/b;-><init>()V

    const/16 v7, 0x14

    .line 14
    invoke-virtual {v6, v7}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v6

    const-string v7, "lastFreshEntry"

    .line 15
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x19

    iput-object v3, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/c/i/k/b$a;->e:I

    invoke-virtual {v3, p1, v6, v7, v1}, Le/a/c/i/k/b;->j(Ljava/util/Date;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_a

    return-object v2

    :cond_a
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 16
    iput-object p1, v1, Le/a/c/i/k/b$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/c/i/k/b$a;->e:I

    const-string p1, "0"

    invoke-virtual {v3, p1, v1}, Le/a/c/i/k/b;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    :cond_b
    :goto_5
    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    new-instance v0, Le/a/c/i/k/b$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/i/k/b$l;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Le/a/c/i/k/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/k/b$b;

    iget v1, v0, Le/a/c/i/k/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$b;

    invoke-direct {v0, p0, p1}, Le/a/c/i/k/b$b;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/k/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$b;->e:I

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
    iget-object p1, p0, Le/a/c/i/k/b;->c:Le/a/c/c/f/n;

    iput v3, v0, Le/a/c/i/k/b$b;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 6
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_7

    .line 8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 9
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v1, p1

    :cond_7
    return-object v1
.end method

.method public final e(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;->getSenderName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;->getSenderIconUri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-eqz p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public final f(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;->getUpdatedAt()Ljava/util/Date;

    move-result-object p1

    .line 2
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const/16 v1, 0x14

    .line 3
    invoke-virtual {v0, v1}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/h/j;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/b$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/b$e;

    iget v1, v0, Le/a/c/i/k/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$e;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/b$e;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/b$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Le/a/c/h/j;

    .line 7
    new-instance v12, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;

    .line 8
    iget-object v5, v2, Le/a/c/h/j;->a:Ljava/lang/String;

    .line 9
    iget-object v6, v2, Le/a/c/h/j;->b:Ljava/lang/String;

    .line 10
    iget-object v7, v2, Le/a/c/h/j;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v4, v12

    .line 11
    invoke-direct/range {v4 .. v11}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILs1/z/c/f;)V

    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    iput v3, v0, Le/a/c/i/k/b$e;->e:I

    invoke-virtual {p1, p2, v0}, Le/a/c/c/d/h0;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    return-object v1

    .line 13
    :cond_4
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 14
    :catchall_0
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance p2, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->INSIGHTS_DB_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {p2, v0}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public h(Le/a/c/h/j;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/h/j;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/b$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/b$f;

    iget v1, v0, Le/a/c/i/k/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$f;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/b$f;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$f;->e:I

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
    iget-object p2, p0, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    .line 5
    iget-object v2, p1, Le/a/c/h/j;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v2}, Le/a/c/c/d/h0;->a(Ljava/lang/String;)Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;

    move-result-object p2

    if-nez p2, :cond_3

    .line 7
    new-instance p2, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;

    .line 8
    iget-object v5, p1, Le/a/c/h/j;->a:Ljava/lang/String;

    .line 9
    iget-object v6, p1, Le/a/c/h/j;->b:Ljava/lang/String;

    .line 10
    iget-object v7, p1, Le/a/c/h/j;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v4, p2

    .line 11
    invoke-direct/range {v4 .. v11}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILs1/z/c/f;)V

    .line 12
    iget-object p1, p0, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    iput v3, v0, Le/a/c/i/k/b$f;->e:I

    invoke-virtual {p1, p2, v0}, Le/a/c/c/d/h0;->c(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 13
    :cond_3
    invoke-virtual {p0, p2}, Le/a/c/i/k/b;->f(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Le/a/c/i/k/b;->e(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    :cond_4
    iget-object p2, p0, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    .line 15
    iget-object v0, p1, Le/a/c/h/j;->a:Ljava/lang/String;

    .line 16
    iget-object v1, p1, Le/a/c/h/j;->b:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Le/a/c/h/j;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v0, v1, p1}, Le/a/c/c/d/h0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/b$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/b$g;

    iget v1, v0, Le/a/c/i/k/b$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$g;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/b$g;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/b$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/i/k/b$g;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Le/a/c/i/k/b$g;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/k/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;

    .line 7
    invoke-virtual {v2}, Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_4
    new-instance p1, Le/a/c/i/k/b$h;

    invoke-direct {p1, p0, p2}, Le/a/c/i/k/b$h;-><init>(Le/a/c/i/k/b;Ljava/util/List;)V

    iput-object p0, v0, Le/a/c/i/k/b$g;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/i/k/b$g;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/k/b$g;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/c/i/k/b;->l(Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 9
    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/c/h/j;

    .line 12
    iget-object v7, v7, Le/a/c/h/j;->b:Ljava/lang/String;

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    .line 13
    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    .line 17
    iput-object p1, v0, Le/a/c/i/k/b$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/k/b$g;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/k/b$g;->e:I

    invoke-virtual {v2, v5, v0}, Le/a/c/i/k/b;->g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    return-object p2
.end method

.method public final j(Ljava/util/Date;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Le/a/c/i/k/b$i;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/i/k/b$i;

    iget v2, v1, Le/a/c/i/k/b$i;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/k/b$i;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/k/b$i;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/c/i/k/b$i;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/i/k/b$i;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/c/i/k/b$i;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v9, :cond_1

    iget-boolean v4, v1, Le/a/c/i/k/b$i;->n:Z

    iget-wide v10, v1, Le/a/c/i/k/b$i;->l:J

    iget v12, v1, Le/a/c/i/k/b$i;->k:I

    iget v13, v1, Le/a/c/i/k/b$i;->j:I

    iget-object v14, v1, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    check-cast v14, Ljava/util/Date;

    iget-object v15, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    check-cast v15, Ljava/util/Date;

    iget-object v9, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/k/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v14

    const/4 v7, 0x4

    move v14, v13

    move v13, v8

    move-object v8, v15

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-wide v9, v1, Le/a/c/i/k/b$i;->m:J

    iget-boolean v4, v1, Le/a/c/i/k/b$i;->n:Z

    iget-wide v11, v1, Le/a/c/i/k/b$i;->l:J

    iget v13, v1, Le/a/c/i/k/b$i;->k:I

    iget v14, v1, Le/a/c/i/k/b$i;->j:I

    iget-object v15, v1, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    check-cast v15, Ljava/util/Date;

    iget-object v8, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Date;

    iget-object v7, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/i/k/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v0, v13

    move-object v5, v15

    const/4 v13, 0x3

    goto/16 :goto_5

    :cond_3
    iget-wide v7, v1, Le/a/c/i/k/b$i;->l:J

    iget v4, v1, Le/a/c/i/k/b$i;->j:I

    iget-object v9, v1, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/Date;

    iget-object v11, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/i/k/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v14, v4

    const/4 v12, 0x2

    move-wide/from16 v16, v7

    move-object v8, v10

    move-object v7, v11

    move-wide/from16 v10, v16

    goto/16 :goto_3

    :cond_4
    iget-wide v7, v1, Le/a/c/i/k/b$i;->l:J

    iget v4, v1, Le/a/c/i/k/b$i;->j:I

    iget-object v9, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Date;

    iget-object v10, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/i/k/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v7, 0x1f4

    move-object/from16 v0, p1

    move-object v4, v1

    move-object v10, v2

    move-wide v8, v7

    move-object/from16 v1, p2

    move-object v7, v3

    move/from16 v3, p3

    .line 4
    :goto_1
    iget-object v11, v10, Le/a/c/i/k/b;->a:Le/a/c/c/d/h0;

    iput-object v10, v4, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    iput-object v5, v4, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    iput v3, v4, Le/a/c/i/k/b$i;->j:I

    iput-wide v8, v4, Le/a/c/i/k/b$i;->l:J

    iput v6, v4, Le/a/c/i/k/b$i;->e:I

    invoke-virtual {v11, v0, v1, v3, v4}, Le/a/c/c/d/h0;->b(Ljava/util/Date;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    move-wide/from16 v16, v8

    move-object v9, v1

    move-object v1, v4

    move v4, v3

    move-object v3, v7

    move-wide/from16 v7, v16

    .line 5
    :goto_2
    check-cast v0, Ljava/util/List;

    .line 6
    new-instance v11, Le/a/c/i/k/b$j;

    invoke-direct {v11, v10, v0, v5}, Le/a/c/i/k/b$j;-><init>(Le/a/c/i/k/b;Ljava/util/List;Ls1/w/d;)V

    iput-object v10, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    iput-object v9, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    iput-object v0, v1, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/c/i/k/b$i;->j:I

    iput-wide v7, v1, Le/a/c/i/k/b$i;->l:J

    const/4 v12, 0x2

    iput v12, v1, Le/a/c/i/k/b$i;->e:I

    invoke-static {v11, v1}, Le/a/m0/a1$k;->t(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_7

    return-object v3

    :cond_7
    move v14, v4

    move-object/from16 v16, v9

    move-object v9, v0

    move-object v0, v11

    move-wide/from16 v17, v7

    move-object/from16 v8, v16

    move-object v7, v10

    move-wide/from16 v10, v17

    :goto_3
    check-cast v0, Ls1/k;

    .line 7
    iget-object v4, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 9
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 11
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 12
    invoke-static {v9}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;->getDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    new-instance v9, Ljava/util/Date;

    const-wide/16 v12, 0x0

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    :goto_4
    if-eqz v4, :cond_a

    .line 13
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    iput-object v7, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    iput-object v8, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    iput-object v9, v1, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    iput v14, v1, Le/a/c/i/k/b$i;->j:I

    iput v0, v1, Le/a/c/i/k/b$i;->k:I

    iput-wide v10, v1, Le/a/c/i/k/b$i;->l:J

    iput-boolean v4, v1, Le/a/c/i/k/b$i;->n:Z

    iput-wide v5, v1, Le/a/c/i/k/b$i;->m:J

    const/4 v13, 0x3

    iput v13, v1, Le/a/c/i/k/b$i;->e:I

    invoke-virtual {v7, v12, v1}, Le/a/c/i/k/b;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_9

    return-object v3

    :cond_9
    move-wide v11, v10

    move-wide/from16 v16, v5

    move-object v5, v9

    move-wide/from16 v9, v16

    :goto_5
    move-wide/from16 v16, v11

    move v12, v0

    move-object v0, v5

    move-wide v5, v9

    move-wide/from16 v10, v16

    :goto_6
    move-object v9, v7

    goto :goto_7

    :cond_a
    const/4 v13, 0x3

    move v12, v0

    move-object v0, v9

    goto :goto_6

    :goto_7
    cmp-long v7, v5, v10

    if-gez v7, :cond_b

    sub-long v5, v10, v5

    .line 14
    iput-object v9, v1, Le/a/c/i/k/b$i;->g:Ljava/lang/Object;

    iput-object v8, v1, Le/a/c/i/k/b$i;->h:Ljava/lang/Object;

    iput-object v0, v1, Le/a/c/i/k/b$i;->i:Ljava/lang/Object;

    iput v14, v1, Le/a/c/i/k/b$i;->j:I

    iput v12, v1, Le/a/c/i/k/b$i;->k:I

    iput-wide v10, v1, Le/a/c/i/k/b$i;->l:J

    iput-boolean v4, v1, Le/a/c/i/k/b$i;->n:Z

    const/4 v7, 0x4

    iput v7, v1, Le/a/c/i/k/b$i;->e:I

    invoke-static {v5, v6, v1}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_c

    return-object v3

    :cond_b
    const/4 v7, 0x4

    :cond_c
    :goto_8
    move-object v6, v3

    move v5, v4

    move v3, v14

    move-object v4, v1

    move-object v1, v8

    move-wide/from16 v16, v10

    move-object v10, v9

    move-wide/from16 v8, v16

    if-eqz v5, :cond_e

    if-ge v12, v3, :cond_d

    goto :goto_9

    :cond_d
    move-object v7, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 15
    :cond_e
    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/b$k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/b$k;

    iget v1, v0, Le/a/c/i/k/b$k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$k;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$k;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/b$k;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/b$k;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$k;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p1, v0, Le/a/c/i/k/b$k;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/c/i/k/b$k;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/k/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/i/k/b;->c:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/i/k/b$k;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/k/b$k;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/k/b$k;->e:I

    invoke-interface {p2, v0}, Le/a/c/c/f/n;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/truecaller/insights/models/states/InsightState;

    .line 6
    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 7
    iget-object p1, v2, Le/a/c/i/k/b;->c:Le/a/c/c/f/n;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/i/k/b$k;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/k/b$k;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/k/b$k;->e:I

    invoke-interface {p1, p2, v0}, Le/a/c/c/f/n;->g(Lcom/truecaller/insights/models/states/InsightState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 8
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic l(Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TR;>;",
            "Ls1/w/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/k/b$m;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/k/b$m;

    iget v1, v0, Le/a/c/i/k/b$m;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/k/b$m;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/k/b$m;

    invoke-direct {v0, p0, p2}, Le/a/c/i/k/b$m;-><init>(Le/a/c/i/k/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/k/b$m;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/k/b$m;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p2, p0, Le/a/c/i/k/b;->e:Ls1/w/f;

    new-instance v2, Le/a/c/i/k/b$n;

    const/4 v5, 0x0

    invoke-direct {v2, p1, v5}, Le/a/c/i/k/b$n;-><init>(Ls1/z/b/a;Ls1/w/d;)V

    iput v4, v0, Le/a/c/i/k/b$m;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lq3/a/n0;

    iput v3, v0, Le/a/c/i/k/b$m;->e:I

    invoke-interface {p2, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method
