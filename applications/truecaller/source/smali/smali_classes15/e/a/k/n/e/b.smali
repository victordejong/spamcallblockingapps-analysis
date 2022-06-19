.class public final Le/a/k/n/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/e/a;


# instance fields
.field public final a:Le/a/k/n/e/e;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k/n/e/e;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "hiddenContactsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/n/e/b;->a:Le/a/k/n/e/e;

    iput-object p2, p0, Le/a/k/n/e/b;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Le/a/k/n/e/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/n/e/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/n/e/b;->b:Ls1/w/f;

    new-instance v1, Le/a/k/n/e/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/k/n/e/b$a;-><init>(Le/a/k/n/e/b;Le/a/k/n/e/g;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/n/e/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/n/e/b$b;

    iget v1, v0, Le/a/k/n/e/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/e/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/e/b$b;

    invoke-direct {v0, p0, p1}, Le/a/k/n/e/b$b;-><init>(Le/a/k/n/e/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/n/e/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/e/b$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/n/e/b;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/e/b$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/k/n/e/b$c;-><init>(Le/a/k/n/e/b;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/e/b$b;->e:I

    invoke-static {p1, v2, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p1
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/n/e/b$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/n/e/b$d;

    iget v1, v0, Le/a/k/n/e/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/e/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/e/b$d;

    invoke-direct {v0, p0, p2}, Le/a/k/n/e/b$d;-><init>(Le/a/k/n/e/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/n/e/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/e/b$d;->e:I

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

    iget-object p2, p0, Le/a/k/n/e/b;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/e/b$e;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/k/n/e/b$e;-><init>(Le/a/k/n/e/b;Ljava/util/List;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/e/b$d;->e:I

    invoke-static {p2, v2, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 4
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/k/n/e/b$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/n/e/b$f;

    iget v1, v0, Le/a/k/n/e/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/e/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/e/b$f;

    invoke-direct {v0, p0, p2}, Le/a/k/n/e/b$f;-><init>(Le/a/k/n/e/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/n/e/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/e/b$f;->e:I

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

    iget-object p2, p0, Le/a/k/n/e/b;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/e/b$g;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/k/n/e/b$g;-><init>(Le/a/k/n/e/b;Ljava/lang/String;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/e/b$f;->e:I

    invoke-static {p2, v2, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 4
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
