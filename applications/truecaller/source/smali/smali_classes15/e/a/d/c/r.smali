.class public final Le/a/d/c/r;
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
    c = "com.truecaller.voip.ui.VoipPresenter$listenSinglePeerCallSettings$1"
    f = "VoipPresenter.kt"
    l = {
        0x219
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/t;

.field public final synthetic g:Le/a/d/v/l/a;

.field public final synthetic h:Le/a/d/v/b;


# direct methods
.method public constructor <init>(Le/a/d/c/t;Le/a/d/v/l/a;Le/a/d/v/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/r;->f:Le/a/d/c/t;

    iput-object p2, p0, Le/a/d/c/r;->g:Le/a/d/v/l/a;

    iput-object p3, p0, Le/a/d/c/r;->h:Le/a/d/v/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/r;

    iget-object v0, p0, Le/a/d/c/r;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/r;->g:Le/a/d/v/l/a;

    iget-object v2, p0, Le/a/d/c/r;->h:Le/a/d/v/b;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c/r;-><init>(Le/a/d/c/t;Le/a/d/v/l/a;Le/a/d/v/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/r;

    iget-object v0, p0, Le/a/d/c/r;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/r;->g:Le/a/d/v/l/a;

    iget-object v2, p0, Le/a/d/c/r;->h:Le/a/d/v/b;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c/r;-><init>(Le/a/d/c/t;Le/a/d/v/l/a;Le/a/d/v/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c/r;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/d/c/r;->g:Le/a/d/v/l/a;

    invoke-interface {p1}, Le/a/d/v/l/a;->b()Lq3/a/x2/i1;

    move-result-object p1

    .line 5
    iget-object v2, p0, Le/a/d/c/r;->h:Le/a/d/v/b;

    invoke-interface {v2}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object v2

    new-instance v4, Le/a/d/c/r$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Le/a/d/c/r$a;-><init>(Ls1/w/d;)V

    .line 6
    new-instance v6, Le/a/d/c/r$b;

    invoke-direct {v6, p0}, Le/a/d/c/r$b;-><init>(Le/a/d/c/r;)V

    iput v3, p0, Le/a/d/c/r;->e:I

    const/4 v7, 0x2

    new-array v7, v7, [Lq3/a/x2/f;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    aput-object v2, v7, v3

    .line 7
    sget-object p1, Lq3/a/x2/y0;->b:Lq3/a/x2/y0;

    .line 8
    new-instance v2, Lq3/a/x2/x0;

    invoke-direct {v2, v4, v5}, Lq3/a/x2/x0;-><init>(Ls1/z/b/q;Ls1/w/d;)V

    invoke-static {v6, v7, p1, v2, p0}, Ls1/a/a/a/v0/f/d;->h0(Lq3/a/x2/g;[Lq3/a/x2/f;Ls1/z/b/a;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
