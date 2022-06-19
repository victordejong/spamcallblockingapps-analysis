.class public final Le/a/e3/k/k$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/k;->i(Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveOutgoingCallSubId$subId$1"
    f = "CallAlertSimSupport.kt"
    l = {
        0xfa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/e3/k/k;


# direct methods
.method public constructor <init>(Le/a/e3/k/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/k$f;->f:Le/a/e3/k/k;

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

    new-instance p1, Le/a/e3/k/k$f;

    iget-object v0, p0, Le/a/e3/k/k$f;->f:Le/a/e3/k/k;

    invoke-direct {p1, v0, p2}, Le/a/e3/k/k$f;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e3/k/k$f;

    iget-object v0, p0, Le/a/e3/k/k$f;->f:Le/a/e3/k/k;

    invoke-direct {p1, v0, p2}, Le/a/e3/k/k$f;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e3/k/k$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e3/k/k$f;->e:I

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
    iget-object p1, p0, Le/a/e3/k/k$f;->f:Le/a/e3/k/k;

    .line 5
    iget-object p1, p1, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    .line 6
    new-instance v1, Le/a/e3/k/k$f$b;

    invoke-direct {v1, p1}, Le/a/e3/k/k$f$b;-><init>(Lq3/a/x2/f;)V

    .line 7
    new-instance p1, Le/a/e3/k/k$f$a;

    invoke-direct {p1, v1, p0}, Le/a/e3/k/k$f$a;-><init>(Lq3/a/x2/f;Le/a/e3/k/k$f;)V

    .line 8
    iput v2, p0, Le/a/e3/k/k$f;->e:I

    .line 9
    invoke-static {p1, p0}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Le/a/e3/k/o$a;

    .line 11
    iget-object p1, p1, Le/a/e3/k/o$a;->a:Le/a/p5/v0/a;

    .line 12
    invoke-virtual {p1}, Le/a/p5/v0/a;->b()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
