.class public final Le/a/q2/w0/h/m$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/w0/h/m;->onStateChanged(Landroid/telecom/Call;I)V
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
        "Lcom/truecaller/analytics/call/BlockingAction;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.call.util.CallListenerImpl$onStateChanged$1"
    f = "CallListener.kt"
    l = {
        0x5e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/q2/w0/h/m;

.field public final synthetic g:Landroid/telecom/Call;


# direct methods
.method public constructor <init>(Le/a/q2/w0/h/m;Landroid/telecom/Call;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/w0/h/m$b;->f:Le/a/q2/w0/h/m;

    iput-object p2, p0, Le/a/q2/w0/h/m$b;->g:Landroid/telecom/Call;

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

    new-instance p1, Le/a/q2/w0/h/m$b;

    iget-object v0, p0, Le/a/q2/w0/h/m$b;->f:Le/a/q2/w0/h/m;

    iget-object v1, p0, Le/a/q2/w0/h/m$b;->g:Landroid/telecom/Call;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/w0/h/m$b;-><init>(Le/a/q2/w0/h/m;Landroid/telecom/Call;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/w0/h/m$b;

    iget-object v0, p0, Le/a/q2/w0/h/m$b;->f:Le/a/q2/w0/h/m;

    iget-object v1, p0, Le/a/q2/w0/h/m$b;->g:Landroid/telecom/Call;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/w0/h/m$b;-><init>(Le/a/q2/w0/h/m;Landroid/telecom/Call;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/w0/h/m$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/q2/w0/h/m$b;->e:I

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
    iget-object p1, p0, Le/a/q2/w0/h/m$b;->f:Le/a/q2/w0/h/m;

    .line 5
    iget-object p1, p1, Le/a/q2/w0/h/m;->n:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/w0/h/b;

    iget-object v1, p0, Le/a/q2/w0/h/m$b;->g:Landroid/telecom/Call;

    invoke-static {v1}, Le/a/m0/a1$k;->b0(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Le/a/q2/w0/h/m$b;->e:I

    invoke-interface {p1, v1, p0}, Le/a/q2/w0/h/b;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
