.class public final Le/a/d/c/x$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/x;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/v/a;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.ui.VoipPresenter$setupGroupCallPeersListenerJobs$2$1"
    f = "VoipPresenter.kt"
    l = {
        0x219
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c/x;


# direct methods
.method public constructor <init>(Le/a/d/c/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/x$a;->g:Le/a/d/c/x;

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

    new-instance v0, Le/a/d/c/x$a;

    iget-object v1, p0, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    invoke-direct {v0, v1, p2}, Le/a/d/c/x$a;-><init>(Le/a/d/c/x;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/x$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c/x$a;

    iget-object v1, p0, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    invoke-direct {v0, v1, p2}, Le/a/d/c/x$a;-><init>(Le/a/d/c/x;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/x$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c/x$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c/x$a;->f:I

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

    iget-object p1, p0, Le/a/d/c/x$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/v/a;

    .line 4
    iget-boolean p1, p1, Le/a/d/v/a;->c:Z

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    iget-object p1, p1, Le/a/d/c/x;->f:Le/a/d/c/t;

    .line 6
    iput-boolean v3, p1, Le/a/d/c/t;->d:Z

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_2

    .line 8
    sget v1, Lcom/truecaller/voip/R$string;->voip_status_reconnecting:I

    sget v2, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-interface {p1, v1, v2}, Le/a/d/c/l;->v3(II)V

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    iget-object p1, p1, Le/a/d/c/x;->f:Le/a/d/c/t;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 11
    invoke-static/range {v1 .. v6}, Le/a/p5/s0/g;->T1(Le/a/d/c/l;ZJILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    iget-object v2, p1, Le/a/d/c/x;->f:Le/a/d/c/t;

    const/4 v4, 0x0

    .line 13
    iput-boolean v4, v2, Le/a/d/c/t;->d:Z

    .line 14
    iget-object p1, p1, Le/a/d/c/x;->g:Le/a/d/v/b;

    invoke-interface {p1}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object p1

    .line 15
    new-instance v2, Le/a/d/c/x$a$a;

    invoke-direct {v2, p0}, Le/a/d/c/x$a$a;-><init>(Le/a/d/c/x$a;)V

    iput v3, p0, Le/a/d/c/x$a;->f:I

    .line 16
    new-instance v3, Lq3/a/x2/t0$a;

    invoke-direct {v3, v2}, Lq3/a/x2/t0$a;-><init>(Lq3/a/x2/g;)V

    invoke-interface {p1, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method
