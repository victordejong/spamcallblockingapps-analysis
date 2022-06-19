.class public final Le/a/f/a/a/n;
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
    c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$subscribeToRegularVideoCallerId$1"
    f = "IncomingCallPresenter.kt"
    l = {
        0x136,
        0x137,
        0x13d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/a/i;

.field public final synthetic h:Le/a/f/a/g;


# direct methods
.method public constructor <init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    iput-object p2, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

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

    new-instance v0, Le/a/f/a/a/n;

    iget-object v1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    iget-object v2, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/f/a/a/n;-><init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/a/n;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/a/n;

    iget-object v1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    iget-object v2, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/f/a/a/n;-><init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/a/n;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/a/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/a/a/n;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/a/n;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    .line 4
    instance-of v2, p1, Le/a/k/a/k/z/b$f;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    instance-of v2, p1, Le/a/k/a/k/z/b$a;

    if-eqz v2, :cond_5

    goto :goto_0

    .line 6
    :cond_5
    instance-of p1, p1, Le/a/k/a/k/z/b$e;

    if-eqz p1, :cond_b

    .line 7
    :goto_0
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    .line 8
    iput-boolean v5, p1, Le/a/f/a/a/i;->o:Z

    .line 9
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    iget-object v2, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

    iput v5, p0, Le/a/f/a/a/n;->f:I

    invoke-virtual {p1, v2, p0}, Le/a/f/a/a/i;->Qj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 10
    :cond_6
    :goto_1
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    .line 11
    iget-object p1, p1, Le/a/f/a/a/i;->t:Le/a/k/h;

    .line 12
    iget-object v2, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

    .line 13
    iget-object v2, v2, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 14
    iput v4, p0, Le/a/f/a/a/n;->f:I

    invoke-interface {p1, v2, p0}, Le/a/k/h;->Q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p1, Le/a/k/l/b;

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p1, Le/a/k/l/b;->f:Lcom/truecaller/videocallerid/data/VideoType;

    .line 16
    sget-object v2, Lcom/truecaller/videocallerid/data/VideoType;->PredefinedVideo:Lcom/truecaller/videocallerid/data/VideoType;

    if-ne p1, v2, :cond_8

    .line 17
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    iget-object v1, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v1, v2}, Le/a/f/a/f;->Ij(Le/a/f/a/g;Z)V

    .line 19
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_a

    .line 21
    invoke-interface {p1}, Le/a/f/a/e;->P2()V

    goto :goto_3

    .line 22
    :cond_8
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    .line 23
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_9

    .line 24
    invoke-interface {p1}, Le/a/f/a/e;->Yn()V

    .line 25
    :cond_9
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    iget-object v2, p0, Le/a/f/a/a/n;->h:Le/a/f/a/g;

    iput v3, p0, Le/a/f/a/a/n;->f:I

    invoke-virtual {p1, v2, p0}, Le/a/f/a/a/i;->Yj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 26
    :cond_a
    :goto_3
    iget-object p1, p0, Le/a/f/a/a/n;->g:Le/a/f/a/a/i;

    .line 27
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_b

    .line 28
    invoke-interface {p1}, Le/a/f/a/a/g;->M0()V

    nop

    :cond_b
    return-object v0
.end method
