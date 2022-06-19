.class public final Le/a/d/c0/z1/l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$retrySearch$2"
    f = "CallInfoRepository.kt"
    l = {
        0x3a8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/z1/k;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lq3/a/x2/a1;


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/k;Ljava/lang/String;Lq3/a/x2/a1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/l;->g:Le/a/d/c0/z1/k;

    iput-object p2, p0, Le/a/d/c0/z1/l;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/z1/l;->i:Lq3/a/x2/a1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/z1/l;

    iget-object v1, p0, Le/a/d/c0/z1/l;->g:Le/a/d/c0/z1/k;

    iget-object v2, p0, Le/a/d/c0/z1/l;->h:Ljava/lang/String;

    iget-object v3, p0, Le/a/d/c0/z1/l;->i:Lq3/a/x2/a1;

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/d/c0/z1/l;-><init>(Le/a/d/c0/z1/k;Ljava/lang/String;Lq3/a/x2/a1;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c0/z1/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/z1/l;

    iget-object v1, p0, Le/a/d/c0/z1/l;->g:Le/a/d/c0/z1/k;

    iget-object v2, p0, Le/a/d/c0/z1/l;->h:Ljava/lang/String;

    iget-object v3, p0, Le/a/d/c0/z1/l;->i:Lq3/a/x2/a1;

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/d/c0/z1/l;-><init>(Le/a/d/c0/z1/k;Ljava/lang/String;Lq3/a/x2/a1;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/z1/l;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/d/c0/z1/l;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/x2/i1;

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
    iget-object p1, p0, Le/a/d/c0/z1/l;->g:Le/a/d/c0/z1/k;

    .line 5
    iget-object v1, p1, Le/a/d/c0/z1/k;->s:Le/a/d/c0/e;

    .line 6
    iget-object v4, p0, Le/a/d/c0/z1/l;->h:Ljava/lang/String;

    invoke-static {v4}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Le/a/d/c0/z1/l;->g:Le/a/d/c0/z1/k;

    invoke-virtual {v5}, Le/a/d/c0/z1/k;->b()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v5

    invoke-interface {v1, p1, v4, v5}, Le/a/d/c0/e;->d(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/groupcall/call/CallDirection;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Le/a/d/c0/z1/l;->h:Ljava/lang/String;

    invoke-static {p1, v1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/a/x2/i1;

    .line 7
    sget v1, Le/a/d/c0/i;->b:I

    const-string v1, "$this$takeUntilFinished"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Le/a/d/c0/h;

    invoke-direct {v1, v2}, Le/a/d/c0/h;-><init>(Ls1/w/d;)V

    invoke-static {p1, v1}, Ls1/a/a/a/v0/f/d;->Q3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v1

    .line 9
    new-instance v4, Le/a/d/c0/z1/l$a;

    invoke-direct {v4, p0}, Le/a/d/c0/z1/l$a;-><init>(Le/a/d/c0/z1/l;)V

    iput-object p1, p0, Le/a/d/c0/z1/l;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/c0/z1/l;->f:I

    check-cast v1, Lq3/a/x2/a;

    invoke-virtual {v1, v4, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 10
    :goto_0
    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Le/a/d/c0/j$a;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    sget-object v2, Ls1/s;->a:Ls1/s;

    :goto_1
    return-object v2
.end method
