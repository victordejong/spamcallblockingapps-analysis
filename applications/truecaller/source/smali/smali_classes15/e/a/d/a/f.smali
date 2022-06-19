.class public final Le/a/d/a/f;
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
    c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenPeers$1"
    f = "DebugGroupCallFragment.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/a/a;

.field public final synthetic g:Le/a/d/a/v;


# direct methods
.method public constructor <init>(Le/a/d/a/a;Le/a/d/a/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/f;->f:Le/a/d/a/a;

    iput-object p2, p0, Le/a/d/a/f;->g:Le/a/d/a/v;

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

    new-instance p1, Le/a/d/a/f;

    iget-object v0, p0, Le/a/d/a/f;->f:Le/a/d/a/a;

    iget-object v1, p0, Le/a/d/a/f;->g:Le/a/d/a/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/f;-><init>(Le/a/d/a/a;Le/a/d/a/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/a/f;

    iget-object v0, p0, Le/a/d/a/f;->f:Le/a/d/a/a;

    iget-object v1, p0, Le/a/d/a/f;->g:Le/a/d/a/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/f;-><init>(Le/a/d/a/a;Le/a/d/a/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/a/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/a/f;->e:I

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
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/d/a/f;->g:Le/a/d/a/v;

    .line 6
    iget-object v1, v1, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v3, v2}, Le/a/p5/s0/g;->l(Lq3/a/x2/f;Ljava/util/Set;I)Lq3/a/x2/f;

    move-result-object v1

    .line 8
    new-instance v3, Le/a/d/a/f$a;

    invoke-direct {v3, p0, p1}, Le/a/d/a/f$a;-><init>(Le/a/d/a/f;Ljava/util/LinkedHashMap;)V

    iput v2, p0, Le/a/d/a/f;->e:I

    check-cast v1, Lq3/a/x2/a;

    invoke-virtual {v1, v3, p0}, Lq3/a/x2/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
