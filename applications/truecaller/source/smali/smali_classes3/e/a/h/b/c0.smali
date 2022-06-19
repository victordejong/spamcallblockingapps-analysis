.class public final Le/a/h/b/c0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToSearchTokenChanges$1"
    f = "DialerPresenter.kt"
    l = {
        0x60d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/b/y;

.field public final synthetic g:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/h/b/y;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c0;->f:Le/a/h/b/y;

    iput-object p2, p0, Le/a/h/b/c0;->g:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/c0;

    iget-object v0, p0, Le/a/h/b/c0;->f:Le/a/h/b/y;

    iget-object v1, p0, Le/a/h/b/c0;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/b/c0;-><init>(Le/a/h/b/y;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/c0;

    iget-object v0, p0, Le/a/h/b/c0;->f:Le/a/h/b/y;

    iget-object v1, p0, Le/a/h/b/c0;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/b/c0;-><init>(Le/a/h/b/y;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/c0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/h/b/c0;->f:Le/a/h/b/y;

    .line 5
    iget-object p1, p1, Le/a/h/b/y;->e:Lq3/a/x2/a1;

    const-wide/16 v3, 0x1f4

    .line 6
    invoke-static {p1, v3, v4}, Ls1/a/a/a/v0/f/d;->z0(Lq3/a/x2/f;J)Lq3/a/x2/f;

    move-result-object p1

    .line 7
    new-instance v1, Le/a/h/b/c0$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Le/a/h/b/c0$b;-><init>(Ls1/w/d;Le/a/h/b/c0;)V

    invoke-static {p1, v1}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object p1

    .line 8
    new-instance v1, Le/a/h/b/c0$a;

    invoke-direct {v1, p0}, Le/a/h/b/c0$a;-><init>(Le/a/h/b/c0;)V

    iput v2, p0, Le/a/h/b/c0;->e:I

    check-cast p1, Lq3/a/x2/o1/i;

    invoke-virtual {p1, v1, p0}, Lq3/a/x2/o1/i;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
