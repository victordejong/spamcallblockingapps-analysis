.class public final Le/a/d/c0/z1/n;
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
    c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$updatePeerSearchStateWithRetry$1"
    f = "CallInfoRepository.kt"
    l = {
        0x3a8,
        0x2a6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/z1/k;

.field public final synthetic g:Lq3/a/x2/i1;

.field public final synthetic h:Lq3/a/x2/a1;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/k;Lq3/a/x2/i1;Lq3/a/x2/a1;Ljava/lang/String;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/n;->f:Le/a/d/c0/z1/k;

    iput-object p2, p0, Le/a/d/c0/z1/n;->g:Lq3/a/x2/i1;

    iput-object p3, p0, Le/a/d/c0/z1/n;->h:Lq3/a/x2/a1;

    iput-object p4, p0, Le/a/d/c0/z1/n;->i:Ljava/lang/String;

    iput p5, p0, Le/a/d/c0/z1/n;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/d/c0/z1/n;

    iget-object v1, p0, Le/a/d/c0/z1/n;->f:Le/a/d/c0/z1/k;

    iget-object v2, p0, Le/a/d/c0/z1/n;->g:Lq3/a/x2/i1;

    iget-object v3, p0, Le/a/d/c0/z1/n;->h:Lq3/a/x2/a1;

    iget-object v4, p0, Le/a/d/c0/z1/n;->i:Ljava/lang/String;

    iget v5, p0, Le/a/d/c0/z1/n;->j:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/d/c0/z1/n;-><init>(Le/a/d/c0/z1/k;Lq3/a/x2/i1;Lq3/a/x2/a1;Ljava/lang/String;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/c0/z1/n;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/c0/z1/n;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c0/z1/n;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/z1/n;->g:Lq3/a/x2/i1;

    .line 5
    sget v2, Le/a/d/c0/i;->b:I

    const-string v2, "$this$takeUntilFinished"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Le/a/d/c0/h;

    invoke-direct {v2, v3}, Le/a/d/c0/h;-><init>(Ls1/w/d;)V

    invoke-static {p1, v2}, Ls1/a/a/a/v0/f/d;->Q3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object p1

    .line 7
    new-instance v2, Le/a/d/c0/z1/n$a;

    invoke-direct {v2, p0}, Le/a/d/c0/z1/n$a;-><init>(Le/a/d/c0/z1/n;)V

    iput v5, p0, Le/a/d/c0/z1/n;->e:I

    check-cast p1, Lq3/a/x2/a;

    invoke-virtual {p1, v2, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/d/c0/z1/n;->g:Lq3/a/x2/i1;

    invoke-interface {p1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Le/a/d/c0/j$a;

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Le/a/d/c0/z1/n;->i:Ljava/lang/String;

    iget v2, p0, Le/a/d/c0/z1/n;->j:I

    .line 10
    iget-object v5, p0, Le/a/d/c0/z1/n;->f:Le/a/d/c0/z1/k;

    iget-object v6, p0, Le/a/d/c0/z1/n;->h:Lq3/a/x2/a1;

    iput v4, p0, Le/a/d/c0/z1/n;->e:I

    .line 11
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Le/a/d/c0/z1/l;

    invoke-direct {v4, v5, p1, v6, v3}, Le/a/d/c0/z1/l;-><init>(Le/a/d/c0/z1/k;Ljava/lang/String;Lq3/a/x2/a1;Ls1/w/d;)V

    invoke-virtual {v5, v2, v4, p0}, Le/a/d/c0/z1/k;->E(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object v0
.end method
