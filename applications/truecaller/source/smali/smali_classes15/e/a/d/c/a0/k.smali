.class public final Le/a/d/c/a0/k;
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
    c = "com.truecaller.voip.ui.incoming.IncomingVoipPresenter$onRejectMessageSelected$1"
    f = "IncomingVoipPresenter.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c/a0/i;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/d/c/a0/i;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    iput p2, p0, Le/a/d/c/a0/k;->h:I

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

    new-instance p1, Le/a/d/c/a0/k;

    iget-object v0, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    iget v1, p0, Le/a/d/c/a0/k;->h:I

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c/a0/k;-><init>(Le/a/d/c/a0/i;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/a0/k;

    iget-object v0, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    iget v1, p0, Le/a/d/c/a0/k;->h:I

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c/a0/k;-><init>(Le/a/d/c/a0/i;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/a0/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c/a0/k;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/c/a0/k;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

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
    iget-object p1, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    .line 5
    invoke-virtual {p1}, Le/a/d/c/a0/i;->Jj()Le/a/d/w/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Le/a/d/w/b;->l()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    iget v1, p0, Le/a/d/c/a0/k;->h:I

    sget v3, Lcom/truecaller/voip/R$string;->voip_reject_message_custom_option:I

    if-eq v1, v3, :cond_2

    .line 8
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    .line 10
    iget-object v3, v3, Le/a/d/c/a0/i;->h:Le/a/d/c0/y0;

    .line 11
    iput-object v1, p0, Le/a/d/c/a0/k;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/c/a0/k;->f:I

    invoke-interface {v3, p1, p0}, Le/a/d/c0/y0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 12
    iget-object v1, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    .line 13
    iget-object v1, v1, Le/a/d/c/a0/i;->g:Le/a/d/c0/j1;

    .line 14
    invoke-interface {v1, p1, v0}, Le/a/d/c0/j1;->e(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/d/c/a0/k;->g:Le/a/d/c/a0/i;

    .line 16
    invoke-virtual {p1}, Le/a/d/c/a0/i;->Jj()Le/a/d/w/b;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/d/w/j/a;->a()Lq3/a/p1;

    .line 17
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
