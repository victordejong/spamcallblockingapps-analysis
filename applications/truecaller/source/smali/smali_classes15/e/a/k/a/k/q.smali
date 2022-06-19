.class public final Le/a/k/a/k/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/k/p;


# instance fields
.field public final a:Le/a/k/n/f/d;

.field public final b:Le/a/k/n/g/e;

.field public final c:Le/a/k/c/s1;


# direct methods
.method public constructor <init>(Le/a/k/n/f/d;Le/a/k/n/g/e;Le/a/k/c/s1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "incomingVideoRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFileUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/a/k/q;->a:Le/a/k/n/f/d;

    iput-object p2, p0, Le/a/k/a/k/q;->b:Le/a/k/n/g/e;

    iput-object p3, p0, Le/a/k/a/k/q;->c:Le/a/k/c/s1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/a/k/q$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/q$a;

    iget v1, v0, Le/a/k/a/k/q$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/q$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/q$a;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/q$a;-><init>(Le/a/k/a/k/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/q$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/q$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/k/a/k/q;->c:Le/a/k/c/s1;

    iput v3, v0, Le/a/k/a/k/q$a;->e:I

    check-cast p2, Le/a/k/c/a;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Le/a/k/c/x1;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, v3}, Le/a/k/c/x1;-><init>(Le/a/k/c/a;Landroid/net/Uri;Ls1/w/d;)V

    .line 4
    iget-object p1, p2, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance p2, Le/a/k/c/z1;

    invoke-direct {p2, v2, v3}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, p2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Le/a/k/c/r1;

    if-eqz p2, :cond_4

    .line 6
    iget-boolean p1, p2, Le/a/k/c/r1;->e:Z

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 9
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/k/a/k/q$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/q$b;

    iget v1, v0, Le/a/k/a/k/q$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/q$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/q$b;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/q$b;-><init>(Le/a/k/a/k/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/q$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/q$b;->e:I

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
    iget-object p2, p0, Le/a/k/a/k/q;->a:Le/a/k/n/f/d;

    iput v3, v0, Le/a/k/a/k/q$b;->e:I

    check-cast p2, Le/a/k/n/f/f;

    .line 5
    iget-object v2, p2, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v3, Le/a/k/n/f/g;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p1, v4}, Le/a/k/n/f/g;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v3, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p2, Le/a/k/l/b;

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p2, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    if-eqz p1, :cond_4

    .line 8
    iget-boolean p1, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->d:Z

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 11
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Le/a/k/a/k/q$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/q$c;

    iget v1, v0, Le/a/k/a/k/q$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/q$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/q$c;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/q$c;-><init>(Le/a/k/a/k/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/q$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/q$c;->e:I

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
    iget-object p1, v0, Le/a/k/a/k/q$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/k/a/k/q$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/k/q;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/k/a/k/q;->a:Le/a/k/n/f/d;

    iput-object p0, v0, Le/a/k/a/k/q$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/q$c;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/q$c;->e:I

    check-cast p2, Le/a/k/n/f/f;

    .line 5
    iget-object v2, p2, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v4, Le/a/k/n/f/h;

    invoke-direct {v4, p2, p1, v5}, Le/a/k/n/f/h;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v4, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p2, Le/a/k/l/b;

    if-eqz p2, :cond_5

    .line 7
    iget-object p1, p2, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 8
    iget-boolean p1, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->d:Z

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_5
    iget-object p2, v2, Le/a/k/a/k/q;->b:Le/a/k/n/g/e;

    iput-object v5, v0, Le/a/k/a/k/q$c;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/k/a/k/q$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/q$c;->e:I

    check-cast p2, Le/a/k/n/g/j;

    .line 11
    iget-object v2, p2, Le/a/k/n/g/j;->b:Ls1/w/f;

    new-instance v3, Le/a/k/n/g/i;

    invoke-direct {v3, p2, p1, v5}, Le/a/k/n/g/i;-><init>(Le/a/k/n/g/j;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v3, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 12
    :cond_6
    :goto_2
    check-cast p2, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    if-eqz p2, :cond_7

    .line 13
    iget-object p1, p2, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 14
    iget-boolean p1, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->d:Z

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public d(Le/a/k/a/k/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/a/k/a;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/a/k/q$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/q$d;

    iget v1, v0, Le/a/k/a/k/q$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/q$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/q$d;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/q$d;-><init>(Le/a/k/a/k/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/q$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/q$d;->e:I

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
    instance-of p2, p1, Le/a/k/a/k/a$c;

    if-eqz p2, :cond_5

    check-cast p1, Le/a/k/a/k/a$c;

    .line 5
    iget-object p1, p1, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    .line 6
    iput v4, v0, Le/a/k/a/k/q$d;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/k/a/k/q;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    .line 7
    :cond_5
    instance-of p2, p1, Le/a/k/a/k/a$b;

    if-eqz p2, :cond_7

    check-cast p1, Le/a/k/a/k/a$b;

    .line 8
    iget-object p1, p1, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    .line 9
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Number;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "config.numbers.first().normalizedNumber"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, v0, Le/a/k/a/k/q$d;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/k/a/k/q;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    .line 10
    :cond_7
    instance-of p1, p1, Le/a/k/a/k/a$a;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 11
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public e(Le/a/k/a/k/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/a/k/l;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/a/k/q$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/q$e;

    iget v1, v0, Le/a/k/a/k/q$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/q$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/q$e;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/q$e;-><init>(Le/a/k/a/k/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/q$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/q$e;->e:I

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
    instance-of p2, p1, Le/a/k/a/k/l$c;

    if-eqz p2, :cond_5

    check-cast p1, Le/a/k/a/k/l$c;

    .line 5
    iget-object p1, p1, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    .line 6
    iput v4, v0, Le/a/k/a/k/q$e;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/k/a/k/q;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    .line 7
    :cond_5
    instance-of p2, p1, Le/a/k/a/k/l$a;

    if-eqz p2, :cond_7

    check-cast p1, Le/a/k/a/k/l$a;

    .line 8
    iget-object p1, p1, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    .line 9
    iput v3, v0, Le/a/k/a/k/q$e;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/k/a/k/q;->a(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    .line 10
    :cond_7
    instance-of p1, p1, Le/a/k/a/k/l$b;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 11
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
