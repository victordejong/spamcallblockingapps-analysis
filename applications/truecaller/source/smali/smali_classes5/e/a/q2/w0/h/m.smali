.class public final Le/a/q2/w0/h/m;
.super Landroid/telecom/Call$Callback;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/j;


# instance fields
.field public a:Lcom/truecaller/analytics/call/CallDirection;

.field public b:Lcom/truecaller/analytics/call/CallAnswered;

.field public c:Ljava/lang/String;

.field public d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:J

.field public h:Ljava/lang/Long;

.field public i:Lq3/a/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n0<",
            "+",
            "Lcom/truecaller/analytics/call/BlockingAction;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ls1/w/f;

.field public final k:Le/a/f/y/x;

.field public final l:Le/a/p5/c;

.field public final m:Le/a/q2/w0/h/h;

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/f/y/x;Le/a/p5/c;Le/a/q2/w0/h/h;Lo3/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/f/y/x;",
            "Le/a/p5/c;",
            "Le/a/q2/w0/h/h;",
            "Lo3/a<",
            "Le/a/q2/w0/h/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneCall"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initPointProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    iput-object p1, p0, Le/a/q2/w0/h/m;->j:Ls1/w/f;

    iput-object p2, p0, Le/a/q2/w0/h/m;->k:Le/a/f/y/x;

    iput-object p3, p0, Le/a/q2/w0/h/m;->l:Le/a/p5/c;

    iput-object p4, p0, Le/a/q2/w0/h/m;->m:Le/a/q2/w0/h/h;

    iput-object p5, p0, Le/a/q2/w0/h/m;->n:Lo3/a;

    .line 2
    sget-object p1, Lcom/truecaller/analytics/call/CallDirection;->OUTGOING:Lcom/truecaller/analytics/call/CallDirection;

    iput-object p1, p0, Le/a/q2/w0/h/m;->a:Lcom/truecaller/analytics/call/CallDirection;

    .line 3
    sget-object p1, Lcom/truecaller/analytics/call/CallAnswered;->NO:Lcom/truecaller/analytics/call/CallAnswered;

    iput-object p1, p0, Le/a/q2/w0/h/m;->b:Lcom/truecaller/analytics/call/CallAnswered;

    .line 4
    invoke-interface {p3}, Le/a/p5/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/q2/w0/h/m;->g:J

    .line 5
    invoke-static {p2}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Le/a/q2/w0/h/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, p0, Le/a/q2/w0/h/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->h:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/q2/w0/h/m;->l:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le/a/q2/w0/h/m;->h:Ljava/lang/Long;

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/q2/w0/h/m;->k:Le/a/f/y/x;

    .line 4
    iget-object p1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 5
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7
    iget-object p1, p0, Le/a/q2/w0/h/m;->l:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 8
    iget-object p1, p0, Le/a/q2/w0/h/m;->l:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 10
    iput-object v0, p0, Le/a/q2/w0/h/m;->h:Ljava/lang/Long;

    :cond_5
    return-void
.end method

.method public b()Lcom/truecaller/analytics/call/CallDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->a:Lcom/truecaller/analytics/call/CallDirection;

    return-object v0
.end method

.method public c(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/q2/w0/h/m;->d:Ls1/z/b/a;

    return-void
.end method

.method public d()Lcom/truecaller/analytics/call/CallAnswered;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->b:Lcom/truecaller/analytics/call/CallAnswered;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Le/a/f/y/x;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->k:Le/a/f/y/x;

    return-object v0
.end method

.method public g(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/q2/w0/h/m;->e:Ls1/z/b/a;

    return-void
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->k:Le/a/f/y/x;

    .line 2
    invoke-static {v0}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/analytics/call/BlockingAction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/q2/w0/h/m$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/q2/w0/h/m$a;

    iget v1, v0, Le/a/q2/w0/h/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q2/w0/h/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q2/w0/h/m$a;

    invoke-direct {v0, p0, p1}, Le/a/q2/w0/h/m$a;-><init>(Le/a/q2/w0/h/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/q2/w0/h/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q2/w0/h/m$a;->e:I

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
    iget-object p1, p0, Le/a/q2/w0/h/m;->i:Lq3/a/n0;

    if-eqz p1, :cond_4

    iput v3, v0, Le/a/q2/w0/h/m$a;->e:I

    invoke-interface {p1, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/analytics/call/BlockingAction;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->NONE:Lcom/truecaller/analytics/call/BlockingAction;

    :goto_2
    return-object p1
.end method

.method public i()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->h:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/q2/w0/h/m;->l:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->k:Le/a/f/y/x;

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-virtual {v0, p0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 4
    iget-object v0, p0, Le/a/q2/w0/h/m;->k:Le/a/f/y/x;

    .line 5
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 6
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Le/a/q2/w0/h/m;->onStateChanged(Landroid/telecom/Call;I)V

    return-void
.end method

.method public k()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/w0/h/m;->l:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/q2/w0/h/m;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Le/a/m0/a1$k;->b0(Landroid/telecom/Call;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/q2/w0/h/m;->e:Ls1/z/b/a;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 4
    :cond_1
    invoke-virtual {p1, p0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Le/a/m0/a1$k;->b0(Landroid/telecom/Call;)Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    iget v0, p0, Le/a/q2/w0/h/m;->f:I

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput p2, p0, Le/a/q2/w0/h/m;->f:I

    const/4 v0, 0x2

    const-string v1, "<set-?>"

    if-eq p2, v0, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const/4 p1, 0x7

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Le/a/q2/w0/h/m;->a(Z)V

    .line 5
    iget-object p1, p0, Le/a/q2/w0/h/m;->d:Ls1/z/b/a;

    if-eqz p1, :cond_5

    .line 6
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    .line 7
    :cond_3
    sget-object p1, Lcom/truecaller/analytics/call/CallAnswered;->YES:Lcom/truecaller/analytics/call/CallAnswered;

    .line 8
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Le/a/q2/w0/h/m;->b:Lcom/truecaller/analytics/call/CallAnswered;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Le/a/q2/w0/h/m;->a(Z)V

    goto :goto_0

    .line 11
    :cond_4
    sget-object p2, Lcom/truecaller/analytics/call/CallDirection;->INCOMING:Lcom/truecaller/analytics/call/CallDirection;

    .line 12
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Le/a/q2/w0/h/m;->a:Lcom/truecaller/analytics/call/CallDirection;

    .line 14
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/q2/w0/h/m;->j:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/q2/w0/h/m$b;

    const/4 p2, 0x0

    invoke-direct {v5, p0, p1, p2}, Le/a/q2/w0/h/m$b;-><init>(Le/a/q2/w0/h/m;Landroid/telecom/Call;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    iput-object p1, p0, Le/a/q2/w0/h/m;->i:Lq3/a/n0;

    :cond_5
    :goto_0
    return-void
.end method
