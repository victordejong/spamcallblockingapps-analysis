.class public final Le/a/d/c/y;
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
    c = "com.truecaller.voip.ui.VoipPresenter$setupOngoingGroupCallStatusJob$1"
    f = "VoipPresenter.kt"
    l = {
        0x219,
        0x21c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/t;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Le/a/d/v/b;


# direct methods
.method public constructor <init>(Le/a/d/c/t;Ljava/util/Set;Le/a/d/v/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/y;->f:Le/a/d/c/t;

    iput-object p2, p0, Le/a/d/c/y;->g:Ljava/util/Set;

    iput-object p3, p0, Le/a/d/c/y;->h:Le/a/d/v/b;

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

    new-instance p1, Le/a/d/c/y;

    iget-object v0, p0, Le/a/d/c/y;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/y;->g:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/c/y;->h:Le/a/d/v/b;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c/y;-><init>(Le/a/d/c/t;Ljava/util/Set;Le/a/d/v/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/y;

    iget-object v0, p0, Le/a/d/c/y;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/y;->g:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/c/y;->h:Le/a/d/v/b;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c/y;-><init>(Le/a/d/c/t;Ljava/util/Set;Le/a/d/v/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/y;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c/y;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c/y;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 5
    iget-object p1, p0, Le/a/d/c/y;->f:Le/a/d/c/t;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p1, Le/a/d/c/t;->i:Z

    .line 7
    iget-object p1, p0, Le/a/d/c/y;->g:Ljava/util/Set;

    invoke-static {p1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/v/l/a;

    .line 8
    invoke-interface {p1}, Le/a/d/v/l/a;->getState()Lq3/a/x2/i1;

    move-result-object v2

    .line 9
    new-instance v3, Le/a/d/c/y$a;

    invoke-direct {v3, p0, p1}, Le/a/d/c/y$a;-><init>(Le/a/d/c/y;Le/a/d/v/l/a;)V

    iput v4, p0, Le/a/d/c/y;->e:I

    invoke-interface {v2, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/d/c/y;->f:Le/a/d/c/t;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_4

    .line 12
    sget v2, Lcom/truecaller/voip/R$string;->voip_empty:I

    sget v5, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    invoke-interface {p1, v2, v5}, Le/a/d/c/l;->v3(II)V

    .line 13
    :cond_4
    iget-object p1, p0, Le/a/d/c/y;->f:Le/a/d/c/t;

    .line 14
    iput-boolean v4, p1, Le/a/d/c/t;->i:Z

    .line 15
    iget-object p1, p0, Le/a/d/c/y;->h:Le/a/d/v/b;

    invoke-interface {p1}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object p1

    .line 16
    new-instance v2, Le/a/d/c/y$b;

    invoke-direct {v2, p0}, Le/a/d/c/y$b;-><init>(Le/a/d/c/y;)V

    iput v3, p0, Le/a/d/c/y;->e:I

    .line 17
    new-instance v3, Lq3/a/x2/t0$a;

    invoke-direct {v3, v2}, Lq3/a/x2/t0$a;-><init>(Lq3/a/x2/g;)V

    invoke-interface {p1, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method
