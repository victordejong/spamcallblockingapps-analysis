.class public final Le/a/y/a/e/c;
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
    c = "com.truecaller.flashsdk.ui.base.BaseFlashPresenterImpl$onCameraImageResult$1"
    f = "BaseFlashPresenter.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/y/a/e/d;

.field public final synthetic h:Le/a/y/a/e/e;


# direct methods
.method public constructor <init>(Le/a/y/a/e/d;Le/a/y/a/e/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    iput-object p2, p0, Le/a/y/a/e/c;->h:Le/a/y/a/e/e;

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

    new-instance v0, Le/a/y/a/e/c;

    iget-object v1, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    iget-object v2, p0, Le/a/y/a/e/c;->h:Le/a/y/a/e/e;

    invoke-direct {v0, v1, v2, p2}, Le/a/y/a/e/c;-><init>(Le/a/y/a/e/d;Le/a/y/a/e/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/y/a/e/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/y/a/e/c;

    iget-object v1, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    iget-object v2, p0, Le/a/y/a/e/c;->h:Le/a/y/a/e/e;

    invoke-direct {v0, v1, v2, p2}, Le/a/y/a/e/c;-><init>(Le/a/y/a/e/d;Le/a/y/a/e/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/y/a/e/c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/y/a/e/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/y/a/e/c;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/y/a/e/c;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    iget-object p1, p0, Le/a/y/a/e/c;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    :try_start_1
    iget-object v1, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    .line 5
    iget-object v1, v1, Le/a/y/a/e/d;->f:Ls1/w/f;

    .line 6
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    .line 7
    invoke-interface {v1, v4}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    new-instance v4, Le/a/y/a/e/c$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Le/a/y/a/e/c$a;-><init>(Le/a/y/a/e/c;Ls1/w/d;)V

    iput-object p1, p0, Le/a/y/a/e/c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/y/a/e/c;->f:I

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    invoke-virtual {v0, p1}, Le/a/y/a/e/d;->C(Landroid/net/Uri;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/y/a/e/c;->h:Le/a/y/a/e/e;

    .line 11
    invoke-interface {p1}, Le/a/y/a/e/e;->V9()V

    .line 12
    iget-object v0, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    .line 13
    iget-object v0, v0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 14
    sget v1, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Le/a/y/a/e/c;->h:Le/a/y/a/e/e;

    .line 17
    invoke-interface {p1}, Le/a/y/a/e/e;->V9()V

    .line 18
    iget-object v0, p0, Le/a/y/a/e/c;->g:Le/a/y/a/e/d;

    .line 19
    iget-object v0, v0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 20
    sget v1, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    .line 21
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
