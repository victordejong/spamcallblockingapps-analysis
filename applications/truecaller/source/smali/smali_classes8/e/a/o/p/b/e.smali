.class public final Le/a/o/p/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/p/b/d;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/o/f;

.field public final c:Le/a/o/p/b/b;

.field public final d:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/f;Le/a/o/p/b/b;Le/a/b0/q/z;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/p/b/e;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/o/p/b/e;->b:Le/a/o/f;

    iput-object p3, p0, Le/a/o/p/b/e;->c:Le/a/o/p/b/b;

    iput-object p4, p0, Le/a/o/p/b/e;->d:Le/a/b0/q/z;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/o/p/b/e$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/o/p/b/e$e;

    iget v1, v0, Le/a/o/p/b/e$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/p/b/e$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/p/b/e$e;

    invoke-direct {v0, p0, p1}, Le/a/o/p/b/e$e;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/o/p/b/e$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/p/b/e$e;->e:I

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

    iget-object p1, p0, Le/a/o/p/b/e;->a:Ls1/w/f;

    new-instance v2, Le/a/o/p/b/e$f;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/o/p/b/e$f;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    iput v3, v0, Le/a/o/p/b/e$e;->e:I

    invoke-static {p1, v2, v0}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/o/p/b/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/o/p/b/e$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/o/p/b/e$c;

    iget v1, v0, Le/a/o/p/b/e$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/p/b/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/p/b/e$c;

    invoke-direct {v0, p0, p1}, Le/a/o/p/b/e$c;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/o/p/b/e$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/p/b/e$c;->e:I

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

    iget-object p1, p0, Le/a/o/p/b/e;->a:Ls1/w/f;

    new-instance v2, Le/a/o/p/b/e$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/o/p/b/e$d;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    iput v3, v0, Le/a/o/p/b/e$c;->e:I

    invoke-static {p1, v2, v0}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/o/p/b/e$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/p/b/e$g;

    iget v1, v0, Le/a/o/p/b/e$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/p/b/e$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/p/b/e$g;

    invoke-direct {v0, p0, p2}, Le/a/o/p/b/e$g;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/p/b/e$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/p/b/e$g;->e:I

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

    iget-object p2, p0, Le/a/o/p/b/e;->a:Ls1/w/f;

    new-instance v2, Le/a/o/p/b/e$h;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/o/p/b/e$h;-><init>(Le/a/o/p/b/e;Ljava/lang/String;Ls1/w/d;)V

    iput v3, v0, Le/a/o/p/b/e$g;->e:I

    invoke-static {p2, v2, v0}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

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
    .locals 3
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

    .line 1
    iget-object v0, p0, Le/a/o/p/b/e;->a:Ls1/w/f;

    new-instance v1, Le/a/o/p/b/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/b/e$a;-><init>(Le/a/o/p/b/e;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    iget-object v0, p0, Le/a/o/p/b/e;->a:Ls1/w/f;

    new-instance v1, Le/a/o/p/b/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/b/e$b;-><init>(Le/a/o/p/b/e;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
