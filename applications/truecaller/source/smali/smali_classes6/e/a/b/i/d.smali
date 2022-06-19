.class public final Le/a/b/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/i/c;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/b/e;

.field public final b:Le/a/b/i/i/a;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b/e;Le/a/u3/g;Le/a/b/i/i/a;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bizmonManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "enterpriseFeedbackRepository"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "asyncContext"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/i/d;->a:Le/a/b/e;

    iput-object p3, p0, Le/a/b/i/d;->b:Le/a/b/i/i/a;

    iput-object p4, p0, Le/a/b/i/d;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/b/i/d$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/b/i/d$b;

    iget v1, v0, Le/a/b/i/d$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b/i/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b/i/d$b;

    invoke-direct {v0, p0, p4}, Le/a/b/i/d$b;-><init>(Le/a/b/i/d;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/b/i/d$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b/i/d$b;->e:I

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
    iget-object p4, p0, Le/a/b/i/d;->b:Le/a/b/i/i/a;

    iput v3, v0, Le/a/b/i/d$b;->e:I

    move-object v5, p4

    check-cast v5, Le/a/b/i/i/d;

    .line 5
    iget-object p4, v5, Le/a/b/i/i/d;->e:Ls1/w/f;

    new-instance v2, Le/a/b/i/i/c;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v6, p1

    move-object v7, p3

    move v8, p2

    invoke-direct/range {v4 .. v9}, Le/a/b/i/i/c;-><init>(Le/a/b/i/i/d;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    invoke-static {p4, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p4, Le/a/b/i/j/b/a;

    if-eqz p4, :cond_4

    .line 7
    iget-boolean p1, p4, Le/a/b/i/j/b/a;->b:Z

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 9
    :goto_2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/bizmon/callMeBack/data/models/CallMeBackResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/i/d;->b:Le/a/b/i/i/a;

    check-cast v0, Le/a/b/i/i/d;

    .line 2
    iget-object v1, v0, Le/a/b/i/i/d;->e:Ls1/w/f;

    new-instance v2, Le/a/b/i/i/b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Le/a/b/i/i/b;-><init>(Le/a/b/i/i/d;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 6

    .line 1
    new-instance v3, Le/a/b/i/d$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/b/i/d$a;-><init>(Le/a/b/i/d;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/i/d;->a:Le/a/b/e;

    invoke-interface {v0}, Le/a/b/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEvent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

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
    if-nez v0, :cond_2

    invoke-static {p1}, Le/a/m0/a1$k;->J0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    iget p1, p2, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/i/d;->a:Le/a/b/e;

    invoke-interface {v0, p1}, Le/a/b/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/i/d;->c:Ls1/w/f;

    return-object v0
.end method
