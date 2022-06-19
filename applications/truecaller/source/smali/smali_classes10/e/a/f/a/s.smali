.class public final Le/a/f/a/s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/a/k/z/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.InCallUIPresenter$subscribeToPlayingState$1"
    f = "InCallUIPresenter.kt"
    l = {
        0xdc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/n;

.field public final synthetic h:Le/a/f/a/g;


# direct methods
.method public constructor <init>(Le/a/f/a/n;Le/a/f/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/s;->g:Le/a/f/a/n;

    iput-object p2, p0, Le/a/f/a/s;->h:Le/a/f/a/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/s;

    iget-object v1, p0, Le/a/f/a/s;->g:Le/a/f/a/n;

    iget-object v2, p0, Le/a/f/a/s;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/f/a/s;-><init>(Le/a/f/a/n;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/s;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/s;

    iget-object v1, p0, Le/a/f/a/s;->g:Le/a/f/a/n;

    iget-object v2, p0, Le/a/f/a/s;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/f/a/s;-><init>(Le/a/f/a/n;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/s;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/s;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/s;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    .line 4
    instance-of v1, p1, Le/a/k/a/k/z/b$c;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, p1, Le/a/k/a/k/z/b$f;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    instance-of v1, p1, Le/a/k/a/k/z/b$a;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    instance-of v1, p1, Le/a/k/a/k/z/b$e;

    if-eqz v1, :cond_5

    .line 8
    :goto_0
    iget-object p1, p0, Le/a/f/a/s;->g:Le/a/f/a/n;

    .line 9
    iput-boolean v2, p1, Le/a/f/a/n;->i:Z

    .line 10
    iget-object p1, p0, Le/a/f/a/s;->g:Le/a/f/a/n;

    iget-object v1, p0, Le/a/f/a/s;->h:Le/a/f/a/g;

    iput v2, p0, Le/a/f/a/s;->f:I

    invoke-virtual {p1, v1, p0}, Le/a/f/a/n;->Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 11
    :cond_5
    instance-of v0, p1, Le/a/k/a/k/z/b$d;

    if-eqz v0, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    instance-of p1, p1, Le/a/k/a/k/z/b$b;

    if-eqz p1, :cond_7

    .line 13
    :goto_1
    iget-object p1, p0, Le/a/f/a/s;->g:Le/a/f/a/n;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Le/a/f/a/n;->i:Z

    .line 15
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
