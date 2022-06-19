.class public final Le/a/c/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b/l;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/c/c/f/n;

.field public final c:Le/a/c/c0/o;

.field public final d:Le/a/c/i/b/a;

.field public final e:Le/a/c/b/e;

.field public final f:Le/a/c/b/j;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/f/n;Le/a/c/c0/o;Le/a/c/i/b/a;Le/a/c/b/e;Le/a/c/b/j;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseSeedStore"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b/m;->b:Le/a/c/c/f/n;

    iput-object p2, p0, Le/a/c/b/m;->c:Le/a/c/c0/o;

    iput-object p3, p0, Le/a/c/b/m;->d:Le/a/c/i/b/a;

    iput-object p4, p0, Le/a/c/b/m;->e:Le/a/c/b/e;

    iput-object p5, p0, Le/a/c/b/m;->f:Le/a/c/b/j;

    iput-object p6, p0, Le/a/c/b/m;->g:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/c/b/m$g;

    invoke-direct {p1, p0}, Le/a/c/b/m$g;-><init>(Le/a/c/b/m;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/b/m;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b/m$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b/m$h;

    iget v1, v0, Le/a/c/b/m$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b/m$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b/m$h;

    invoke-direct {v0, p0, p1}, Le/a/c/b/m$h;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b/m$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b/m$h;->e:I

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
    iget-object p1, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v2, Le/a/c/b/m$i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/c/b/m$i;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    iput v3, v0, Le/a/c/b/m$h;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    .line 6
    new-instance v0, Le/a/c/b/n;

    .line 7
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    invoke-direct {v0, v1, v2}, Le/a/c/b/n;-><init>(Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/b/m;->c:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->V()I

    move-result p1

    .line 2
    new-instance v0, Le/a/c/b/n;

    .line 3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x3

    .line 4
    invoke-direct {v0, v1, p1}, Le/a/c/b/n;-><init>(Ljava/lang/Integer;I)V

    .line 5
    invoke-virtual {v0}, Le/a/c/b/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/c/b/m;->c:Le/a/c/c0/o;

    invoke-interface {v1, p1}, Le/a/c/c0/o;->e(I)V

    :cond_0
    return-object v0
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b/m$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b/m$c;

    iget v1, v0, Le/a/c/b/m$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b/m$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b/m$c;

    invoke-direct {v0, p0, p1}, Le/a/c/b/m$c;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b/m$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b/m$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/b/m$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/b/m;

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
    iget-object p1, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v2, Le/a/c/b/m$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/c/b/m$d;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    iput-object p0, v0, Le/a/c/b/m$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/b/m$c;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    .line 6
    invoke-virtual {v0, p1, v3}, Le/a/c/b/m;->i(Lcom/truecaller/insights/models/states/InsightState;I)Le/a/c/b/n;

    move-result-object p1

    return-object p1
.end method

.method public d(ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v1, Le/a/c/b/m$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/c/b/m$m;-><init>(Le/a/c/b/m;ILs1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b/m$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b/m$k;

    iget v1, v0, Le/a/c/b/m$k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b/m$k;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b/m$k;

    invoke-direct {v0, p0, p1}, Le/a/c/b/m$k;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b/m$k;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b/m$k;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

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
    iget-object p1, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v2, Le/a/c/b/m$l;

    invoke-direct {v2, p0, v4}, Le/a/c/b/m$l;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    iput v3, v0, Le/a/c/b/m$k;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    new-instance v0, Le/a/c/b/n;

    invoke-static {p1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/c/b/n;-><init>(Ljava/lang/Integer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :catch_0
    :cond_4
    return-object v4
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b/m$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b/m$a;

    iget v1, v0, Le/a/c/b/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b/m$a;

    invoke-direct {v0, p0, p1}, Le/a/c/b/m$a;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b/m$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/b/m$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/b/m;

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
    iget-object p1, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v2, Le/a/c/b/m$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/c/b/m$b;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    iput-object p0, v0, Le/a/c/b/m$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/b/m$a;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, p1, v1}, Le/a/c/b/m;->i(Lcom/truecaller/insights/models/states/InsightState;I)Le/a/c/b/n;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/b/m;->f:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->n()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Le/a/c/b/n;

    .line 2
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 3
    invoke-direct {p1, v0, v1}, Le/a/c/b/n;-><init>(Ljava/lang/Integer;I)V

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/c/b/m;->c:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->W()I

    move-result p1

    const/4 v0, 0x5

    .line 5
    iget-object v1, p0, Le/a/c/b/m;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    move v0, v1

    .line 6
    :cond_1
    new-instance v1, Le/a/c/b/n;

    .line 7
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 8
    invoke-direct {v1, v2, v0}, Le/a/c/b/n;-><init>(Ljava/lang/Integer;I)V

    .line 9
    invoke-virtual {v1}, Le/a/c/b/n;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/c/b/m;->c:Le/a/c/c0/o;

    invoke-interface {p1, v0}, Le/a/c/c0/o;->j(I)V

    :cond_2
    return-object v1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b/m$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b/m$e;

    iget v1, v0, Le/a/c/b/m$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b/m$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b/m$e;

    invoke-direct {v0, p0, p1}, Le/a/c/b/m$e;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b/m$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b/m$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/b/m$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/b/m;

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
    iget-object p1, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v2, Le/a/c/b/m$f;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/c/b/m$f;-><init>(Le/a/c/b/m;Ls1/w/d;)V

    iput-object p0, v0, Le/a/c/b/m$e;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/b/m$e;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, p1, v1}, Le/a/c/b/m;->i(Lcom/truecaller/insights/models/states/InsightState;I)Le/a/c/b/n;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lcom/truecaller/insights/models/states/InsightState;I)Le/a/c/b/n;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    new-instance v2, Le/a/c/b/n;

    invoke-direct {v2, v0, p2}, Le/a/c/b/n;-><init>(Ljava/lang/Integer;I)V

    .line 3
    invoke-virtual {v2}, Le/a/c/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/c/b/m;->g:Ls1/w/f;

    new-instance v3, Le/a/c/b/m$j;

    invoke-direct {v3, p0, p1, p2, v1}, Le/a/c/b/m$j;-><init>(Le/a/c/b/m;Lcom/truecaller/insights/models/states/InsightState;ILs1/w/d;)V

    invoke-static {v0, v3}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method
