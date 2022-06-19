.class public final Le/a/y/a/l/e;
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
    c = "com.truecaller.flashsdk.ui.whatsnew.FlashWithFriendsPresenter$readBundleAndInitData$1"
    f = "FlashWithFriendsPresenter.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/y/a/l/f;

.field public final synthetic g:Le/a/y/a/l/b;


# direct methods
.method public constructor <init>(Le/a/y/a/l/f;Le/a/y/a/l/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/l/e;->f:Le/a/y/a/l/f;

    iput-object p2, p0, Le/a/y/a/l/e;->g:Le/a/y/a/l/b;

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

    new-instance p1, Le/a/y/a/l/e;

    iget-object v0, p0, Le/a/y/a/l/e;->f:Le/a/y/a/l/f;

    iget-object v1, p0, Le/a/y/a/l/e;->g:Le/a/y/a/l/b;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/a/l/e;-><init>(Le/a/y/a/l/f;Le/a/y/a/l/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/a/l/e;

    iget-object v0, p0, Le/a/y/a/l/e;->f:Le/a/y/a/l/f;

    iget-object v1, p0, Le/a/y/a/l/e;->g:Le/a/y/a/l/b;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/a/l/e;-><init>(Le/a/y/a/l/f;Le/a/y/a/l/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/a/l/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/y/a/l/e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/y/a/l/e;->f:Le/a/y/a/l/f;

    .line 5
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v5, p1, Le/a/y/a/l/f;->i:Ls1/w/f;

    new-instance v7, Le/a/y/a/l/d;

    const/4 v2, 0x0

    invoke-direct {v7, p1, v2}, Le/a/y/a/l/d;-><init>(Le/a/y/a/l/f;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    .line 6
    iput v3, p0, Le/a/y/a/l/e;->e:I

    check-cast p1, Lq3/a/o0;

    .line 7
    invoke-virtual {p1, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 9
    iget-object v1, p0, Le/a/y/a/l/e;->g:Le/a/y/a/l/b;

    invoke-interface {v1, p1}, Le/a/y/a/l/b;->H2(Ljava/util/List;)V

    :cond_3
    return-object v0
.end method
