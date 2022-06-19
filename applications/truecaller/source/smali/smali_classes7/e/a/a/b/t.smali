.class public final Le/a/a/b/t;
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
    c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$observeOtp$1"
    f = "MessagingListPresenterImpl.kt"
    l = {
        0x686
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/b/s;


# direct methods
.method public constructor <init>(Le/a/a/b/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/t;->g:Le/a/a/b/s;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a/b/t;

    iget-object v1, p0, Le/a/a/b/t;->g:Le/a/a/b/s;

    invoke-direct {v0, v1, p2}, Le/a/a/b/t;-><init>(Le/a/a/b/s;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/b/t;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a/b/t;

    iget-object v1, p0, Le/a/a/b/t;->g:Le/a/a/b/s;

    invoke-direct {v0, v1, p2}, Le/a/a/b/t;-><init>(Le/a/a/b/s;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/b/t;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/a/b/t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/b/t;->f:I

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

    iget-object p1, p0, Le/a/a/b/t;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v2, p0, Le/a/a/b/t;->g:Le/a/a/b/s;

    .line 5
    iget-object v2, v2, Le/a/a/b/s;->u0:Le/a/c/a/c/f/d;

    .line 6
    invoke-virtual {v2, v0}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v2

    .line 7
    new-instance v4, Le/a/a/b/t$a;

    invoke-direct {v4, p0, p1}, Le/a/a/b/t$a;-><init>(Le/a/a/b/t;Lq3/a/i0;)V

    iput v3, p0, Le/a/a/b/t;->f:I

    invoke-interface {v2, v4, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method
