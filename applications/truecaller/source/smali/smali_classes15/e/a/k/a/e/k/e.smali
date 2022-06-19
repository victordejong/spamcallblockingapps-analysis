.class public final Le/a/k/a/e/k/e;
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
    c = "com.truecaller.videocallerid.ui.manageincomingvideo.confirmation.HiddenContactConfirmationPresenter$onGotItClicked$1"
    f = "HiddenContactConfirmationPresenter.kt"
    l = {
        0x13
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/e/k/f;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/k/a/e/k/f;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/k/e;->f:Le/a/k/a/e/k/f;

    iput-object p2, p0, Le/a/k/a/e/k/e;->g:Ljava/util/List;

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

    new-instance p1, Le/a/k/a/e/k/e;

    iget-object v0, p0, Le/a/k/a/e/k/e;->f:Le/a/k/a/e/k/f;

    iget-object v1, p0, Le/a/k/a/e/k/e;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/e/k/e;-><init>(Le/a/k/a/e/k/f;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/e/k/e;

    iget-object v0, p0, Le/a/k/a/e/k/e;->f:Le/a/k/a/e/k/f;

    iget-object v1, p0, Le/a/k/a/e/k/e;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/e/k/e;-><init>(Le/a/k/a/e/k/f;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/e/k/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/e/k/e;->e:I

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
    iget-object p1, p0, Le/a/k/a/e/k/e;->f:Le/a/k/a/e/k/f;

    .line 5
    iget-object p1, p1, Le/a/k/a/e/k/f;->d:Le/a/k/c/h0;

    .line 6
    new-instance v1, Le/a/k/n/e/g;

    iget-object v3, p0, Le/a/k/a/e/k/e;->g:Ljava/util/List;

    invoke-direct {v1, v3}, Le/a/k/n/e/g;-><init>(Ljava/util/List;)V

    iput v2, p0, Le/a/k/a/e/k/e;->e:I

    invoke-interface {p1, v1, p0}, Le/a/k/c/h0;->b(Le/a/k/n/e/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/k/a/e/k/e;->f:Le/a/k/a/e/k/f;

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/e/k/d;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Le/a/k/a/e/k/d;->dismiss()V

    .line 10
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
