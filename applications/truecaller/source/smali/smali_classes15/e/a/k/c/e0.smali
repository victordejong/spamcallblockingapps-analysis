.class public final Le/a/k/c/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/d0;


# instance fields
.field public final a:Le/a/k/c/r0;

.field public final b:Le/a/k/n/g/e;

.field public final c:Le/a/k/j;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k/c/r0;Le/a/k/n/g/e;Le/a/k/j;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerIdAvailability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSupport"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/e0;->a:Le/a/k/c/r0;

    iput-object p2, p0, Le/a/k/c/e0;->b:Le/a/k/n/g/e;

    iput-object p3, p0, Le/a/k/c/e0;->c:Le/a/k/j;

    iput-object p4, p0, Le/a/k/c/e0;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Number;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Number;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/k/c/e0;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/k/c/e0$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/k/c/e0$a;

    iget v2, v1, Le/a/k/c/e0$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/c/e0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/c/e0$a;

    invoke-direct {v1, p0, p2}, Le/a/k/c/e0$a;-><init>(Le/a/k/c/e0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/k/c/e0$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k/c/e0$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

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
    iget-object p1, v1, Le/a/k/c/e0$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    iget-object v3, v1, Le/a/k/c/e0$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/k/c/e0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/k/c/e0;->b:Le/a/k/n/g/e;

    iput-object p0, v1, Le/a/k/c/e0$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/k/c/e0$a;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/k/c/e0$a;->e:I

    check-cast p2, Le/a/k/n/g/j;

    invoke-virtual {p2, v1}, Le/a/k/n/g/j;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    .line 5
    :goto_1
    iget-object p2, v3, Le/a/k/c/e0;->b:Le/a/k/n/g/e;

    const/4 v3, 0x0

    iput-object v3, v1, Le/a/k/c/e0$a;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/k/c/e0$a;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/k/c/e0$a;->e:I

    check-cast p2, Le/a/k/n/g/j;

    .line 6
    iget-object v4, p2, Le/a/k/n/g/j;->b:Ls1/w/f;

    new-instance v5, Le/a/k/n/g/g;

    invoke-direct {v5, p2, p1, v3}, Le/a/k/n/g/g;-><init>(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V

    invoke-static {v4, v5, v1}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    :goto_3
    return-object v0
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/k/c/e0;->h(ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/e0$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/e0$d;

    iget v1, v0, Le/a/k/c/e0$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/e0$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/e0$d;

    invoke-direct {v0, p0, p2}, Le/a/k/c/e0$d;-><init>(Le/a/k/c/e0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/e0$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/e0$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    iget-object p1, v0, Le/a/k/c/e0$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/k/c/e0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/k/c/e0$d;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/k/c/e0$d;->e:I

    .line 5
    iget-object p2, p0, Le/a/k/c/e0;->d:Ls1/w/f;

    new-instance v2, Le/a/k/c/f0;

    invoke-direct {v2, p0, p1, v5}, Le/a/k/c/f0;-><init>(Le/a/k/c/e0;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    return-object v5

    .line 7
    :cond_5
    iget-object p1, p1, Le/a/k/c/e0;->b:Le/a/k/n/g/e;

    iput-object v5, v0, Le/a/k/c/e0$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/k/c/e0$d;->e:I

    check-cast p1, Le/a/k/n/g/j;

    invoke-virtual {p1, v0}, Le/a/k/n/g/j;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 8
    :cond_6
    :goto_2
    move-object p1, p2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    move p1, v4

    :goto_4
    xor-int/2addr p1, v4

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    move-object p2, v5

    :goto_5
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_a

    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    :cond_a
    return-object v5
.end method

.method public final e(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/e0;->a:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/k/c/e0;->a:Le/a/k/c/r0;

    invoke-interface {p1}, Le/a/k/c/r0;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/e0;->b:Le/a/k/n/g/e;

    check-cast v0, Le/a/k/n/g/j;

    invoke-virtual {v0, p1}, Le/a/k/n/g/j;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/e0$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/e0$c;

    iget v1, v0, Le/a/k/c/e0$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/e0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/e0$c;

    invoke-direct {v0, p0, p2}, Le/a/k/c/e0$c;-><init>(Le/a/k/c/e0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/e0$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/e0$c;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

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
    invoke-virtual {p0, p1}, Le/a/k/c/e0;->e(Z)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v3

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/k/c/e0;->b:Le/a/k/n/g/e;

    iput v4, v0, Le/a/k/c/e0$c;->e:I

    check-cast p1, Le/a/k/n/g/j;

    invoke-virtual {p1, v0}, Le/a/k/n/g/j;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    move-object p1, p2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v4

    :goto_3
    xor-int/2addr p1, v4

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move-object p2, v3

    :goto_4
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_8

    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    :cond_8
    return-object v3
.end method

.method public o(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/e0$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/e0$b;

    iget v1, v0, Le/a/k/c/e0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/e0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/e0$b;

    invoke-direct {v0, p0, p2}, Le/a/k/c/e0$b;-><init>(Le/a/k/c/e0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/e0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/e0$b;->e:I

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
    iget-object p1, v0, Le/a/k/c/e0$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/k/c/e0$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/e0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/k/c/e0;->a:Le/a/k/c/r0;

    iput-object p0, v0, Le/a/k/c/e0$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/c/e0$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/c/e0$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/k/c/r0;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/k/c/e0$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/c/e0$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/c/e0$b;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/k/c/e0;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 7
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
