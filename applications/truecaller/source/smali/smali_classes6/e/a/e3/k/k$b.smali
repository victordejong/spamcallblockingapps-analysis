.class public final Le/a/e3/k/k$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/k;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$listenCalls$1"
    f = "CallAlertSimSupport.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/e3/k/k;


# direct methods
.method public constructor <init>(Le/a/e3/k/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/k$b;->f:Le/a/e3/k/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/e3/k/k$b;

    iget-object v0, p0, Le/a/e3/k/k$b;->f:Le/a/e3/k/k;

    invoke-direct {p1, v0, p2}, Le/a/e3/k/k$b;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e3/k/k$b;

    iget-object v0, p0, Le/a/e3/k/k$b;->f:Le/a/e3/k/k;

    invoke-direct {p1, v0, p2}, Le/a/e3/k/k$b;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e3/k/k$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/e3/k/k$b;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/e3/k/k$b;->f:Le/a/e3/k/k;

    iput v3, p0, Le/a/e3/k/k$b;->e:I

    .line 5
    iget-object v2, p1, Le/a/e3/k/k;->g:Le/a/p5/v0/b;

    invoke-interface {v2}, Le/a/p5/v0/b;->a()Ljava/util/List;

    move-result-object v2

    .line 6
    new-instance v4, Lq3/a/x2/h;

    invoke-direct {v4, v2}, Lq3/a/x2/h;-><init>(Ljava/lang/Iterable;)V

    const/4 v2, 0x0

    .line 7
    new-instance v5, Le/a/e3/k/m;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Le/a/e3/k/m;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    invoke-static {v4, v2, v5, v3, v6}, Ls1/a/a/a/v0/f/d;->S0(Lq3/a/x2/f;ILs1/z/b/p;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object v2

    .line 8
    new-instance v3, Le/a/e3/k/l;

    invoke-direct {v3, p1}, Le/a/e3/k/l;-><init>(Le/a/e3/k/k;)V

    invoke-interface {v2, v3, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
