.class public final Le/a/f/a/t/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/w/f;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter$listenCallAndSearchStates$2"
    f = "CallerGradientPresenter.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/t/c;

.field public final synthetic h:Ls1/z/c/c0;

.field public final synthetic i:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/f/a/t/c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/t/e;->g:Le/a/f/a/t/c;

    iput-object p2, p0, Le/a/f/a/t/e;->h:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/f/a/t/e;->i:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/f/a/t/e;

    iget-object v1, p0, Le/a/f/a/t/e;->g:Le/a/f/a/t/c;

    iget-object v2, p0, Le/a/f/a/t/e;->h:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/f/a/t/e;->i:Ls1/z/c/c0;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/a/t/e;-><init>(Le/a/f/a/t/c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/t/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/t/e;

    iget-object v1, p0, Le/a/f/a/t/e;->g:Le/a/f/a/t/c;

    iget-object v2, p0, Le/a/f/a/t/e;->h:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/f/a/t/e;->i:Ls1/z/c/c0;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/a/t/e;-><init>(Le/a/f/a/t/c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/t/e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/t/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/t/e;->f:I

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

    iget-object p1, p0, Le/a/f/a/t/e;->e:Ljava/lang/Object;

    check-cast p1, Le/a/f/w/f;

    .line 4
    iget-object v1, p0, Le/a/f/a/t/e;->h:Ls1/z/c/c0;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/a/f/a/t/e;->g:Le/a/f/a/t/c;

    check-cast p1, Le/a/f/w/f;

    iget-object v3, p0, Le/a/f/a/t/e;->i:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/incallui/service/CallState;

    iput v2, p0, Le/a/f/a/t/e;->f:I

    invoke-virtual {v1, p1, v3, p0}, Le/a/f/a/t/c;->Jj(Le/a/f/w/f;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
